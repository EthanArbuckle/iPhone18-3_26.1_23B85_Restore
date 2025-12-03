@interface NSMutableDictionary(VK)
- (void)vk_addEntriesFromNonNilDictionary:()VK;
- (void)vk_removeObjectForNonNilKey:()VK;
- (void)vk_setNonNilObject:()VK forKey:;
- (void)vk_setNonNilObject:()VK forNonNilKey:;
@end

@implementation NSMutableDictionary(VK)

- (void)vk_removeObjectForNonNilKey:()VK
{
  if (a3)
  {
    return [self removeObjectForKey:?];
  }

  return self;
}

- (void)vk_addEntriesFromNonNilDictionary:()VK
{
  if (a3)
  {
    return [self addEntriesFromDictionary:?];
  }

  return self;
}

- (void)vk_setNonNilObject:()VK forKey:
{
  if (a3)
  {
    return [self setObject:? forKeyedSubscript:?];
  }

  return self;
}

- (void)vk_setNonNilObject:()VK forNonNilKey:
{
  if (a3)
  {
    if (a4)
    {
      return [self setObject:? forKeyedSubscript:?];
    }
  }

  return self;
}

@end