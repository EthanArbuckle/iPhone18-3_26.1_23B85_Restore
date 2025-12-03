@interface VUIActionOpenWebLink
- (VUIActionOpenWebLink)initWithContextData:(id)data appContext:(id)context;
- (VUIAppContext)appContext;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionOpenWebLink

- (VUIActionOpenWebLink)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = VUIActionOpenWebLink;
  v9 = [(VUIActionOpenWebLink *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextData, data);
    objc_storeWeak(&v10->_appContext, contextCopy);
    v11 = [dataCopy vui_stringForKey:@"webUrl"];
    webUrl = v10->_webUrl;
    v10->_webUrl = v11;

    v13 = [dataCopy vui_dictionaryForKey:@"metrics"];
    metrics = v10->_metrics;
    v10->_metrics = v13;
  }

  return v10;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v24[2] = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  handlerCopy = handler;
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
      v20 = handlerCopy;
      [(VUIActionAppPunchout *)v18 performWithTargetResponder:responderCopy completionHandler:v19];

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