@interface SXQuickLookRouter
- (SXQuickLookRouter)initWithResolver:(id)resolver;
- (void)presentFile:(id)file transitionContext:(id)context;
@end

@implementation SXQuickLookRouter

- (SXQuickLookRouter)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = SXQuickLookRouter;
  v6 = [(SXQuickLookRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, resolver);
  }

  return v7;
}

- (void)presentFile:(id)file transitionContext:(id)context
{
  contextCopy = context;
  fileCopy = file;
  resolver = [(SXQuickLookRouter *)self resolver];
  v12 = [resolver resolveProtocol:&unk_1F5426260];

  v9 = [v12 viewControllerForFile:fileCopy transitionContext:contextCopy];

  if (v9)
  {
    resolver2 = [(SXQuickLookRouter *)self resolver];
    v11 = [resolver2 resolveProtocol:&unk_1F53E6C20];

    [v11 presentViewController:v9 animated:1];
  }
}

@end