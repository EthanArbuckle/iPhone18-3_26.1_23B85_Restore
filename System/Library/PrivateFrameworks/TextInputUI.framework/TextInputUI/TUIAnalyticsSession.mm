@interface TUIAnalyticsSession
+ (id)currentInputModeIdentifier;
+ (id)preferredEventName:(id)name;
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
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  identifierWithLayouts = [currentInputMode identifierWithLayouts];

  return identifierWithLayouts;
}

+ (id)preferredEventName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy && [nameCopy length])
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