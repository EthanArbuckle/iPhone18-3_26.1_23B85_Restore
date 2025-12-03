@interface VUIMediaStartTimeCollection
+ (void)initialize;
- (VUIMediaStartTimeInfo)preferredStartTimeInfo;
- (void)addStartTimeInfo:(id)info;
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

- (void)addStartTimeInfo:(id)info
{
  infoCopy = info;
  startTimeInfos = [(VUIMediaStartTimeCollection *)self startTimeInfos];
  if (!startTimeInfos)
  {
    startTimeInfos = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VUIMediaStartTimeCollection *)self setStartTimeInfos:startTimeInfos];
  }

  if (infoCopy)
  {
    [startTimeInfos addObject:infoCopy];
  }
}

- (void)removeAllStartTimeInfos
{
  startTimeInfos = [(VUIMediaStartTimeCollection *)self startTimeInfos];
  [startTimeInfos removeAllObjects];
}

- (VUIMediaStartTimeInfo)preferredStartTimeInfo
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  startTimeInfos = [(VUIMediaStartTimeCollection *)self startTimeInfos];
  v3 = [startTimeInfos countByEnumeratingWithState:&v27 objects:v33 count:16];
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
        objc_enumerationMutation(startTimeInfos);
      }

      v8 = *(*(&v27 + 1) + 8 * i);
      if (!v5)
      {
        v5 = v8;
        continue;
      }

      timestamp = [(VUIMediaStartTimeInfo *)v5 timestamp];
      timestamp2 = [v8 timestamp];
      v11 = timestamp2;
      if (timestamp && timestamp2)
      {
        v12 = [timestamp2 laterDate:timestamp];

        if (v12 != v11)
        {
          if (![v11 isEqualToDate:timestamp])
          {
            goto LABEL_19;
          }

LABEL_14:
          type = [v8 type];
          if (type == -[VUIMediaStartTimeInfo type](v5, "type") || [v8 type] != 1)
          {
            goto LABEL_19;
          }
        }

LABEL_18:
        v14 = v8;

        v5 = v14;
        goto LABEL_19;
      }

      if (!(timestamp | timestamp2))
      {
        goto LABEL_14;
      }

      if (timestamp2)
      {
        goto LABEL_18;
      }

LABEL_19:
    }

    v4 = [startTimeInfos countByEnumeratingWithState:&v27 objects:v33 count:16];
  }

  while (v4);
LABEL_24:

  startTime = [(VUIMediaStartTimeInfo *)v5 startTime];
  [startTime doubleValue];
  if (v16 != 0.0)
  {

LABEL_30:
    v24 = v5;
    goto LABEL_31;
  }

  type2 = [(VUIMediaStartTimeInfo *)v5 type];

  if (type2 != 1)
  {
    goto LABEL_30;
  }

  v18 = +[VUIFeaturesConfiguration sharedInstance];
  nowPlayingConfig = [v18 nowPlayingConfig];
  convertMainContentRelativeStartTimeOfZeroToAbsoluteStartTimeOfZero = [nowPlayingConfig convertMainContentRelativeStartTimeOfZeroToAbsoluteStartTimeOfZero];

  if (!convertMainContentRelativeStartTimeOfZeroToAbsoluteStartTimeOfZero)
  {
    goto LABEL_30;
  }

  v21 = [VUIMediaStartTimeInfo alloc];
  timestamp3 = [(VUIMediaStartTimeInfo *)v5 timestamp];
  source = [(VUIMediaStartTimeInfo *)v5 source];
  v24 = [(VUIMediaStartTimeInfo *)v21 initWithStartTime:&unk_1F5E5D770 timestamp:timestamp3 type:0 source:source];

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