@interface NSMutableSet(VK)
+ (id)vk_setFromNonNilArray:()VK;
- (void)vk_addNonNilObject:()VK;
- (void)vk_addObjectsFromNonNilArray:()VK;
- (void)vk_removeNonNilObject:()VK;
- (void)vk_removeObjectsFromNonNilArray:()VK;
@end

@implementation NSMutableSet(VK)

+ (id)vk_setFromNonNilArray:()VK
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [self setWithArray:v5];

  return v6;
}

- (void)vk_addNonNilObject:()VK
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

- (void)vk_removeNonNilObject:()VK
{
  if (a3)
  {
    return [self removeObject:?];
  }

  return self;
}

- (void)vk_addObjectsFromNonNilArray:()VK
{
  if (a3)
  {
    return [self addObjectsFromArray:?];
  }

  return self;
}

- (void)vk_removeObjectsFromNonNilArray:()VK
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self removeObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end