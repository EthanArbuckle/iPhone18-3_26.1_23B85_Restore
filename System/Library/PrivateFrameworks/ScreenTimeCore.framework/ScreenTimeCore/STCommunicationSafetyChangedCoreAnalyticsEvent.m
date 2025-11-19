@interface STCommunicationSafetyChangedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STCommunicationSafetyChangedCoreAnalyticsEvent)initWithCommunicationSafetyEnabled:(BOOL)a3;
@end

@implementation STCommunicationSafetyChangedCoreAnalyticsEvent

- (STCommunicationSafetyChangedCoreAnalyticsEvent)initWithCommunicationSafetyEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STCommunicationSafetyChangedCoreAnalyticsEvent;
  result = [(STCommunicationSafetyChangedCoreAnalyticsEvent *)&v5 init];
  result->_communicationSafetyEnabled = a3;
  return result;
}

- (NSDictionary)payload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"communicationSafetyEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationSafetyChangedCoreAnalyticsEvent communicationSafetyEnabled](self, "communicationSafetyEnabled")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end