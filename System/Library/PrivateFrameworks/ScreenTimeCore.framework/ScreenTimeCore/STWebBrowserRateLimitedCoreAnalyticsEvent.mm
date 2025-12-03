@interface STWebBrowserRateLimitedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STWebBrowserRateLimitedCoreAnalyticsEvent)initWithBundleIdentifier:(id)identifier;
@end

@implementation STWebBrowserRateLimitedCoreAnalyticsEvent

- (STWebBrowserRateLimitedCoreAnalyticsEvent)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = STWebBrowserRateLimitedCoreAnalyticsEvent;
  v5 = [(STWebBrowserRateLimitedCoreAnalyticsEvent *)&v8 init];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = identifierCopy;

  return v5;
}

- (NSDictionary)payload
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"bundleIdentifier";
  bundleIdentifier = [(STWebBrowserRateLimitedCoreAnalyticsEvent *)self bundleIdentifier];
  v7[0] = bundleIdentifier;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end