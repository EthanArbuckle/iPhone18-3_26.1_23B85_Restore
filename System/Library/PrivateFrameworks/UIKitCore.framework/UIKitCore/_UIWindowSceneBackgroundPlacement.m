@interface _UIWindowSceneBackgroundPlacement
- (_UIWindowSceneBackgroundPlacement)init;
- (id)_createConfigurationWithError:(id *)a3;
@end

@implementation _UIWindowSceneBackgroundPlacement

- (_UIWindowSceneBackgroundPlacement)init
{
  v3.receiver = self;
  v3.super_class = _UIWindowSceneBackgroundPlacement;
  return [(UIWindowScenePlacement *)&v3 _init];
}

- (id)_createConfigurationWithError:(id *)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69DEC10]);

  return v3;
}

@end