@interface VUIActionNavigate
- (VUIActionNavigate)initWithActionDataSource:(id)a3 appContext:(id)a4;
- (VUIActionNavigate)initWithDocument:(id)a3 appContext:(id)a4;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionNavigate

- (VUIActionNavigate)initWithActionDataSource:(id)a3 appContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [VUIDocumentDataSource documentDataSourceWithDictionary:v6];
  if (v8)
  {
    v9 = [v6 vui_dictionaryForKey:@"contextData"];
    v17.receiver = self;
    v17.super_class = VUIActionNavigate;
    v10 = [(VUIActionNavigate *)&v17 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_document, v8);
      v11->_requiresAuthentication = [v9 vui_BOOLForKey:@"requiresAuthentication" defaultValue:0];
      if (v7)
      {
        objc_storeWeak(&v11->_appContext, v7);
      }

      else
      {
        v13 = +[VUITVAppLauncher sharedInstance];
        v14 = [v13 appController];
        v15 = [v14 appContext];
        objc_storeWeak(&v11->_appContext, v15);
      }
    }

    self = v11;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (VUIActionNavigate)initWithDocument:(id)a3 appContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VUIActionNavigate;
  v9 = [(VUIActionNavigate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_document, a3);
    objc_storeWeak(&v10->_appContext, v8);
  }

  return v10;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __66__VUIActionNavigate_performWithTargetResponder_completionHandler___block_invoke;
  v20 = &unk_1E872FDD0;
  objc_copyWeak(&v23, &location);
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = _Block_copy(&v17);
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  if ([VUIUtilities isSUIEnabled:v17])
  {
    v12 = +[VUIInterfaceFactory sharedInstance];
    v13 = [v12 controllerPresenter];
    document = self->_document;
    v15 = [(VUIAction *)self documentOptions];
    [v13 handleDocumentDataSource:document targetResponder:v8 appContext:WeakRetained documentOptions:v15 completion:v10];
  }

  else
  {
    v16 = self->_document;
    v12 = [(VUIAction *)self documentOptions];
    [VUIApplicationRouter handleDocumentDataSource:v16 targetResponder:v8 appContext:WeakRetained documentOptions:v12 completion:v10];
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