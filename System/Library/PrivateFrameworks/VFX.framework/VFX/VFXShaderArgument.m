@interface VFXShaderArgument
- (void)dealloc;
@end

@implementation VFXShaderArgument

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXShaderArgument;
  [(VFXShaderArgument *)&v3 dealloc];
}

@end