@interface NSArray(WebPluginExtensions)
- (void)_web_lowercaseStrings;
@end

@implementation NSArray(WebPluginExtensions)

- (void)_web_lowercaseStrings
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  objectEnumerator = [self objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v2 addObject:{objc_msgSend(nextObject2, "lowercaseString")}];
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return v2;
}

@end