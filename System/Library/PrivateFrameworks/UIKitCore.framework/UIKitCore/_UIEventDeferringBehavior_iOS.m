@interface _UIEventDeferringBehavior_iOS
- (BOOL)wantsSystemKeyCommandOverlayRules;
@end

@implementation _UIEventDeferringBehavior_iOS

- (BOOL)wantsSystemKeyCommandOverlayRules
{
  if (qword_1ED4A0A50 != -1)
  {
    dispatch_once(&qword_1ED4A0A50, &__block_literal_global_534);
  }

  return _MergedGlobals_1288;
}

@end