@interface _TVPagePerformanceTemplateEntry
- (IKViewElement)templateElement;
- (_TVPagePerformanceController)performanceController;
- (_TVPagePerformanceTemplateEntry)initWithPagePerformanceController:(id)a3 forTemplateElement:(id)a4;
- (unint64_t)templateRenderDuration;
- (unint64_t)templateResourcesDuration;
- (unint64_t)templateTransitionDuration;
- (void)_beginListeningForInitialImageProxyLoadNotifications;
- (void)_maybeStopListeningForInitialImageProxyLoadNotifications;
- (void)_receivedImageProxyDidLoadNotification:(id)a3;
- (void)_receivedImageProxyWillLoadNotification:(id)a3;
- (void)_stopListeningForInitialImageProxyLoadNotifications;
- (void)dealloc;
- (void)markTemplateDidRender;
- (void)markTemplateDidTransition;
- (void)markTemplateWillRender;
- (void)markTemplateWillTransition;
@end

@implementation _TVPagePerformanceTemplateEntry

- (_TVPagePerformanceTemplateEntry)initWithPagePerformanceController:(id)a3 forTemplateElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _TVPagePerformanceTemplateEntry;
  v8 = [(_TVPagePerformanceTemplateEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(_TVPagePerformanceTemplateEntry *)v8 setPerformanceController:v6];
    [(_TVPagePerformanceTemplateEntry *)v9 setTemplateElement:v7];
    v10 = [v7 elementName];
    [(_TVPagePerformanceTemplateEntry *)v9 setTemplateElementName:v10];
  }

  return v9;
}

- (void)dealloc
{
  [(_TVPagePerformanceTemplateEntry *)self _stopListeningForInitialImageProxyLoadNotifications];
  v3.receiver = self;
  v3.super_class = _TVPagePerformanceTemplateEntry;
  [(_TVPagePerformanceTemplateEntry *)&v3 dealloc];
}

- (void)markTemplateWillRender
{
  v8 = *MEMORY[0x277D85DE8];
  if (IsPerformanceLoggingEnabled())
  {
    v3 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateWillRender", &v6, 0xCu);
    }
  }

  [(_TVPagePerformanceTemplateEntry *)self setTemplateWillRender:mach_absolute_time()];
  [(_TVPagePerformanceTemplateEntry *)self _beginListeningForInitialImageProxyLoadNotifications];
}

- (void)markTemplateDidRender
{
  v8 = *MEMORY[0x277D85DE8];
  if (IsPerformanceLoggingEnabled())
  {
    v3 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateDidRender", &v6, 0xCu);
    }
  }

  [(_TVPagePerformanceTemplateEntry *)self setTemplateDidRender:mach_absolute_time()];
}

- (void)markTemplateWillTransition
{
  v8 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceTemplateEntry *)self templateWillTransition])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateWillTransition", &v6, 0xCu);
      }
    }

    [(_TVPagePerformanceTemplateEntry *)self setTemplateWillTransition:mach_absolute_time()];
  }
}

- (void)markTemplateDidTransition
{
  v8 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceTemplateEntry *)self templateDidTransition])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateDidTransition", &v6, 0xCu);
      }
    }

    [(_TVPagePerformanceTemplateEntry *)self setTemplateDidTransition:mach_absolute_time()];
  }

  [(_TVPagePerformanceTemplateEntry *)self _maybeStopListeningForInitialImageProxyLoadNotifications];
}

- (unint64_t)templateRenderDuration
{
  v3 = [(_TVPagePerformanceTemplateEntry *)self templateWillRender];
  v4 = [(_TVPagePerformanceTemplateEntry *)self templateDidRender];

  return _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(v3, v4);
}

- (unint64_t)templateResourcesDuration
{
  v3 = [(_TVPagePerformanceTemplateEntry *)self templateWillLoadResources];
  v4 = [(_TVPagePerformanceTemplateEntry *)self templateDidLoadResources];

  return _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(v3, v4);
}

- (unint64_t)templateTransitionDuration
{
  v3 = [(_TVPagePerformanceTemplateEntry *)self templateWillTransition];
  v4 = [(_TVPagePerformanceTemplateEntry *)self templateDidTransition];

  return _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(v3, v4);
}

- (void)_beginListeningForInitialImageProxyLoadNotifications
{
  v12 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceTemplateEntry *)self templateDidLoadResources])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ beginListeningForImageProxyLoadNotifications", &v10, 0xCu);
      }
    }

    [(_TVPagePerformanceTemplateEntry *)self setTemplateWillLoadResources:mach_absolute_time()];
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    initialOnScreenImageProxies = self->_initialOnScreenImageProxies;
    self->_initialOnScreenImageProxies = v6;

    *&self->_listeningForImageProxyWillLoad = 257;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__receivedImageProxyWillLoadNotification_ name:@"_TVPagePerformanceImageProxyWillLoadNotification" object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__receivedImageProxyDidLoadNotification_ name:@"_TVPagePerformanceImageProxyDidLoadNotification" object:0];
  }
}

- (void)_stopListeningForInitialImageProxyLoadNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_listeningForImageProxyWillLoad || self->_listeningForImageProxyDidLoad)
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ stopListeningForInitialImageProxyLoadNotifications", &v8, 0xCu);
      }
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:@"_TVPagePerformanceImageProxyWillLoadNotification" object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:self name:@"_TVPagePerformanceImageProxyDidLoadNotification" object:0];

    [(NSHashTable *)self->_initialOnScreenImageProxies removeAllObjects];
    *&self->_listeningForImageProxyWillLoad = 0;
  }
}

- (void)_maybeStopListeningForInitialImageProxyLoadNotifications
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = [(_TVPagePerformanceTemplateEntry *)self performanceController];
  if ([v12 viewDidAppear] && -[_TVPagePerformanceTemplateEntry templateDidTransition](self, "templateDidTransition"))
  {
    v3 = [(_TVPagePerformanceTemplateEntry *)self templateWillLoadResources];

    if (!v3)
    {
      return;
    }

    if (self->_listeningForImageProxyWillLoad || self->_listeningForImageProxyDidLoad)
    {
      if (IsPerformanceLoggingEnabled())
      {
        v4 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v4;
          v6 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
          *buf = 138412290;
          v14 = v6;
          _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ maybeStopListeningForInitialImageProxyLoadNotifications", buf, 0xCu);
        }
      }

      if ([(NSHashTable *)self->_initialOnScreenImageProxies count])
      {
        if (IsPerformanceLoggingEnabled())
        {
          v7 = TVMLKitPerformanceLogObject;
          if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CD9A000, v7, OS_LOG_TYPE_DEFAULT, "[DEBUG] Stop listening for TVImageProxyWillLoadNotification", buf, 2u);
          }
        }

        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        [v8 removeObserver:self name:@"_TVPagePerformanceImageProxyWillLoadNotification" object:0];

        self->_listeningForImageProxyWillLoad = 0;
      }

      else
      {
        if (![(_TVPagePerformanceTemplateEntry *)self templateDidLoadResources])
        {
          if (IsPerformanceLoggingEnabled())
          {
            v9 = TVMLKitPerformanceLogObject;
            if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26CD9A000, v9, OS_LOG_TYPE_DEFAULT, "[DEBUG] No initial on-screen resources left to load.", buf, 2u);
            }
          }

          if ([(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy])
          {
            v10 = [(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy];
          }

          else
          {
            v10 = [(_TVPagePerformanceTemplateEntry *)self templateWillLoadResources];
          }

          [(_TVPagePerformanceTemplateEntry *)self setTemplateDidLoadResources:v10];
          [(_TVPagePerformanceTemplateEntry *)self _stopListeningForInitialImageProxyLoadNotifications];
        }

        v11 = [(_TVPagePerformanceTemplateEntry *)self performanceController];
        [v11 _maybeDeliverMetrics];
      }

      return;
    }

    if (![(_TVPagePerformanceTemplateEntry *)self templateUpdateCount])
    {
      return;
    }

    v12 = [(_TVPagePerformanceTemplateEntry *)self performanceController];
    [v12 _maybeDeliverMetrics];
  }
}

- (void)_receivedImageProxyWillLoadNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"_TVPagePerformanceImageProxyNotificationTimestamp"];
  v8 = [v7 unsignedLongLongValue];

  if (IsPerformanceLoggingEnabled())
  {
    v9 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_26CD9A000, v10, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ receivedImageProxyWillLoadNotification: %@", &v12, 0x16u);
    }
  }

  if (![(_TVPagePerformanceTemplateEntry *)self templateWillLoadFirstImageProxy]|| v8 < [(_TVPagePerformanceTemplateEntry *)self templateWillLoadFirstImageProxy])
  {
    [(_TVPagePerformanceTemplateEntry *)self setTemplateWillLoadFirstImageProxy:v8];
  }

  [(NSHashTable *)self->_initialOnScreenImageProxies addObject:v5];
}

- (void)_receivedImageProxyDidLoadNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"_TVPagePerformanceImageProxyNotificationTimestamp"];
  v8 = [v7 unsignedLongLongValue];

  if (IsPerformanceLoggingEnabled())
  {
    v9 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_26CD9A000, v10, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ receivedImageProxyDidLoadNotification %@", &v14, 0x16u);
    }
  }

  if ([(NSHashTable *)self->_initialOnScreenImageProxies containsObject:v5])
  {
    if (![(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy]|| v8 > [(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy])
    {
      [(_TVPagePerformanceTemplateEntry *)self setTemplateDidLoadLastImageProxy:v8];
    }

    [(NSHashTable *)self->_initialOnScreenImageProxies removeObject:v5];
    if (!self->_listeningForImageProxyWillLoad && ![(NSHashTable *)self->_initialOnScreenImageProxies count])
    {
      if (IsPerformanceLoggingEnabled())
      {
        v12 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_26CD9A000, v12, OS_LOG_TYPE_DEFAULT, "[DEBUG] All initial on-screen resources have finished loading.", &v14, 2u);
        }
      }

      [(_TVPagePerformanceTemplateEntry *)self setTemplateDidLoadResources:[(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy]];
      [(_TVPagePerformanceTemplateEntry *)self _stopListeningForInitialImageProxyLoadNotifications];
      v13 = [(_TVPagePerformanceTemplateEntry *)self performanceController];
      [v13 _maybeDeliverMetrics];
    }
  }
}

- (IKViewElement)templateElement
{
  WeakRetained = objc_loadWeakRetained(&self->_templateElement);

  return WeakRetained;
}

- (_TVPagePerformanceController)performanceController
{
  WeakRetained = objc_loadWeakRetained(&self->_performanceController);

  return WeakRetained;
}

@end