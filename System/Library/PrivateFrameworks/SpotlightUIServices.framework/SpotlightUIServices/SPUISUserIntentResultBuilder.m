@interface SPUISUserIntentResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISUserIntentResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildResult;
- (id)buildThumbnail;
- (void)buildCommand;
@end

@implementation SPUISUserIntentResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = [a3 contentType];
  v4 = [v3 hasPrefix:*MEMORY[0x277CD3868]];

  return v4;
}

- (SPUISUserIntentResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SPUISUserIntentResultBuilder;
  v5 = [(SPUISResultBuilder *)&v15 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 applicationBundleIdentifier];
    [(SPUISUserIntentResultBuilder *)v5 setAppBundleId:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC24F0] withType:objc_opt_class()];
    -[SPUISUserIntentResultBuilder setIsBackgroundRunnable:](v5, "setIsBackgroundRunnable:", [v7 BOOLValue]);

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC3128] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setStartDate:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setIntentName:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2FE8] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setPunchoutLabel:v10];

    v11 = [(SPUISResultBuilder *)v5 result];
    v12 = [v11 valueForAttribute:*MEMORY[0x277CC3220] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setUserActivityData:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x277CC3230] withType:objc_opt_class()];
    if (!v13)
    {
      v13 = [v4 valueForAttribute:*MEMORY[0x277CC2BD8] withType:objc_opt_class()];
    }

    [(SPUISUserIntentResultBuilder *)v5 setUserActivityRequiredString:v13];
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SPUISUserIntentResultBuilder;
  v3 = [(SPUISResultBuilder *)&v6 buildResult];
  v4 = [(SPUISUserIntentResultBuilder *)self userActivityRequiredString];
  [v3 setUserActivityRequiredString:v4];

  [v3 setType:20];

  return v3;
}

- (id)buildCommand
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(SPUISResultBuilder *)self result];
  v5 = [v4 userActivityRequiredString];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [(SPUISUserIntentResultBuilder *)self userActivityRequiredString];

    if (!v6)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_8;
    }
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277D79D88] donationWithUUID:v7];
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  v9 = [v8 interaction];
  v10 = [v9 intent];

  if (v10)
  {
    v18 = 0;
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:0 error:&v18];
    v12 = v18;
    if (v12)
    {
      v13 = SPUISGeneralLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(SPUISUserIntentResultBuilder *)v12 buildCommand];
      }
    }
  }

  else
  {
    v12 = SPUISGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SPUISUserIntentResultBuilder *)v12 buildCommand];
    }

    v11 = 0;
  }

  objc_autoreleasePoolPop(v3);
  v14 = objc_opt_new();
  v15 = v14;
  if (v11)
  {
    [v14 setIntentMessageData:v11];
  }

  else
  {
    v16 = [(SPUISUserIntentResultBuilder *)self userActivityData];
    [v15 setIntentMessageData:v16];
  }

  return v15;
}

- (id)buildThumbnail
{
  v6.receiver = self;
  v6.super_class = SPUISUserIntentResultBuilder;
  v3 = [(SPUISResultBuilder *)&v6 buildThumbnail];
  if (!v3)
  {
    v3 = objc_opt_new();
    v4 = [(SPUISUserIntentResultBuilder *)self appBundleId];
    [v3 setBundleIdentifier:v4];
  }

  return v3;
}

- (id)buildDescriptions
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 contentTypeTree];
  if ([v4 containsObject:*MEMORY[0x277CD3860]])
  {
    v5 = [(SPUISUserIntentResultBuilder *)self startDate];

    if (v5)
    {
      v6 = +[SPUISDateFormatManager shortDateTimeFormatter];
      v7 = [(SPUISUserIntentResultBuilder *)self startDate];
      v8 = [v6 stringFromDate:v7];

      v9 = MEMORY[0x277CCACA8];
      v10 = +[SPUISDateFormatManager dateLastCalledStringFormat];
      v11 = [v9 stringWithFormat:v10, v8];

      v12 = [MEMORY[0x277D4C598] textWithString:v11];
      v16[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)buildCommand
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "SPUISUserIntentResultBuilder: eror when converting intent to data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end