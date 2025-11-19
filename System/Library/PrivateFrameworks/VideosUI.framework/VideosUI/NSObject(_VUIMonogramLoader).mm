@interface NSObject(_VUIMonogramLoader)
- (uint64_t)tv_generatorType;
- (void)tv_setGeneratorType:()_VUIMonogramLoader;
@end

@implementation NSObject(_VUIMonogramLoader)

- (uint64_t)tv_generatorType
{
  v1 = objc_getAssociatedObject(a1, sel_tv_generatorType);
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (void)tv_setGeneratorType:()_VUIMonogramLoader
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, sel_tv_generatorType, v2, 1);
}

@end