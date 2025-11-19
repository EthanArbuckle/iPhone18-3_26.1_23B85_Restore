@interface SSUserIntentResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SSUserIntentResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildResult;
- (id)buildThumbnail;
@end

@implementation SSUserIntentResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = [a3 contentType];
  v4 = [v3 hasPrefix:*MEMORY[0x1E696E598]];

  return v4;
}

- (SSUserIntentResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SSUserIntentResultBuilder;
  v5 = [(SSResultBuilder *)&v15 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 applicationBundleIdentifier];
    [(SSUserIntentResultBuilder *)v5 setAppBundleId:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x1E6963D28] withType:objc_opt_class()];
    -[SSUserIntentResultBuilder setIsBackgroundRunnable:](v5, "setIsBackgroundRunnable:", [v7 BOOLValue]);

    v8 = [v4 valueForAttribute:*MEMORY[0x1E6964B30] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setStartDate:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setIntentName:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6964950] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setPunchoutLabel:v10];

    v11 = [(SSResultBuilder *)v5 result];
    v12 = [v11 valueForAttribute:*MEMORY[0x1E6964C68] withType:objc_opt_class()];
    [(SSUserIntentResultBuilder *)v5 setUserActivityData:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x1E6964C80] withType:objc_opt_class()];
    if (!v13)
    {
      v13 = [v4 valueForAttribute:*MEMORY[0x1E6964440] withType:objc_opt_class()];
    }

    [(SSUserIntentResultBuilder *)v5 setUserActivityRequiredString:v13];
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SSUserIntentResultBuilder;
  v3 = [(SSResultBuilder *)&v6 buildResult];
  v4 = [(SSUserIntentResultBuilder *)self userActivityRequiredString];
  [v3 setUserActivityRequiredString:v4];

  [v3 setType:20];

  return v3;
}

- (id)buildCommand
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(SSResultBuilder *)self result];
  v5 = [v4 userActivityRequiredString];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [(SSUserIntentResultBuilder *)self userActivityRequiredString];

    if (!v6)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_8;
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E69E0928] donationWithUUID:v7];
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
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:0 error:&v18];
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
    v16 = [(SSUserIntentResultBuilder *)self userActivityData];
    [v15 setIntentMessageData:v16];
  }

  return v15;
}

- (id)buildThumbnail
{
  v6.receiver = self;
  v6.super_class = SSUserIntentResultBuilder;
  v3 = [(SSResultBuilder *)&v6 buildThumbnail];
  if (!v3)
  {
    v3 = objc_opt_new();
    v4 = [(SSUserIntentResultBuilder *)self appBundleId];
    [v3 setBundleIdentifier:v4];
  }

  return v3;
}

- (id)buildDescriptions
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSResultBuilder *)self result];
  v4 = [v3 contentTypeTree];
  if ([v4 containsObject:*MEMORY[0x1E696E590]])
  {
    v5 = [(SSUserIntentResultBuilder *)self startDate];

    if (v5)
    {
      v6 = +[SSDateFormatManager shortDateTimeFormatter];
      v7 = [(SSUserIntentResultBuilder *)self startDate];
      v8 = [v6 stringFromDate:v7];

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