@interface VUIInterfaceFactory
+ (id)sharedInstance;
- (id)accountViewController;
- (id)rootSplitViewController;
- (id)viewControllerWithDocumentDataSource:(id)source appContext:(id)context;
- (id)viewControllerWithDocumentDataSource:(id)source appContext:(id)context documentOptions:(id)options;
- (void)setDocumentCreator:(id)creator;
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

- (void)setDocumentCreator:(id)creator
{
  creatorCopy = creator;
  if (self->_documentCreator != creatorCopy)
  {
    v7 = creatorCopy;
    objc_storeStrong(&self->_documentCreator, creator);
    v6 = objc_opt_respondsToSelector();
    creatorCopy = v7;
    self->_documentCreatorFlags.respondsToViewControllerCreation = v6 & 1;
  }
}

- (id)viewControllerWithDocumentDataSource:(id)source appContext:(id)context
{
  if (self->_documentCreatorFlags.respondsToViewControllerCreation)
  {
    contextCopy = context;
    sourceCopy = source;
    documentCreator = [(VUIInterfaceFactory *)self documentCreator];
    v9 = [documentCreator viewControllerWithDocumentDataSource:sourceCopy appContext:contextCopy documentOptions:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)viewControllerWithDocumentDataSource:(id)source appContext:(id)context documentOptions:(id)options
{
  if (self->_documentCreatorFlags.respondsToViewControllerCreation)
  {
    optionsCopy = options;
    contextCopy = context;
    sourceCopy = source;
    documentCreator = [(VUIInterfaceFactory *)self documentCreator];
    v12 = [documentCreator viewControllerWithDocumentDataSource:sourceCopy appContext:contextCopy documentOptions:optionsCopy];
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
    documentCreator = [(VUIInterfaceFactory *)self documentCreator];
    rootSplitViewController = [documentCreator rootSplitViewController];
  }

  else
  {
    rootSplitViewController = 0;
  }

  return rootSplitViewController;
}

- (id)accountViewController
{
  v2 = objc_alloc_init(VUIAccountViewController);

  return v2;
}

@end