@interface SBApplicationSceneViewStatusBarDescriptor
+ (id)statusBarDescriptorWithForceHidden:(BOOL)a3;
- (SBApplicationSceneViewStatusBarDescriptor)initWithForceHidden:(BOOL)a3;
@end

@implementation SBApplicationSceneViewStatusBarDescriptor

- (SBApplicationSceneViewStatusBarDescriptor)initWithForceHidden:(BOOL)a3
{
  result = [(SBApplicationSceneViewStatusBarDescriptor *)self init];
  if (result)
  {
    result->_forceHidden = a3;
  }

  return result;
}

+ (id)statusBarDescriptorWithForceHidden:(BOOL)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithForceHidden:a3];

  return v3;
}

@end