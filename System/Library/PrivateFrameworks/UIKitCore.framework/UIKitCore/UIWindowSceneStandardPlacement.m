@interface UIWindowSceneStandardPlacement
+ (UIWindowSceneStandardPlacement)standardPlacement;
- (id)_createConfigurationWithError:(id *)a3;
@end

@implementation UIWindowSceneStandardPlacement

+ (UIWindowSceneStandardPlacement)standardPlacement
{
  v2 = [[a1 alloc] _init];

  return v2;
}

- (id)_createConfigurationWithError:(id *)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69DEC60]);

  return v3;
}

@end