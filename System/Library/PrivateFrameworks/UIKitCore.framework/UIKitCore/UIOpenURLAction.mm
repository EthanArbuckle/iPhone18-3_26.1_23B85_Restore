@interface UIOpenURLAction
- (UIOpenURLAction)initWithURL:(id)l openURLOptions:(id)options workspaceOriginatingProcess:(id)process responder:(id)responder;
@end

@implementation UIOpenURLAction

- (UIOpenURLAction)initWithURL:(id)l openURLOptions:(id)options workspaceOriginatingProcess:(id)process responder:(id)responder
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = UIOpenURLAction;
  v12 = [(UISOpenURLAction *)&v15 initWithURL:l workspaceOriginatingProcess:process responder:responder];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localOpenURLOptions, options);
  }

  return v13;
}

@end