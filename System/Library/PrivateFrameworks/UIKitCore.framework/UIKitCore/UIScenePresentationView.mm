@interface UIScenePresentationView
@end

@implementation UIScenePresentationView

void __66___UIScenePresentationView_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 448))
  {
    v1 = *(a1 + 40);
    v3 = [*(*(a1 + 32) + 448) hostedLayers];
    v2 = [v3 allObjects];
    [v1 appendArraySection:v2 withName:@"hostedLayers" skipIfEmpty:1];
  }
}

@end