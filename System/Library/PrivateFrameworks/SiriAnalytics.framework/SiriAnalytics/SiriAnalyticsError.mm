@interface SiriAnalyticsError
- (SiriAnalyticsError)initWithErrorType:(unint64_t)type message:(id)message;
@end

@implementation SiriAnalyticsError

- (SiriAnalyticsError)initWithErrorType:(unint64_t)type message:(id)message
{
  v16[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v8 = messageCopy;
  if (messageCopy)
  {
    v15 = @"message";
    v16[0] = messageCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v9 = 0;
  }

  v14.receiver = self;
  v14.super_class = SiriAnalyticsError;
  v10 = [(SiriAnalyticsError *)&v14 initWithDomain:@"com.apple.siri.analytics" code:type userInfo:v9];
  v11 = v10;
  if (v10)
  {
    v10->_errorType = type;
    objc_storeStrong(&v10->_message, message);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end