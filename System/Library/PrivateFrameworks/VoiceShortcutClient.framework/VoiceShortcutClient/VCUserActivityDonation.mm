@interface VCUserActivityDonation
+ (id)timestampDateFormatter;
- (BOOL)isEqual:(id)a3;
- (NSString)fullDescription;
- (NSString)sourceAppIdentifierForDisplay;
- (NSString)sourceAppIdentifierForLaunching;
- (NSString)subtitle;
- (NSString)suggestedPhrase;
- (NSString)title;
- (NSUserActivity)userActivity;
- (VCUserActivityDonation)initWithEvent:(id)a3;
- (VCUserActivityDonation)initWithUserActivity:(id)a3 identifier:(id)a4 sourceAppIdentifier:(id)a5 date:(id)a6;
- (id)dateString;
- (id)uniqueProperty;
@end

@implementation VCUserActivityDonation

- (id)uniqueProperty
{
  v3 = [(VCUserActivityDonation *)self userActivity];
  v4 = [v3 userInfo];
  v5 = [v4 mutableCopy];

  v6 = [(VCUserActivityDonation *)self userActivity];
  v7 = [v6 requiredUserInfoKeys];

  if (v7)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __40__VCUserActivityDonation_uniqueProperty__block_invoke;
    v20 = &unk_1E7AFFDA8;
    v21 = v7;
    v22 = v5;
    [v22 enumerateKeysAndObjectsUsingBlock:&v17];
  }

  v8 = [(VCUserActivityDonation *)self sourceAppIdentifierForDisplay:v17];
  if (v8)
  {
    [(VCUserActivityDonation *)self sourceAppIdentifierForDisplay];
  }

  else
  {
    [(VCUserActivityDonation *)self sourceAppIdentifier];
  }
  v9 = ;
  [v5 setObject:v9 forKeyedSubscript:@"VCUserActivitySourceAppIdentifier"];

  v10 = [(VCUserActivityDonation *)self userActivity];
  v11 = [v10 activityType];
  [v5 setObject:v11 forKeyedSubscript:@"VCUserActivityType"];

  v12 = [(VCUserActivityDonation *)self userActivity];
  v13 = [v12 webpageURL];

  if (v13)
  {
    v14 = [(VCUserActivityDonation *)self userActivity];
    v15 = [v14 webpageURL];
    [v5 setObject:v15 forKeyedSubscript:@"VCUserActivityWebpageURL"];
  }

  return v5;
}

void __40__VCUserActivityDonation_uniqueProperty__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (([*(a1 + 32) containsObject:v4] & 1) == 0)
    {
      v5 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = "[VCUserActivityDonation uniqueProperty]_block_invoke";
        v9 = 2112;
        v10 = v4;
        _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEFAULT, "%s %@ is not a required key; ignoring it in the donation's uniqueProperty.", &v7, 0x16u);
      }

      [*(a1 + 40) removeObjectForKey:v4];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NSString)suggestedPhrase
{
  v2 = [(VCUserActivityDonation *)self userActivity];
  v3 = [v2 suggestedInvocationPhrase];

  return v3;
}

- (NSString)fullDescription
{
  v3 = [(VCUserActivityDonation *)self userActivity];
  v15 = MEMORY[0x1E696AEC0];
  v4 = [v3 title];
  v5 = [v3 activityType];
  v6 = [(VCUserActivityDonation *)self sourceAppIdentifier];
  v7 = [(VCUserActivityDonation *)self dateString];
  v8 = [v3 requiredUserInfoKeys];
  v9 = [v3 userInfo];
  v10 = [v3 webpageURL];
  if ([v3 _isEligibleForPrediction])
  {
    v11 = @"Yes";
  }

  else
  {
    v11 = @"No";
  }

  v12 = [v3 interaction];
  v13 = [v15 stringWithFormat:@"Title: %@\nActivity Type: %@\nBundle Identifier: %@\nDate: %@\nRequired User Info Keys: %@\nUser Info: %@\nWeb Page URL: %@\nEligible For Prediction: %@\nInteraction: %@\n", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (NSString)subtitle
{
  v3 = [(VCUserActivityDonation *)self sourceAppIdentifierForDisplay];
  v4 = [v3 isEqualToString:@"com.apple.mobilenotes"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(VCUserActivityDonation *)self shortcut];
    v5 = [v6 activitySubtitle];
  }

  return v5;
}

- (NSString)title
{
  v2 = [(VCUserActivityDonation *)self userActivity];
  v3 = [v2 title];

  return v3;
}

- (id)dateString
{
  v3 = [objc_opt_class() timestampDateFormatter];
  v4 = [(VCUserActivityDonation *)self date];
  v5 = [v3 stringFromDate:v4];

  return v5;
}

- (NSString)sourceAppIdentifierForLaunching
{
  v2 = [(VCUserActivityDonation *)self shortcut];
  v3 = [v2 activityBundleIdentifier];

  return v3;
}

- (NSString)sourceAppIdentifierForDisplay
{
  v2 = [(VCUserActivityDonation *)self shortcut];
  v3 = [v2 activityBundleIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:v4->_identifier];
  }

  return v5;
}

- (NSUserActivity)userActivity
{
  v2 = [(VCUserActivityDonation *)self shortcut];
  v3 = [v2 userActivity];

  return v3;
}

- (VCUserActivityDonation)initWithEvent:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [v5 metadata];
    v7 = [MEMORY[0x1E6997948] userActivityRequiredString];
    v51 = [v6 objectForKeyedSubscript:v7];

    if (v51)
    {
      v53 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:v51 secondaryString:0 optionalData:0];
      v8 = [v5 metadata];
      v9 = [MEMORY[0x1E6997948] suggestedInvocationPhrase];
      v10 = [v8 objectForKeyedSubscript:v9];
      [v53 setSuggestedInvocationPhrase:v10];

      v11 = [v5 metadata];
      v12 = [MEMORY[0x1E6997948] isEligibleForPrediction];
      v46 = [v11 objectForKeyedSubscript:v12];

      if (v46)
      {
        [v53 setEligibleForPrediction:{-[NSObject BOOLValue](v46, "BOOLValue")}];
      }

      v13 = [v5 metadata];
      v14 = [MEMORY[0x1E6997948] itemRelatedContentURL];
      v50 = [v13 objectForKeyedSubscript:v14];

      v15 = [v5 metadata];
      v16 = [MEMORY[0x1E6997948] itemRelatedUniqueIdentifier];
      v49 = [v15 objectForKeyedSubscript:v16];

      v17 = [v5 metadata];
      v18 = [MEMORY[0x1E6997948] contentDescription];
      v48 = [v17 objectForKeyedSubscript:v18];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v60 = __Block_byref_object_copy__1140;
      v61 = __Block_byref_object_dispose__1141;
      v62 = 0;
      v19 = dispatch_semaphore_create(0);
      v45 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
      v20 = *MEMORY[0x1E6964C08];
      v58[0] = @"_kMDItemThumbnailDataPath";
      v58[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      v22 = [v5 source];
      v23 = [v22 bundleID];
      v24 = [v5 metadata];
      v25 = [MEMORY[0x1E6997948] itemIdentifier];
      v26 = [v24 objectForKeyedSubscript:v25];
      v57 = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      v28 = *MEMORY[0x1E696A378];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __VCUserActivityFromEvent_block_invoke;
      v54[3] = &unk_1E7AFFDD0;
      v56 = buf;
      v29 = v19;
      v55 = v29;
      [v45 slowFetchAttributes:v21 protectionClass:v28 bundleID:v23 identifiers:v27 completionHandler:v54];

      v30 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v29, v30);
      if (v50 || v49 || v48 || *(*&buf[8] + 40))
      {
        v31 = objc_alloc(MEMORY[0x1E6964E90]);
        v32 = [*MEMORY[0x1E6982D50] identifier];
        v33 = [v31 initWithItemContentType:v32];

        [v33 setRelatedUniqueIdentifier:v49];
        [v33 setContentURL:v50];
        [v33 setContentDescription:v48];
        [v33 setThumbnailURL:*(*&buf[8] + 40)];
        [v53 setContentAttributeSet:v33];
      }

      _Block_object_dispose(buf, 8);
      v34 = v46;
    }

    else
    {
      v34 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v5 metadata];
        *buf = 136315394;
        *&buf[4] = "VCUserActivityFromEvent";
        *&buf[12] = 2112;
        *&buf[14] = v35;
        _os_log_impl(&dword_1B1DE3000, v34, OS_LOG_TYPE_DEFAULT, "%s Missing user activity required string from event.metadata=%@", buf, 0x16u);
      }

      v53 = 0;
    }

    if (v53)
    {
      v36 = [v5 UUID];
      v37 = [v36 UUIDString];
      v38 = [v5 value];
      v39 = [v38 stringValue];
      v40 = [v5 startDate];
      self = [(VCUserActivityDonation *)self initWithUserActivity:v53 identifier:v37 sourceAppIdentifier:v39 date:v40];

      v41 = self;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"event"}];

    v41 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

- (VCUserActivityDonation)initWithUserActivity:(id)a3 identifier:(id)a4 sourceAppIdentifier:(id)a5 date:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"userActivity"}];

    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_12:
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"sourceAppIdentifier"}];

      if (v14)
      {
        goto LABEL_5;
      }

LABEL_13:
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"date"}];

      goto LABEL_14;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"VCUserActivityDonation.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_5:
  v15 = 0;
  if (v11 && v12 && v13)
  {
    v29.receiver = self;
    v29.super_class = VCUserActivityDonation;
    self = [(VCUserActivityDonation *)&v29 init];
    if (self)
    {
      v16 = objc_alloc(MEMORY[0x1E696EA38]);
      v17 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
      v18 = [v16 initWithUserActivity:v11 bundleIdentifier:v17];
      shortcut = self->_shortcut;
      self->_shortcut = v18;

      v20 = [v12 copy];
      identifier = self->_identifier;
      self->_identifier = v20;

      v22 = [v13 copy];
      sourceAppIdentifier = self->_sourceAppIdentifier;
      self->_sourceAppIdentifier = v22;

      objc_storeStrong(&self->_date, a6);
      self = self;
      v15 = self;
      goto LABEL_15;
    }

LABEL_14:
    v15 = 0;
  }

LABEL_15:

  return v15;
}

+ (id)timestampDateFormatter
{
  if (timestampDateFormatter_onceToken != -1)
  {
    dispatch_once(&timestampDateFormatter_onceToken, &__block_literal_global_1160);
  }

  v3 = timestampDateFormatter_dateFormatter;

  return v3;
}

uint64_t __48__VCUserActivityDonation_timestampDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = timestampDateFormatter_dateFormatter;
  timestampDateFormatter_dateFormatter = v0;

  [timestampDateFormatter_dateFormatter setDateStyle:1];
  v2 = timestampDateFormatter_dateFormatter;

  return [v2 setTimeStyle:1];
}

@end