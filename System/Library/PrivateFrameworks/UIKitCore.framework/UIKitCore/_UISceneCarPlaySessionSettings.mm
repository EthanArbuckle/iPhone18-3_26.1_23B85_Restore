@interface _UISceneCarPlaySessionSettings
+ (void)configureSetting:(id)setting;
@end

@implementation _UISceneCarPlaySessionSettings

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if (([settingCopy matchesProperty:sel_carPlayAvailableInteractionModels] & 1) != 0 || (objc_msgSend(settingCopy, "matchesProperty:", sel_carPlayPrimaryInteractionModel) & 1) != 0 || (objc_msgSend(settingCopy, "matchesProperty:", sel_carPlayTouchLevel) & 1) != 0 || objc_msgSend(settingCopy, "matchesProperty:", sel_carPlayTouchpads))
  {
    [settingCopy setPropagating:1];
  }
}

@end