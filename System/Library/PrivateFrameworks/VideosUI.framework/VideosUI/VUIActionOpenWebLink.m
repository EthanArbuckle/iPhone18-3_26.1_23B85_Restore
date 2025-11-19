@interface VUIActionOpenWebLink
- (VUIActionOpenWebLink)initWithContextData:(id)a3 appContext:(id)a4;
- (VUIAppContext)appContext;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionOpenWebLink

- (VUIActionOpenWebLink)initWithContextData:(id)a3 appContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = VUIActionOpenWebLink;
  v9 = [(VUIActionOpenWebLink *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextData, a3);
    objc_storeWeak(&v10->_appContext, v8);
    v11 = [v7 vui_stringForKey:@"webUrl"];
    webUrl = v10->_webUrl;
    v10->_webUrl = v11;

    v13 = [v7 vui_dictionaryForKey:@"metrics"];
    metrics = v10->_metrics;
    v10->_metrics = v13;
  }

  return v10;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  v9 = WeakRetained;
  webUrl = self->_webUrl;
  if (webUrl)
  {
    v11 = WeakRetained == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v23[0] = @"openUrl";
    v23[1] = @"metrics";
    metrics = self->_metrics;
    if (!metrics)
    {
      metrics = MEMORY[0x1E695E0F8];
    }

    v24[0] = webUrl;
    v24[1] = metrics;
    v13 = MEMORY[0x1E695DF20];
    v14 = webUrl;
    v15 = [v13 dictionaryWithObjects:v24 forKeys:v23 count:2];

    v16 = [[VUIActionAppPunchout alloc] initWithContextData:v15 appContext:v9];
    actionPunchout = self->_actionPunchout;
    self->_actionPunchout = v16;

    if (self->_actionPunchout)
    {
      objc_initWeak(&location, self);
      v18 = self->_actionPunchout;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __69__VUIActionOpenWebLink_performWithTargetResponder_completionHandler___block_invoke;
      v19[3] = &unk_1E872DE58;
      objc_copyWeak(&v21, &location);
      v20 = v7;
      [(VUIActionAppPunchout *)v18 performWithTargetResponder:v6 completionHandler:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __69__VUIActionOpenWebLink_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setActionPunchout:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end