@interface SXMediaComponentView
- (BOOL)shouldSubmitMediaExposureEventForExposedBounds:(CGRect)bounds;
- (CGRect)visibleBounds;
- (SXMediaComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor;
- (id)mediaEventForClass:(Class)class;
- (void)calculateVisibleBounds;
- (void)createMediaExposureEventIfNeeded;
- (void)finishMediaExposureEventIfNeeded;
- (void)setIsDisplayingMedia:(BOOL)media;
- (void)visibilityStateDidChangeFromState:(int64_t)state;
- (void)visibleBoundsChanged;
@end

@implementation SXMediaComponentView

- (SXMediaComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor
{
  providerCopy = provider;
  viewportCopy = viewport;
  delegateCopy = delegate;
  factoryCopy = factory;
  reportingCopy = reporting;
  monitorCopy = monitor;
  v34.receiver = self;
  v34.super_class = SXMediaComponentView;
  v20 = [(SXComponentView *)&v34 initWithDOMObjectProvider:providerCopy viewport:viewportCopy presentationDelegate:delegateCopy componentStyleRendererFactory:factoryCopy];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_analyticsReporting, reporting);
    objc_initWeak(&location, v21);
    if (objc_opt_respondsToSelector())
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke;
      v31[3] = &unk_1E84FEC28;
      objc_copyWeak(&v32, &location);
      [monitorCopy performOnApplicationWindowDidBecomeBackground:v31];
      objc_destroyWeak(&v32);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_2;
    v29[3] = &unk_1E84FEC28;
    objc_copyWeak(&v30, &location);
    [monitorCopy performOnApplicationDidEnterBackground:v29];
    if (objc_opt_respondsToSelector())
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_3;
      v27[3] = &unk_1E84FEC28;
      objc_copyWeak(&v28, &location);
      [monitorCopy performOnApplicationWindowDidBecomeForeground:v27];
      objc_destroyWeak(&v28);
    }

    if (objc_opt_respondsToSelector())
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_4;
      v25[3] = &unk_1E84FEC28;
      objc_copyWeak(&v26, &location);
      [monitorCopy performOnApplicationWillEnterForeground:v25];
      objc_destroyWeak(&v26);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_5;
    v23[3] = &unk_1E84FEC28;
    objc_copyWeak(&v24, &location);
    [monitorCopy performOnApplicationDidBecomeActive:v23];
    v21->_minimumVisibleY = 1.79769313e308;
    v21->_maximumVisibleY = 2.22507386e-308;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v21;
}

void __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained submitEvents];
}

void __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained submitEvents];
}

void __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createMediaExposureEventIfNeeded];
}

void __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createMediaExposureEventIfNeeded];
}

void __145__SXMediaComponentView_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_analyticsReporting_appStateMonitor___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createMediaExposureEventIfNeeded];
}

- (void)createMediaExposureEventIfNeeded
{
  mediaExposureEvent = [(SXMediaComponentView *)self mediaExposureEvent];
  if (!mediaExposureEvent)
  {
    v4 = [(SXComponentView *)self visibilityState]== 1;
    mediaExposureEvent = 0;
    if (v4)
    {
      if (![(SXMediaComponentView *)self isDisplayingMedia])
      {
        return;
      }

      v5 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
      [(SXMediaComponentView *)self setMediaExposureEvent:v5];
      mediaExposureEvent = v5;
    }
  }
}

- (void)finishMediaExposureEventIfNeeded
{
  mediaExposureEvent = [(SXMediaComponentView *)self mediaExposureEvent];

  if (mediaExposureEvent)
  {
    mediaExposureEvent2 = [(SXMediaComponentView *)self mediaExposureEvent];
    startDate = [mediaExposureEvent2 startDate];
    [startDate timeIntervalSinceNow];
    v7 = v6;

    if (v7 >= 0.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = -v7;
    }

    [(SXComponentView *)self contentFrame];
    MinX = CGRectGetMinX(v23);
    [(SXMediaComponentView *)self minimumVisibleY];
    v11 = v10;
    [(SXComponentView *)self contentFrame];
    Width = CGRectGetWidth(v24);
    [(SXMediaComponentView *)self maximumVisibleY];
    v14 = v13;
    [(SXMediaComponentView *)self minimumVisibleY];
    v16 = [(SXMediaComponentView *)self shouldSubmitMediaExposureEventForExposedBounds:MinX, v11, Width, v14 - v15];
    if (v8 >= 1.0 && v16)
    {
      mediaExposureEvent3 = [(SXMediaComponentView *)self mediaExposureEvent];
      [(SXMediaComponentView *)self willSubmitMediaExposureEvent:mediaExposureEvent3];

      mediaExposureEvent4 = [(SXMediaComponentView *)self mediaExposureEvent];
      [mediaExposureEvent4 determineEndDate];

      analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
      mediaExposureEvent5 = [(SXMediaComponentView *)self mediaExposureEvent];
      [analyticsReporting reportEvent:mediaExposureEvent5];

      [(SXMediaComponentView *)self setMediaExposureEvent:0];
    }
  }
}

- (id)mediaEventForClass:(Class)class
{
  v4 = objc_alloc_init(class);
  [v4 setMediaType:{-[SXMediaComponentView analyticsMediaType](self, "analyticsMediaType")}];
  [v4 setGalleryType:{-[SXMediaComponentView analyticsGalleryType](self, "analyticsGalleryType")}];
  [v4 setVideoType:{-[SXMediaComponentView analyticsVideoType](self, "analyticsVideoType")}];
  component = [(SXComponentView *)self component];
  identifier = [component identifier];
  [v4 setMediaId:identifier];

  component2 = [(SXComponentView *)self component];
  analytics = [component2 analytics];
  jsonDictionary = [analytics jsonDictionary];
  [v4 setMetaData:jsonDictionary];

  return v4;
}

- (BOOL)shouldSubmitMediaExposureEventForExposedBounds:(CGRect)bounds
{
  Height = CGRectGetHeight(bounds);
  [(SXComponentView *)self absoluteFrame];
  return Height >= CGRectGetHeight(v6) * 0.5;
}

- (void)visibilityStateDidChangeFromState:(int64_t)state
{
  v8.receiver = self;
  v8.super_class = SXMediaComponentView;
  [(SXComponentView *)&v8 visibilityStateDidChangeFromState:?];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    [(SXMediaComponentView *)self createMediaExposureEventIfNeeded];
    viewport = [(SXComponentView *)self viewport];
    [viewport addViewportChangeListener:self forOptions:2];

    [(SXMediaComponentView *)self calculateVisibleBounds];
  }

  else
  {
    visibilityState = [(SXComponentView *)self visibilityState];
    if (state == 1 && visibilityState == 2)
    {
      [(SXMediaComponentView *)self submitEvents];
      viewport2 = [(SXComponentView *)self viewport];
      [viewport2 removeViewportChangeListener:self forOptions:2];
    }
  }
}

- (void)calculateVisibleBounds
{
  [(SXComponentView *)self absoluteFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  viewport = [(SXComponentView *)self viewport];
  [viewport dynamicBounds];
  v34.origin.x = v12;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v28 = CGRectIntersection(v27, v34);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  if (CGRectIsNull(v29))
  {
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    viewport2 = [(SXComponentView *)self viewport];
    [viewport2 dynamicBounds];
    MinY = CGRectGetMinY(v30);
    [(SXComponentView *)self absoluteFrame];
    v21 = MinY - CGRectGetMinY(v31);

    v20 = 0.0;
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v23 = CGRectGetWidth(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v22 = CGRectGetHeight(v33);
  }

  [(SXMediaComponentView *)self setVisibleBounds:v20, v21, v23, v22];
}

- (void)visibleBoundsChanged
{
  [(SXMediaComponentView *)self visibleBounds];
  if (CGRectEqualToRect(v10, *MEMORY[0x1E695F058]))
  {
    [(SXMediaComponentView *)self setMinimumVisibleY:1.79769313e308];
    MaxY = 2.22507386e-308;
  }

  else
  {
    [(SXMediaComponentView *)self minimumVisibleY];
    v5 = v4;
    [(SXMediaComponentView *)self visibleBounds];
    MinY = CGRectGetMinY(v11);
    if (v5 < MinY)
    {
      MinY = v5;
    }

    [(SXMediaComponentView *)self setMinimumVisibleY:MinY];
    [(SXMediaComponentView *)self maximumVisibleY];
    v8 = v7;
    [(SXMediaComponentView *)self visibleBounds];
    MaxY = CGRectGetMaxY(v12);
    if (v8 >= MaxY)
    {
      MaxY = v8;
    }
  }

  [(SXMediaComponentView *)self setMaximumVisibleY:MaxY];
}

- (void)setIsDisplayingMedia:(BOOL)media
{
  if (self->_isDisplayingMedia != media)
  {
    self->_isDisplayingMedia = media;
    [(SXMediaComponentView *)self createMediaExposureEventIfNeeded];
  }
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end