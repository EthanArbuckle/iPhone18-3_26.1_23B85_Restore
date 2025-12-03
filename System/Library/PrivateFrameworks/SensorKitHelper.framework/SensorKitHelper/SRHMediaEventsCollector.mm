@interface SRHMediaEventsCollector
+ (void)initialize;
- (SRHMediaEventsCollector)initWithScrollView:(id)view scrollMonitor:(id)monitor;
- (SRHMediaEventsCollector)initWithScrollView:(id)view scrollMonitor:(id)monitor mediaViewsStore:(id)store;
- (int64_t)_addMediaSubviewsOfView:(id)view viewsTraversed:(int64_t)traversed;
- (int64_t)_removeMediaSubviewsOfView:(id)view viewsTraversed:(int64_t)traversed;
- (void)_checkViewForMediaContent:(id)content withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didBecomeActive;
- (void)scrollViewMonitorDidStartMonitoring:(id)monitoring;
- (void)scrollViewMonitorDidStopMonitoring:(id)monitoring;
- (void)scrollViewMonitorScrollDid:(id)did addView:(id)view removeView:(id)removeView;
- (void)willResignActive;
@end

@implementation SRHMediaEventsCollector

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _MergedGlobals = os_log_create("com.apple.SensorKit", "SRHMediaEventsCollector");
  }
}

- (SRHMediaEventsCollector)initWithScrollView:(id)view scrollMonitor:(id)monitor
{
  v7 = [[SRHMediaViewsStore alloc] initWithScrollView:view];

  return [(SRHMediaEventsCollector *)self initWithScrollView:view scrollMonitor:monitor mediaViewsStore:v7];
}

- (SRHMediaEventsCollector)initWithScrollView:(id)view scrollMonitor:(id)monitor mediaViewsStore:(id)store
{
  v10.receiver = self;
  v10.super_class = SRHMediaEventsCollector;
  v8 = [(SRHMediaEventsCollector *)&v10 init];
  if (v8)
  {
    v8->_scrollView = view;
    v8->_scrollViewMonitor = monitor;
    v8->_mediaViewsStore = store;
  }

  return v8;
}

- (void)dealloc
{
  self->_scrollView = 0;

  self->_scrollViewMonitor = 0;
  self->_mediaViewsStore = 0;
  v3.receiver = self;
  v3.super_class = SRHMediaEventsCollector;
  [(SRHMediaEventsCollector *)&v3 dealloc];
}

- (void)scrollViewMonitorDidStartMonitoring:(id)monitoring
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = qword_280AC7388;
  v15 = qword_280AC7388;
  if (!qword_280AC7388)
  {
    v7 = UIKitLibrary();
    v13[3] = dlsym(v7, "UIApplicationDidBecomeActiveNotification");
    qword_280AC7388 = v13[3];
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
    goto LABEL_8;
  }

  [defaultCenter addObserver:self selector:sel_didBecomeActive name:*v6 object:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v9 = qword_280AC7390;
  v15 = qword_280AC7390;
  if (!qword_280AC7390)
  {
    v10 = UIKitLibrary();
    v13[3] = dlsym(v10, "UIApplicationWillResignActiveNotification");
    qword_280AC7390 = v13[3];
    v9 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v9)
  {
LABEL_8:
    dlerror();
    v11 = abort_report_np();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  [defaultCenter2 addObserver:self selector:sel_willResignActive name:*v9 object:0];
  [(SRHMediaEventsCollector *)self _addMediaSubviewsOfView:monitoring];
  [(SRHMediaViewsStore *)self->_mediaViewsStore processScrollViewOffset];
}

- (void)scrollViewMonitorDidStopMonitoring:(id)monitoring
{
  [objc_msgSend(MEMORY[0x277CCAB98] defaultCenter];
  mediaViewsStore = self->_mediaViewsStore;

  [(SRHMediaViewsStore *)mediaViewsStore removeAllViews];
}

- (void)scrollViewMonitorScrollDid:(id)did addView:(id)view removeView:(id)removeView
{
  if (view)
  {
    NSClassFromString(&cfstr_Uiscrollview.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      [(SRHMediaEventsCollector *)self _addMediaSubviewsOfView:view];
    }
  }

  else if (removeView)
  {
    NSClassFromString(&cfstr_Uiscrollview.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      [(SRHMediaEventsCollector *)self _removeMediaSubviewsOfView:removeView];
    }
  }
}

- (void)didBecomeActive
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_INFO))
  {
    scrollView = self->_scrollView;
    v5 = 134218240;
    v6 = scrollView;
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_2655E8000, v3, OS_LOG_TYPE_INFO, "App did become active, scrollView:%p, self:%p", &v5, 0x16u);
  }

  [(SRHMediaViewsStore *)self->_mediaViewsStore markViewsAsOnScreen];
}

- (void)willResignActive
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_INFO))
  {
    scrollView = self->_scrollView;
    v5 = 134218240;
    v6 = scrollView;
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_2655E8000, v3, OS_LOG_TYPE_INFO, "App will become inactive, scrollView:%p, self:%p", &v5, 0x16u);
  }

  [(SRHMediaViewsStore *)self->_mediaViewsStore markViewsAsOffScreen];
}

- (void)_checkViewForMediaContent:(id)content withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  if ([content isHidden])
  {
    v6 = _MergedGlobals;
    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      *buf = 134218242;
      *&buf[4] = content;
      *&buf[12] = 2112;
      *&buf[14] = NSStringFromClass(v7);
      _os_log_debug_impl(&dword_2655E8000, v6, OS_LOG_TYPE_DEBUG, "View:%p, class:%@ is hidden", buf, 0x16u);
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = qword_280AC7398;
  if (!qword_280AC7398)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getUIImageViewClass_block_invoke;
    v20 = &unk_279B976D0;
    v21 = buf;
    __getUIImageViewClass_block_invoke(&v17);
  }

  _Block_object_dispose(buf, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageAsset = [objc_msgSend(content "image")];
    v9 = _MergedGlobals;
    if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 134218498;
    *&buf[4] = content;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    v23 = imageAsset;
    v14 = "View:%p, class:%@, is UIImageView class and not hidden, asset:%p";
LABEL_19:
    _os_log_debug_impl(&dword_2655E8000, v9, OS_LOG_TYPE_DEBUG, v14, buf, 0x20u);
    goto LABEL_8;
  }

  NSClassFromString(&cfstr_Ckimageballoon.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = [content performSelector:sel_image];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = qword_280AC73A0;
  if (!qword_280AC73A0)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getUIImageClass_block_invoke;
    v20 = &unk_279B976D0;
    v21 = buf;
    __getUIImageClass_block_invoke(&v17);
  }

  _Block_object_dispose(buf, 8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  imageAsset = [v11 imageAsset];
  v9 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 134218498;
    *&buf[4] = content;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    v23 = imageAsset;
    v14 = "View:%p, class:%@ asset:%p";
    goto LABEL_19;
  }

LABEL_8:
  v10 = imageAsset != 0;
LABEL_17:
  (*(handler + 2))(handler, v10, 0);
}

- (int64_t)_addMediaSubviewsOfView:(id)view viewsTraversed:(int64_t)traversed
{
  traversedCopy = traversed;
  v26 = *MEMORY[0x277D85DE8];
  if (traversed < 5000)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __66__SRHMediaEventsCollector__addMediaSubviewsOfView_viewsTraversed___block_invoke;
    v21 = &unk_279B976A8;
    traversedCopy = traversed + 1;
    selfCopy = self;
    viewCopy = view;
    [SRHMediaEventsCollector _checkViewForMediaContent:"_checkViewForMediaContent:withCompletionHandler:" withCompletionHandler:?];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [view subviews];
    v9 = [subviews countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(subviews);
          }

          traversedCopy = [(SRHMediaEventsCollector *)self _addMediaSubviewsOfView:*(*(&v14 + 1) + 8 * v12++) viewsTraversed:traversedCopy];
        }

        while (v10 != v12);
        v10 = [subviews countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = _MergedGlobals;
    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2655E8000, v5, OS_LOG_TYPE_ERROR, "Adding view. Stop subviews parsing. View is too big.", buf, 2u);
    }
  }

  return traversedCopy;
}

uint64_t __66__SRHMediaEventsCollector__addMediaSubviewsOfView_viewsTraversed___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 24) addViewToStore:*(result + 40)];
  }

  return result;
}

- (int64_t)_removeMediaSubviewsOfView:(id)view viewsTraversed:(int64_t)traversed
{
  traversedCopy = traversed;
  v35 = *MEMORY[0x277D85DE8];
  if (traversed < 5000)
  {
    viewCopy = view;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__SRHMediaEventsCollector__removeMediaSubviewsOfView_viewsTraversed___block_invoke;
    v20 = &unk_279B976A8;
    selfCopy = self;
    viewCopy2 = view;
    [SRHMediaEventsCollector _checkViewForMediaContent:"_checkViewForMediaContent:withCompletionHandler:" withCompletionHandler:?];
    *buf = 0;
    v29 = buf;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = qword_280AC73A8;
    if (!qword_280AC73A8)
    {
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getUICollectionViewCellClass_block_invoke;
      v26 = &unk_279B976D0;
      v27 = buf;
      __getUICollectionViewCellClass_block_invoke(&v23);
    }

    _Block_object_dispose(buf, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    *buf = 0;
    v29 = buf;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = qword_280AC73B0;
    if (!qword_280AC73B0)
    {
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getUITableViewCellClass_block_invoke;
      v26 = &unk_279B976D0;
      v27 = buf;
      __getUITableViewCellClass_block_invoke(&v23);
    }

    _Block_object_dispose(buf, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_10:
      viewCopy = [viewCopy contentView];
    }

    subviews = [viewCopy subviews];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [subviews countByEnumeratingWithState:&v13 objects:v34 count:16];
    ++traversedCopy;
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(subviews);
          }

          traversedCopy = [(SRHMediaEventsCollector *)self _removeMediaSubviewsOfView:*(*(&v13 + 1) + 8 * i) viewsTraversed:traversedCopy];
        }

        v9 = [subviews countByEnumeratingWithState:&v13 objects:v34 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = _MergedGlobals;
    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2655E8000, v5, OS_LOG_TYPE_ERROR, "Removing view. Stop subviews parsing. View is too big.", buf, 2u);
    }
  }

  return traversedCopy;
}

uint64_t __69__SRHMediaEventsCollector__removeMediaSubviewsOfView_viewsTraversed___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 24) removeViewFromStore:*(result + 40)];
  }

  return result;
}

@end