@interface _UIPopoverHostManagerProviderMac
+ (id)sharedPopoverManager;
@end

@implementation _UIPopoverHostManagerProviderMac

+ (id)sharedPopoverManager
{
  if (_MergedGlobals_1289 != -1)
  {
    dispatch_once(&_MergedGlobals_1289, &__block_literal_global_536);
  }

  v3 = qword_1ED4A0A60;

  return v3;
}

@end