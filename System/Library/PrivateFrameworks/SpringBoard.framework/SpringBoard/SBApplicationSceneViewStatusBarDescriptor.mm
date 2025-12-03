@interface SBApplicationSceneViewStatusBarDescriptor
+ (id)statusBarDescriptorWithForceHidden:(BOOL)hidden;
- (SBApplicationSceneViewStatusBarDescriptor)initWithForceHidden:(BOOL)hidden;
@end

@implementation SBApplicationSceneViewStatusBarDescriptor

- (SBApplicationSceneViewStatusBarDescriptor)initWithForceHidden:(BOOL)hidden
{
  result = [(SBApplicationSceneViewStatusBarDescriptor *)self init];
  if (result)
  {
    result->_forceHidden = hidden;
  }

  return result;
}

+ (id)statusBarDescriptorWithForceHidden:(BOOL)hidden
{
  v3 = [objc_alloc(objc_opt_class()) initWithForceHidden:hidden];

  return v3;
}

@end