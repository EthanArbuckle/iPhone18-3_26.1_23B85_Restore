@interface UIMutableSceneLayerPresentationContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIMutableSceneLayerPresentationContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISceneLayerPresentationContext alloc];

  return [(UISceneLayerPresentationContext *)v4 _initWithSceneLayerPresentationContext:self];
}

@end