@interface SSUserIntentResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SSUserIntentResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildResult;
- (id)buildThumbnail;
@end

@implementation SSUserIntentResultBuilder

+ (BOOL)supportsResult:(id)result
{
  contentType = [result contentType];
  v4 = [contentType hasPrefix:*MEMORY[0x1E696E598]];

  return v4;
}

- (SSUserIntentResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = SSUserIntentResultBuilder;
  v5 = [(SSResultBuilder *)&v15 initWithResult:resultCopy];
  if (v5)
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    [(SSUserIntentResultBuilder *)v5 setAppBundleId:applicationBundleIdentifier];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D28] withType:objc_opt_class()];
    -[SSUserIntentResultBuilder setIsBackgroundRunnable:](v5, "setIsBackgroundRunnable:", [v7 BOOLValue]);

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B30] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setStartDate:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setIntentName:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6964950] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setPunchoutLabel:v10];

    result = [(SSResultBuilder *)v5 result];
    v12 = [result valueForAttribute:*MEMORY[0x1E6964C68] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setUserActivityData:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C80] withType:objc_opt_class()];
    if (!v13)
    {
      v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964440] withType:objc_opt_class()];
    }

    [(SSUserIntentResultBuilder *)v5 setUserActivityRequiredString:v13];
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SSUserIntentResultBuilder;
  buildResult = [(SSResultBuilder *)&v6 buildResult];
  userActivityRequiredString = [(SSUserIntentResultBuilder *)self userActivityRequiredString];
  [buildResult setUserActivityRequiredString:userActivityRequiredString];

  [buildResult setType:20];

  return buildResult;
}

- (id)buildCommand
{
  v3 = objc_autoreleasePoolPush();
  result = [(SSResultBuilder *)self result];
  userActivityRequiredString = [result userActivityRequiredString];
  if (userActivityRequiredString)
  {
    userActivityRequiredString2 = userActivityRequiredString;
  }

  else
  {
    userActivityRequiredString2 = [(SSUserIntentResultBuilder *)self userActivityRequiredString];

    if (!userActivityRequiredString2)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_8;
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:userActivityRequiredString2];
  if (v7)
  {
    v8 = [MEMORY[0x1E69E0928] donationWithUUID:v7];
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
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:intent requiringSecureCoding:0 error:&v18];
    v12 = v18;
    if (v12)
    {
      v13 = SSGeneralLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(SSUserIntentResultBuilder *)v12 buildCommand];
      }
    }
  }

  else
  {
    v12 = SSGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SSUserIntentResultBuilder *)v12 buildCommand];
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
    userActivityData = [(SSUserIntentResultBuilder *)self userActivityData];
    [v15 setIntentMessageData:userActivityData];
  }

  return v15;
}

- (id)buildThumbnail
{
  v6.receiver = self;
  v6.super_class = SSUserIntentResultBuilder;
  buildThumbnail = [(SSResultBuilder *)&v6 buildThumbnail];
  if (!buildThumbnail)
  {
    buildThumbnail = objc_opt_new();
    appBundleId = [(SSUserIntentResultBuilder *)self appBundleId];
    [buildThumbnail setBundleIdentifier:appBundleId];
  }

  return buildThumbnail;
}

- (id)buildDescriptions
{
  v16[1] = *MEMORY[0x1E69E9840];
  result = [(SSResultBuilder *)self result];
  contentTypeTree = [result contentTypeTree];
  if ([contentTypeTree containsObject:*MEMORY[0x1E696E590]])
  {
    startDate = [(SSUserIntentResultBuilder *)self startDate];

    if (startDate)
    {
      v6 = +[SSDateFormatManager shortDateTimeFormatter];
      startDate2 = [(SSUserIntentResultBuilder *)self startDate];
      v8 = [v6 stringFromDate:startDate2];

      v9 = MEMORY[0x1E696AEC0];
      v10 = +[SSDateFormatManager dateLastCalledStringFormat];
      v11 = [v9 stringWithFormat:v10, v8];

      v12 = [MEMORY[0x1E69CA3A0] textWithString:v11];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end