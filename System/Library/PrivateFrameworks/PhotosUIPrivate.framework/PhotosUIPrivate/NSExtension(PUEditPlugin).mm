@interface NSExtension(PUEditPlugin)
- (id)pu_supportedMediaTypes;
- (uint64_t)pu_supportsMediaType:()PUEditPlugin;
@end

@implementation NSExtension(PUEditPlugin)

- (id)pu_supportedMediaTypes
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKeyedSubscript:@"PHSupportedMediaTypes"];

  v3 = [MEMORY[0x1E696AD50] indexSet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v2];
    if ([v4 containsObject:@"Image"])
    {
      [v3 addIndex:0];
    }

    if ([v4 containsObject:@"LivePhoto"])
    {
      [v3 addIndex:1];
    }

    if ([v4 containsObject:@"LoopingVideo"])
    {
      [v3 addIndex:3];
    }

    if ([v4 containsObject:@"Video"])
    {
      [v3 addIndex:2];
    }
  }

  v5 = [v3 copy];

  return v5;
}

- (uint64_t)pu_supportsMediaType:()PUEditPlugin
{
  v4 = [a1 pu_supportedMediaTypes];
  v5 = [v4 containsIndex:a3];

  return v5;
}

@end