@interface VUIMediaStartTimeCollection
+ (void)initialize;
- (VUIMediaStartTimeInfo)preferredStartTimeInfo;
- (void)addStartTimeInfo:(id)a3;
- (void)removeAllStartTimeInfos;
@end

@implementation VUIMediaStartTimeCollection

+ (void)initialize
{
  if (initialize_onceToken_6 != -1)
  {
    +[VUIMediaStartTimeCollection initialize];
  }
}

void __41__VUIMediaStartTimeCollection_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIMediaStartTimeCollection");
  v1 = sLogObject_12;
  sLogObject_12 = v0;
}

- (void)addStartTimeInfo:(id)a3
{
  v5 = a3;
  v4 = [(VUIMediaStartTimeCollection *)self startTimeInfos];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VUIMediaStartTimeCollection *)self setStartTimeInfos:v4];
  }

  if (v5)
  {
    [v4 addObject:v5];
  }
}

- (void)removeAllStartTimeInfos
{
  v2 = [(VUIMediaStartTimeCollection *)self startTimeInfos];
  [v2 removeAllObjects];
}

- (VUIMediaStartTimeInfo)preferredStartTimeInfo
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [(VUIMediaStartTimeCollection *)self startTimeInfos];
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_24;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v28;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v28 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v27 + 1) + 8 * i);
      if (!v5)
      {
        v5 = v8;
        continue;
      }

      v9 = [(VUIMediaStartTimeInfo *)v5 timestamp];
      v10 = [v8 timestamp];
      v11 = v10;
      if (v9 && v10)
      {
        v12 = [v10 laterDate:v9];

        if (v12 != v11)
        {
          if (![v11 isEqualToDate:v9])
          {
            goto LABEL_19;
          }

LABEL_14:
          v13 = [v8 type];
          if (v13 == -[VUIMediaStartTimeInfo type](v5, "type") || [v8 type] != 1)
          {
            goto LABEL_19;
          }
        }

LABEL_18:
        v14 = v8;

        v5 = v14;
        goto LABEL_19;
      }

      if (!(v9 | v10))
      {
        goto LABEL_14;
      }

      if (v10)
      {
        goto LABEL_18;
      }

LABEL_19:
    }

    v4 = [v2 countByEnumeratingWithState:&v27 objects:v33 count:16];
  }

  while (v4);
LABEL_24:

  v15 = [(VUIMediaStartTimeInfo *)v5 startTime];
  [v15 doubleValue];
  if (v16 != 0.0)
  {

LABEL_30:
    v24 = v5;
    goto LABEL_31;
  }

  v17 = [(VUIMediaStartTimeInfo *)v5 type];

  if (v17 != 1)
  {
    goto LABEL_30;
  }

  v18 = +[VUIFeaturesConfiguration sharedInstance];
  v19 = [v18 nowPlayingConfig];
  v20 = [v19 convertMainContentRelativeStartTimeOfZeroToAbsoluteStartTimeOfZero];

  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = [VUIMediaStartTimeInfo alloc];
  v22 = [(VUIMediaStartTimeInfo *)v5 timestamp];
  v23 = [(VUIMediaStartTimeInfo *)v5 source];
  v24 = [(VUIMediaStartTimeInfo *)v21 initWithStartTime:&unk_1F5E5D770 timestamp:v22 type:0 source:v23];

  v25 = sLogObject_12;
  if (os_log_type_enabled(sLogObject_12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v24;
    _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "By policy, converting relative start time of 0 to absolute start time of 0: %@", buf, 0xCu);
  }

LABEL_31:

  return v24;
}

@end