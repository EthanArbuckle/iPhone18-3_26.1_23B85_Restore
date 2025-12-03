@interface CoreDataValidationCoreAnalyticsEvent
- (CoreDataValidationCoreAnalyticsEvent)initWithValidationError:(int64_t)error;
- (NSDictionary)payload;
@end

@implementation CoreDataValidationCoreAnalyticsEvent

- (CoreDataValidationCoreAnalyticsEvent)initWithValidationError:(int64_t)error
{
  v5.receiver = self;
  v5.super_class = CoreDataValidationCoreAnalyticsEvent;
  result = [(CoreDataValidationCoreAnalyticsEvent *)&v5 init];
  if (result)
  {
    result->_validationError = error;
  }

  return result;
}

- (NSDictionary)payload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"validationError";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CoreDataValidationCoreAnalyticsEvent validationError](self, "validationError")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end