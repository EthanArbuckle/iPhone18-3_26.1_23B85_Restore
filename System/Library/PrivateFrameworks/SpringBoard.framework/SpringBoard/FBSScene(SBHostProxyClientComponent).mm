@interface FBSScene(SBHostProxyClientComponent)
- (uint64_t)hostProxyClientComponent;
@end

@implementation FBSScene(SBHostProxyClientComponent)

- (uint64_t)hostProxyClientComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end