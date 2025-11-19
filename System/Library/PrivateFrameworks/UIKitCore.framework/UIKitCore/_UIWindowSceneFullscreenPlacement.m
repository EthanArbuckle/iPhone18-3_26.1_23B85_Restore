@interface _UIWindowSceneFullscreenPlacement
- (_UIWindowSceneFullscreenPlacement)init;
- (id)_createConfigurationWithError:(id *)a3;
@end

@implementation _UIWindowSceneFullscreenPlacement

- (_UIWindowSceneFullscreenPlacement)init
{
  v3.receiver = self;
  v3.super_class = _UIWindowSceneFullscreenPlacement;
  return [(UIWindowScenePlacement *)&v3 _init];
}

- (id)_createConfigurationWithError:(id *)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69DEC18]);

  return v3;
}

@end