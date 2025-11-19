@interface SiriAnalyticsError
- (SiriAnalyticsError)initWithErrorType:(unint64_t)a3 message:(id)a4;
@end

@implementation SiriAnalyticsError

- (SiriAnalyticsError)initWithErrorType:(unint64_t)a3 message:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15 = @"message";
    v16[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v9 = 0;
  }

  v14.receiver = self;
  v14.super_class = SiriAnalyticsError;
  v10 = [(SiriAnalyticsError *)&v14 initWithDomain:@"com.apple.siri.analytics" code:a3 userInfo:v9];
  v11 = v10;
  if (v10)
  {
    v10->_errorType = a3;
    objc_storeStrong(&v10->_message, a4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end