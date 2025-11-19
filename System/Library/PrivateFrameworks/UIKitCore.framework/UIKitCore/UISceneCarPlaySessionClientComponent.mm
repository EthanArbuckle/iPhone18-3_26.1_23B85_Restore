@interface UISceneCarPlaySessionClientComponent
@end

@implementation UISceneCarPlaySessionClientComponent

void __65___UISceneCarPlaySessionClientComponent_scene_didUpdateSettings___block_invoke(void *a1)
{
  v5 = [(UIScene *)UIWindowScene _sceneForFBSScene:a1[4]];
  v2 = [v5 screen];
  [v2 _updateCarPlayCapabilitiesWithInteractionModels:a1[5] primaryInteractionModel:a1[6] touchLevel:a1[7]];

  v3 = [v5 screen];
  [v3 _updateTraits];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"_UIFocusBehaviorDidChangeNotification" object:0];
}

@end