@interface NSDictionary(UIAccessibilityElementTraversal)
- (id)_accessibilityLeafDescendantsWithCount:()UIAccessibilityElementTraversal shouldStopAtRemoteElement:options:treeLogger:;
@end

@implementation NSDictionary(UIAccessibilityElementTraversal)

- (id)_accessibilityLeafDescendantsWithCount:()UIAccessibilityElementTraversal shouldStopAtRemoteElement:options:treeLogger:
{
  v28[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if (([v9 shouldReturnScannerGroups] & 1) == 0)
  {
    selfCopy = self;
    _AXAssert();
  }

  if ([v9 shouldReturnScannerGroups])
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = [self objectForKeyedSubscript:@"GroupElements"];
    v13 = 2 * ([v9 direction] == 2);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __133__NSDictionary_UIAccessibilityElementTraversal___accessibilityLeafDescendantsWithCount_shouldStopAtRemoteElement_options_treeLogger___block_invoke;
    v23[3] = &unk_1E78AAA38;
    v14 = array;
    v24 = v14;
    v27 = a4;
    v25 = v9;
    v26 = v10;
    [v12 enumerateObjectsWithOptions:v13 usingBlock:v23];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v14 forKeyedSubscript:@"GroupElements"];
    v16 = [self objectForKeyedSubscript:@"GroupTraits"];
    if (v16)
    {
      [dictionary setObject:v16 forKeyedSubscript:@"GroupTraits"];
    }

    v17 = [self objectForKeyedSubscript:@"GroupScanBehaviorTraits"];
    [dictionary setObject:v17 forKeyedSubscript:@"GroupScanBehaviorTraits"];

    v18 = [self objectForKeyedSubscript:@"GroupLabel"];
    if (v18)
    {
      [dictionary setObject:v18 forKeyedSubscript:@"GroupLabel"];
    }

    v19 = [self objectForKeyedSubscript:@"GroupIdentifier"];
    if (v19)
    {
      [dictionary setObject:v19 forKeyedSubscript:@"GroupIdentifier"];
    }

    v28[0] = dictionary;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  else
  {
    v14 = 0;
    v20 = 0;
  }

  return v20;
}

@end