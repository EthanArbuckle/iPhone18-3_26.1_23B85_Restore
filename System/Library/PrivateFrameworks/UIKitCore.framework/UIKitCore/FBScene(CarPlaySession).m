@interface FBScene(CarPlaySession)
- (uint64_t)carPlaySession;
@end

@implementation FBScene(CarPlaySession)

- (uint64_t)carPlaySession
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end