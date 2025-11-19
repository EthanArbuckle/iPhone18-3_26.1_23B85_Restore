@interface WebPluginController
+ (BOOL)isPlugInView:(id)a3;
+ (void)addPlugInView:(id)a3;
- (WebPluginController)initWithDocumentView:(id)a3;
- (id)URLPolicyCheckReferrer;
- (id)_webPluginContainerCheckIfAllowedToLoadRequest:(id)a3 inFrame:(id)a4 resultObject:(id)a5 selector:(SEL)a6;
- (id)superlayerForPluginView:(id)a3;
- (id)webView;
- (void)_cancelOutstandingChecks;
- (void)_webPluginContainerCancelCheckIfAllowedToLoadRequest:(id)a3;
- (void)addPlugin:(id)a3;
- (void)dealloc;
- (void)destroyAllPlugins;
- (void)destroyOnePlugin:(id)a3;
- (void)destroyPlugin:(id)a3;
- (void)pluginView:(id)a3 receivedData:(id)a4;
- (void)pluginView:(id)a3 receivedError:(id)a4;
- (void)pluginView:(id)a3 receivedResponse:(id)a4;
- (void)pluginViewFinishedLoading:(id)a3;
- (void)restorePluginsFromCache;
- (void)startAllPlugins;
- (void)stopAllPlugins;
- (void)stopOnePlugin:(id)a3;
- (void)stopOnePluginForPageCache:(id)a3;
- (void)stopPluginsForPageCache;
- (void)webPlugInContainerDidHideFullScreenForView:(id)a3;
- (void)webPlugInContainerLoadRequest:(id)a3 inFrame:(id)a4;
- (void)webPlugInContainerShowStatus:(id)a3;
- (void)webPlugInContainerWillShowFullScreenForView:(id)a3;
@end

@implementation WebPluginController

+ (void)addPlugInView:(id)a3
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

  if (a3)
  {
    v6 = qword_1ED6A6100;

    [v6 addObject:a3];
  }
}

+ (BOOL)isPlugInView:(id)a3
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

  return [v3 containsObject:a3];
}

- (WebPluginController)initWithDocumentView:(id)a3
{
  v7.receiver = self;
  v7.super_class = WebPluginController;
  result = [(WebPluginController *)&v7 init];
  if (result)
  {
    result->_documentView = a3;
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

- (id)superlayerForPluginView:(id)a3
{
  v4 = [(WebPluginController *)self webFrame];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4[1] + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 0;
  }

  v7 = WebCore::LocalFrameView::graphicsLayerForPlatformWidget(v6, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = *(*v7 + 624);

  return v8();
}

- (void)stopOnePlugin:(id)a3
{
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v4);
    }

    MEMORY[0x1CCA63320](v6);
    [a3 webPlugInStop];
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
    [a3 pluginStop];
  }

  JSC::JSLock::DropAllLocks::~DropAllLocks(v6);
}

- (void)stopOnePluginForPageCache:(id)a3
{
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v5);
    }

    MEMORY[0x1CCA63320](v6);
    [a3 webPlugInStopForPageCache];
    JSC::JSLock::DropAllLocks::~DropAllLocks(v6);
  }

  else
  {

    [(WebPluginController *)self stopOnePlugin:a3];
  }
}

- (void)destroyOnePlugin:(id)a3
{
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v4);
    }

    MEMORY[0x1CCA63320](v6);
    [a3 webPlugInDestroy];
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
    [a3 pluginDestroy];
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
  v3 = [(WAKView *)self->_documentView _webView];
  v4 = [(NSMutableArray *)self->_views count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [objc_msgSend(v3 "_UIKitDelegateForwarder")];
    }
  }
}

- (void)addPlugin:(id)a3
{
  if (!self->_documentView || ([(NSMutableArray *)self->_views containsObject:?]& 1) != 0)
  {
    return;
  }

  [(NSMutableArray *)self->_views addObject:a3];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    if (!*MEMORY[0x1E69E25C0])
    {
      WebCore::commonVMSlow(v5);
    }

    MEMORY[0x1CCA63320](v10);
    [a3 webPlugInInitialize];
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
    [a3 pluginInitialize];
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
    [a3 webPlugInStart];
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
    [a3 pluginStart];
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
    [a3 setContainingWindow:{-[WAKView window](self->_documentView, "window")}];
    JSC::JSLock::DropAllLocks::~DropAllLocks(v10);
  }
}

- (void)destroyPlugin:(id)a3
{
  if ([(NSMutableArray *)self->_views containsObject:?])
  {
    if (self->_started)
    {
      [(WebPluginController *)self stopOnePlugin:a3];
    }

    [(WebPluginController *)self destroyOnePlugin:a3];
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

    [v5 removeObject:a3];
    views = self->_views;

    [(NSMutableArray *)views removeObject:a3];
  }
}

- (void)_webPluginContainerCancelCheckIfAllowedToLoadRequest:(id)a3
{
  [a3 cancel];
  checksInProgress = self->_checksInProgress;

  [(NSMutableSet *)checksInProgress removeObject:a3];
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

- (id)_webPluginContainerCheckIfAllowedToLoadRequest:(id)a3 inFrame:(id)a4 resultObject:(id)a5 selector:(SEL)a6
{
  v7 = [WebPluginContainerCheck checkWithRequest:a3 target:a4 resultObject:a5 selector:a6 controller:self contextInfo:0];
  [(NSMutableSet *)self->_checksInProgress addObject:v7];
  [(WebPluginContainerCheck *)v7 start];
  return v7;
}

- (void)webPlugInContainerLoadRequest:(id)a3 inFrame:(id)a4
{
  if (!a3)
  {
    return;
  }

  if (!self->_documentView)
  {
    return;
  }

  v6 = [(WebDataSource *)self->_dataSource webFrame];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (!a4)
  {
    a4 = @"_top";
  }

  v8 = [objc_msgSend(a3 "URL")];
  if (v8)
  {
    v9 = v8;
    if ([(WebFrame *)v7 findFrameNamed:a4]== v7)
    {

      [(WebFrame *)v7 _stringByEvaluatingJavaScriptFromString:v9];
    }

    return;
  }

  m_ptr = v7->_private->coreFrame.m_ptr;
  MEMORY[0x1CCA65390](v32, a3);
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
  WTF::AtomStringImpl::add(v26, a4, v22);
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

- (void)webPlugInContainerWillShowFullScreenForView:(id)a3
{
  v4 = [(WebDataSource *)self->_dataSource _webView];
  v5 = [v4 _UIKitDelegateForwarder];

  [v5 webView:v4 willShowFullScreenForPlugInView:a3];
}

- (void)webPlugInContainerDidHideFullScreenForView:(id)a3
{
  v4 = [(WebDataSource *)self->_dataSource _webView];
  v5 = [v4 _UIKitDelegateForwarder];

  [v5 webView:v4 didHideFullScreenForPlugInView:a3];
}

- (void)webPlugInContainerShowStatus:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &stru_1F472E7E8;
  }

  v4 = [(WebDataSource *)self->_dataSource _webView];
  v5 = [v4 _UIDelegateForwarder];

  [v5 webView:v4 setStatusText:v3];
}

- (id)webView
{
  v2 = [(WebPluginController *)self webFrame];

  return [v2 webView];
}

- (id)URLPolicyCheckReferrer
{
  v2 = [objc_msgSend(objc_msgSend(-[WebPluginController webFrame](self "webFrame")];

  return [v2 _web_originalDataAsString];
}

- (void)pluginView:(id)a3 receivedResponse:(id)a4
{
  if (objc_opt_respondsToSelector())
  {

    [a3 webPlugInMainResourceDidReceiveResponse:a4];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) _initWithPluginErrorCode:204 contentURL:objc_msgSend(a4 pluginPageURL:"URL") pluginName:0 MIMEType:{0, objc_msgSend(a4, "MIMEType")}];
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

- (void)pluginView:(id)a3 receivedData:(id)a4
{
  if (objc_opt_respondsToSelector())
  {

    [a3 webPlugInMainResourceDidReceiveData:a4];
  }
}

- (void)pluginView:(id)a3 receivedError:(id)a4
{
  if (objc_opt_respondsToSelector())
  {

    [a3 webPlugInMainResourceDidFailWithError:a4];
  }
}

- (void)pluginViewFinishedLoading:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    [a3 webPlugInMainResourceDidFinishLoading];
  }
}

@end