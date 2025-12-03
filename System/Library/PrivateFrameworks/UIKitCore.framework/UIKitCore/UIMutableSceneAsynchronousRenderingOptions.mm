@interface UIMutableSceneAsynchronousRenderingOptions
- (id)copyWithZone:(_NSZone *)zone;
- (void)setRenderTimes:(id)times;
@end

@implementation UIMutableSceneAsynchronousRenderingOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISceneAsynchronousRenderingOptions alloc];

  return [(UISceneAsynchronousRenderingOptions *)v4 initWithOptions:self];
}

- (void)setRenderTimes:(id)times
{
  v4 = [times copy];
  renderTimes = self->super._renderTimes;
  self->super._renderTimes = v4;
}

@end