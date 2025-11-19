@interface VFXRendererRayMap
- (void)dealloc;
@end

@implementation VFXRendererRayMap

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRendererRayMap;
  [(VFXRendererRayMap *)&v3 dealloc];
}

@end