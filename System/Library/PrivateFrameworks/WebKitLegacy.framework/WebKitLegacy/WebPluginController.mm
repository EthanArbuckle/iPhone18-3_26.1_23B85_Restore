@interface WebPluginController
+ (BOOL)isPlugInView:(id)view;
+ (void)addPlugInView:(id)view;
- (WebPluginController)initWithDocumentView:(id)view;
- (id)URLPolicyCheckReferrer;
- (id)_webPluginContainerCheckIfAllowedToLoadRequest:(id)request inFrame:(id)frame resultObject:(id)object selector:(SEL)selector;
- (id)superlayerForPluginView:(id)view;
- (id)webView;
- (void)_cancelOutstandingChecks;
- (void)_webPluginContainerCancelCheckIfAllowedToLoadRequest:(id)request;
- (void)addPlugin:(id)plugin;
- (void)dealloc;
- (void)destroyAllPlugins;
- (void)destroyOnePlugin:(id)plugin;
- (void)destroyPlugin:(id)plugin;
- (void)pluginView:(id)view receivedData:(id)data;
- (void)pluginView:(id)view receivedError:(id)error;
- (void)pluginView:(id)view receivedResponse:(id)response;
- (void)pluginViewFinishedLoading:(id)loading;
- (void)restorePluginsFromCache;
- (void)startAllPlugins;
- (void)stopAllPlugins;
- (void)stopOnePlugin:(id)plugin;
- (void)stopOnePluginForPageCache:(id)cache;
- (void)stopPluginsForPageCache;
- (void)webPlugInContainerDidHideFullScreenForView:(id)view;
- (void)webPlugInContainerLoadRequest:(id)request inFrame:(id)frame;
- (void)webPlugInContainerShowStatus:(id)status;
- (void)webPlugInContainerWillShowFullScreenForView:(id)view;
@end

@implementation WebPluginController

+ (void)addPlugInView:(id)view
{
  if (byte_1ED6A60F2)
  {
    if (!qword_1ED6A6100)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v5 = qword_1ED6A6100;
      qword_1ED6A6100 = v4;
      if (v5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    qword_1ED6A6100 = 0;
    byte_1ED6A60F2 = 1;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = qword_1ED6A6100;
    qword_1ED6A6100 = v7;
    if (v5)
    {
LABEL_4:
    }
  }

  if (view)
  {
    v6 = qword_1ED6A6100;

    [v6 addObject:view];
  }
}

+ (BOOL)isPlugInView:(id)view
{
  if (byte_1ED6A60F2 == 1)
  {
    v3 = qword_1ED6A6100;
  }

  else
  {
    v3 = 0;
    qword_1ED6A6100 = 0;
    byte_1ED6A60F2 = 1;
  }

  return [v3 containsObject:view];
}

- (WebPluginController)initWithDocumentView:(id)view
{
  v7.receiver = self;
  v7.super_class = WebPluginController;
  result = [(WebPluginController *)&v7 init];
  if (result)
  {
    result->_documentView = view;
    v5 = result;
    result->_views = objc_alloc_init(MEMORY[0x1E695DF70]);
    Mutable = CFSetCreateMutable(0, 0, 0);
    result = v5;
    v5->_checksInProgress = Mutable;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebPluginController;
  [(WebPluginController *)&v3 dealloc];
}

- (id)superlayerForPluginView:(id)view
{
  webFrame = [(WebPluginController *)self webFrame];
  if (!webFrame)
  {
    return 0;
  }

  v5 = *(webFrame[1] + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 0;
  }

  v7 = WebCore::LocalFrameView::graphicsLayerForPlatformWidget(v6, view);
  if (!v7)
  {
    return 0;
  }

  v8 = *(*v7 + 624);

  return v8();
}

- (void)stopOnePlugin:(id)plugin
{
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v4);
    }

    MEMORY[0x1CCA63320](v6);
    [plugin webPlugInStop];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if ((v5 & 1) == 0)
    {
      return;
    }

    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v5);
    }

    MEMORY[0x1CCA63320](v6);
    [plugin pluginStop];
  }

  JSC::JSLock::DropAllLocks::~DropAllLocks(v6);
}

- (void)stopOnePluginForPageCache:(id)cache
{
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v5);
    }

    MEMORY[0x1CCA63320](v6);
    [cache webPlugInStopForPageCache];
    JSC::JSLock::DropAllLocks::~DropAllLocks(v6);
  }

  else
  {

    [(WebPluginController *)self stopOnePlugin:cache];
  }
}

- (void)destroyOnePlugin:(id)plugin
{
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v4);
    }

    MEMORY[0x1CCA63320](v6);
    [plugin webPlugInDestroy];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();
    if ((v5 & 1) == 0)
    {
      return;
    }

    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v5);
    }

    MEMORY[0x1CCA63320](v6);
    [plugin pluginDestroy];
  }

  JSC::JSLock::DropAllLocks::~DropAllLocks(v6);
}

- (void)startAllPlugins
{
  if (!self->_started)
  {
    [(NSMutableArray *)self->_views count];
    v3 = [(NSMutableArray *)self->_views count];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = v3 & 0x7FFFFFFF;
      v6 = MEMORY[0x1E69E25C0];
      do
      {
        v7 = [(NSMutableArray *)self->_views objectAtIndex:v4];
        v8 = objc_opt_respondsToSelector();
        if (v8)
        {
          if (!*v6)
          {
            WebCore::commonVMSlow(v8);
          }

          MEMORY[0x1CCA63320](v10);
          [v7 webPlugInStart];
        }

        else
        {
          v9 = objc_opt_respondsToSelector();
          if ((v9 & 1) == 0)
          {
            goto LABEL_8;
          }

          if (!*v6)
          {
            WebCore::commonVMSlow(v9);
          }

          MEMORY[0x1CCA63320](v10);
          [v7 pluginStart];
        }

        JSC::JSLock::DropAllLocks::~DropAllLocks(v10);
LABEL_8:
        ++v4;
      }

      while (v5 != v4);
    }

    self->_started = 1;
  }
}

- (void)stopAllPlugins
{
  if (self->_started)
  {
    [(NSMutableArray *)self->_views count];
    v3 = [(NSMutableArray *)self->_views count];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = v3 & 0x7FFFFFFF;
      do
      {
        [(WebPluginController *)self stopOnePlugin:[(NSMutableArray *)self->_views objectAtIndex:v4++]];
      }

      while (v5 != v4);
    }

    self->_started = 0;
  }
}

- (void)stopPluginsForPageCache
{
  if (self->_started)
  {
    v3 = [(NSMutableArray *)self->_views count];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        [(WebPluginController *)self stopOnePluginForPageCache:[(NSMutableArray *)self->_views objectAtIndex:i]];
      }
    }

    self->_started = 0;
  }
}

- (void)restorePluginsFromCache
{
  _webView = [(WAKView *)self->_documentView _webView];
  v4 = [(NSMutableArray *)self->_views count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [objc_msgSend(_webView "_UIKitDelegateForwarder")];
    }
  }
}

- (void)addPlugin:(id)plugin
{
  if (!self->_documentView || ([(NSMutableArray *)self->_views containsObject:?]& 1) != 0)
  {
    return;
  }

  [(NSMutableArray *)self->_views addObject:plugin];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v5);
    }

    MEMORY[0x1CCA63320](v10);
    [plugin webPlugInInitialize];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v6);
    }

    MEMORY[0x1CCA63320](v10);
    [plugin pluginInitialize];
  }

  JSC::JSLock::DropAllLocks::~DropAllLocks(v10);
LABEL_12:
  if (!self->_started)
  {
    return;
  }

  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v7);
    }

    MEMORY[0x1CCA63320](v10);
    [plugin webPlugInStart];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();
    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v8);
    }

    MEMORY[0x1CCA63320](v10);
    [plugin pluginStart];
  }

  JSC::JSLock::DropAllLocks::~DropAllLocks(v10);
LABEL_22:
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v9);
    }

    MEMORY[0x1CCA63320](v10);
    [plugin setContainingWindow:{-[WAKView window](self->_documentView, "window")}];
    JSC::JSLock::DropAllLocks::~DropAllLocks(v10);
  }
}

- (void)destroyPlugin:(id)plugin
{
  if ([(NSMutableArray *)self->_views containsObject:?])
  {
    if (self->_started)
    {
      [(WebPluginController *)self stopOnePlugin:plugin];
    }

    [(WebPluginController *)self destroyOnePlugin:plugin];
    if (byte_1ED6A60F2 == 1)
    {
      v5 = qword_1ED6A6100;
    }

    else
    {
      v5 = 0;
      qword_1ED6A6100 = 0;
      byte_1ED6A60F2 = 1;
    }

    [v5 removeObject:plugin];
    views = self->_views;

    [(NSMutableArray *)views removeObject:plugin];
  }
}

- (void)_webPluginContainerCancelCheckIfAllowedToLoadRequest:(id)request
{
  [request cancel];
  checksInProgress = self->_checksInProgress;

  [(NSMutableSet *)checksInProgress removeObject:request];
}

- (void)_cancelOutstandingChecks
{
  checksInProgress = self->_checksInProgress;
  if (checksInProgress)
  {
    CFSetApplyFunction(checksInProgress, cancelOutstandingCheck, 0);

    self->_checksInProgress = 0;
  }
}

- (void)destroyAllPlugins
{
  [(WebPluginController *)self stopAllPlugins];
  [(NSMutableArray *)self->_views count];
  [(WebPluginController *)self _cancelOutstandingChecks];
  v3 = [(NSMutableArray *)self->_views count];
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v3 & 0x7FFFFFFF;
    do
    {
      while (1)
      {
        v6 = [(NSMutableArray *)self->_views objectAtIndex:v4];
        [(WebPluginController *)self destroyOnePlugin:v6];
        if (byte_1ED6A60F2 != 1)
        {
          break;
        }

        [qword_1ED6A6100 removeObject:v6];
        if (v5 == ++v4)
        {
          goto LABEL_7;
        }
      }

      qword_1ED6A6100 = 0;
      byte_1ED6A60F2 = 1;
      [0 removeObject:v6];
      ++v4;
    }

    while (v5 != v4);
  }

LABEL_7:
  [(NSMutableArray *)self->_views makeObjectsPerformSelector:sel_removeFromSuperview];

  self->_views = 0;
  self->_documentView = 0;
}

- (id)_webPluginContainerCheckIfAllowedToLoadRequest:(id)request inFrame:(id)frame resultObject:(id)object selector:(SEL)selector
{
  v7 = [WebPluginContainerCheck checkWithRequest:request target:frame resultObject:object selector:selector controller:self contextInfo:0];
  [(NSMutableSet *)self->_checksInProgress addObject:v7];
  [(WebPluginContainerCheck *)v7 start];
  return v7;
}

- (void)webPlugInContainerLoadRequest:(id)request inFrame:(id)frame
{
  if (!request)
  {
    return;
  }

  if (!self->_documentView)
  {
    return;
  }

  webFrame = [(WebDataSource *)self->_dataSource webFrame];
  if (!webFrame)
  {
    return;
  }

  v7 = webFrame;
  if (!frame)
  {
    frame = @"_top";
  }

  v8 = [objc_msgSend(request "URL")];
  if (v8)
  {
    v9 = v8;
    if ([(WebFrame *)v7 findFrameNamed:frame]== v7)
    {

      [(WebFrame *)v7 _stringByEvaluatingJavaScriptFromString:v9];
    }

    return;
  }

  m_ptr = v7->_private->coreFrame.m_ptr;
  MEMORY[0x1CCA65390](v32, request);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  *v26 = 0u;
  v27 = 0u;
  WebCore::SubstituteData::SubstituteData(v26);
  MEMORY[0x1CCA65720](v37, m_ptr, v32, v26);
  v12 = *(&v30 + 1);
  *(&v30 + 1) = 0;
  if (v12)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v29, v11);
  v14 = v26[1];
  v26[1] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = v26[0];
  v26[0] = 0;
  if (!v15 || atomic_fetch_add(v15 + 2, 0xFFFFFFFF) != 1)
  {
    v16 = v36;
    v36 = 0;
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  atomic_store(1u, v15 + 2);
  (*(*v15 + 8))(v15);
  v16 = v36;
  v36 = 0;
  if (v16)
  {
LABEL_17:
  }

LABEL_18:
  v17 = v35;
  v35 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      v19 = MEMORY[0x1CCA67F60]();
      bmalloc::api::tzoneFree(v19, v20);
      v18 = v34;
      v34 = 0;
      if (!v18)
      {
        goto LABEL_29;
      }

LABEL_27:
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v13);
      }

      goto LABEL_29;
    }

    --*v17;
  }

  v18 = v34;
  v34 = 0;
  if (v18)
  {
    goto LABEL_27;
  }

LABEL_29:
  v21 = v33;
  v33 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v13);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(v32, v13);
  WTF::AtomStringImpl::add(v26, frame, v22);
  v24 = v26[0];
  if (v26[0])
  {
    atomic_fetch_add_explicit(v26[0], 2u, memory_order_relaxed);
  }

  v25 = v38;
  v38 = v24;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v23);
  }

  v39 = 1;
  WebCore::FrameLoader::load();
  MEMORY[0x1CCA65730](v37);
}

- (void)webPlugInContainerWillShowFullScreenForView:(id)view
{
  _webView = [(WebDataSource *)self->_dataSource _webView];
  _UIKitDelegateForwarder = [_webView _UIKitDelegateForwarder];

  [_UIKitDelegateForwarder webView:_webView willShowFullScreenForPlugInView:view];
}

- (void)webPlugInContainerDidHideFullScreenForView:(id)view
{
  _webView = [(WebDataSource *)self->_dataSource _webView];
  _UIKitDelegateForwarder = [_webView _UIKitDelegateForwarder];

  [_UIKitDelegateForwarder webView:_webView didHideFullScreenForPlugInView:view];
}

- (void)webPlugInContainerShowStatus:(id)status
{
  if (status)
  {
    statusCopy = status;
  }

  else
  {
    statusCopy = &stru_1F472E7E8;
  }

  _webView = [(WebDataSource *)self->_dataSource _webView];
  _UIDelegateForwarder = [_webView _UIDelegateForwarder];

  [_UIDelegateForwarder webView:_webView setStatusText:statusCopy];
}

- (id)webView
{
  webFrame = [(WebPluginController *)self webFrame];

  return [webFrame webView];
}

- (id)URLPolicyCheckReferrer
{
  v2 = [objc_msgSend(objc_msgSend(-[WebPluginController webFrame](self "webFrame")];

  return [v2 _web_originalDataAsString];
}

- (void)pluginView:(id)view receivedResponse:(id)response
{
  if (objc_opt_respondsToSelector())
  {

    [view webPlugInMainResourceDidReceiveResponse:response];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) _initWithPluginErrorCode:204 contentURL:objc_msgSend(response pluginPageURL:"URL") pluginName:0 MIMEType:{0, objc_msgSend(response, "MIMEType")}];
    dataSource = self->_dataSource;
    if (dataSource)
    {
      [(WebDataSource *)dataSource _documentLoader];
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1CCA64920](&v14, v7);
    WebCore::DocumentLoader::cancelMainResourceLoad();
    v10 = v17;
    v17 = 0;
    if (v10)
    {
    }

    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v15;
    v15 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = v14;
    v14 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    if (v7)
    {
    }
  }
}

- (void)pluginView:(id)view receivedData:(id)data
{
  if (objc_opt_respondsToSelector())
  {

    [view webPlugInMainResourceDidReceiveData:data];
  }
}

- (void)pluginView:(id)view receivedError:(id)error
{
  if (objc_opt_respondsToSelector())
  {

    [view webPlugInMainResourceDidFailWithError:error];
  }
}

- (void)pluginViewFinishedLoading:(id)loading
{
  if (objc_opt_respondsToSelector())
  {

    [loading webPlugInMainResourceDidFinishLoading];
  }
}

@end