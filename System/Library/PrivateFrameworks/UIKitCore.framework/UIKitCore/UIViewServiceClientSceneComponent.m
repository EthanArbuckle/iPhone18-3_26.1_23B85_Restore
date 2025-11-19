@interface UIViewServiceClientSceneComponent
@end

@implementation UIViewServiceClientSceneComponent

uint64_t __96___UIViewServiceClientSceneComponent_configureAuxiliaryConnectionForMaterializedViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x1EFB82510];

  v5 = [*(a1 + 32) clientScene];
  v6 = [v5 identityToken];
  v7 = [v4 isEqual:v6];

  return v7;
}

@end