@interface UIMutableSceneAsynchronousRenderingOptions
- (id)copyWithZone:(_NSZone *)a3;
- (void)setRenderTimes:(id)a3;
@end

@implementation UIMutableSceneAsynchronousRenderingOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISceneAsynchronousRenderingOptions alloc];

  return [(UISceneAsynchronousRenderingOptions *)v4 initWithOptions:self];
}

- (void)setRenderTimes:(id)a3
{
  v4 = [a3 copy];
  renderTimes = self->super._renderTimes;
  self->super._renderTimes = v4;
}

@end