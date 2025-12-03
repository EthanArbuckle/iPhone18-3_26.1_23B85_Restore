@interface VKDebugSettingsExt
+ (BOOL)getlayoutContinuously;
+ (id)sharedSettings;
+ (void)setlayoutContinuously:(BOOL)continuously;
@end

@implementation VKDebugSettingsExt

+ (BOOL)getlayoutContinuously
{
  v2 = +[VKDebugSettings sharedSettings];
  layoutContinuously = [v2 layoutContinuously];

  return layoutContinuously;
}

+ (void)setlayoutContinuously:(BOOL)continuously
{
  continuouslyCopy = continuously;
  v4 = +[VKDebugSettings sharedSettings];
  [v4 setLayoutContinuously:continuouslyCopy];
}

+ (id)sharedSettings
{
  if (+[VKDebugSettingsExt sharedSettings]::_once != -1)
  {
    dispatch_once(&+[VKDebugSettingsExt sharedSettings]::_once, &__block_literal_global_25860);
  }

  v3 = +[VKDebugSettingsExt sharedSettings]::_sharedSettings;

  return v3;
}

void __36__VKDebugSettingsExt_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(VKDebugSettingsExt);
  v1 = +[VKDebugSettingsExt sharedSettings]::_sharedSettings;
  +[VKDebugSettingsExt sharedSettings]::_sharedSettings = v0;
}

@end