@interface UIMutableSceneWindowLayerPresentationContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIMutableSceneWindowLayerPresentationContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISceneWindowLayerPresentationContext alloc];

  return [(UISceneWindowLayerPresentationContext *)v4 _initWithSceneWindowLayerPresentationContext:self];
}

@end