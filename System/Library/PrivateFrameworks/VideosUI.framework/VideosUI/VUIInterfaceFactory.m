@interface VUIInterfaceFactory
+ (id)sharedInstance;
- (id)accountViewController;
- (id)rootSplitViewController;
- (id)viewControllerWithDocumentDataSource:(id)a3 appContext:(id)a4;
- (id)viewControllerWithDocumentDataSource:(id)a3 appContext:(id)a4 documentOptions:(id)a5;
- (void)setDocumentCreator:(id)a3;
@end

@implementation VUIInterfaceFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[VUIInterfaceFactory sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_6;

  return v3;
}

void __37__VUIInterfaceFactory_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_6;
  sharedInstance_sharedInstance_6 = v0;
}

- (void)setDocumentCreator:(id)a3
{
  v5 = a3;
  if (self->_documentCreator != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_documentCreator, a3);
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    self->_documentCreatorFlags.respondsToViewControllerCreation = v6 & 1;
  }
}

- (id)viewControllerWithDocumentDataSource:(id)a3 appContext:(id)a4
{
  if (self->_documentCreatorFlags.respondsToViewControllerCreation)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(VUIInterfaceFactory *)self documentCreator];
    v9 = [v8 viewControllerWithDocumentDataSource:v7 appContext:v6 documentOptions:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)viewControllerWithDocumentDataSource:(id)a3 appContext:(id)a4 documentOptions:(id)a5
{
  if (self->_documentCreatorFlags.respondsToViewControllerCreation)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [(VUIInterfaceFactory *)self documentCreator];
    v12 = [v11 viewControllerWithDocumentDataSource:v10 appContext:v9 documentOptions:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)rootSplitViewController
{
  if (self->_documentCreatorFlags.respondsToViewControllerCreation)
  {
    v2 = [(VUIInterfaceFactory *)self documentCreator];
    v3 = [v2 rootSplitViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accountViewController
{
  v2 = objc_alloc_init(VUIAccountViewController);

  return v2;
}

@end