@interface _UISceneCarPlaySessionSettings
+ (void)configureSetting:(id)a3;
@end

@implementation _UISceneCarPlaySessionSettings

+ (void)configureSetting:(id)a3
{
  v3 = a3;
  if (([v3 matchesProperty:sel_carPlayAvailableInteractionModels] & 1) != 0 || (objc_msgSend(v3, "matchesProperty:", sel_carPlayPrimaryInteractionModel) & 1) != 0 || (objc_msgSend(v3, "matchesProperty:", sel_carPlayTouchLevel) & 1) != 0 || objc_msgSend(v3, "matchesProperty:", sel_carPlayTouchpads))
  {
    [v3 setPropagating:1];
  }
}

@end