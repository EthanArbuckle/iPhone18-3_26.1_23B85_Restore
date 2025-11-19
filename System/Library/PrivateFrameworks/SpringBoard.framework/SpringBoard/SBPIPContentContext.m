@interface SBPIPContentContext
- (SBPIPContentContext)initWithWindowScene:(id)a3 containerViewController:(id)a4;
@end

@implementation SBPIPContentContext

- (SBPIPContentContext)initWithWindowScene:(id)a3 containerViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBPIPContentContext;
  v9 = [(SBPIPContentContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerViewController, a4);
    objc_storeStrong(&v10->_windowScene, a3);
  }

  return v10;
}

@end