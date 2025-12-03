@interface SXMosaicGalleryComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)fullScreenCanvasController:(id)controller showable:(id)showable gestureRecognizerShouldBegin:(id)begin;
- (BOOL)fullScreenCanvasController:(id)controller willShowShowable:(id)showable viewIndex:(unint64_t)index;
- (BOOL)galleryLayouter:(id)layouter viewIsCurrentlyFullscreenForItemAtIndex:(unint64_t)index;
- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)controller;
- (BOOL)shouldSubmitMediaExposureEventForExposedBounds:(CGRect)bounds;
- (CGRect)fullScreenCanvasController:(id)controller fullScreenFrameForShowable:(id)showable viewIndex:(unint64_t)index withinRect:(CGRect)rect;
- (CGRect)fullScreenCanvasController:(id)controller originalFrameForShowable:(id)showable onCanvasView:(id)view viewIndex:(unint64_t)index;
- (CGSize)galleryLayouter:(id)layouter dimensionsForItemAtIndex:(unint64_t)index;
- (SXMosaicGalleryComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider imageViewFactory:(id)self0 canvasControllerFactory:(id)self1;
- (id)componentTextStyleForIdentifier:(id)identifier inheritingFromComponentTextStyle:(id)style;
- (id)contentSizeCategoryForCaption:(id)caption;
- (id)fullScreenCanvasController:(id)controller canvasViewControllerForShowable:(id)showable completionBlock:(id)block;
- (id)fullScreenCanvasController:(id)controller captionForShowable:(id)showable viewIndex:(unint64_t)index;
- (id)fullScreenCanvasController:(id)controller originalViewForShowable:(id)showable viewIndex:(unint64_t)index;
- (id)galleryLayouter:(id)layouter viewForItemAtIndex:(unint64_t)index;
- (id)imageViewForItemAtIndex:(unint64_t)index;
- (id)imageViewForLocation:(CGPoint)location;
- (id)textResizerForCaption:(id)caption;
- (id)textRulesForCaption:(id)caption;
- (id)textStyleForIdentifier:(id)identifier;
- (unint64_t)fullScreenCanvasController:(id)controller numberOfViewsForShowable:(id)showable;
- (unint64_t)fullScreenCanvasController:(id)controller viewIndexForPoint:(CGPoint)point inShowable:(id)showable;
- (unint64_t)numberOfItemsForGalleryLayouter:(id)layouter;
- (void)createMediaViewEventForGalleryItem:(id)item;
- (void)discardContents;
- (void)finishMediaViewEvent;
- (void)forceImageViewFullscreen:(id)fullscreen;
- (void)fullScreenCanvasController:(id)controller didHideShowable:(id)showable viewIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller didShowShowable:(id)showable viewIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller shouldAddGestureView:(id)view forShowable:(id)showable;
- (void)fullScreenCanvasController:(id)controller showable:(id)showable didHideViewWithIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller showable:(id)showable didShowViewWithIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller showable:(id)showable shouldTransferToOriginalViewWithIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller showable:(id)showable willShowViewWithIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller willHideShowable:(id)showable viewIndex:(unint64_t)index;
- (void)presentComponentWithChanges:(id)changes;
- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier;
- (void)renderContents;
- (void)renderContentsInDrawableRect;
- (void)submitEvents;
- (void)visibleBoundsChanged;
- (void)willSubmitMediaExposureEvent:(id)event;
@end

@implementation SXMosaicGalleryComponentView

- (SXMosaicGalleryComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider imageViewFactory:(id)self0 canvasControllerFactory:(id)self1
{
  viewFactoryCopy = viewFactory;
  controllerFactoryCopy = controllerFactory;
  v34.receiver = self;
  v34.super_class = SXMosaicGalleryComponentView;
  v19 = [(SXGalleryComponentView *)&v34 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitor mediaSharingPolicyProvider:policyProvider];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imageViewFactory, viewFactory);
    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    galleryView = v20->_galleryView;
    v20->_galleryView = v21;

    contentView = [(SXComponentView *)v20 contentView];
    [contentView addSubview:v20->_galleryView];

    array = [MEMORY[0x1E695DF70] array];
    imageViews = v20->_imageViews;
    v20->_imageViews = array;

    array2 = [MEMORY[0x1E695DF70] array];
    visibleImageViews = v20->_visibleImageViews;
    v20->_visibleImageViews = array2;

    v28 = [MEMORY[0x1E695DFA8] set];
    exposedGalleryItems = v20->_exposedGalleryItems;
    v20->_exposedGalleryItems = v28;

    v20->_layoutRequired = 1;
    v30 = [controllerFactoryCopy fullscreenCanvasControllerForShowable:v20];
    fullScreenCanvasController = v20->_fullScreenCanvasController;
    v20->_fullScreenCanvasController = v30;
  }

  return v20;
}

- (void)presentComponentWithChanges:(id)changes
{
  v10.receiver = self;
  v10.super_class = SXMosaicGalleryComponentView;
  [(SXComponentView *)&v10 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  if ([(SXMosaicGalleryComponentView *)self isLayoutRequired])
  {
    galleryView = [(SXMosaicGalleryComponentView *)self galleryView];
    [(SXComponentView *)self contentFrame];
    [galleryView setFrame:?];

    component = [(SXComponentView *)self component];
    items = [component items];

    if (items)
    {
      galleryLayouter = [(SXMosaicGalleryComponentView *)self galleryLayouter];
      [galleryLayouter setDataSource:self];

      galleryLayouter2 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
      galleryView2 = [(SXMosaicGalleryComponentView *)self galleryView];
      [galleryLayouter2 layoutGalleryOnView:galleryView2];

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
  visibleImageViews = [(SXMosaicGalleryComponentView *)self visibleImageViews];
  v4 = [visibleImageViews countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(visibleImageViews);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 objectHasQualityInterest:self quality:0])
        {
          [v8 giveUpInterestForObject:self];
        }

        [v8 setImage:0];
      }

      v5 = [visibleImageViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  visibleImageViews2 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
  [visibleImageViews2 removeAllObjects];
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
  visibleImageViews = [(SXMosaicGalleryComponentView *)self visibleImageViews];
  v4 = [visibleImageViews countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(visibleImageViews);
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
            exposedGalleryItems = [(SXMosaicGalleryComponentView *)self exposedGalleryItems];
            galleryItem = [v8 galleryItem];
            [exposedGalleryItems addObject:galleryItem];
          }
        }
      }

      v5 = [visibleImageViews countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }
}

- (void)renderContentsInDrawableRect
{
  v26 = *MEMORY[0x1E69E9840];
  viewport = [(SXComponentView *)self viewport];
  [viewport bounds];
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
  imageViews = [(SXMosaicGalleryComponentView *)self imageViews];
  v11 = [imageViews countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(imageViews);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        [v15 frame];
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v16 = CGRectIntersectsRect(v29, v30);
        visibleImageViews = [(SXMosaicGalleryComponentView *)self visibleImageViews];
        v18 = [visibleImageViews containsObject:v15];

        if (v16)
        {
          if ((v18 & 1) == 0)
          {
            visibleImageViews2 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
            [visibleImageViews2 addObject:v15];

            [v15 addInterestInImageQuality:0 forObject:self];
          }
        }

        else if (v18)
        {
          visibleImageViews3 = [(SXMosaicGalleryComponentView *)self visibleImageViews];
          [visibleImageViews3 removeObject:v15];

          if ([v15 objectHasQualityInterest:self quality:0])
          {
            [v15 giveUpInterestForObject:self];
          }
        }
      }

      v12 = [imageViews countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = SXMosaicGalleryComponentView;
  identifierCopy = identifier;
  [(SXComponentView *)&v11 receivedInfo:infoCopy fromLayoutingPhaseWithIdentifier:identifierCopy];
  v8 = [identifierCopy isEqualToString:{@"Layouter", v11.receiver, v11.super_class}];

  if (v8)
  {
    galleryLayouter = [(SXMosaicGalleryComponentView *)self galleryLayouter];

    if (galleryLayouter != infoCopy)
    {
      galleryLayouter2 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
      [galleryLayouter2 reset];

      [(SXMosaicGalleryComponentView *)self setGalleryLayouter:infoCopy];
      [(SXMosaicGalleryComponentView *)self setLayoutRequired:1];
    }
  }
}

- (id)imageViewForItemAtIndex:(unint64_t)index
{
  imageViews = [(SXMosaicGalleryComponentView *)self imageViews];
  v6 = [imageViews count];

  if (v6 <= index)
  {
    component = [(SXComponentView *)self component];
    items = [component items];
    imageViews3 = [items objectAtIndex:index];

    dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
    imageIdentifier = [imageViews3 imageIdentifier];
    v13 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

    imageViewFactory = [(SXMosaicGalleryComponentView *)self imageViewFactory];
    v8 = [imageViewFactory imageViewForGalleryItem:imageViews3 imageResource:v13];

    [v8 setContentMode:2];
    [v8 setClipsToBounds:1];
    [v8 setDelegate:self];
    dragManager = [(SXGalleryComponentView *)self dragManager];
    [dragManager updateAccessibilityDragSourceDescriptorsForDraggableElement:v8];

    imageViews2 = [(SXMosaicGalleryComponentView *)self imageViews];
    [imageViews2 addObject:v8];
  }

  else
  {
    imageViews3 = [(SXMosaicGalleryComponentView *)self imageViews];
    v8 = [imageViews3 objectAtIndex:index];
  }

  return v8;
}

- (unint64_t)numberOfItemsForGalleryLayouter:(id)layouter
{
  component = [(SXComponentView *)self component];
  items = [component items];
  v5 = [items count];

  return v5;
}

- (CGSize)galleryLayouter:(id)layouter dimensionsForItemAtIndex:(unint64_t)index
{
  component = [(SXComponentView *)self component];
  items = [component items];
  v8 = [items objectAtIndex:index];

  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  imageIdentifier = [v8 imageIdentifier];
  v11 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

  [v11 dimensions];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)galleryLayouter:(id)layouter viewForItemAtIndex:(unint64_t)index
{
  layouterCopy = layouter;
  v7 = [(SXMosaicGalleryComponentView *)self imageViewForItemAtIndex:index];
  [layouterCopy frameForItemAtIndex:index];
  v9 = v8;
  v11 = v10;

  imageResource = [v7 imageResource];
  [imageResource dimensions];
  v14 = v13;
  v16 = v15;

  [v7 setPreferredImageSize:{CGSizeAspectFill(v14, v16, v9, v11)}];

  return v7;
}

- (BOOL)galleryLayouter:(id)layouter viewIsCurrentlyFullscreenForItemAtIndex:(unint64_t)index
{
  fullScreenCanvasController = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];

  if (!fullScreenCanvasController)
  {
    return 0;
  }

  fullScreenCanvasController2 = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];
  v8 = [fullScreenCanvasController2 activeViewIndex] == index;

  return v8;
}

- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)controller
{
  selfCopy = self;
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  LOBYTE(selfCopy) = [presentationDelegate allowInteractivityFocusForComponent:selfCopy];

  return selfCopy;
}

- (id)fullScreenCanvasController:(id)controller canvasViewControllerForShowable:(id)showable completionBlock:(id)block
{
  blockCopy = block;
  controllerCopy = controller;
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  v10 = [presentationDelegate requestFullScreenCanvasViewControllerForComponent:self canvasController:controllerCopy withCompletionBlock:blockCopy];

  return v10;
}

- (id)fullScreenCanvasController:(id)controller captionForShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXComponentView *)self component:controller];
  items = [v7 items];
  v9 = [items objectAtIndex:index];

  captionComponent = [v9 captionComponent];

  if (captionComponent)
  {
    v11 = [SXFullscreenCaption alloc];
    captionComponent2 = [v9 captionComponent];
    v13 = [(SXFullscreenCaption *)&v11->super.isa initWithCaption:captionComponent2 dataSource:self];
LABEL_5:
    v16 = v13;

    goto LABEL_6;
  }

  caption = [v9 caption];

  if (caption)
  {
    v15 = [SXFullscreenCaption alloc];
    captionComponent2 = [v9 caption];
    v13 = [(SXFullscreenCaption *)&v15->super.isa initWithText:captionComponent2 dataSource:self];
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (void)fullScreenCanvasController:(id)controller didHideShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXComponentView *)self presentationDelegate:controller];
  [v6 removeInteractivityFocusForComponent:self];

  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate dismissFullscreenCanvasForComponent:self];

  [(SXMosaicGalleryComponentView *)self finishMediaViewEvent];
}

- (void)fullScreenCanvasController:(id)controller didShowShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXComponentView *)self component:controller];
  items = [v7 items];
  v9 = [items objectAtIndex:index];

  [(SXMosaicGalleryComponentView *)self createMediaViewEventForGalleryItem:v9];
}

- (CGRect)fullScreenCanvasController:(id)controller fullScreenFrameForShowable:(id)showable viewIndex:(unint64_t)index withinRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  component = [(SXComponentView *)self component];
  items = [component items];
  v15 = [items objectAtIndex:index];

  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  imageIdentifier = [v15 imageIdentifier];
  v18 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

  [v18 dimensions];
  v20 = v19;
  [v18 dimensions];
  [controllerCopy fitSizeForRect:{0.0, 0.0, v20, v21}];
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

- (unint64_t)fullScreenCanvasController:(id)controller numberOfViewsForShowable:(id)showable
{
  v5 = [(SXMosaicGalleryComponentView *)self galleryLayouter:controller];
  v6 = [(SXMosaicGalleryComponentView *)self numberOfItemsForGalleryLayouter:v5];

  return v6;
}

- (CGRect)fullScreenCanvasController:(id)controller originalFrameForShowable:(id)showable onCanvasView:(id)view viewIndex:(unint64_t)index
{
  viewCopy = view;
  galleryLayouter = [(SXMosaicGalleryComponentView *)self galleryLayouter];
  [galleryLayouter frameForItemAtIndex:index];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  galleryView = [(SXMosaicGalleryComponentView *)self galleryView];
  [galleryView convertRect:viewCopy toView:{v11, v13, v15, v17}];
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

- (id)fullScreenCanvasController:(id)controller originalViewForShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXMosaicGalleryComponentView *)self galleryLayouter:controller];
  v7 = [v6 viewForItemAtIndex:index];

  return v7;
}

- (void)fullScreenCanvasController:(id)controller shouldAddGestureView:(id)view forShowable:(id)showable
{
  viewCopy = view;
  [(SXComponentView *)self contentFrame];
  [viewCopy setFrame:?];
  contentView = [(SXComponentView *)self contentView];
  [contentView addSubview:viewCopy];
}

- (void)fullScreenCanvasController:(id)controller showable:(id)showable didShowViewWithIndex:(unint64_t)index
{
  v7 = [(SXComponentView *)self component:controller];
  items = [v7 items];
  v36 = [items objectAtIndex:index];

  [(SXMosaicGalleryComponentView *)self finishMediaViewEvent];
  [(SXMosaicGalleryComponentView *)self createMediaViewEventForGalleryItem:v36];
  galleryLayouter = [(SXMosaicGalleryComponentView *)self galleryLayouter];
  [galleryLayouter frameForItemAtIndex:index];
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
  viewport = [(SXComponentView *)self viewport];
  [viewport dynamicBounds];
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
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    [presentationDelegate scrollToRect:0 animated:{x, y, width, height}];
  }
}

- (void)fullScreenCanvasController:(id)controller showable:(id)showable shouldTransferToOriginalViewWithIndex:(unint64_t)index
{
  v7 = [(SXMosaicGalleryComponentView *)self galleryLayouter:controller];
  v10 = [v7 viewForItemAtIndex:index];

  galleryLayouter = [(SXMosaicGalleryComponentView *)self galleryLayouter];
  [galleryLayouter frameForItemAtIndex:index];
  [v10 setFrame:?];

  galleryView = [(SXMosaicGalleryComponentView *)self galleryView];
  [galleryView addSubview:v10];
}

- (unint64_t)fullScreenCanvasController:(id)controller viewIndexForPoint:(CGPoint)point inShowable:(id)showable
{
  y = point.y;
  x = point.x;
  v8 = [(SXMosaicGalleryComponentView *)self galleryLayouter:controller];
  v9 = [(SXMosaicGalleryComponentView *)self numberOfItemsForGalleryLayouter:v8];

  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  while (1)
  {
    galleryLayouter = [(SXMosaicGalleryComponentView *)self galleryLayouter];
    v12 = [galleryLayouter viewForItemAtIndex:v10];

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
    galleryLayouter2 = [(SXMosaicGalleryComponentView *)self galleryLayouter];
    v14 = [(SXMosaicGalleryComponentView *)self numberOfItemsForGalleryLayouter:galleryLayouter2];

    if (v10 >= v14)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v10;
}

- (void)fullScreenCanvasController:(id)controller willHideShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXMosaicGalleryComponentView *)self galleryLayouter:controller];
  [v7 frameForItemAtIndex:index];
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
  viewport = [(SXComponentView *)self viewport];
  [viewport dynamicBounds];
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
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    [presentationDelegate scrollToRect:0 animated:{x, y, width, height}];
  }
}

- (BOOL)fullScreenCanvasController:(id)controller willShowShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXMosaicGalleryComponentView *)self imageViews:controller];
  v8 = [v7 objectAtIndex:index];

  if ([v8 hasLoadedImage])
  {
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    v10 = [presentationDelegate addInteractivityFocusForComponent:self];

    if (v10)
    {
      [v8 addInterestInImageQuality:1 forObject:self];
    }

    presentationDelegate2 = [(SXComponentView *)self presentationDelegate];
    animationController = [presentationDelegate2 animationController];
    [animationController stopUpdatingAnimationForComponentView:self finishAnimation:1];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)fullScreenCanvasController:(id)controller showable:(id)showable willShowViewWithIndex:(unint64_t)index
{
  v7 = [(SXMosaicGalleryComponentView *)self imageViews:controller];
  v8 = [v7 objectAtIndex:index];

  [v8 setShouldShowLoadingIndicator:1];
  v12 = 0.0;
  backgroundColor = [(SXMosaicGalleryComponentView *)self backgroundColor];
  [backgroundColor getHue:0 saturation:0 brightness:&v12 alpha:0];

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

- (void)fullScreenCanvasController:(id)controller showable:(id)showable didHideViewWithIndex:(unint64_t)index
{
  v7 = [(SXMosaicGalleryComponentView *)self imageViews:controller];
  v8 = [v7 objectAtIndex:index];

  [v8 setShouldShowLoadingIndicator:0];
  [v8 giveUpInterestForObject:self];
  [v8 addInterestInImageQuality:0 forObject:self];
}

- (BOOL)fullScreenCanvasController:(id)controller showable:(id)showable gestureRecognizerShouldBegin:(id)begin
{
  v5 = [(SXComponentView *)self presentationDelegate:controller];
  isScrolling = [v5 isScrolling];

  return isScrolling ^ 1;
}

- (id)imageViewForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  imageViews = [(SXMosaicGalleryComponentView *)self imageViews];
  v6 = [imageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(imageViews);
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

      v6 = [imageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)forceImageViewFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  imageViews = [(SXMosaicGalleryComponentView *)self imageViews];
  v6 = [imageViews indexOfObject:fullscreenCopy];

  fullScreenCanvasController = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];
  [fullScreenCanvasController presentFullscreenWithIndex:v6];
}

- (id)textResizerForCaption:(id)caption
{
  v26[1] = *MEMORY[0x1E69E9840];
  captionCopy = caption;
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  v6 = SXDefaultTextStyleIdentifierForRole(@"body");
  v26[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  component = [(SXComponentView *)self component];
  v9 = [dOMObjectProvider componentTextStyleForIdentifiers:v7 component:component];

  if (!v9)
  {
    dOMObjectProvider2 = [(SXComponentView *)self DOMObjectProvider];
    v25 = @"default";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    component2 = [(SXComponentView *)self component];
    v9 = [dOMObjectProvider2 componentTextStyleForIdentifiers:v11 component:component2];
  }

  dOMObjectProvider3 = [(SXComponentView *)self DOMObjectProvider];
  caption = [(SXFullscreenCaption *)captionCopy caption];

  textStyle = [caption textStyle];
  component3 = [(SXComponentView *)self component];
  classification = [component3 classification];
  component4 = [(SXComponentView *)self component];
  v19 = [dOMObjectProvider3 componentTextStyleForIdentifier:textStyle classification:classification component:component4];

  if (v19)
  {
    fontScaling = [v19 fontScaling];
  }

  else
  {
    fontScaling = 1;
  }

  v21 = [SXTextResizer alloc];
  documentColumnLayout = [(SXComponentView *)self documentColumnLayout];
  v23 = [(SXTextResizer *)&v21->super.isa initWithColumnLayout:documentColumnLayout defaultTextStyle:v9 fontScalingEnabled:fontScaling];

  return v23;
}

- (id)textRulesForCaption:(id)caption
{
  component = [(SXComponentView *)self component];
  classification = [component classification];
  textRules = [classification textRules];

  return textRules;
}

- (id)textStyleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  v7 = [dOMObjectProvider textStyleForIdentifier:identifierCopy component:component];

  return v7;
}

- (id)componentTextStyleForIdentifier:(id)identifier inheritingFromComponentTextStyle:(id)style
{
  styleCopy = style;
  identifierCopy = identifier;
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  v10 = [dOMObjectProvider componentTextStyleForIdentifier:identifierCopy inheritingFromComponentTextStyle:styleCopy component:component];

  return v10;
}

- (id)contentSizeCategoryForCaption:(id)caption
{
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  presentationAttributes = [presentationDelegate presentationAttributes];
  contentSizeCategory = [presentationAttributes contentSizeCategory];

  return contentSizeCategory;
}

- (void)submitEvents
{
  v3.receiver = self;
  v3.super_class = SXMosaicGalleryComponentView;
  [(SXMediaComponentView *)&v3 submitEvents];
  [(SXMosaicGalleryComponentView *)self finishMediaViewEvent];
}

- (void)createMediaViewEventForGalleryItem:(id)item
{
  v11[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mediaViewEvent = [(SXMosaicGalleryComponentView *)self mediaViewEvent];

  if (itemCopy && !mediaViewEvent)
  {
    v6 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
    component = [(SXComponentView *)self component];
    items = [component items];
    [v6 setGalleryImageCount:{objc_msgSend(items, "count")}];

    imageIdentifier = [itemCopy imageIdentifier];
    v11[0] = imageIdentifier;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v6 setGalleryImageIds:v10];

    [v6 setMediaType:4];
    [(SXMosaicGalleryComponentView *)self setMediaViewEvent:v6];
  }
}

- (void)finishMediaViewEvent
{
  mediaViewEvent = [(SXMosaicGalleryComponentView *)self mediaViewEvent];
  startDate = [mediaViewEvent startDate];
  [startDate timeIntervalSinceNow];
  v6 = v5;

  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  mediaViewEvent2 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];

  if (mediaViewEvent2 && v6 >= 1.0)
  {
    mediaViewEvent3 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];
    [mediaViewEvent3 determineEndDate];

    analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
    mediaViewEvent4 = [(SXMosaicGalleryComponentView *)self mediaViewEvent];
    [analyticsReporting reportEvent:mediaViewEvent4];
  }

  [(SXMosaicGalleryComponentView *)self setMediaViewEvent:0];
}

- (BOOL)shouldSubmitMediaExposureEventForExposedBounds:(CGRect)bounds
{
  v3 = [(SXMosaicGalleryComponentView *)self exposedGalleryItems:bounds.origin.x];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)willSubmitMediaExposureEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SXMosaicGalleryComponentView;
  eventCopy = event;
  [(SXMediaComponentView *)&v9 willSubmitMediaExposureEvent:eventCopy];
  v5 = [(SXComponentView *)self component:v9.receiver];
  items = [v5 items];
  [eventCopy setNumberOfImages:{objc_msgSend(items, "count")}];

  exposedGalleryItems = [(SXMosaicGalleryComponentView *)self exposedGalleryItems];
  [eventCopy setNumberOfImagesExposed:{objc_msgSend(exposedGalleryItems, "count")}];

  exposedGalleryItems2 = [(SXMosaicGalleryComponentView *)self exposedGalleryItems];
  [exposedGalleryItems2 removeAllObjects];
}

- (BOOL)allowHierarchyRemoval
{
  v7.receiver = self;
  v7.super_class = SXMosaicGalleryComponentView;
  allowHierarchyRemoval = [(SXComponentView *)&v7 allowHierarchyRemoval];
  fullScreenCanvasController = [(SXMosaicGalleryComponentView *)self fullScreenCanvasController];
  isFullscreen = [fullScreenCanvasController isFullscreen];

  return (isFullscreen ^ 1) & allowHierarchyRemoval;
}

@end