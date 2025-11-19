@interface NSSet(VK)
- (BOOL)vk_containsObjectPassingTest:()VK;
- (id)vk_compactMap:()VK;
- (id)vk_map:()VK;
- (id)vk_objectPassingTest:()VK;
- (id)vk_objectsConformingToProtocol:()VK;
- (id)vk_objectsOfClass:()VK;
@end

@implementation NSSet(VK)

- (id)vk_objectPassingTest:()VK
{
  v1 = [a1 objectsPassingTest:?];
  v2 = [v1 anyObject];

  return v2;
}

- (BOOL)vk_containsObjectPassingTest:()VK
{
  v1 = [a1 vk_objectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)vk_objectsConformingToProtocol:()VK
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__NSSet_VK__vk_objectsConformingToProtocol___block_invoke;
  v8[3] = &unk_1E7BE74D0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 objectsPassingTest:v8];

  return v6;
}

- (id)vk_objectsOfClass:()VK
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__NSSet_VK__vk_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v5[4] = a3;
  v3 = [a1 objectsPassingTest:v5];

  return v3;
}

- (id)vk_compactMap:()VK
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __27__NSSet_VK__vk_compactMap___block_invoke;
  v13 = &unk_1E7BE7518;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)vk_map:()VK
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __20__NSSet_VK__vk_map___block_invoke;
  v13 = &unk_1E7BE7518;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

@end