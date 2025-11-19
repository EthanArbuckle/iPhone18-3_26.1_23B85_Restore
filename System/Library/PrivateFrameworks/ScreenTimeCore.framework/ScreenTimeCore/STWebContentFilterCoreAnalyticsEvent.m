@interface STWebContentFilterCoreAnalyticsEvent
- (NSDictionary)payload;
- (STWebContentFilterCoreAnalyticsEvent)initWithWebContentFilterEnabled:(BOOL)a3;
@end

@implementation STWebContentFilterCoreAnalyticsEvent

- (STWebContentFilterCoreAnalyticsEvent)initWithWebContentFilterEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STWebContentFilterCoreAnalyticsEvent;
  result = [(STWebContentFilterCoreAnalyticsEvent *)&v5 init];
  result->_webContentFilterEnabled = a3;
  return result;
}

- (NSDictionary)payload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"webContentFilterEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[STWebContentFilterCoreAnalyticsEvent webContentFilterEnabled](self, "webContentFilterEnabled")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end