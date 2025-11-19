@interface BYAnalyticsEventAppleIDSignIn
- (BYAnalyticsEventAppleIDSignIn)initWithAnalyticsManager:(id)a3 context:(unint64_t)a4;
- (id)_eventPayload;
- (void)markSignInCompleted;
@end

@implementation BYAnalyticsEventAppleIDSignIn

- (BYAnalyticsEventAppleIDSignIn)initWithAnalyticsManager:(id)a3 context:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BYAnalyticsEventAppleIDSignIn;
  v7 = [(BYAnalyticsEventAppleIDSignIn *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_context = a4;
    v7->_authenticationStartDate = [MEMORY[0x1E695DF00] date];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__BYAnalyticsEventAppleIDSignIn_initWithAnalyticsManager_context___block_invoke;
    v10[3] = &unk_1E7D036A0;
    v11 = v8;
    [v6 addEvent:@"com.apple.setupassistant.ios.appleid.signin.duration" withPayloadBlock:v10 persist:0];
  }

  return v8;
}

- (void)markSignInCompleted
{
  v3 = [(BYAnalyticsEventAppleIDSignIn *)self signInStartDate];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"Attempted to mark sign-in as completed without completing authentication" reason:0 userInfo:0];
    objc_exception_throw(v4);
  }

  self->_completionDate = [MEMORY[0x1E695DF00] date];
}

- (id)_eventPayload
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = [(BYAnalyticsEventAppleIDSignIn *)self completionDate];

  if (v3)
  {
    v4 = [(BYAnalyticsEventAppleIDSignIn *)self context];
    if (v4 > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E7D03BA0[v4];
    }

    v6 = [(BYAnalyticsEventAppleIDSignIn *)self signInStartDate];
    v7 = [(BYAnalyticsEventAppleIDSignIn *)self authenticationStartDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = [(BYAnalyticsEventAppleIDSignIn *)self completionDate];
    v11 = [(BYAnalyticsEventAppleIDSignIn *)self signInStartDate];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;

    v19[0] = @"authenticateDuration";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v20[0] = v14;
    v19[1] = @"signInDuration";
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v20[1] = v15;
    v19[2] = @"totalDuration";
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v9 + v13];
    v19[3] = @"context";
    v20[2] = v16;
    v20[3] = v5;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

@end