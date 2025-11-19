@interface UISceneHostingContentSizePreferenceClientComponent
@end

@implementation UISceneHostingContentSizePreferenceClientComponent

id __80___UISceneHostingContentSizePreferenceClientComponent__setPreferredContentSize___block_invoke(uint64_t a1, void *a2)
{
  [a2 setPreferredContentSize:{*(a1 + 32), *(a1 + 40)}];
  v2 = +[(FBSSceneTransitionContext *)UIApplicationSceneTransitionContext];
  v3 = +[UIScene _synchronizedDrawingFence];
  [v2 setAnimationFence:v3];

  return v2;
}

@end