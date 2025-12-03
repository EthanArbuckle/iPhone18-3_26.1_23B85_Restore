@interface SBPIPContentContext
- (SBPIPContentContext)initWithWindowScene:(id)scene containerViewController:(id)controller;
@end

@implementation SBPIPContentContext

- (SBPIPContentContext)initWithWindowScene:(id)scene containerViewController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SBPIPContentContext;
  v9 = [(SBPIPContentContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerViewController, controller);
    objc_storeStrong(&v10->_windowScene, scene);
  }

  return v10;
}

@end