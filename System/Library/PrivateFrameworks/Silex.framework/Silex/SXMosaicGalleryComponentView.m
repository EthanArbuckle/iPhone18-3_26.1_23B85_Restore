@interface SXMosaicGalleryComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)fullScreenCanvasController:(id)a3 showable:(id)a4 gestureRecognizerShouldBegin:(id)a5;
- (BOOL)fullScreenCanvasController:(id)a3 willShowShowable:(id)a4 viewIndex:(unint64_t)a5;
- (BOOL)galleryLayouter:(id)a3 viewIsCurrentlyFullscreenForItemAtIndex:(unint64_t)a4;
- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)a3;
- (BOOL)shouldSubmitMediaExposureEventForExposedBounds:(CGRect)a3;
- (CGRect)fullScreenCanvasController:(id)a3 fullScreenFrameForShowable:(id)a4 viewIndex:(unint64_t)a5 withinRect:(CGRect)a6;
- (CGRect)fullScreenCanvasController:(id)a3 originalFrameForShowable:(id)a4 onCanvasView:(id)a5 viewIndex:(unint64_t)a6;
- (CGSize)galleryLayouter:(id)a3 dimensionsForItemAtIndex:(unint64_t)a4;
- (SXMosaicGalleryComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 mediaSharingPolicyProvider:(id)a9 imageViewFactory:(id)a10 canvasControllerFactory:(id)a11;
- (id)componentTextStyleForIdentifier:(id)a3 inheritingFromComponentTextStyle:(id)a4;
- (id)contentSizeCategoryForCaption:(id)a3;
- (id)fullScreenCanvasController:(id)a3 canvasViewControllerForShowable:(id)a4 completionBlock:(id)a5;
- (id)fullScreenCanvasController:(id)a3 captionForShowable:(id)a4 viewIndex:(unint64_t)a5;
- (id)fullScreenCanvasController:(id)a3 originalViewForShowable:(id)a4 viewIndex:(unint64_t)a5;
- (id)galleryLayouter:(id)a3 viewForItemAtIndex:(unint64_t)a4;
- (id)imageViewForItemAtIndex:(unint64_t)a3;
- (id)imageViewForLocation:(CGPoint)a3;
- (id)textResizerForCaption:(id)a3;
- (id)textRulesForCaption:(id)a3;
- (id)textStyleForIdentifier:(id)a3;
- (unint64_t)fullScreenCanvasController:(id)a3 numberOfViewsForShowable:(id)a4;
- (unint64_t)fullScreenCanvasController:(id)a3 viewIndexForPoint:(CGPoint)a4 inShowable:(id)a5;
- (unint64_t)numberOfItemsForGalleryLayouter:(id)a3;
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
- (void)presentComponentWithChanges:(id)a3;
- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4;
- (void)renderContents;
- (void)renderContentsInDrawableRect;
- (void)submitEvents;
- (void)visibleBoundsChanged;
- (void)willSubmitMediaExposureEvent:(id)a3;
@end

@implementation SXMosaicGalleryComponentView

- (SXMosaicGalleryComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 mediaSharingPolicyProvider:(id)a9 imageViewFactory:(id)a10 canvasControllerFactory:(id)a11
{
  v33 = a10;
  v18 = a11;
  v34.receiver = self;
  v34.super_class = SXMosaicGalleryComponentView;
  v19 = [(SXGalleryComponentView *)&v34 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:a8 mediaSharingPolicyProvider:a9];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imageViewFactory, a10);
    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    galleryView = v20->_galleryView;
    v20->_galleryView = v21;

    v23 = [(SXComponentView *)v20 contentView];
    [v23 addSubview:v20->_galleryView];

    v24 = [MEMORY[0x1E695DF70] array];
    imageViews = v20->_imageViews;
    v20->_imageViews = v24;

    v26 = [MEMORY[0x1E695DF70] array];
    visibleImageViews = v20->_visibleImageViews;
    v20->_visibleImageViews = v26;

    v28 = [MEMORY[0x1E695DFA8] set];
    exposedGalleryItems = v20->_exposedGalleryItems;
    v20->_exposedGalleryItems = v28;

    v20->_layoutRequired = 1;
    v30 = [v18 fullscreenCanvasControllerForShowable:v20];
    fullScreenCanvasController = v20->_fullScreenCanvasController;
    v20->_fullScreenCanvasController = v30;
  }

  return v20;
}

- (void)presentComponentWithChanges:(id)a3
{
  v10.receiver = self;
  v10.super_class = SXMosaicGalleryComponentView;
  [(SXComponentView *)&v10 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  if ([(SXMosaicGalleryComponentView *)self isLayoutRequired])
  {
    v4 = [(SXMosaicGalleryComponentView *)self galleryView];
    [(SXComponentView *)self contentFrame];
    [v4 setFrame:?];

    v5 = [(SXComponentView *)self component];
    v6 = [v5 items];

    if (v6)
    {
      v7 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
      [v7 setDataSource:self];

      v8 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
      v9 = [(SXMosaicGalleryComponentView *)self galleryView];
      [v8 layoutGalleryOnView:v9];

      [(SXMosaicGalleryComponentView *)self setLayoutRequired:0];
    }
  }
}

- (void)renderContents
{
  v3.receiver = self;
  v3.super_class = SXMosaicGalleryComponentView;
  [(SXComponentView *)&v3 renderContents];
  [(SXMosaicGalleryComponentView *)self renderContentsInDrawableRect];
}

- (void)discardContents
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SXMosaicGalleryComponentView;
  [(SXComponentView *)&v14 discardContents];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 objectHasQualityInterest:self quality:0])
        {
          [v8 giveUpInterestForObject:self];
        }

        [v8 setImage:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
  [v9 removeAllObjects];
}

- (void)visibleBoundsChanged
{
  v34 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = SXMosaicGalleryComponentView;
  [(SXMediaComponentView *)&v32 visibleBoundsChanged];
  [(SXMosaicGalleryComponentView *)self renderContentsInDrawableRect];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        [v8 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [(SXMediaComponentView *)self visibleBounds];
        v39.origin.x = v17;
        v39.origin.y = v18;
        v39.size.width = v19;
        v39.size.height = v20;
        v35.origin.x = v10;
        v35.origin.y = v12;
        v35.size.width = v14;
        v35.size.height = v16;
        v36 = CGRectIntersection(v35, v39);
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        if (!CGRectIsNull(v36))
        {
          v37.origin.x = x;
          v37.origin.y = y;
          v37.size.width = width;
          v37.size.height = height;
          v25 = CGRectGetHeight(v37);
          [v8 frame];
          if (v25 >= CGRectGetHeight(v38) * 0.5)
          {
            v26 = [(SXMosaicGalleryComponentView *)self exposedGalleryItems];
            v27 = [v8 galleryItem];
            [v26 addObject:v27];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }
}

- (void)renderContentsInDrawableRect
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(SXComponentView *)self viewport];
  [v3 bounds];
  v5 = v4;

  [(SXMediaComponentView *)self visibleBounds];
  v28 = CGRectInset(v27, 0.0, v5 * -0.5);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(SXMosaicGalleryComponentView *)self imageViews];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        [v15 frame];
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v16 = CGRectIntersectsRect(v29, v30);
        v17 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
        v18 = [v17 containsObject:v15];

        if (v16)
        {
          if ((v18 & 1) == 0)
          {
            v19 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
            [v19 addObject:v15];

            [v15 addInterestInImageQuality:0 forObject:self];
          }
        }

        else if (v18)
        {
          v20 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
          [v20 removeObject:v15];

          if ([v15 objectHasQualityInterest:self quality:0])
          {
            [v15 giveUpInterestForObject:self];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SXMosaicGalleryComponentView;
  v7 = a4;
  [(SXComponentView *)&v11 receivedInfo:v6 fromLayoutingPhaseWithIdentifier:v7];
  v8 = [v7 isEqualToString:{@"Layouter", v11.receiver, v11.super_class}];

  if (v8)
  {
    v9 = [(SXMosaicGalleryComponentView *)self galleryLayouter];

    if (v9 != v6)
    {
      v10 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
      [v10 reset];

      [(SXMosaicGalleryComponentView *)self setGalleryLayouter:v6];
      [(SXMosaicGalleryComponentView *)self setLayoutRequired:1];
    }
  }
}

- (id)imageViewForItemAtIndex:(unint64_t)a3
{
  v5 = [(SXMosaicGalleryComponentView *)self imageViews];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = [(SXComponentView *)self component];
    v10 = [v9 items];
    v7 = [v10 objectAtIndex:a3];

    v11 = [(SXComponentView *)self DOMObjectProvider];
    v12 = [v7 imageIdentifier];
    v13 = [v11 imageResourceForIdentifier:v12];

    v14 = [(SXMosaicGalleryComponentView *)self imageViewFactory];
    v8 = [v14 imageViewForGalleryItem:v7 imageResource:v13];

    [v8 setContentMode:2];
    [v8 setClipsToBounds:1];
    [v8 setDelegate:self];
    v15 = [(SXGalleryComponentView *)self dragManager];
    [v15 updateAccessibilityDragSourceDescriptorsForDraggableElement:v8];

    v16 = [(SXMosaicGalleryComponentView *)self imageViews];
    [v16 addObject:v8];
  }

  else
  {
    v7 = [(SXMosaicGalleryComponentView *)self imageViews];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (unint64_t)numberOfItemsForGalleryLayouter:(id)a3
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 items];
  v5 = [v4 count];

  return v5;
}

- (CGSize)galleryLayouter:(id)a3 dimensionsForItemAtIndex:(unint64_t)a4
{
  v6 = [(SXComponentView *)self component];
  v7 = [v6 items];
  v8 = [v7 objectAtIndex:a4];

  v9 = [(SXComponentView *)self DOMObjectProvider];
  v10 = [v8 imageIdentifier];
  v11 = [v9 imageResourceForIdentifier:v10];

  [v11 dimensions];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)galleryLayouter:(id)a3 viewForItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SXMosaicGalleryComponentView *)self imageViewForItemAtIndex:a4];
  [v6 frameForItemAtIndex:a4];
  v9 = v8;
  v11 = v10;

  v12 = [v7 imageResource];
  [v12 dimensions];
  v14 = v13;
  v16 = v15;

  [v7 setPreferredImageSize:{CGSizeAspectFill(v14, v16, v9, v11)}];

  return v7;
}

- (BOOL)galleryLayouter:(id)a3 viewIsCurrentlyFullscreenForItemAtIndex:(unint64_t)a4
{
  v6 = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];

  if (!v6)
  {
    return 0;
  }

  v7 = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];
  v8 = [v7 activeViewIndex] == a4;

  return v8;
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

- (void)fullScreenCanvasController:(id)a3 didHideShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXComponentView *)self presentationDelegate:a3];
  [v6 removeInteractivityFocusForComponent:self];

  v7 = [(SXComponentView *)self presentationDelegate];
  [v7 dismissFullscreenCanvasForComponent:self];

  [(SXMosaicGalleryComponentView *)self finishMediaViewEvent];
}

- (void)fullScreenCanvasController:(id)a3 didShowShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXComponentView *)self component:a3];
  v8 = [v7 items];
  v9 = [v8 objectAtIndex:a5];

  [(SXMosaicGalleryComponentView *)self createMediaViewEventForGalleryItem:v9];
}

- (CGRect)fullScreenCanvasController:(id)a3 fullScreenFrameForShowable:(id)a4 viewIndex:(unint64_t)a5 withinRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a3;
  v13 = [(SXComponentView *)self component];
  v14 = [v13 items];
  v15 = [v14 objectAtIndex:a5];

  v16 = [(SXComponentView *)self DOMObjectProvider];
  v17 = [v15 imageIdentifier];
  v18 = [v16 imageResourceForIdentifier:v17];

  [v18 dimensions];
  v20 = v19;
  [v18 dimensions];
  [v12 fitSizeForRect:{0.0, 0.0, v20, v21}];
  v23 = v22;
  v25 = v24;

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v26 = CGRectGetHeight(v34);
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v23;
  v35.size.height = v25;
  v27 = (v26 - CGRectGetHeight(v35)) * 0.5;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v28 = CGRectGetWidth(v36);
  v37.origin.x = 0.0;
  v37.origin.y = v27;
  v37.size.width = v23;
  v37.size.height = v25;
  v29 = (v28 - CGRectGetWidth(v37)) * 0.5;

  v30 = v29;
  v31 = v27;
  v32 = v23;
  v33 = v25;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (unint64_t)fullScreenCanvasController:(id)a3 numberOfViewsForShowable:(id)a4
{
  v5 = [(SXMosaicGalleryComponentView *)self galleryLayouter:a3];
  v6 = [(SXMosaicGalleryComponentView *)self numberOfItemsForGalleryLayouter:v5];

  return v6;
}

- (CGRect)fullScreenCanvasController:(id)a3 originalFrameForShowable:(id)a4 onCanvasView:(id)a5 viewIndex:(unint64_t)a6
{
  v8 = a5;
  v9 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
  [v9 frameForItemAtIndex:a6];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(SXMosaicGalleryComponentView *)self galleryView];
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

- (id)fullScreenCanvasController:(id)a3 originalViewForShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXMosaicGalleryComponentView *)self galleryLayouter:a3];
  v7 = [v6 viewForItemAtIndex:a5];

  return v7;
}

- (void)fullScreenCanvasController:(id)a3 shouldAddGestureView:(id)a4 forShowable:(id)a5
{
  v6 = a4;
  [(SXComponentView *)self contentFrame];
  [v6 setFrame:?];
  v7 = [(SXComponentView *)self contentView];
  [v7 addSubview:v6];
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 didShowViewWithIndex:(unint64_t)a5
{
  v7 = [(SXComponentView *)self component:a3];
  v8 = [v7 items];
  v36 = [v8 objectAtIndex:a5];

  [(SXMosaicGalleryComponentView *)self finishMediaViewEvent];
  [(SXMosaicGalleryComponentView *)self createMediaViewEventForGalleryItem:v36];
  v9 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
  [v9 frameForItemAtIndex:a5];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(SXComponentView *)self absoluteFrame];
  v19 = v18;
  [(SXComponentView *)self absoluteFrame];
  v21 = v20;
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v15;
  v38.size.height = v17;
  v39 = CGRectOffset(v38, v19, v21);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v26 = [(SXComponentView *)self viewport];
  [v26 dynamicBounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v40.origin.x = v28;
  v40.origin.y = v30;
  v40.size.width = v32;
  v40.size.height = v34;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  if (!CGRectContainsRect(v40, v41))
  {
    v35 = [(SXComponentView *)self presentationDelegate];
    [v35 scrollToRect:0 animated:{x, y, width, height}];
  }
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 shouldTransferToOriginalViewWithIndex:(unint64_t)a5
{
  v7 = [(SXMosaicGalleryComponentView *)self galleryLayouter:a3];
  v10 = [v7 viewForItemAtIndex:a5];

  v8 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
  [v8 frameForItemAtIndex:a5];
  [v10 setFrame:?];

  v9 = [(SXMosaicGalleryComponentView *)self galleryView];
  [v9 addSubview:v10];
}

- (unint64_t)fullScreenCanvasController:(id)a3 viewIndexForPoint:(CGPoint)a4 inShowable:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = [(SXMosaicGalleryComponentView *)self galleryLayouter:a3];
  v9 = [(SXMosaicGalleryComponentView *)self numberOfItemsForGalleryLayouter:v8];

  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  while (1)
  {
    v11 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
    v12 = [v11 viewForItemAtIndex:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 frame];
      v16.x = x;
      v16.y = y;
      if (CGRectContainsPoint(v17, v16))
      {
        break;
      }
    }

    ++v10;
    v13 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
    v14 = [(SXMosaicGalleryComponentView *)self numberOfItemsForGalleryLayouter:v13];

    if (v10 >= v14)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v10;
}

- (void)fullScreenCanvasController:(id)a3 willHideShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXMosaicGalleryComponentView *)self galleryLayouter:a3];
  [v7 frameForItemAtIndex:a5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(SXComponentView *)self absoluteFrame];
  v17 = v16;
  [(SXComponentView *)self absoluteFrame];
  v19 = v18;
  v35.origin.x = v9;
  v35.origin.y = v11;
  v35.size.width = v13;
  v35.size.height = v15;
  v36 = CGRectOffset(v35, v17, v19);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v24 = [(SXComponentView *)self viewport];
  [v24 dynamicBounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v37.origin.x = v26;
  v37.origin.y = v28;
  v37.size.width = v30;
  v37.size.height = v32;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  if (!CGRectContainsRect(v37, v38))
  {
    v33 = [(SXComponentView *)self presentationDelegate];
    [v33 scrollToRect:0 animated:{x, y, width, height}];
  }
}

- (BOOL)fullScreenCanvasController:(id)a3 willShowShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v7 = [(SXMosaicGalleryComponentView *)self imageViews:a3];
  v8 = [v7 objectAtIndex:a5];

  if ([v8 hasLoadedImage])
  {
    v9 = [(SXComponentView *)self presentationDelegate];
    v10 = [v9 addInteractivityFocusForComponent:self];

    if (v10)
    {
      [v8 addInterestInImageQuality:1 forObject:self];
    }

    v11 = [(SXComponentView *)self presentationDelegate];
    v12 = [v11 animationController];
    [v12 stopUpdatingAnimationForComponentView:self finishAnimation:1];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 willShowViewWithIndex:(unint64_t)a5
{
  v7 = [(SXMosaicGalleryComponentView *)self imageViews:a3];
  v8 = [v7 objectAtIndex:a5];

  [v8 setShouldShowLoadingIndicator:1];
  v12 = 0.0;
  v9 = [(SXMosaicGalleryComponentView *)self backgroundColor];
  [v9 getHue:0 saturation:0 brightness:&v12 alpha:0];

  v10 = v12;
  if (v12 < 0.5)
  {
    [v8 setLoadingIndicatorStyle:{1, v12}];
  }

  v11 = 0;
  if ([v8 objectHasQualityInterest:self quality:{&v11, v10}] && !v11)
  {
    [v8 addInterestInImageQuality:1 forObject:self];
  }
}

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 didHideViewWithIndex:(unint64_t)a5
{
  v7 = [(SXMosaicGalleryComponentView *)self imageViews:a3];
  v8 = [v7 objectAtIndex:a5];

  [v8 setShouldShowLoadingIndicator:0];
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
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SXMosaicGalleryComponentView *)self imageViews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 frame];
        v18.x = x;
        v18.y = y;
        if (CGRectContainsPoint(v19, v18))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)forceImageViewFullscreen:(id)a3
{
  v4 = a3;
  v5 = [(SXMosaicGalleryComponentView *)self imageViews];
  v6 = [v5 indexOfObject:v4];

  v7 = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];
  [v7 presentFullscreenWithIndex:v6];
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

- (void)submitEvents
{
  v3.receiver = self;
  v3.super_class = SXMosaicGalleryComponentView;
  [(SXMediaComponentView *)&v3 submitEvents];
  [(SXMosaicGalleryComponentView *)self finishMediaViewEvent];
}

- (void)createMediaViewEventForGalleryItem:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];

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
    [(SXMosaicGalleryComponentView *)self setMediaViewEvent:v6];
  }
}

- (void)finishMediaViewEvent
{
  v3 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];
  v4 = [v3 startDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  v7 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];

  if (v7 && v6 >= 1.0)
  {
    v8 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];
    [v8 determineEndDate];

    v9 = [(SXMediaComponentView *)self analyticsReporting];
    v10 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];
    [v9 reportEvent:v10];
  }

  [(SXMosaicGalleryComponentView *)self setMediaViewEvent:0];
}

- (BOOL)shouldSubmitMediaExposureEventForExposedBounds:(CGRect)a3
{
  v3 = [(SXMosaicGalleryComponentView *)self exposedGalleryItems:a3.origin.x];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)willSubmitMediaExposureEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SXMosaicGalleryComponentView;
  v4 = a3;
  [(SXMediaComponentView *)&v9 willSubmitMediaExposureEvent:v4];
  v5 = [(SXComponentView *)self component:v9.receiver];
  v6 = [v5 items];
  [v4 setNumberOfImages:{objc_msgSend(v6, "count")}];

  v7 = [(SXMosaicGalleryComponentView *)self exposedGalleryItems];
  [v4 setNumberOfImagesExposed:{objc_msgSend(v7, "count")}];

  v8 = [(SXMosaicGalleryComponentView *)self exposedGalleryItems];
  [v8 removeAllObjects];
}

- (BOOL)allowHierarchyRemoval
{
  v7.receiver = self;
  v7.super_class = SXMosaicGalleryComponentView;
  v3 = [(SXComponentView *)&v7 allowHierarchyRemoval];
  v4 = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];
  v5 = [v4 isFullscreen];

  return (v5 ^ 1) & v3;
}

@end