@interface UIMutableSceneLayerPresentationContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIMutableSceneLayerPresentationContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISceneLayerPresentationContext alloc];

  return [(UISceneLayerPresentationContext *)v4 _initWithSceneLayerPresentationContext:self];
}

@end