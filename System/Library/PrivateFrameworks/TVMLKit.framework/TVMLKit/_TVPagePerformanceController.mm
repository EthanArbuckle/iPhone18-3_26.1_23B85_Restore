@interface _TVPagePerformanceController
+ (BOOL)isPerformanceUIEnabled;
+ (void)postNotificationForImageProxy:(id)a3 withLoadingStatus:(BOOL)a4;
- (BOOL)_isMetricsReady;
- (NSDictionary)metrics;
- (_TVPagePerformanceController)init;
- (_TVPagePerformanceDelegate)delegate;
- (id)buildPagePerformanceView;
- (id)getEntryForTemplate:(id)a3;
- (unint64_t)templateDidComplete;
- (void)_calculatePageDurations;
- (void)_maybeDeliverMetrics;
- (void)markViewDidAppear;
- (void)markViewDidDisappear;
- (void)markViewDidLoad;
- (void)markViewWillAppear;
- (void)markViewWillDisappear;
- (void)markViewWillLoad;
@end

@implementation _TVPagePerformanceController

+ (BOOL)isPerformanceUIEnabled
{
  if (isPerformanceUIEnabled_onceToken != -1)
  {
    +[_TVPagePerformanceController isPerformanceUIEnabled];
  }

  if (isPerformanceUIEnabled_internalBuild == 1)
  {
    v2 = CFPreferencesGetAppBooleanValue(@"PagePerformanceUIEnabled", @"com.apple.TVMLKit", 0) != 0;
  }

  else
  {
    v2 = isPerformanceUIEnabled_uiEnabled;
  }

  return v2 & 1;
}

+ (void)postNotificationForImageProxy:(id)a3 withLoadingStatus:(BOOL)a4
{
  v4 = a4;
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = @"_TVPagePerformanceImageProxyNotificationTimestamp";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
  v22[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v8 = @"_TVPagePerformanceImageProxyDidLoadNotification";
  if (v4)
  {
    v8 = @"_TVPagePerformanceImageProxyWillLoadNotification";
  }

  v9 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __80___TVPagePerformanceController_postNotificationForImageProxy_withLoadingStatus___block_invoke;
  v17 = &unk_279D6F5D0;
  v10 = v9;
  v18 = v10;
  v11 = v5;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  v13 = MEMORY[0x26D6AFBB0](&v14);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v13[2](v13);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

- (_TVPagePerformanceController)init
{
  v7.receiver = self;
  v7.super_class = _TVPagePerformanceController;
  v2 = [(_TVPagePerformanceController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    gettimeofday(&v2->_baseTimeval, 0);
    v3->_baseAbsoluteTime = mach_absolute_time();
    v4 = [MEMORY[0x277CBEB18] array];
    templateEntries = v3->_templateEntries;
    v3->_templateEntries = v4;
  }

  return v3;
}

- (void)markViewWillLoad
{
  v6 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewWillLoad])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = self;
        _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewWillLoad", &v4, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewWillLoad:mach_absolute_time()];
  }
}

- (void)markViewDidLoad
{
  v6 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewDidLoad])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = self;
        _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewDidLoad", &v4, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewDidLoad:mach_absolute_time()];
  }
}

- (void)markViewWillAppear
{
  v6 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewWillAppear])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = self;
        _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewWillAppear", &v4, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewWillAppear:mach_absolute_time()];
  }
}

- (void)markViewDidAppear
{
  v6 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewDidAppear])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = self;
        _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewDidAppear", &v4, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewDidAppear:mach_absolute_time()];
    [(NSMutableArray *)self->_templateEntries makeObjectsPerformSelector:sel__maybeStopListeningForInitialImageProxyLoadNotifications];
  }
}

- (void)markViewWillDisappear
{
  v6 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewWillDisappear])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = self;
        _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewWillDisappear", &v4, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewWillDisappear:mach_absolute_time()];
    [(NSMutableArray *)self->_templateEntries makeObjectsPerformSelector:sel__stopListeningForInitialImageProxyLoadNotifications];
  }
}

- (void)markViewDidDisappear
{
  v6 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewDidDisappear])
  {
    if (![(_TVPagePerformanceController *)self templateDidComplete])
    {
      [(_TVPagePerformanceController *)self setPageWasInterrupted:1];
    }

    if (IsPerformanceLoggingEnabled())
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = self;
        _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewDidDisappear", &v4, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewDidDisappear:mach_absolute_time()];
    [(_TVPagePerformanceController *)self _maybeDeliverMetrics];
  }
}

- (id)getEntryForTemplate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_templateEntries lastObject];
  v6 = [v5 templateElement];

  if (v6 == v4)
  {
    v12 = [v5 templateDidTransition];
    v13 = IsPerformanceLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v4 elementName];
          v21 = 134218242;
          v22 = self;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_26CD9A000, v15, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p %@ reuseEntryForTemplate", &v21, 0x16u);
        }
      }

      [v5 setTemplateUpdateCount:{objc_msgSend(v5, "templateUpdateCount") + 1}];
      [(_TVPagePerformanceController *)self setPageWasUpdated:1];
      v10 = v5;
    }

    else
    {
      if (v13)
      {
        v17 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = [v4 elementName];
          v21 = 134218242;
          v22 = self;
          v23 = 2112;
          v24 = v19;
          _os_log_impl(&dword_26CD9A000, v18, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p %@ ignoreEntryForTemplate", &v21, 0x16u);
        }
      }

      v10 = 0;
    }
  }

  else
  {
    [v5 _stopListeningForInitialImageProxyLoadNotifications];
    if (IsPerformanceLoggingEnabled())
    {
      v7 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v4 elementName];
        v21 = 134218242;
        v22 = self;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p %@ createEntryForTemplate", &v21, 0x16u);
      }
    }

    v10 = [[_TVPagePerformanceTemplateEntry alloc] initWithPagePerformanceController:self forTemplateElement:v4];
    [(NSMutableArray *)self->_templateEntries addObject:v10];
    v11 = [v4 elementName];
    -[_TVPagePerformanceController setPageIsLoading:](self, "setPageIsLoading:", [@"loadingTemplate" isEqualToString:v11]);
    -[_TVPagePerformanceController setPageHasSubpages:](self, "setPageHasSubpages:", [@"menuBarTemplate" isEqualToString:v11]);
    [(_TVPagePerformanceController *)self setPageWasUpdated:0];
  }

  return v10;
}

- (unint64_t)templateDidComplete
{
  if ([(_TVPagePerformanceController *)self viewDidDisappear])
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->_templateEntries lastObject];
  v5 = [(_TVPagePerformanceController *)self viewDidAppear];
  if (v5 <= [v4 templateDidTransition])
  {
    v6 = [v4 templateDidTransition];
  }

  else
  {
    v6 = [(_TVPagePerformanceController *)self viewDidAppear];
  }

  v3 = v6;
  if ([v4 templateDidLoadResources] > v6)
  {
    v3 = [v4 templateDidLoadResources];
  }

  return v3;
}

- (NSDictionary)metrics
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = self->_baseTimeval.tv_usec + 1000000 * self->_baseTimeval.tv_sec;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39___TVPagePerformanceController_metrics__block_invoke;
  v16[3] = &unk_279D6F740;
  v16[4] = self;
  v16[5] = v3;
  v4 = MEMORY[0x26D6AFBB0](v16, a2);
  v5 = [(NSMutableArray *)self->_templateEntries lastObject];
  v17[0] = @"pageAppearTime";
  v15 = v4[2](v4, [(_TVPagePerformanceController *)self viewDidAppear]);
  v18[0] = v15;
  v17[1] = @"pageUserInteractiveTime";
  v6 = v4[2](v4, [v5 templateDidTransition]);
  v18[1] = v6;
  v17[2] = @"pageEndTime";
  v7 = v4[2](v4, [(_TVPagePerformanceController *)self templateDidComplete]);
  v18[2] = v7;
  v17[3] = @"pageInterruptTime";
  v8 = v4[2](v4, [(_TVPagePerformanceController *)self viewDidDisappear]);
  v18[3] = v8;
  v17[4] = @"modelRenderStartTime";
  v9 = v4[2](v4, [v5 templateWillRender]);
  v18[4] = v9;
  v17[5] = @"modelRenderEndTime";
  v10 = v4[2](v4, [v5 templateDidRender]);
  v18[5] = v10;
  v17[6] = @"resourceRequestStartTime";
  v11 = v4[2](v4, [v5 templateWillLoadResources]);
  v18[6] = v11;
  v17[7] = @"resourceRequestEndTime";
  v12 = v4[2](v4, [v5 templateDidLoadResources]);
  v18[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  return v13;
}

- (id)buildPagePerformanceView
{
  v23[5] = *MEMORY[0x277D85DE8];
  [(_TVPagePerformanceController *)self _calculatePageDurations];
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 500.0, 0.0}];
  v4 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
  [v3 setBackgroundColor:v4];

  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_26CE937F5;
  v20 = xmmword_26CE87DD0;
  v21 = xmmword_26CE87DE0;
  v22[0] = @"Complete Duration: ";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageCompleteDuration](self, "pageCompleteDuration")}];
  v23[0] = v5;
  v22[1] = @"Setup Duration: ";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageSetupDuration](self, "pageSetupDuration")}];
  v23[1] = v6;
  v22[2] = @"Render Duration: ";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageRenderDuration](self, "pageRenderDuration")}];
  v23[2] = v7;
  v22[3] = @"Resource Duration: ";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageResourceDuration](self, "pageResourceDuration")}];
  v23[3] = v8;
  v22[4] = @"Transition Duration: ";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageTransitionDuration](self, "pageTransitionDuration")}];
  v23[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56___TVPagePerformanceController_buildPagePerformanceView__block_invoke;
  v13[3] = &unk_279D6F768;
  v15 = &v16;
  v11 = v3;
  v14 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];
  [v11 setFrame:{0.0, 0.0, 500.0, v17[5]}];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)_calculatePageDurations
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_templateEntries lastObject];
  -[_TVPagePerformanceController setPageRenderDuration:](self, "setPageRenderDuration:", [v3 templateRenderDuration]);
  if ([(_TVPagePerformanceController *)self pageWasUpdated])
  {
    [(_TVPagePerformanceController *)self setPageCompleteDuration:0];
    [(_TVPagePerformanceController *)self setPageSetupDuration:0];
    [(_TVPagePerformanceController *)self setPageResourceDuration:0];
    v4 = self;
    v5 = 0;
  }

  else
  {
    if (IsPerformanceLoggingEnabled())
    {
      v6 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        templateEntries = self->_templateEntries;
        *buf = 134218242;
        v24 = self;
        v25 = 2112;
        v26 = templateEntries;
        _os_log_impl(&dword_26CD9A000, v6, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p calculatePageDurations %@", buf, 0x16u);
      }
    }

    if ([(_TVPagePerformanceController *)self pageWasInterrupted])
    {
      v8 = [(_TVPagePerformanceController *)self viewDidDisappear];
    }

    else
    {
      v8 = [(_TVPagePerformanceController *)self templateDidComplete];
    }

    [(_TVPagePerformanceController *)self setPageCompleteDuration:_TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(self->_baseAbsoluteTime, v8)];
    -[_TVPagePerformanceController setPageSetupDuration:](self, "setPageSetupDuration:", _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(self->_baseAbsoluteTime, [v3 templateWillRender]));
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_templateEntries;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = [v16 templateTransitionDuration];
          if (v17 > v12)
          {
            v12 = v17;
          }

          v13 += [v16 templateResourcesDuration];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    [(_TVPagePerformanceController *)self setPageResourceDuration:v13];
    v4 = self;
    v5 = v12;
  }

  [(_TVPagePerformanceController *)v4 setPageTransitionDuration:v5, v18];
}

- (BOOL)_isMetricsReady
{
  v3 = [(NSMutableArray *)self->_templateEntries lastObject];
  if ([(_TVPagePerformanceController *)self viewDidDisappear])
  {
    if ([v3 templateDidLoadResources])
    {
      if (!IsPerformanceLoggingEnabled())
      {
        goto LABEL_17;
      }

      v4 = TVMLKitPerformanceLogObject;
      if (!os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v9 = 0;
      v5 = "[DEBUG] shouldDeliverMetrics -- Too late; page has already been dismissed/finished loading";
      v6 = &v9;
LABEL_16:
      _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
LABEL_17:
      v7 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    if (![(_TVPagePerformanceController *)self viewDidAppear])
    {
      if (!IsPerformanceLoggingEnabled())
      {
        goto LABEL_17;
      }

      v4 = TVMLKitPerformanceLogObject;
      if (!os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v5 = "[DEBUG] shouldDeliverMetrics -- Too early; page is not yet interactive";
      v6 = buf;
      goto LABEL_16;
    }

    if (![v3 templateDidLoadResources] || !objc_msgSend(v3, "templateDidTransition"))
    {
      if (!IsPerformanceLoggingEnabled())
      {
        goto LABEL_17;
      }

      v4 = TVMLKitPerformanceLogObject;
      if (!os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v10 = 0;
      v5 = "[DEBUG] shouldDeliverMetrics -- Too early; page is not finished loading";
      v6 = &v10;
      goto LABEL_16;
    }
  }

  v7 = 1;
LABEL_18:

  return v7;
}

- (void)_maybeDeliverMetrics
{
  v9 = *MEMORY[0x277D85DE8];
  if (IsPerformanceLoggingEnabled())
  {
    v3 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p maybeDeliverMetrics", &v7, 0xCu);
    }
  }

  if ([(_TVPagePerformanceController *)self _isMetricsReady])
  {
    if (IsPerformanceLoggingEnabled())
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = self;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p actuallyDeliverMetrics", &v7, 0xCu);
      }
    }

    v5 = [(_TVPagePerformanceController *)self delegate];
    v6 = [(_TVPagePerformanceController *)self metrics];
    [v5 pagePerformanceController:self didUpdateMetrics:v6];
  }
}

- (_TVPagePerformanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end