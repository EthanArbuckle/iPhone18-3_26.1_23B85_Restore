@interface NSObject(_VUIMonogramLoader)
- (uint64_t)tv_generatorType;
- (void)tv_setGeneratorType:()_VUIMonogramLoader;
@end

@implementation NSObject(_VUIMonogramLoader)

- (uint64_t)tv_generatorType
{
  v1 = objc_getAssociatedObject(self, sel_tv_generatorType);
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)tv_setGeneratorType:()_VUIMonogramLoader
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, sel_tv_generatorType, v2, 1);
}

@end