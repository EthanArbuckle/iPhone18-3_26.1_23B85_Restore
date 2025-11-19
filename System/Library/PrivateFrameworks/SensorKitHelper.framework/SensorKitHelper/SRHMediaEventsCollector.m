@interface SRHMediaEventsCollector
+ (void)initialize;
- (SRHMediaEventsCollector)initWithScrollView:(id)a3 scrollMonitor:(id)a4;
- (SRHMediaEventsCollector)initWithScrollView:(id)a3 scrollMonitor:(id)a4 mediaViewsStore:(id)a5;
- (int64_t)_addMediaSubviewsOfView:(id)a3 viewsTraversed:(int64_t)a4;
- (int64_t)_removeMediaSubviewsOfView:(id)a3 viewsTraversed:(int64_t)a4;
- (void)_checkViewForMediaContent:(id)a3 withCompletionHandler:(id)a4;
- (void)dealloc;
- (void)didBecomeActive;
- (void)scrollViewMonitorDidStartMonitoring:(id)a3;
- (void)scrollViewMonitorDidStopMonitoring:(id)a3;
- (void)scrollViewMonitorScrollDid:(id)a3 addView:(id)a4 removeView:(id)a5;
- (void)willResignActive;
@end

@implementation SRHMediaEventsCollector

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _MergedGlobals = os_log_create("com.apple.SensorKit", "SRHMediaEventsCollector");
  }
}

- (SRHMediaEventsCollector)initWithScrollView:(id)a3 scrollMonitor:(id)a4
{
  v7 = [[SRHMediaViewsStore alloc] initWithScrollView:a3];

  return [(SRHMediaEventsCollector *)self initWithScrollView:a3 scrollMonitor:a4 mediaViewsStore:v7];
}

- (SRHMediaEventsCollector)initWithScrollView:(id)a3 scrollMonitor:(id)a4 mediaViewsStore:(id)a5
{
  v10.receiver = self;
  v10.super_class = SRHMediaEventsCollector;
  v8 = [(SRHMediaEventsCollector *)&v10 init];
  if (v8)
  {
    v8->_scrollView = a3;
    v8->_scrollViewMonitor = a4;
    v8->_mediaViewsStore = a5;
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

- (void)scrollViewMonitorDidStartMonitoring:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
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

  [v5 addObserver:self selector:sel_didBecomeActive name:*v6 object:0];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
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

  [v8 addObserver:self selector:sel_willResignActive name:*v9 object:0];
  [(SRHMediaEventsCollector *)self _addMediaSubviewsOfView:a3];
  [(SRHMediaViewsStore *)self->_mediaViewsStore processScrollViewOffset];
}

- (void)scrollViewMonitorDidStopMonitoring:(id)a3
{
  [objc_msgSend(MEMORY[0x277CCAB98] defaultCenter];
  mediaViewsStore = self->_mediaViewsStore;

  [(SRHMediaViewsStore *)mediaViewsStore removeAllViews];
}

- (void)scrollViewMonitorScrollDid:(id)a3 addView:(id)a4 removeView:(id)a5
{
  if (a4)
  {
    NSClassFromString(&cfstr_Uiscrollview.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      [(SRHMediaEventsCollector *)self _addMediaSubviewsOfView:a4];
    }
  }

  else if (a5)
  {
    NSClassFromString(&cfstr_Uiscrollview.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      [(SRHMediaEventsCollector *)self _removeMediaSubviewsOfView:a5];
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
    v8 = self;
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
    v8 = self;
    _os_log_impl(&dword_2655E8000, v3, OS_LOG_TYPE_INFO, "App will become inactive, scrollView:%p, self:%p", &v5, 0x16u);
  }

  [(SRHMediaViewsStore *)self->_mediaViewsStore markViewsAsOffScreen];
}

- (void)_checkViewForMediaContent:(id)a3 withCompletionHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if ([a3 isHidden])
  {
    v6 = _MergedGlobals;
    if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      *buf = 134218242;
      *&buf[4] = a3;
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
    v8 = [objc_msgSend(a3 "image")];
    v9 = _MergedGlobals;
    if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 134218498;
    *&buf[4] = a3;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    v23 = v8;
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

  v11 = [a3 performSelector:sel_image];
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

  v8 = [v11 imageAsset];
  v9 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 134218498;
    *&buf[4] = a3;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    v23 = v8;
    v14 = "View:%p, class:%@ asset:%p";
    goto LABEL_19;
  }

LABEL_8:
  v10 = v8 != 0;
LABEL_17:
  (*(a4 + 2))(a4, v10, 0);
}

- (int64_t)_addMediaSubviewsOfView:(id)a3 viewsTraversed:(int64_t)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  if (a4 < 5000)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __66__SRHMediaEventsCollector__addMediaSubviewsOfView_viewsTraversed___block_invoke;
    v21 = &unk_279B976A8;
    v4 = a4 + 1;
    v22 = self;
    v23 = a3;
    [SRHMediaEventsCollector _checkViewForMediaContent:"_checkViewForMediaContent:withCompletionHandler:" withCompletionHandler:?];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [a3 subviews];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v25 count:16];
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
            objc_enumerationMutation(v8);
          }

          v4 = [(SRHMediaEventsCollector *)self _addMediaSubviewsOfView:*(*(&v14 + 1) + 8 * v12++) viewsTraversed:v4];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v25 count:16];
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

  return v4;
}

uint64_t __66__SRHMediaEventsCollector__addMediaSubviewsOfView_viewsTraversed___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 24) addViewToStore:*(result + 40)];
  }

  return result;
}

- (int64_t)_removeMediaSubviewsOfView:(id)a3 viewsTraversed:(int64_t)a4
{
  v4 = a4;
  v35 = *MEMORY[0x277D85DE8];
  if (a4 < 5000)
  {
    v6 = a3;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__SRHMediaEventsCollector__removeMediaSubviewsOfView_viewsTraversed___block_invoke;
    v20 = &unk_279B976A8;
    v21 = self;
    v22 = a3;
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
      v6 = [v6 contentView];
    }

    v8 = [v6 subviews];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v34 count:16];
    ++v4;
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v4 = [(SRHMediaEventsCollector *)self _removeMediaSubviewsOfView:*(*(&v13 + 1) + 8 * i) viewsTraversed:v4];
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v34 count:16];
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

  return v4;
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