@interface WebPluginContainerCheck
+ (id)checkWithRequest:(id)a3 target:(id)a4 resultObject:(id)a5 selector:(SEL)a6 controller:(id)a7 contextInfo:(id)a8;
- (BOOL)_isForbiddenFileLoad;
- (WebPluginContainerCheck)initWithRequest:(id)a3 target:(id)a4 resultObject:(id)a5 selector:(SEL)a6 controller:(id)a7 contextInfo:(id)a8;
- (id)_actionInformationWithURL:(id)a3;
- (void)_askPolicyDelegate;
- (void)_continueWithPolicy:(unsigned __int8)a3;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation WebPluginContainerCheck

- (WebPluginContainerCheck)initWithRequest:(id)a3 target:(id)a4 resultObject:(id)a5 selector:(SEL)a6 controller:(id)a7 contextInfo:(id)a8
{
  v17.receiver = self;
  v17.super_class = WebPluginContainerCheck;
  v14 = [(WebPluginContainerCheck *)&v17 init];
  if (v14)
  {
    v14->_request = [a3 copy];
    v14->_target = [a4 copy];
    v14->_resultObject = a5;
    if (a6)
    {
      v15 = a6;
    }

    else
    {
      v15 = 0;
    }

    v14->_resultSelector = v15;
    v14->_contextInfo = a8;
    v14->_controller = a7;
  }

  return v14;
}

+ (id)checkWithRequest:(id)a3 target:(id)a4 resultObject:(id)a5 selector:(SEL)a6 controller:(id)a7 contextInfo:(id)a8
{
  result = [[a1 alloc] initWithRequest:a3 target:a4 resultObject:a5 selector:a6 controller:a7 contextInfo:a8];
  if (result)
  {
    v9 = result;
    v10 = result;
    return v9;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WebPluginContainerCheck;
  [(WebPluginContainerCheck *)&v2 dealloc];
}

- (void)_continueWithPolicy:(unsigned __int8)a3
{
  resultSelector = self->_resultSelector;
  contextInfo = self->_contextInfo;
  resultObject = self->_resultObject;
  if (contextInfo)
  {
    if (resultSelector)
    {
      v7 = resultSelector;
    }

    else
    {
      v7 = 0;
    }

    [resultObject v7];
    controller = self->_controller;
    v10 = self;
  }

  else
  {
    if (resultSelector)
    {
      v8 = resultSelector;
    }

    else
    {
      v8 = 0;
    }

    [resultObject v8];
    controller = self->_controller;
    v10 = self;
  }

  [(WebPluginContainerCheckController *)controller _webPluginContainerCancelCheckIfAllowedToLoadRequest:v10];
}

- (BOOL)_isForbiddenFileLoad
{
  WebCore::SecurityContext::securityOrigin((*(*(*([(WebPluginContainerCheckController *)self->_controller webFrame]+ 8) + 8) + 224) + 208));
  v3 = MEMORY[0x1CCA63960](&v8, [(NSURLRequest *)self->_request URL]);
  WebCore::OriginAccessPatternsForWebProcess::singleton(v3);
  canDisplay = WebCore::SecurityOrigin::canDisplay();
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  if ((canDisplay & 1) == 0)
  {
    [(WebPluginContainerCheck *)self _continueWithPolicy:2];
  }

  return canDisplay ^ 1;
}

- (id)_actionInformationWithURL:(id)a3
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = WebActionNavigationTypeKey;
  v4[1] = WebActionModifierFlagsKey;
  v5[0] = &unk_1F474C408;
  v5[1] = &unk_1F474C420;
  v4[2] = WebActionOriginalURLKey;
  v5[2] = a3;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (void)_askPolicyDelegate
{
  v3 = [(WebPluginContainerCheckController *)self->_controller webView];
  v4 = [(NSString *)self->_target length];
  v5 = [(WebPluginContainerCheckController *)self->_controller webFrame];
  v6 = v5;
  if (v4)
  {
    v6 = [v5 findFrameNamed:self->_target];
  }

  v7 = [(WebPluginContainerCheck *)self _actionInformationWithURL:[(NSURLRequest *)self->_request URL]];
  self->_listener = [[WebPolicyDecisionListener alloc] _initWithTarget:self action:sel__continueWithPolicy_];
  v8 = [v3 _policyDelegateForwarder];
  request = self->_request;
  if (v6)
  {
    listener = self->_listener;

    [v8 webView:v3 decidePolicyForNavigationAction:v7 request:request frame:v6 decisionListener:listener];
  }

  else
  {
    target = self->_target;
    v12 = self->_listener;

    [v8 webView:v3 decidePolicyForNewWindowAction:v7 request:request newFrameName:target decisionListener:v12];
  }
}

- (void)start
{
  if (![(WebPluginContainerCheck *)self _isForbiddenFileLoad])
  {

    [(WebPluginContainerCheck *)self _askPolicyDelegate];
  }
}

- (void)cancel
{
  if (!self->_done)
  {

    self->_request = 0;
    self->_target = 0;
    [(WebPolicyDecisionListener *)self->_listener _invalidate];

    self->_listener = 0;
    v3 = self->_resultObject;
    self->_controller = 0;
    self->_resultObject = 0;

    self->_contextInfo = 0;
    self->_done = 1;
  }
}

@end