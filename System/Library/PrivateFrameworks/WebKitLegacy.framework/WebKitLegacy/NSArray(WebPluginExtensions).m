@interface NSArray(WebPluginExtensions)
- (void)_web_lowercaseStrings;
@end

@implementation NSArray(WebPluginExtensions)

- (void)_web_lowercaseStrings
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v2 addObject:{objc_msgSend(v5, "lowercaseString")}];
      }

      v5 = [v3 nextObject];
    }

    while (v5);
  }

  return v2;
}

@end