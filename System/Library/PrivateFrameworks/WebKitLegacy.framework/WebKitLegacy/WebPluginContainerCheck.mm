@interface WebPluginContainerCheck
+ (id)checkWithRequest:(id)request target:(id)target resultObject:(id)object selector:(SEL)selector controller:(id)controller contextInfo:(id)info;
- (BOOL)_isForbiddenFileLoad;
- (WebPluginContainerCheck)initWithRequest:(id)request target:(id)target resultObject:(id)object selector:(SEL)selector controller:(id)controller contextInfo:(id)info;
- (id)_actionInformationWithURL:(id)l;
- (void)_askPolicyDelegate;
- (void)_continueWithPolicy:(unsigned __int8)policy;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation WebPluginContainerCheck

- (WebPluginContainerCheck)initWithRequest:(id)request target:(id)target resultObject:(id)object selector:(SEL)selector controller:(id)controller contextInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = WebPluginContainerCheck;
  v14 = [(WebPluginContainerCheck *)&v17 init];
  if (v14)
  {
    v14->_request = [request copy];
    v14->_target = [target copy];
    v14->_resultObject = object;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v14->_resultSelector = selectorCopy;
    v14->_contextInfo = info;
    v14->_controller = controller;
  }

  return v14;
}

+ (id)checkWithRequest:(id)request target:(id)target resultObject:(id)object selector:(SEL)selector controller:(id)controller contextInfo:(id)info
{
  result = [[self alloc] initWithRequest:request target:target resultObject:object selector:selector controller:controller contextInfo:info];
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

- (void)_continueWithPolicy:(unsigned __int8)policy
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
    selfCopy2 = self;
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
    selfCopy2 = self;
  }

  [(WebPluginContainerCheckController *)controller _webPluginContainerCancelCheckIfAllowedToLoadRequest:selfCopy2];
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

- (id)_actionInformationWithURL:(id)l
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = WebActionNavigationTypeKey;
  v4[1] = WebActionModifierFlagsKey;
  v5[0] = &unk_1F474C408;
  v5[1] = &unk_1F474C420;
  v4[2] = WebActionOriginalURLKey;
  v5[2] = l;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (void)_askPolicyDelegate
{
  webView = [(WebPluginContainerCheckController *)self->_controller webView];
  v4 = [(NSString *)self->_target length];
  webFrame = [(WebPluginContainerCheckController *)self->_controller webFrame];
  v6 = webFrame;
  if (v4)
  {
    v6 = [webFrame findFrameNamed:self->_target];
  }

  v7 = [(WebPluginContainerCheck *)self _actionInformationWithURL:[(NSURLRequest *)self->_request URL]];
  self->_listener = [[WebPolicyDecisionListener alloc] _initWithTarget:self action:sel__continueWithPolicy_];
  _policyDelegateForwarder = [webView _policyDelegateForwarder];
  request = self->_request;
  if (v6)
  {
    listener = self->_listener;

    [_policyDelegateForwarder webView:webView decidePolicyForNavigationAction:v7 request:request frame:v6 decisionListener:listener];
  }

  else
  {
    target = self->_target;
    v12 = self->_listener;

    [_policyDelegateForwarder webView:webView decidePolicyForNewWindowAction:v7 request:request newFrameName:target decisionListener:v12];
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