@interface SXQuickLookRouter
- (SXQuickLookRouter)initWithResolver:(id)a3;
- (void)presentFile:(id)a3 transitionContext:(id)a4;
@end

@implementation SXQuickLookRouter

- (SXQuickLookRouter)initWithResolver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXQuickLookRouter;
  v6 = [(SXQuickLookRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, a3);
  }

  return v7;
}

- (void)presentFile:(id)a3 transitionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXQuickLookRouter *)self resolver];
  v12 = [v8 resolveProtocol:&unk_1F5426260];

  v9 = [v12 viewControllerForFile:v7 transitionContext:v6];

  if (v9)
  {
    v10 = [(SXQuickLookRouter *)self resolver];
    v11 = [v10 resolveProtocol:&unk_1F53E6C20];

    [v11 presentViewController:v9 animated:1];
  }
}

@end