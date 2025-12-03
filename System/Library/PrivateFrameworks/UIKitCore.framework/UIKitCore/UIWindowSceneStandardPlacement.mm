@interface UIWindowSceneStandardPlacement
+ (UIWindowSceneStandardPlacement)standardPlacement;
- (id)_createConfigurationWithError:(id *)error;
@end

@implementation UIWindowSceneStandardPlacement

+ (UIWindowSceneStandardPlacement)standardPlacement
{
  _init = [[self alloc] _init];

  return _init;
}

- (id)_createConfigurationWithError:(id *)error
{
  v3 = objc_alloc_init(MEMORY[0x1E69DEC60]);

  return v3;
}

@end