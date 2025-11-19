@interface UISceneHostingContentSizePreferenceHostComponent
@end

@implementation UISceneHostingContentSizePreferenceHostComponent

void __83___UISceneHostingContentSizePreferenceHostComponent_scene_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [*(a1 + 32) preferredContentSize];
  [WeakRetained setPreferredContentSize:?];
}

@end