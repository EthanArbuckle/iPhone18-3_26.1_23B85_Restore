@interface NSExtension(PUEditPlugin)
- (id)pu_supportedMediaTypes;
- (uint64_t)pu_supportsMediaType:()PUEditPlugin;
@end

@implementation NSExtension(PUEditPlugin)

- (id)pu_supportedMediaTypes
{
  attributes = [self attributes];
  v2 = [attributes objectForKeyedSubscript:@"PHSupportedMediaTypes"];

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v2];
    if ([v4 containsObject:@"Image"])
    {
      [indexSet addIndex:0];
    }

    if ([v4 containsObject:@"LivePhoto"])
    {
      [indexSet addIndex:1];
    }

    if ([v4 containsObject:@"LoopingVideo"])
    {
      [indexSet addIndex:3];
    }

    if ([v4 containsObject:@"Video"])
    {
      [indexSet addIndex:2];
    }
  }

  v5 = [indexSet copy];

  return v5;
}

- (uint64_t)pu_supportsMediaType:()PUEditPlugin
{
  pu_supportedMediaTypes = [self pu_supportedMediaTypes];
  v5 = [pu_supportedMediaTypes containsIndex:a3];

  return v5;
}

@end