@interface FBScene(SystemShellHostingEnvironment)
- (uint64_t)systemShellHostingEnvironment;
@end

@implementation FBScene(SystemShellHostingEnvironment)

- (uint64_t)systemShellHostingEnvironment
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end