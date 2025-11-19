@interface SXStripGalleryComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)fullScreenCanvasController:(id)a3 showable:(id)a4 gestureRecognizerShouldBegin:(id)a5;
- (BOOL)fullScreenCanvasController:(id)a3 willShowShowable:(id)a4 viewIndex:(unint64_t)a5;
- (BOOL)gestureShouldBegin:(id)a3;
- (BOOL)itemizedScrollView:(id)a3 isAllowedToAddViewInHierarchy:(unint64_t)a4;
- (BOOL)itemizedScrollViewWillReindex:(id)a3;
- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)a3;
- (BOOL)usesThumbnailWithImageIdentifier:(id)a3;
- (CGRect)fullScreenCanvasController:(id)a3 fullScreenFrameForShowable:(id)a4 viewIndex:(unint64_t)a5 withinRect:(CGRect)a6;
- (CGRect)fullScreenCanvasController:(id)a3 originalFrameForShowable:(id)a4 onCanvasView:(id)a5 viewIndex:(unint64_t)a6;
- (CGRect)itemizedScrollView:(id)a3 frameForViewAtIndex:(unint64_t)a4;
- (CGRect)snapRegion;
- (CGRect)transitionContentFrame;
- (CGRect)transitionVisibleFrame;
- (SXStripGalleryComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 mediaSharingPolicyProvider:(id)a9 imageViewFactory:(id)a10 canvasControllerFactory:(id)a11;
- (UIView)fullscreenGestureView;
- (id)componentTextStyleForIdentifier:(id)a3 inheritingFromComponentTextStyle:(id)a4;
- (id)contentSizeCategoryForCaption:(id)a3;
- (id)createViewForViewIndex:(unint64_t)a3;
- (id)fullScreenCanvasController:(id)a3 canvasViewControllerForShowable:(id)a4 completionBlock:(id)a5;
- (id)fullScreenCanvasController:(id)a3 captionForShowable:(id)a4 viewIndex:(unint64_t)a5;
- (id)fullScreenCanvasController:(id)a3 copyViewForShowable:(id)a4 viewIndex:(unint64_t)a5;
- (id)fullScreenCanvasController:(id)a3 originalViewForShowable:(id)a4 viewIndex:(unint64_t)a5;
- (id)imageViewForLocation:(CGPoint)a3;
- (id)itemizedScrollView:(id)a3 viewAtIndex:(unint64_t)a4;
- (id)textResizerForCaption:(id)a3;
- (id)textRulesForCaption:(id)a3;
- (id)textStyleForIdentifier:(id)a3;
- (id)visibleGalleryItemViewForImageIdentifier:(id)a3;
- (unint64_t)fullScreenCanvasController:(id)a3 numberOfViewsForShowable:(id)a4;
- (unint64_t)fullScreenCanvasController:(id)a3 viewIndexForPoint:(CGPoint)a4 inShowable:(id)a5;
- (unint64_t)numberOfViewsInItemizedScrollView:(id)a3;
- (void)createMediaViewEventForGalleryItem:(id)a3;
- (void)discardContents;
- (void)finishMediaViewEvent;
- (void)forceImageViewFullscreen:(id)a3;
- (void)fullScreenCanvasController:(id)a3 didHideShowable:(id)a4 viewIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 didShowShowable:(id)a4 viewIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 shouldAddGestureView:(id)a4 forShowable:(id)a5;
- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 didHideViewWithIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 didShowViewWithIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 shouldTransferToOriginalViewWithIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 willShowViewWithIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 willHideShowable:(id)a4 viewIndex:(unint64_t)a5;
- (void)itemizedScrollView:(id)a3 didShowViewWithIndex:(unint64_t)a4;
- (void)loadComponent:(id)a3;
- (void)preloadAdjacentViewsForIndex:(unint64_t)a3;
- (void)presentComponentWithChanges:(id)a3;
- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)submitEvents;
- (void)trackExposedGalleryItems;
- (void)visibilityStateDidChangeFromState:(int64_t)a3;
- (void)willSubmitMediaExposureEvent:(id)a3;
@end

@implementation SXStripGalleryComponentView

- (SXStripGalleryComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 mediaSharingPolicyProvider:(id)a9 imageViewFactory:(id)a10 canvasControllerFactory:(id)a11
{
  v27 = a10;
  v26 = a11;
  v28.receiver = self;
  v28.super_class = SXStripGalleryComponentView;
  v18 = [(SXGalleryComponentView *)&v28 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:a8 mediaSharingPolicyProvider:a9];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageViewFactory, a10);
    objc_storeStrong(&v19->_canvasControllerFactory, a11);
    v19->_lastPreloadViewIndex = 0x7FFFFFFFFFFFFFFFLL;
    v19->_visibleImageViewIndex = 0x7FFFFFFFFFFFFFFFLL;
    v20 = objc_alloc_init(SXItemizedScrollView);
    itemizedScrollView = v19->_itemizedScrollView;
    v19->_itemizedScrollView = v20;

    [(SXItemizedScrollView *)v19->_itemizedScrollView setDataSource:v19];
    [(SXItemizedScrollView *)v19->_itemizedScrollView setDelegate:v19];
    [(SXItemizedScrollView *)v19->_itemizedScrollView setPagingEnabled:0];
    v22 = [(SXComponentView *)v19 contentView];
    [v22 addSubview:v19->_itemizedScrollView];

    v23 = [MEMORY[0x1E695DFA8] set];
    exposedGalleryItems = v19->_exposedGalleryItems;
    v19->_exposedGalleryItems = v23;
  }

  return v19;
}

- (void)loadComponent:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v34 loadComponent:a3];
  if (!self->_imageResources)
  {
    v4 = [(SXStripGalleryComponentView *)self canvasControllerFactory];
    v5 = [v4 fullscreenCanvasControllerForShowable:self];
    fullScreenCanvasController = self->_fullScreenCanvasController;
    self->_fullScreenCanvasController = v5;

    v27 = [MEMORY[0x1E695DF70] array];
    v28 = [MEMORY[0x1E695DF70] array];
    v29 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = [(SXComponentView *)self component];
    v8 = [v7 items];

    v9 = v8;
    v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [(SXComponentView *)self DOMObjectProvider];
          v16 = [v14 imageIdentifier];
          v17 = [v15 imageResourceForIdentifier:v16];

          if (v17)
          {
            [v27 addObject:v17];
            v18 = [MEMORY[0x1E695DFB0] null];
            [(NSMutableArray *)v28 addObject:v18];

            v19 = [v14 accessibilityCaption];
            if (v19)
            {
              [v29 addObject:v19];
            }

            else
            {
              v20 = [MEMORY[0x1E695DFB0] null];
              [v29 addObject:v20];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v21 = [v27 copy];
    imageResources = self->_imageResources;
    self->_imageResources = v21;

    imageViews = self->_imageViews;
    self->_imageViews = v28;
    v24 = v28;

    v25 = [v29 copy];
    accessibilityCaptions = self->_accessibilityCaptions;
    self->_accessibilityCaptions = v25;
  }
}

- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v10 receivedInfo:v6 fromLayoutingPhaseWithIdentifier:v7];
  if ([v7 isEqualToString:@"ContentWidth"])
  {
    v8 = &OBJC_IVAR___SXStripGalleryComponentView__contentWidth;
LABEL_7:
    [v6 floatValue];
    *(&self->super.super.super.super.super.super.isa + *v8) = v9;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"leftOffset"])
  {
    v8 = &OBJC_IVAR___SXStripGalleryComponentView__xOffset;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"rightOffset"])
  {
    v8 = &OBJC_IVAR___SXStripGalleryComponentView__rightContentInset;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)presentComponentWithChanges:(id)a3
{
  v29.receiver = self;
  v29.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v29 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  [(SXStripGalleryComponentView *)self xOffset];
  v5 = v4;
  v6 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [(SXStripGalleryComponentView *)self rightContentInset];
  [v6 setContentInset:{0.0, v5, 0.0, v7}];

  [(SXComponentView *)self contentFrame];
  v9 = v8;
  [(SXStripGalleryComponentView *)self bounds];
  v11 = v10;
  v13 = v12;
  v14 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v14 setFrame:{0.0, v9, v11, v13}];

  if ([(SXStripGalleryComponentView *)self visibleImageViewIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [v15 setActiveViewIndex:-[SXStripGalleryComponentView visibleImageViewIndex](self animated:{"visibleImageViewIndex"), 0}];
  }

  v16 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  v17 = [v16 isFullscreen];

  if ((v17 & 1) == 0)
  {
    v18 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [v18 contentSize];
    v20 = v19;
    v21 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [v21 contentSize];
    v23 = v22;
    v24 = [(SXStripGalleryComponentView *)self fullscreenGestureView];
    [v24 setFrame:{0.0, 0.0, v20, v23}];
  }

  v25 = [(SXComponentView *)self viewport];
  [v25 dynamicBounds];
  Width = CGRectGetWidth(v30);
  [(SXStripGalleryComponentView *)self bounds];
  v27 = CGRectGetWidth(v31);

  if (Width == v27)
  {
    v28 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [v28 setClipsToBounds:0];
  }
}

- (void)discardContents
{
  v14.receiver = self;
  v14.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v14 discardContents];
  v3 = [(SXStripGalleryComponentView *)self imageViews];
  v4 = [v3 count];

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(SXStripGalleryComponentView *)self imageViews];
      v7 = [v6 objectAtIndex:i];

      v8 = [(SXStripGalleryComponentView *)self itemizedScrollView];
      v9 = [v8 visibleRange];
      v11 = v10;

      if (i < v9 || i - v9 >= v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v7 objectHasQualityInterest:self quality:0])
          {
            [v7 giveUpInterestForObject:self];
          }

          [v7 setImage:0];
          v12 = [(SXStripGalleryComponentView *)self imageViews];
          v13 = [MEMORY[0x1E695DFB0] null];
          [v12 replaceObjectAtIndex:i withObject:v13];
        }
      }
    }
  }

  [(SXStripGalleryComponentView *)self setLastPreloadViewIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (id)createViewForViewIndex:(unint64_t)a3
{
  v5 = [(SXStripGalleryComponentView *)self imageResources];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SXStripGalleryComponentView *)self imageViewFactory];
  v8 = [v7 imageViewForResource:v6];

  [v8 setDelegate:self];
  v9 = [(SXStripGalleryComponentView *)self accessibilityCaptions];
  v10 = [v9 objectAtIndex:a3];

  v11 = [MEMORY[0x1E695DFB0] null];

  if (v10 != v11)
  {
    [v8 setAccessibilityLabel:v10];
  }

  v12 = [(SXStripGalleryComponentView *)self imageViews];
  [v12 replaceObjectAtIndex:a3 withObject:v8];

  v13 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [(SXStripGalleryComponentView *)self itemizedScrollView:v13 frameForViewAtIndex:a3];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v8 setFrame:{v15, v17, v19, v21}];
  [v8 setPreferredImageSize:{v19, v21}];
  [v8 addInterestInImageQuality:0 forObject:self];
  v22 = [(SXGalleryComponentView *)self dragManager];
  [v22 updateAccessibilityDragSourceDescriptorsForDraggableElement:v8];

  return v8;
}

- (unint64_t)numberOfViewsInItemizedScrollView:(id)a3
{
  v3 = [(SXStripGalleryComponentView *)self imageViews];
  v4 = [v3 count];

  return v4;
}

- (CGRect)itemizedScrollView:(id)a3 frameForViewAtIndex:(unint64_t)a4
{
  v6 = [(SXStripGalleryComponentView *)self imageResources];
  v7 = [v6 objectAtIndex:a4];

  [(SXComponentView *)self contentFrame];
  v9 = v8;
  [v7 widthForImageHeight:v8];
  v19.size.width = v10;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.height = v9;
  v20 = CGRectIntegral(v19);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)itemizedScrollView:(id)a3 viewAtIndex:(unint64_t)a4
{
  v6 = [(SXStripGalleryComponentView *)self imageViews];
  v7 = [v6 objectAtIndex:a4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SXStripGalleryComponentView *)self createViewForViewIndex:a4];

    v7 = v8;
  }

  [(SXStripGalleryComponentView *)self preloadAdjacentViewsForIndex:a4];

  return v7;
}

- (void)itemizedScrollView:(id)a3 didShowViewWithIndex:(unint64_t)a4
{
  v5 = [(SXStripGalleryComponentView *)self fullscreenGestureView:a3];
  v6 = [v5 superview];
  v7 = [(SXStripGalleryComponentView *)self fullscreenGestureView];
  [v6 bringSubviewToFront:v7];

  v13 = [(SXStripGalleryComponentView *)self fullscreenGestureView];
  v8 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v8 contentSize];
  v10 = v9;
  v11 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v11 contentSize];
  [v13 setFrame:{0.0, 0.0, v10, v12}];
}

- (BOOL)itemizedScrollView:(id)a3 isAllowedToAddViewInHierarchy:(unint64_t)a4
{
  v5 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  LOBYTE(a4) = [v5 activeViewIndex] != a4;

  return a4;
}

- (BOOL)itemizedScrollViewWillReindex:(id)a3
{
  v4 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  if ([v4 isFullscreen])
  {
    v5 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
    v6 = [v5 isTransitioning];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)scrollViewDidScroll:(id)a3
{
  [(SXStripGalleryComponentView *)self preloadAdjacentViewsForIndex:[(SXStripGalleryComponentView *)self visibleImageViewIndex]];

  [(SXStripGalleryComponentView *)self trackExposedGalleryItems];
}

- (CGRect)transitionVisibleFrame
{
  [(SXStripGalleryComponentView *)self xOffset];
  v4 = v3;
  v5 = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [v5 frame];
  v7 = v6;
  v8 = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [v8 frame];
  v10 = v9;

  v11 = 0.0;
  v12 = v4;
  v13 = v7;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (CGRect)transitionContentFrame
{
  [(SXStripGalleryComponentView *)self xOffset];
  v4 = v3;
  [(SXComponentView *)self contentFrame];
  v6 = v5;
  v7 = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [v7 frame];
  v9 = v8;
  v10 = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [v10 frame];
  v12 = v11;

  v13 = v4;
  v14 = v6;
  v15 = v9;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)usesThumbnailWithImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXStripGalleryComponentView *)self targetGalleryItem];
  v6 = [v5 imageResource];
  v7 = [v6 imageIdentifier];
  v8 = [v4 isEqualToString:v7];

  return v8;
}

- (id)visibleGalleryItemViewForImageIdentifier:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = self;
  v5 = [(SXStripGalleryComponentView *)self imageViews];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 imageResource];
          v13 = [v12 imageIdentifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            v15 = [(SXStripGalleryComponentView *)v30 itemizedScrollView];
            [v15 bounds];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            [v11 frame];
            v39.origin.x = v24;
            v39.origin.y = v25;
            v39.size.width = v26;
            v39.size.height = v27;
            v38.origin.x = v17;
            v38.origin.y = v19;
            v38.size.width = v21;
            v38.size.height = v23;
            v28 = CGRectContainsRect(v38, v39);

            if (v28)
            {
              [(SXStripGalleryComponentView *)v30 setTargetGalleryItem:v11];
              goto LABEL_14;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)willSubmitMediaExposureEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SXStripGalleryComponentView;
  v4 = a3;
  [(SXMediaComponentView *)&v9 willSubmitMediaExposureEvent:v4];
  v5 = [(SXComponentView *)self component:v9.receiver];
  v6 = [v5 items];
  [v4 setNumberOfImages:{objc_msgSend(v6, "count")}];

  v7 = [(SXStripGalleryComponentView *)self exposedGalleryItems];
  [v4 setNumberOfImagesExposed:{objc_msgSend(v7, "count")}];

  v8 = [(SXStripGalleryComponentView *)self exposedGalleryItems];
  [v8 removeAllObjects];
}

- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)a3
{
  v3 = self;
  v4 = [(SXComponentView *)self presentationDelegate];
  LOBYTE(v3) = [v4 allowInteractivityFocusForComponent:v3];

  return v3;
}

- (id)fullScreenCanvasController:(id)a3 canvasViewControllerForShowable:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(SXComponentView *)self presentationDelegate];
  v10 = [v9 requestFullScreenCanvasViewControllerForComponent:self canvasController:v8 withCompletionBlock:v7];

  return v10;
}

- (void)fullScreenCanvasController:(id)a3 shouldAddGestureView:(id)a4 forShowable:(id)a5
{
  v12 = a4;
  v6 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v6 contentSize];
  v8 = v7;
  v9 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v9 contentSize];
  [v12 setFrame:{0.0, 0.0, v8, v10}];

  v11 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v11 addSubview:v12];

  [(SXStripGalleryComponentView *)self setFullscreenGestureView:v12];
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 shouldTransferToOriginalViewWithIndex:(unint64_t)a5
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:a3];
  v18 = [v7 objectAtIndex:a5];

  v8 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v8 frameForViewAtIndex:a5];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v18 setFrame:{v10, v12, v14, v16}];
  v17 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v17 addSubview:v18];
}

- (unint64_t)fullScreenCanvasController:(id)a3 numberOfViewsForShowable:(id)a4
{
  v4 = [(SXStripGalleryComponentView *)self imageViews:a3];
  v5 = [v4 count];

  return v5;
}

- (id)fullScreenCanvasController:(id)a3 originalViewForShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXStripGalleryComponentView *)self itemizedScrollView:a3];
  v8 = [(SXStripGalleryComponentView *)self itemizedScrollView:v7 viewAtIndex:a5];

  return v8;
}

- (CGRect)fullScreenCanvasController:(id)a3 originalFrameForShowable:(id)a4 onCanvasView:(id)a5 viewIndex:(unint64_t)a6
{
  v8 = a5;
  v9 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v9 frameForViewAtIndex:a6];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v18 convertRect:v8 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)fullScreenCanvasController:(id)a3 fullScreenFrameForShowable:(id)a4 viewIndex:(unint64_t)a5 withinRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  rect = a6.origin.x;
  v12 = a3;
  v13 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [(SXStripGalleryComponentView *)self itemizedScrollView:v13 frameForViewAtIndex:a5];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 fitSizeForRect:{v15, v17, v19, v21}];
  v23 = v22;
  v25 = v24;

  v37.origin.x = x;
  v37.origin.y = y;
  v26 = y;
  v37.size.width = width;
  v27 = width;
  v37.size.height = height;
  v28 = height;
  v29 = CGRectGetHeight(v37);
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v23;
  v38.size.height = v25;
  v30 = (v29 - CGRectGetHeight(v38)) * 0.5;
  v39.origin.x = rect;
  v39.origin.y = v26;
  v39.size.width = v27;
  v39.size.height = v28;
  v31 = CGRectGetWidth(v39);
  v40.origin.x = v15;
  v40.origin.y = v30;
  v40.size.width = v23;
  v40.size.height = v25;
  v32 = (v31 - CGRectGetWidth(v40)) * 0.5;
  v33 = v30;
  v34 = v23;
  v35 = v25;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (unint64_t)fullScreenCanvasController:(id)a3 viewIndexForPoint:(CGPoint)a4 inShowable:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = [(SXStripGalleryComponentView *)self imageViews:a3];
  v9 = [v8 count];

  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  while (1)
  {
    v11 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [v11 frameForViewAtIndex:v10];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v24.origin.x = v13;
    v24.origin.y = v15;
    v24.size.width = v17;
    v24.size.height = v19;
    v23.x = x;
    v23.y = y;
    if (CGRectContainsPoint(v24, v23))
    {
      break;
    }

    ++v10;
    v20 = [(SXStripGalleryComponentView *)self imageViews];
    v21 = [v20 count];

    if (v10 >= v21)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v10;
}

- (id)fullScreenCanvasController:(id)a3 captionForShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXComponentView *)self component:a3];
  v8 = [v7 items];
  v9 = [v8 objectAtIndex:a5];

  v10 = [v9 captionComponent];

  if (v10)
  {
    v11 = [SXFullscreenCaption alloc];
    v12 = [v9 captionComponent];
    v13 = [(SXFullscreenCaption *)&v11->super.isa initWithCaption:v12 dataSource:self];
LABEL_5:
    v16 = v13;

    goto LABEL_6;
  }

  v14 = [v9 caption];

  if (v14)
  {
    v15 = [SXFullscreenCaption alloc];
    v12 = [v9 caption];
    v13 = [(SXFullscreenCaption *)&v15->super.isa initWithText:v12 dataSource:self];
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (BOOL)fullScreenCanvasController:(id)a3 willShowShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:a3];
  v8 = [v7 objectAtIndex:a5];

  v9 = [v8 hasLoadedImage];
  v10 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  v11 = [v10 isDecelerating];
  if (v11)
  {
LABEL_2:
    v12 = v11 ^ 1;

    goto LABEL_3;
  }

  v14 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  v15 = [v14 isDragging];

  v12 = 0;
  if ((v15 & 1) == 0 && ((v9 ^ 1) & 1) == 0)
  {
    v16 = [(SXComponentView *)self presentationDelegate];
    v17 = [v16 addInteractivityFocusForComponent:self];

    if (!v17)
    {
      v12 = 0;
      goto LABEL_3;
    }

    v18 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [v18 setScrollEnabled:0];

    v10 = [(SXComponentView *)self presentationDelegate];
    v19 = [v10 animationController];
    [v19 stopUpdatingAnimationForComponentView:self finishAnimation:1];

    goto LABEL_2;
  }

LABEL_3:

  return v12;
}

- (void)fullScreenCanvasController:(id)a3 willHideShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXStripGalleryComponentView *)self itemizedScrollView:a3];
  [v7 reindexate];

  v8 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v8 setActiveViewIndex:a5 animated:0];

  v9 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v9 forceCorrectFrames];
}

- (void)fullScreenCanvasController:(id)a3 didHideShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXStripGalleryComponentView *)self itemizedScrollView:a3];
  [v6 setScrollEnabled:1];

  v7 = [(SXComponentView *)self presentationDelegate];
  [v7 removeInteractivityFocusForComponent:self];

  v8 = [(SXComponentView *)self presentationDelegate];
  [v8 dismissFullscreenCanvasForComponent:self];

  [(SXStripGalleryComponentView *)self finishMediaViewEvent];
}

- (void)fullScreenCanvasController:(id)a3 didShowShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXComponentView *)self component:a3];
  v8 = [v7 items];
  v9 = [v8 objectAtIndex:a5];

  [(SXStripGalleryComponentView *)self createMediaViewEventForGalleryItem:v9];
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 didShowViewWithIndex:(unint64_t)a5
{
  v7 = [(SXComponentView *)self component:a3];
  v8 = [v7 items];
  v11 = [v8 objectAtIndex:a5];

  [(SXStripGalleryComponentView *)self finishMediaViewEvent];
  [(SXStripGalleryComponentView *)self createMediaViewEventForGalleryItem:v11];
  v9 = [(SXComponentView *)self presentationDelegate];
  v10 = [v9 animationController];
  [v10 stopUpdatingAnimationForComponentView:self finishAnimation:1];
}

- (id)fullScreenCanvasController:(id)a3 copyViewForShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXStripGalleryComponentView *)self imageViews:a3];
  v7 = [v6 objectAtIndex:a5];

  v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [v7 frame];
  v9 = [v8 initWithFrame:?];
  v10 = [v7 image];
  [v9 setImage:v10];

  return v9;
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 willShowViewWithIndex:(unint64_t)a5
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:a3];
  v8 = [v7 objectAtIndex:a5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    if ([v8 objectHasQualityInterest:self quality:&v9])
    {
      if (!v9)
      {
        [v8 addInterestInImageQuality:1 forObject:self];
      }
    }
  }
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 didHideViewWithIndex:(unint64_t)a5
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:a3];
  v8 = [v7 objectAtIndex:a5];

  [v8 giveUpInterestForObject:self];
  [v8 addInterestInImageQuality:0 forObject:self];
}

- (BOOL)fullScreenCanvasController:(id)a3 showable:(id)a4 gestureRecognizerShouldBegin:(id)a5
{
  v5 = [(SXComponentView *)self presentationDelegate:a3];
  v6 = [v5 isScrolling];

  return v6 ^ 1;
}

- (id)imageViewForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v6 forceCorrectFrames];

  v7 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v7 convertPoint:self fromView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(SXStripGalleryComponentView *)self imageViews];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [(SXStripGalleryComponentView *)self imageViews];
      v17 = [v16 objectAtIndex:v14];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [(SXStripGalleryComponentView *)self itemizedScrollView];
        [v18 frameForViewAtIndex:v14];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v27 = v17;
        v34.origin.x = v20;
        v34.origin.y = v22;
        v34.size.width = v24;
        v34.size.height = v26;
        v33.x = v9;
        v33.y = v11;
        if (CGRectContainsPoint(v34, v33))
        {
          v28 = v27;

          v15 = v28;
        }
      }

      ++v14;
      v29 = [(SXStripGalleryComponentView *)self imageViews];
      v30 = [v29 count];
    }

    while (v14 < v30);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)forceImageViewFullscreen:(id)a3
{
  v4 = a3;
  v5 = [(SXStripGalleryComponentView *)self imageViews];
  v6 = [v5 indexOfObject:v4];

  v7 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  [v7 presentFullscreenWithIndex:v6];
}

- (CGRect)snapRegion
{
  [(SXStripGalleryComponentView *)self xOffset];
  v4 = v3;
  [(SXStripGalleryComponentView *)self contentWidth];
  v6 = v5;
  [(SXComponentView *)self contentFrame];
  Height = CGRectGetHeight(v11);
  v8 = 0.0;
  v9 = v4;
  v10 = v6;
  result.size.height = Height;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a5->x;
  rect = [(SXStripGalleryComponentView *)self itemizedScrollView:a3];
  [rect bounds];
  v9 = v8 + CGRectGetWidth(v96);
  v10 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [v10 contentSize];
  if (v9 >= v11)
  {
  }

  else
  {
    v12 = a5->x;

    if (x != 0.0 && v12 > 0.0)
    {
      v87 = x;
      [(SXStripGalleryComponentView *)self snapRegion];
      v91 = v14;
      v92 = v13;
      v90 = v15;
      v17 = v16;
      v18 = a5->x;
      v19 = [(SXStripGalleryComponentView *)self imageViews];
      v20 = [v19 count];

      recta = v17;
      v21 = 0;
      if (v20)
      {
        v22 = 0;
        v23 = 0x7FFFFFFFFFFFFFFFLL;
        v24 = 1.79769313e308;
        while (1)
        {
          v25 = [(SXStripGalleryComponentView *)self itemizedScrollView];
          [v25 frameForViewAtIndex:v22];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;

          v97.origin.x = v27;
          v97.origin.y = v29;
          v97.size.width = v31;
          v97.size.height = v33;
          v34 = v18 - CGRectGetMinX(v97);
          v35 = v34 >= 0.0 ? v34 : -v34;
          v36 = [(SXStripGalleryComponentView *)self imageViews];
          v37 = [v36 count] - 1;

          if (v22 == v37)
          {
            break;
          }

          v99.origin.x = v27;
          v99.origin.y = v29;
          v99.size.width = v31;
          v99.size.height = v33;
          Width = CGRectGetWidth(v99);
          v100.origin.x = v27;
          v100.origin.y = v29;
          v100.size.width = v31;
          v100.size.height = v33;
          v40 = Width / CGRectGetHeight(v100);
          v38 = v18;
          if (v40 > 2.0)
          {
            goto LABEL_12;
          }

          v42 = 0;
LABEL_18:
          if (v35 < v24)
          {
            v23 = v22;
            v24 = v35;
            v21 = v42;
          }

          ++v22;
          v43 = [(SXStripGalleryComponentView *)self imageViews];
          v44 = [v43 count];

          if (v22 >= v44)
          {
            goto LABEL_26;
          }
        }

        v98.origin.y = v91;
        v98.origin.x = v92;
        v98.size.width = v90;
        *&v98.size.height = recta;
        v38 = v18 + CGRectGetMaxX(v98);
LABEL_12:
        v101.origin.x = v27;
        v101.origin.y = v29;
        v101.size.width = v31;
        v101.size.height = v33;
        v41 = v38 - CGRectGetMaxX(v101);
        if (v41 < 0.0)
        {
          v41 = -v41;
        }

        v42 = v41 < v35;
        if (v41 < v35)
        {
          v35 = v41;
        }

        goto LABEL_18;
      }

      v23 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_26:
      v45 = [(SXStripGalleryComponentView *)self itemizedScrollView];
      [v45 frameForViewAtIndex:v23];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      if (v87 >= 0.0)
      {
        v69 = v90;
        if (v87 <= 0.0)
        {
          return;
        }

        v104.origin.x = v47;
        v104.origin.y = v49;
        v104.size.width = v51;
        v104.size.height = v53;
        MinX = CGRectGetMinX(v104);
        v105.origin.x = v92;
        v105.origin.y = v91;
        v105.size.width = v90;
        *&v105.size.height = recta;
        v85 = CGRectGetMinX(v105);
        v70 = [(SXStripGalleryComponentView *)self itemizedScrollView];
        [v70 contentOffset];
        v71 = v53;
        v72 = v51;
        v73 = v49;
        v74 = v47;
        v76 = v75;

        v77 = MinX - v85 <= v76;
        v65 = v74;
        v66 = v73;
        v68 = v72;
        v67 = v71;
        v57 = v92;
        v58 = v91;
        v59 = *&recta;
        if (v77)
        {
          return;
        }
      }

      else
      {
        v102.origin.x = v47;
        v102.origin.y = v49;
        v102.size.width = v51;
        v102.size.height = v53;
        v88 = v51;
        v54 = v49;
        v55 = v47;
        v56 = CGRectGetMinX(v102);
        v58 = v91;
        v57 = v92;
        v103.origin.x = v92;
        v103.origin.y = v91;
        v103.size.width = v90;
        v59 = *&recta;
        *&v103.size.height = recta;
        v60 = v56 - CGRectGetMinX(v103);
        v61 = [(SXStripGalleryComponentView *)self itemizedScrollView];
        [v61 contentOffset];
        v63 = v62;

        v64 = v60 < v63;
        v65 = v55;
        v66 = v54;
        v67 = v53;
        v68 = v88;
        v69 = v90;
        if (!v64)
        {
          return;
        }
      }

      v86 = v67;
      v78 = v65;
      v79 = v66;
      v80 = v68;
      v81 = CGRectGetMinX(*(&v67 - 3));
      v106.origin.x = v57;
      v106.origin.y = v58;
      v106.size.width = v69;
      v106.size.height = v59;
      v82 = CGRectGetMinX(v106);
      if (v21)
      {
        v107.origin.x = v65;
        v107.origin.y = v66;
        v107.size.width = v68;
        v107.size.height = v86;
        MaxX = CGRectGetMaxX(v107);
        v108.origin.x = v57;
        v108.origin.y = v58;
        v108.size.width = v69;
        v108.size.height = v59;
        v84 = MaxX - CGRectGetMaxX(v108);
      }

      else
      {
        v84 = v81 - v82;
      }

      a5->x = v84;
    }
  }
}

- (BOOL)gestureShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  v6 = [v5 otherInteractivityGestureShouldBegin:v4];

  return v6;
}

- (id)textResizerForCaption:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXComponentView *)self DOMObjectProvider];
  v6 = SXDefaultTextStyleIdentifierForRole(@"body");
  v26[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v8 = [(SXComponentView *)self component];
  v9 = [v5 componentTextStyleForIdentifiers:v7 component:v8];

  if (!v9)
  {
    v10 = [(SXComponentView *)self DOMObjectProvider];
    v25 = @"default";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v12 = [(SXComponentView *)self component];
    v9 = [v10 componentTextStyleForIdentifiers:v11 component:v12];
  }

  v13 = [(SXComponentView *)self DOMObjectProvider];
  v14 = [(SXFullscreenCaption *)v4 caption];

  v15 = [v14 textStyle];
  v16 = [(SXComponentView *)self component];
  v17 = [v16 classification];
  v18 = [(SXComponentView *)self component];
  v19 = [v13 componentTextStyleForIdentifier:v15 classification:v17 component:v18];

  if (v19)
  {
    v20 = [v19 fontScaling];
  }

  else
  {
    v20 = 1;
  }

  v21 = [SXTextResizer alloc];
  v22 = [(SXComponentView *)self documentColumnLayout];
  v23 = [(SXTextResizer *)&v21->super.isa initWithColumnLayout:v22 defaultTextStyle:v9 fontScalingEnabled:v20];

  return v23;
}

- (id)textRulesForCaption:(id)a3
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 classification];
  v5 = [v4 textRules];

  return v5;
}

- (id)textStyleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentView *)self DOMObjectProvider];
  v6 = [(SXComponentView *)self component];
  v7 = [v5 textStyleForIdentifier:v4 component:v6];

  return v7;
}

- (id)componentTextStyleForIdentifier:(id)a3 inheritingFromComponentTextStyle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXComponentView *)self DOMObjectProvider];
  v9 = [(SXComponentView *)self component];
  v10 = [v8 componentTextStyleForIdentifier:v7 inheritingFromComponentTextStyle:v6 component:v9];

  return v10;
}

- (id)contentSizeCategoryForCaption:(id)a3
{
  v3 = [(SXComponentView *)self presentationDelegate];
  v4 = [v3 presentationAttributes];
  v5 = [v4 contentSizeCategory];

  return v5;
}

- (void)visibilityStateDidChangeFromState:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SXStripGalleryComponentView;
  [(SXMediaComponentView *)&v4 visibilityStateDidChangeFromState:a3];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    [(SXStripGalleryComponentView *)self trackExposedGalleryItems];
  }
}

- (void)trackExposedGalleryItems
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 items];
  v5 = [v4 NSArray];
  v6 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  v7 = [v6 visibleRange];
  v10 = [v5 subarrayWithRange:{v7, v8}];

  v9 = [(SXStripGalleryComponentView *)self exposedGalleryItems];
  [v9 addObjectsFromArray:v10];
}

- (void)submitEvents
{
  v3.receiver = self;
  v3.super_class = SXStripGalleryComponentView;
  [(SXMediaComponentView *)&v3 submitEvents];
  [(SXStripGalleryComponentView *)self finishMediaViewEvent];
}

- (void)createMediaViewEventForGalleryItem:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXStripGalleryComponentView *)self mediaViewEvent];

  if (v4 && !v5)
  {
    v6 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
    v7 = [(SXComponentView *)self component];
    v8 = [v7 items];
    [v6 setGalleryImageCount:{objc_msgSend(v8, "count")}];

    v9 = [v4 imageIdentifier];
    v11[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v6 setGalleryImageIds:v10];

    [v6 setMediaType:4];
    [(SXStripGalleryComponentView *)self setMediaViewEvent:v6];
  }
}

- (void)finishMediaViewEvent
{
  v3 = [(SXStripGalleryComponentView *)self mediaViewEvent];
  v4 = [v3 startDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  v7 = [(SXStripGalleryComponentView *)self mediaViewEvent];

  if (v7 && v6 >= 1.0)
  {
    v8 = [(SXStripGalleryComponentView *)self mediaViewEvent];
    [v8 determineEndDate];

    v9 = [(SXMediaComponentView *)self analyticsReporting];
    v10 = [(SXStripGalleryComponentView *)self mediaViewEvent];
    [v9 reportEvent:v10];

    [(SXStripGalleryComponentView *)self setMediaViewEvent:0];
  }
}

- (void)preloadAdjacentViewsForIndex:(unint64_t)a3
{
  if ([(SXStripGalleryComponentView *)self lastPreloadViewIndex]!= a3)
  {
    v5 = [(SXStripGalleryComponentView *)self imageViews];
    v6 = [v5 count] - 1;

    if (v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    if (a3 + 2 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = a3 + 2;
    }

    if (a3 + 2 >= v7)
    {
      do
      {
        if (a3 != v7)
        {
          v9 = [(SXStripGalleryComponentView *)self imageViews];
          v10 = [v9 objectAtIndex:v7];

          v11 = [MEMORY[0x1E695DFB0] null];

          if (v10 == v11)
          {
            v12 = [(SXStripGalleryComponentView *)self createViewForViewIndex:v7];

            v13 = [(SXStripGalleryComponentView *)self imageViews];
            [v13 replaceObjectAtIndex:v7 withObject:v12];

            v10 = v12;
          }
        }

        ++v7;
      }

      while (v7 <= v8);
    }

    [(SXStripGalleryComponentView *)self setLastPreloadViewIndex:a3];
  }
}

- (BOOL)allowHierarchyRemoval
{
  v7.receiver = self;
  v7.super_class = SXStripGalleryComponentView;
  v3 = [(SXComponentView *)&v7 allowHierarchyRemoval];
  v4 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  v5 = [v4 isFullscreen];

  return (v5 ^ 1) & v3;
}

- (UIView)fullscreenGestureView
{
  WeakRetained = objc_loadWeakRetained(&self->_fullscreenGestureView);

  return WeakRetained;
}

@end