@interface UIOpenURLAction
- (UIOpenURLAction)initWithURL:(id)a3 openURLOptions:(id)a4 workspaceOriginatingProcess:(id)a5 responder:(id)a6;
@end

@implementation UIOpenURLAction

- (UIOpenURLAction)initWithURL:(id)a3 openURLOptions:(id)a4 workspaceOriginatingProcess:(id)a5 responder:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = UIOpenURLAction;
  v12 = [(UISOpenURLAction *)&v15 initWithURL:a3 workspaceOriginatingProcess:a5 responder:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localOpenURLOptions, a4);
  }

  return v13;
}

@end