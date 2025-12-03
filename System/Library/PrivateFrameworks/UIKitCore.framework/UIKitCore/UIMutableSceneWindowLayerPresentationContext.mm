@interface UIMutableSceneWindowLayerPresentationContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIMutableSceneWindowLayerPresentationContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISceneWindowLayerPresentationContext alloc];

  return [(UISceneWindowLayerPresentationContext *)v4 _initWithSceneWindowLayerPresentationContext:self];
}

@end