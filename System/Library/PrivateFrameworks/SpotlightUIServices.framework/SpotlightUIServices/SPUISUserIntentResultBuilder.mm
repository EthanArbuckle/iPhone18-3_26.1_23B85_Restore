@interface SPUISUserIntentResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISUserIntentResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildResult;
- (id)buildThumbnail;
- (void)buildCommand;
@end

@implementation SPUISUserIntentResultBuilder

+ (BOOL)supportsResult:(id)result
{
  contentType = [result contentType];
  v4 = [contentType hasPrefix:*MEMORY[0x277CD3868]];

  return v4;
}

- (SPUISUserIntentResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = SPUISUserIntentResultBuilder;
  v5 = [(SPUISResultBuilder *)&v15 initWithResult:resultCopy];
  if (v5)
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    [(SPUISUserIntentResultBuilder *)v5 setAppBundleId:applicationBundleIdentifier];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC24F0] withType:objc_opt_class()];
    -[SPUISUserIntentResultBuilder setIsBackgroundRunnable:](v5, "setIsBackgroundRunnable:", [v7 BOOLValue]);

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC3128] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setStartDate:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setIntentName:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2FE8] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setPunchoutLabel:v10];

    result = [(SPUISResultBuilder *)v5 result];
    v12 = [result valueForAttribute:*MEMORY[0x277CC3220] withType:objc_opt_class()];
    [(SPUISUserIntentResultBuilder *)v5 setUserActivityData:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC3230] withType:objc_opt_class()];
    if (!v13)
    {
      v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC2BD8] withType:objc_opt_class()];
    }

    [(SPUISUserIntentResultBuilder *)v5 setUserActivityRequiredString:v13];
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SPUISUserIntentResultBuilder;
  buildResult = [(SPUISResultBuilder *)&v6 buildResult];
  userActivityRequiredString = [(SPUISUserIntentResultBuilder *)self userActivityRequiredString];
  [buildResult setUserActivityRequiredString:userActivityRequiredString];

  [buildResult setType:20];

  return buildResult;
}

- (id)buildCommand
{
  v3 = objc_autoreleasePoolPush();
  result = [(SPUISResultBuilder *)self result];
  userActivityRequiredString = [result userActivityRequiredString];
  if (userActivityRequiredString)
  {
    userActivityRequiredString2 = userActivityRequiredString;
  }

  else
  {
    userActivityRequiredString2 = [(SPUISUserIntentResultBuilder *)self userActivityRequiredString];

    if (!userActivityRequiredString2)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_8;
    }
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:userActivityRequiredString2];
  if (v7)
  {
    v8 = [MEMORY[0x277D79D88] donationWithUUID:v7];
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  interaction = [v8 interaction];
  intent = [interaction intent];

  if (intent)
  {
    v18 = 0;
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:intent requiringSecureCoding:0 error:&v18];
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
    userActivityData = [(SPUISUserIntentResultBuilder *)self userActivityData];
    [v15 setIntentMessageData:userActivityData];
  }

  return v15;
}

- (id)buildThumbnail
{
  v6.receiver = self;
  v6.super_class = SPUISUserIntentResultBuilder;
  buildThumbnail = [(SPUISResultBuilder *)&v6 buildThumbnail];
  if (!buildThumbnail)
  {
    buildThumbnail = objc_opt_new();
    appBundleId = [(SPUISUserIntentResultBuilder *)self appBundleId];
    [buildThumbnail setBundleIdentifier:appBundleId];
  }

  return buildThumbnail;
}

- (id)buildDescriptions
{
  v16[1] = *MEMORY[0x277D85DE8];
  result = [(SPUISResultBuilder *)self result];
  contentTypeTree = [result contentTypeTree];
  if ([contentTypeTree containsObject:*MEMORY[0x277CD3860]])
  {
    startDate = [(SPUISUserIntentResultBuilder *)self startDate];

    if (startDate)
    {
      v6 = +[SPUISDateFormatManager shortDateTimeFormatter];
      startDate2 = [(SPUISUserIntentResultBuilder *)self startDate];
      v8 = [v6 stringFromDate:startDate2];

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
  selfCopy = self;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "SPUISUserIntentResultBuilder: eror when converting intent to data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end