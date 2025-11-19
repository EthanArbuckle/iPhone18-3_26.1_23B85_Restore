@interface STRecoveryEmailMismatchCoreAnalyticsEvent
- (NSDictionary)payload;
- (STRecoveryEmailMismatchCoreAnalyticsEvent)initWithRecoveryEmailMismatched:(BOOL)a3;
@end

@implementation STRecoveryEmailMismatchCoreAnalyticsEvent

- (STRecoveryEmailMismatchCoreAnalyticsEvent)initWithRecoveryEmailMismatched:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STRecoveryEmailMismatchCoreAnalyticsEvent;
  result = [(STRecoveryEmailMismatchCoreAnalyticsEvent *)&v5 init];
  result->_isRecoveryEmailMismatched = a3;
  return result;
}

- (NSDictionary)payload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"isRecoveryEmailMismatched";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRecoveryEmailMismatchCoreAnalyticsEvent isRecoveryEmailMismatched](self, "isRecoveryEmailMismatched")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end