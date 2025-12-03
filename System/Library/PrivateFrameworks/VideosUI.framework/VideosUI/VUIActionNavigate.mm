@interface VUIActionNavigate
- (VUIActionNavigate)initWithActionDataSource:(id)source appContext:(id)context;
- (VUIActionNavigate)initWithDocument:(id)document appContext:(id)context;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionNavigate

- (VUIActionNavigate)initWithActionDataSource:(id)source appContext:(id)context
{
  sourceCopy = source;
  contextCopy = context;
  v8 = [VUIDocumentDataSource documentDataSourceWithDictionary:sourceCopy];
  if (v8)
  {
    v9 = [sourceCopy vui_dictionaryForKey:@"contextData"];
    v17.receiver = self;
    v17.super_class = VUIActionNavigate;
    v10 = [(VUIActionNavigate *)&v17 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_document, v8);
      v11->_requiresAuthentication = [v9 vui_BOOLForKey:@"requiresAuthentication" defaultValue:0];
      if (contextCopy)
      {
        objc_storeWeak(&v11->_appContext, contextCopy);
      }

      else
      {
        v13 = +[VUITVAppLauncher sharedInstance];
        appController = [v13 appController];
        appContext = [appController appContext];
        objc_storeWeak(&v11->_appContext, appContext);
      }
    }

    self = v11;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIActionNavigate)initWithDocument:(id)document appContext:(id)context
{
  documentCopy = document;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = VUIActionNavigate;
  v9 = [(VUIActionNavigate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_document, document);
    objc_storeWeak(&v10->_appContext, contextCopy);
  }

  return v10;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  responderCopy = responder;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __66__VUIActionNavigate_performWithTargetResponder_completionHandler___block_invoke;
  v20 = &unk_1E872FDD0;
  objc_copyWeak(&v23, &location);
  v8 = responderCopy;
  v21 = v8;
  v9 = handlerCopy;
  v22 = v9;
  v10 = _Block_copy(&v17);
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  if ([VUIUtilities isSUIEnabled:v17])
  {
    documentOptions2 = +[VUIInterfaceFactory sharedInstance];
    controllerPresenter = [documentOptions2 controllerPresenter];
    document = self->_document;
    documentOptions = [(VUIAction *)self documentOptions];
    [controllerPresenter handleDocumentDataSource:document targetResponder:v8 appContext:WeakRetained documentOptions:documentOptions completion:v10];
  }

  else
  {
    v16 = self->_document;
    documentOptions2 = [(VUIAction *)self documentOptions];
    [VUIApplicationRouter handleDocumentDataSource:v16 targetResponder:v8 appContext:WeakRetained documentOptions:documentOptions2 completion:v10];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __66__VUIActionNavigate_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v5 = [WeakRetained documentOptions];
  [WeakRetained _finalizeWithSuccess:a2 targetResponder:v4 documentOptions:v5 completion:*(a1 + 40)];
}

@end