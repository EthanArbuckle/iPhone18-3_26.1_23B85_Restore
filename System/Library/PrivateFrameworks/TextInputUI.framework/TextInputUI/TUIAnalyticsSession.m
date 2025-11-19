@interface TUIAnalyticsSession
+ (id)currentInputModeIdentifier;
+ (id)preferredEventName:(id)a3;
- (void)dealloc;
@end

@implementation TUIAnalyticsSession

- (void)dealloc
{
  [(TUIAnalyticsSession *)self endSession];
  v3.receiver = self;
  v3.super_class = TUIAnalyticsSession;
  [(TUIAnalyticsSession *)&v3 dealloc];
}

+ (id)currentInputModeIdentifier
{
  v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 identifierWithLayouts];

  return v4;
}

+ (id)preferredEventName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"UIKBAnalytics", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end