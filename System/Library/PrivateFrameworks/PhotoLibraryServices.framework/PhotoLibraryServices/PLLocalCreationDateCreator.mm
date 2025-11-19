@interface PLLocalCreationDateCreator
+ (void)initialize;
- (PLLocalCreationDateCreator)initWithTimeZoneLookup:(id)a3;
- (id)generateInferredTimeZoneOffsetForAsset:(id)a3;
@end

@implementation PLLocalCreationDateCreator

- (id)generateInferredTimeZoneOffsetForAsset:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 utcDate];
  [v4 coordinate];
  latitude = v37.latitude;
  longitude = v37.longitude;
  if (!CLLocationCoordinate2DIsValid(v37))
  {
    goto LABEL_11;
  }

  v8 = latitude != 0.0;
  if (longitude != 0.0)
  {
    v8 = 1;
  }

  if (v8 && (latitude == 40.0 ? (v9 = longitude == -100.0) : (v9 = 0), !v9 && ([(PFTimeZoneLookup *)self->_timeZoneLookup timeZoneNameForCoordinate:latitude, longitude], (v10 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v11 = v10;
  }

  else
  {
LABEL_11:
    v11 = [v4 rawTimeZoneName];
    if (!v11)
    {
LABEL_21:
      v20 = [v4 rawTimeZoneOffsetValue];
      if (!v20)
      {
        goto LABEL_25;
      }

      v21 = v20;
      v14 = [v20 integerValue];
      v22 = PLMomentsGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [v4 uuid];
        v29 = 138543362;
        v30 = v23;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "[LOCAL DATE] Using timezone offset from database for asset w/ uuid %{public}@", &v29, 0xCu);
      }

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_25:
        v24 = [MEMORY[0x1E695DFE8] systemTimeZone];
        v14 = [v24 secondsFromGMTForDate:v5];
        v25 = PLMomentsGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v4 uuid];
          v29 = 138543362;
          v30 = v26;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "[LOCAL DATE] Using local timezone for asset w/ uuid %{public}@", &v29, 0xCu);
        }
      }

      goto LABEL_28;
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 secondsFromGMTForDate:v5];
  }

  else
  {
    v15 = [_gmtTranslationDictionary objectForKeyedSubscript:v11];
    v16 = v15;
    if (v15)
    {
      [v15 doubleValue];
      v14 = (v17 * 3600.0);
    }

    else
    {
      v18 = PLMomentsGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v4 uuid];
        v29 = 138543874;
        v30 = v19;
        v31 = 2112;
        v32 = v5;
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[LOCAL DATE] Could not find tz information for asset w/ uuid %{public}@, date %@, tz %@", &v29, 0x20u);
      }

      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

LABEL_28:
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:v14];

  return v27;
}

- (PLLocalCreationDateCreator)initWithTimeZoneLookup:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLLocalCreationDateCreator;
  v5 = [(PLLocalCreationDateCreator *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E69C08E8]);
    }

    timeZoneLookup = v5->_timeZoneLookup;
    v5->_timeZoneLookup = v6;
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___PLLocalCreationDateCreator;
    objc_msgSendSuper2(&v4, sel_initialize);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__PLLocalCreationDateCreator_initialize__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (initialize_onceToken != -1)
    {
      dispatch_once(&initialize_onceToken, block);
    }
  }
}

void __40__PLLocalCreationDateCreator_initialize__block_invoke()
{
  v0 = [objc_opt_class() _gmtTranslationDictionary];
  v1 = _gmtTranslationDictionary;
  _gmtTranslationDictionary = v0;
}

@end