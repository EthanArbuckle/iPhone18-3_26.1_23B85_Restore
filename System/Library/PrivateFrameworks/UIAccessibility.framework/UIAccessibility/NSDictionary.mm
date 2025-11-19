@interface NSDictionary
@end

@implementation NSDictionary

void __133__NSDictionary_UIAccessibilityElementTraversal___accessibilityLeafDescendantsWithCount_shouldStopAtRemoteElement_options_treeLogger___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _accessibilityLeafDescendantsWithCount:0 shouldStopAtRemoteElement:*(a1 + 56) options:*(a1 + 40) treeLogger:*(a1 + 48)];
  [v2 addObjectsFromArray:v3];
}

@end