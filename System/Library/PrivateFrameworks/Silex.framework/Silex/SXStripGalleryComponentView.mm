@interface SXStripGalleryComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)fullScreenCanvasController:(id)controller showable:(id)showable gestureRecognizerShouldBegin:(id)begin;
- (BOOL)fullScreenCanvasController:(id)controller willShowShowable:(id)showable viewIndex:(unint64_t)index;
- (BOOL)gestureShouldBegin:(id)begin;
- (BOOL)itemizedScrollView:(id)view isAllowedToAddViewInHierarchy:(unint64_t)hierarchy;
- (BOOL)itemizedScrollViewWillReindex:(id)reindex;
- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)controller;
- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier;
- (CGRect)fullScreenCanvasController:(id)controller fullScreenFrameForShowable:(id)showable viewIndex:(unint64_t)index withinRect:(CGRect)rect;
- (CGRect)fullScreenCanvasController:(id)controller originalFrameForShowable:(id)showable onCanvasView:(id)view viewIndex:(unint64_t)index;
- (CGRect)itemizedScrollView:(id)view frameForViewAtIndex:(unint64_t)index;
- (CGRect)snapRegion;
- (CGRect)transitionContentFrame;
- (CGRect)transitionVisibleFrame;
- (SXStripGalleryComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider imageViewFactory:(id)self0 canvasControllerFactory:(id)self1;
- (UIView)fullscreenGestureView;
- (id)componentTextStyleForIdentifier:(id)identifier inheritingFromComponentTextStyle:(id)style;
- (id)contentSizeCategoryForCaption:(id)caption;
- (id)createViewForViewIndex:(unint64_t)index;
- (id)fullScreenCanvasController:(id)controller canvasViewControllerForShowable:(id)showable completionBlock:(id)block;
- (id)fullScreenCanvasController:(id)controller captionForShowable:(id)showable viewIndex:(unint64_t)index;
- (id)fullScreenCanvasController:(id)controller copyViewForShowable:(id)showable viewIndex:(unint64_t)index;
- (id)fullScreenCanvasController:(id)controller originalViewForShowable:(id)showable viewIndex:(unint64_t)index;
- (id)imageViewForLocation:(CGPoint)location;
- (id)itemizedScrollView:(id)view viewAtIndex:(unint64_t)index;
- (id)textResizerForCaption:(id)caption;
- (id)textRulesForCaption:(id)caption;
- (id)textStyleForIdentifier:(id)identifier;
- (id)visibleGalleryItemViewForImageIdentifier:(id)identifier;
- (unint64_t)fullScreenCanvasController:(id)controller numberOfViewsForShowable:(id)showable;
- (unint64_t)fullScreenCanvasController:(id)controller viewIndexForPoint:(CGPoint)point inShowable:(id)showable;
- (unint64_t)numberOfViewsInItemizedScrollView:(id)view;
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
- (void)itemizedScrollView:(id)view didShowViewWithIndex:(unint64_t)index;
- (void)loadComponent:(id)component;
- (void)preloadAdjacentViewsForIndex:(unint64_t)index;
- (void)presentComponentWithChanges:(id)changes;
- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)submitEvents;
- (void)trackExposedGalleryItems;
- (void)visibilityStateDidChangeFromState:(int64_t)state;
- (void)willSubmitMediaExposureEvent:(id)event;
@end

@implementation SXStripGalleryComponentView

- (SXStripGalleryComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider imageViewFactory:(id)self0 canvasControllerFactory:(id)self1
{
  viewFactoryCopy = viewFactory;
  controllerFactoryCopy = controllerFactory;
  v28.receiver = self;
  v28.super_class = SXStripGalleryComponentView;
  v18 = [(SXGalleryComponentView *)&v28 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitor mediaSharingPolicyProvider:policyProvider];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageViewFactory, viewFactory);
    objc_storeStrong(&v19->_canvasControllerFactory, controllerFactory);
    v19->_lastPreloadViewIndex = 0x7FFFFFFFFFFFFFFFLL;
    v19->_visibleImageViewIndex = 0x7FFFFFFFFFFFFFFFLL;
    v20 = objc_alloc_init(SXItemizedScrollView);
    itemizedScrollView = v19->_itemizedScrollView;
    v19->_itemizedScrollView = v20;

    [(SXItemizedScrollView *)v19->_itemizedScrollView setDataSource:v19];
    [(SXItemizedScrollView *)v19->_itemizedScrollView setDelegate:v19];
    [(SXItemizedScrollView *)v19->_itemizedScrollView setPagingEnabled:0];
    contentView = [(SXComponentView *)v19 contentView];
    [contentView addSubview:v19->_itemizedScrollView];

    v23 = [MEMORY[0x1E695DFA8] set];
    exposedGalleryItems = v19->_exposedGalleryItems;
    v19->_exposedGalleryItems = v23;
  }

  return v19;
}

- (void)loadComponent:(id)component
{
  v36 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v34 loadComponent:component];
  if (!self->_imageResources)
  {
    canvasControllerFactory = [(SXStripGalleryComponentView *)self canvasControllerFactory];
    v5 = [canvasControllerFactory fullscreenCanvasControllerForShowable:self];
    fullScreenCanvasController = self->_fullScreenCanvasController;
    self->_fullScreenCanvasController = v5;

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    component = [(SXComponentView *)self component];
    items = [component items];

    v9 = items;
    v10 = [items countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
          imageIdentifier = [v14 imageIdentifier];
          v17 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

          if (v17)
          {
            [array addObject:v17];
            null = [MEMORY[0x1E695DFB0] null];
            [(NSMutableArray *)array2 addObject:null];

            accessibilityCaption = [v14 accessibilityCaption];
            if (accessibilityCaption)
            {
              [array3 addObject:accessibilityCaption];
            }

            else
            {
              null2 = [MEMORY[0x1E695DFB0] null];
              [array3 addObject:null2];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v21 = [array copy];
    imageResources = self->_imageResources;
    self->_imageResources = v21;

    imageViews = self->_imageViews;
    self->_imageViews = array2;
    v24 = array2;

    v25 = [array3 copy];
    accessibilityCaptions = self->_accessibilityCaptions;
    self->_accessibilityCaptions = v25;
  }
}

- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v10 receivedInfo:infoCopy fromLayoutingPhaseWithIdentifier:identifierCopy];
  if ([identifierCopy isEqualToString:@"ContentWidth"])
  {
    v8 = &OBJC_IVAR___SXStripGalleryComponentView__contentWidth;
LABEL_7:
    [infoCopy floatValue];
    *(&self->super.super.super.super.super.super.isa + *v8) = v9;
    goto LABEL_8;
  }

  if ([identifierCopy isEqualToString:@"leftOffset"])
  {
    v8 = &OBJC_IVAR___SXStripGalleryComponentView__xOffset;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"rightOffset"])
  {
    v8 = &OBJC_IVAR___SXStripGalleryComponentView__rightContentInset;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)presentComponentWithChanges:(id)changes
{
  v29.receiver = self;
  v29.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v29 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  [(SXStripGalleryComponentView *)self xOffset];
  v5 = v4;
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [(SXStripGalleryComponentView *)self rightContentInset];
  [itemizedScrollView setContentInset:{0.0, v5, 0.0, v7}];

  [(SXComponentView *)self contentFrame];
  v9 = v8;
  [(SXStripGalleryComponentView *)self bounds];
  v11 = v10;
  v13 = v12;
  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView2 setFrame:{0.0, v9, v11, v13}];

  if ([(SXStripGalleryComponentView *)self visibleImageViewIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    itemizedScrollView3 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [itemizedScrollView3 setActiveViewIndex:-[SXStripGalleryComponentView visibleImageViewIndex](self animated:{"visibleImageViewIndex"), 0}];
  }

  fullScreenCanvasController = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  isFullscreen = [fullScreenCanvasController isFullscreen];

  if ((isFullscreen & 1) == 0)
  {
    itemizedScrollView4 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [itemizedScrollView4 contentSize];
    v20 = v19;
    itemizedScrollView5 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [itemizedScrollView5 contentSize];
    v23 = v22;
    fullscreenGestureView = [(SXStripGalleryComponentView *)self fullscreenGestureView];
    [fullscreenGestureView setFrame:{0.0, 0.0, v20, v23}];
  }

  viewport = [(SXComponentView *)self viewport];
  [viewport dynamicBounds];
  Width = CGRectGetWidth(v30);
  [(SXStripGalleryComponentView *)self bounds];
  v27 = CGRectGetWidth(v31);

  if (Width == v27)
  {
    itemizedScrollView6 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [itemizedScrollView6 setClipsToBounds:0];
  }
}

- (void)discardContents
{
  v14.receiver = self;
  v14.super_class = SXStripGalleryComponentView;
  [(SXComponentView *)&v14 discardContents];
  imageViews = [(SXStripGalleryComponentView *)self imageViews];
  v4 = [imageViews count];

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      imageViews2 = [(SXStripGalleryComponentView *)self imageViews];
      v7 = [imageViews2 objectAtIndex:i];

      itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
      visibleRange = [itemizedScrollView visibleRange];
      v11 = v10;

      if (i < visibleRange || i - visibleRange >= v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v7 objectHasQualityInterest:self quality:0])
          {
            [v7 giveUpInterestForObject:self];
          }

          [v7 setImage:0];
          imageViews3 = [(SXStripGalleryComponentView *)self imageViews];
          null = [MEMORY[0x1E695DFB0] null];
          [imageViews3 replaceObjectAtIndex:i withObject:null];
        }
      }
    }
  }

  [(SXStripGalleryComponentView *)self setLastPreloadViewIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (id)createViewForViewIndex:(unint64_t)index
{
  imageResources = [(SXStripGalleryComponentView *)self imageResources];
  v6 = [imageResources objectAtIndex:index];

  imageViewFactory = [(SXStripGalleryComponentView *)self imageViewFactory];
  v8 = [imageViewFactory imageViewForResource:v6];

  [v8 setDelegate:self];
  accessibilityCaptions = [(SXStripGalleryComponentView *)self accessibilityCaptions];
  v10 = [accessibilityCaptions objectAtIndex:index];

  null = [MEMORY[0x1E695DFB0] null];

  if (v10 != null)
  {
    [v8 setAccessibilityLabel:v10];
  }

  imageViews = [(SXStripGalleryComponentView *)self imageViews];
  [imageViews replaceObjectAtIndex:index withObject:v8];

  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [(SXStripGalleryComponentView *)self itemizedScrollView:itemizedScrollView frameForViewAtIndex:index];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v8 setFrame:{v15, v17, v19, v21}];
  [v8 setPreferredImageSize:{v19, v21}];
  [v8 addInterestInImageQuality:0 forObject:self];
  dragManager = [(SXGalleryComponentView *)self dragManager];
  [dragManager updateAccessibilityDragSourceDescriptorsForDraggableElement:v8];

  return v8;
}

- (unint64_t)numberOfViewsInItemizedScrollView:(id)view
{
  imageViews = [(SXStripGalleryComponentView *)self imageViews];
  v4 = [imageViews count];

  return v4;
}

- (CGRect)itemizedScrollView:(id)view frameForViewAtIndex:(unint64_t)index
{
  imageResources = [(SXStripGalleryComponentView *)self imageResources];
  v7 = [imageResources objectAtIndex:index];

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

- (id)itemizedScrollView:(id)view viewAtIndex:(unint64_t)index
{
  imageViews = [(SXStripGalleryComponentView *)self imageViews];
  v7 = [imageViews objectAtIndex:index];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SXStripGalleryComponentView *)self createViewForViewIndex:index];

    v7 = v8;
  }

  [(SXStripGalleryComponentView *)self preloadAdjacentViewsForIndex:index];

  return v7;
}

- (void)itemizedScrollView:(id)view didShowViewWithIndex:(unint64_t)index
{
  v5 = [(SXStripGalleryComponentView *)self fullscreenGestureView:view];
  superview = [v5 superview];
  fullscreenGestureView = [(SXStripGalleryComponentView *)self fullscreenGestureView];
  [superview bringSubviewToFront:fullscreenGestureView];

  fullscreenGestureView2 = [(SXStripGalleryComponentView *)self fullscreenGestureView];
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView contentSize];
  v10 = v9;
  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView2 contentSize];
  [fullscreenGestureView2 setFrame:{0.0, 0.0, v10, v12}];
}

- (BOOL)itemizedScrollView:(id)view isAllowedToAddViewInHierarchy:(unint64_t)hierarchy
{
  fullScreenCanvasController = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  LOBYTE(hierarchy) = [fullScreenCanvasController activeViewIndex] != hierarchy;

  return hierarchy;
}

- (BOOL)itemizedScrollViewWillReindex:(id)reindex
{
  fullScreenCanvasController = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  if ([fullScreenCanvasController isFullscreen])
  {
    fullScreenCanvasController2 = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
    isTransitioning = [fullScreenCanvasController2 isTransitioning];
  }

  else
  {
    isTransitioning = 1;
  }

  return isTransitioning;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(SXStripGalleryComponentView *)self preloadAdjacentViewsForIndex:[(SXStripGalleryComponentView *)self visibleImageViewIndex]];

  [(SXStripGalleryComponentView *)self trackExposedGalleryItems];
}

- (CGRect)transitionVisibleFrame
{
  [(SXStripGalleryComponentView *)self xOffset];
  v4 = v3;
  targetGalleryItem = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [targetGalleryItem frame];
  v7 = v6;
  targetGalleryItem2 = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [targetGalleryItem2 frame];
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
  targetGalleryItem = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [targetGalleryItem frame];
  v9 = v8;
  targetGalleryItem2 = [(SXStripGalleryComponentView *)self targetGalleryItem];
  [targetGalleryItem2 frame];
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

- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  targetGalleryItem = [(SXStripGalleryComponentView *)self targetGalleryItem];
  imageResource = [targetGalleryItem imageResource];
  imageIdentifier = [imageResource imageIdentifier];
  v8 = [identifierCopy isEqualToString:imageIdentifier];

  return v8;
}

- (id)visibleGalleryItemViewForImageIdentifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  imageViews = [(SXStripGalleryComponentView *)self imageViews];
  v6 = [imageViews countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(imageViews);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          imageResource = [v11 imageResource];
          imageIdentifier = [imageResource imageIdentifier];
          v14 = [imageIdentifier isEqualToString:identifierCopy];

          if (v14)
          {
            itemizedScrollView = [(SXStripGalleryComponentView *)selfCopy itemizedScrollView];
            [itemizedScrollView bounds];
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
              [(SXStripGalleryComponentView *)selfCopy setTargetGalleryItem:v11];
              goto LABEL_14;
            }
          }
        }
      }

      v7 = [imageViews countByEnumeratingWithState:&v31 objects:v35 count:16];
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

- (void)willSubmitMediaExposureEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SXStripGalleryComponentView;
  eventCopy = event;
  [(SXMediaComponentView *)&v9 willSubmitMediaExposureEvent:eventCopy];
  v5 = [(SXComponentView *)self component:v9.receiver];
  items = [v5 items];
  [eventCopy setNumberOfImages:{objc_msgSend(items, "count")}];

  exposedGalleryItems = [(SXStripGalleryComponentView *)self exposedGalleryItems];
  [eventCopy setNumberOfImagesExposed:{objc_msgSend(exposedGalleryItems, "count")}];

  exposedGalleryItems2 = [(SXStripGalleryComponentView *)self exposedGalleryItems];
  [exposedGalleryItems2 removeAllObjects];
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

- (void)fullScreenCanvasController:(id)controller shouldAddGestureView:(id)view forShowable:(id)showable
{
  viewCopy = view;
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView contentSize];
  v8 = v7;
  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView2 contentSize];
  [viewCopy setFrame:{0.0, 0.0, v8, v10}];

  itemizedScrollView3 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView3 addSubview:viewCopy];

  [(SXStripGalleryComponentView *)self setFullscreenGestureView:viewCopy];
}

- (void)fullScreenCanvasController:(id)controller showable:(id)showable shouldTransferToOriginalViewWithIndex:(unint64_t)index
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:controller];
  v18 = [v7 objectAtIndex:index];

  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView frameForViewAtIndex:index];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v18 setFrame:{v10, v12, v14, v16}];
  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView2 addSubview:v18];
}

- (unint64_t)fullScreenCanvasController:(id)controller numberOfViewsForShowable:(id)showable
{
  v4 = [(SXStripGalleryComponentView *)self imageViews:controller];
  v5 = [v4 count];

  return v5;
}

- (id)fullScreenCanvasController:(id)controller originalViewForShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXStripGalleryComponentView *)self itemizedScrollView:controller];
  v8 = [(SXStripGalleryComponentView *)self itemizedScrollView:v7 viewAtIndex:index];

  return v8;
}

- (CGRect)fullScreenCanvasController:(id)controller originalFrameForShowable:(id)showable onCanvasView:(id)view viewIndex:(unint64_t)index
{
  viewCopy = view;
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView frameForViewAtIndex:index];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView2 convertRect:viewCopy toView:{v11, v13, v15, v17}];
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

- (CGRect)fullScreenCanvasController:(id)controller fullScreenFrameForShowable:(id)showable viewIndex:(unint64_t)index withinRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rect = rect.origin.x;
  controllerCopy = controller;
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [(SXStripGalleryComponentView *)self itemizedScrollView:itemizedScrollView frameForViewAtIndex:index];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [controllerCopy fitSizeForRect:{v15, v17, v19, v21}];
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

- (unint64_t)fullScreenCanvasController:(id)controller viewIndexForPoint:(CGPoint)point inShowable:(id)showable
{
  y = point.y;
  x = point.x;
  v8 = [(SXStripGalleryComponentView *)self imageViews:controller];
  v9 = [v8 count];

  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  while (1)
  {
    itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [itemizedScrollView frameForViewAtIndex:v10];
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
    imageViews = [(SXStripGalleryComponentView *)self imageViews];
    v21 = [imageViews count];

    if (v10 >= v21)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

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

- (BOOL)fullScreenCanvasController:(id)controller willShowShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:controller];
  v8 = [v7 objectAtIndex:index];

  hasLoadedImage = [v8 hasLoadedImage];
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  isDecelerating = [itemizedScrollView isDecelerating];
  if (isDecelerating)
  {
LABEL_2:
    v12 = isDecelerating ^ 1;

    goto LABEL_3;
  }

  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  isDragging = [itemizedScrollView2 isDragging];

  v12 = 0;
  if ((isDragging & 1) == 0 && ((hasLoadedImage ^ 1) & 1) == 0)
  {
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    v17 = [presentationDelegate addInteractivityFocusForComponent:self];

    if (!v17)
    {
      v12 = 0;
      goto LABEL_3;
    }

    itemizedScrollView3 = [(SXStripGalleryComponentView *)self itemizedScrollView];
    [itemizedScrollView3 setScrollEnabled:0];

    itemizedScrollView = [(SXComponentView *)self presentationDelegate];
    animationController = [itemizedScrollView animationController];
    [animationController stopUpdatingAnimationForComponentView:self finishAnimation:1];

    goto LABEL_2;
  }

LABEL_3:

  return v12;
}

- (void)fullScreenCanvasController:(id)controller willHideShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXStripGalleryComponentView *)self itemizedScrollView:controller];
  [v7 reindexate];

  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView setActiveViewIndex:index animated:0];

  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView2 forceCorrectFrames];
}

- (void)fullScreenCanvasController:(id)controller didHideShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXStripGalleryComponentView *)self itemizedScrollView:controller];
  [v6 setScrollEnabled:1];

  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate removeInteractivityFocusForComponent:self];

  presentationDelegate2 = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate2 dismissFullscreenCanvasForComponent:self];

  [(SXStripGalleryComponentView *)self finishMediaViewEvent];
}

- (void)fullScreenCanvasController:(id)controller didShowShowable:(id)showable viewIndex:(unint64_t)index
{
  v7 = [(SXComponentView *)self component:controller];
  items = [v7 items];
  v9 = [items objectAtIndex:index];

  [(SXStripGalleryComponentView *)self createMediaViewEventForGalleryItem:v9];
}

- (void)fullScreenCanvasController:(id)controller showable:(id)showable didShowViewWithIndex:(unint64_t)index
{
  v7 = [(SXComponentView *)self component:controller];
  items = [v7 items];
  v11 = [items objectAtIndex:index];

  [(SXStripGalleryComponentView *)self finishMediaViewEvent];
  [(SXStripGalleryComponentView *)self createMediaViewEventForGalleryItem:v11];
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  animationController = [presentationDelegate animationController];
  [animationController stopUpdatingAnimationForComponentView:self finishAnimation:1];
}

- (id)fullScreenCanvasController:(id)controller copyViewForShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXStripGalleryComponentView *)self imageViews:controller];
  v7 = [v6 objectAtIndex:index];

  v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [v7 frame];
  v9 = [v8 initWithFrame:?];
  image = [v7 image];
  [v9 setImage:image];

  return v9;
}

- (void)fullScreenCanvasController:(id)controller showable:(id)showable willShowViewWithIndex:(unint64_t)index
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:controller];
  v8 = [v7 objectAtIndex:index];

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

- (void)fullScreenCanvasController:(id)controller showable:(id)showable didHideViewWithIndex:(unint64_t)index
{
  v7 = [(SXStripGalleryComponentView *)self imageViews:controller];
  v8 = [v7 objectAtIndex:index];

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
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView forceCorrectFrames];

  itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView2 convertPoint:self fromView:{x, y}];
  v9 = v8;
  v11 = v10;

  imageViews = [(SXStripGalleryComponentView *)self imageViews];
  v13 = [imageViews count];

  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      imageViews2 = [(SXStripGalleryComponentView *)self imageViews];
      v17 = [imageViews2 objectAtIndex:v14];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        itemizedScrollView3 = [(SXStripGalleryComponentView *)self itemizedScrollView];
        [itemizedScrollView3 frameForViewAtIndex:v14];
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
      imageViews3 = [(SXStripGalleryComponentView *)self imageViews];
      v30 = [imageViews3 count];
    }

    while (v14 < v30);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)forceImageViewFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  imageViews = [(SXStripGalleryComponentView *)self imageViews];
  v6 = [imageViews indexOfObject:fullscreenCopy];

  fullScreenCanvasController = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  [fullScreenCanvasController presentFullscreenWithIndex:v6];
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

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  v8 = offset->x;
  rect = [(SXStripGalleryComponentView *)self itemizedScrollView:dragging];
  [rect bounds];
  v9 = v8 + CGRectGetWidth(v96);
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  [itemizedScrollView contentSize];
  if (v9 >= v11)
  {
  }

  else
  {
    v12 = offset->x;

    if (x != 0.0 && v12 > 0.0)
    {
      v87 = x;
      [(SXStripGalleryComponentView *)self snapRegion];
      v91 = v14;
      v92 = v13;
      v90 = v15;
      v17 = v16;
      v18 = offset->x;
      imageViews = [(SXStripGalleryComponentView *)self imageViews];
      v20 = [imageViews count];

      recta = v17;
      v21 = 0;
      if (v20)
      {
        v22 = 0;
        v23 = 0x7FFFFFFFFFFFFFFFLL;
        v24 = 1.79769313e308;
        while (1)
        {
          itemizedScrollView2 = [(SXStripGalleryComponentView *)self itemizedScrollView];
          [itemizedScrollView2 frameForViewAtIndex:v22];
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
          imageViews2 = [(SXStripGalleryComponentView *)self imageViews];
          v37 = [imageViews2 count] - 1;

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
          imageViews3 = [(SXStripGalleryComponentView *)self imageViews];
          v44 = [imageViews3 count];

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
      itemizedScrollView3 = [(SXStripGalleryComponentView *)self itemizedScrollView];
      [itemizedScrollView3 frameForViewAtIndex:v23];
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
        itemizedScrollView4 = [(SXStripGalleryComponentView *)self itemizedScrollView];
        [itemizedScrollView4 contentOffset];
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
        itemizedScrollView5 = [(SXStripGalleryComponentView *)self itemizedScrollView];
        [itemizedScrollView5 contentOffset];
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

      offset->x = v84;
    }
  }
}

- (BOOL)gestureShouldBegin:(id)begin
{
  beginCopy = begin;
  fullScreenCanvasController = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  v6 = [fullScreenCanvasController otherInteractivityGestureShouldBegin:beginCopy];

  return v6;
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

- (void)visibilityStateDidChangeFromState:(int64_t)state
{
  v4.receiver = self;
  v4.super_class = SXStripGalleryComponentView;
  [(SXMediaComponentView *)&v4 visibilityStateDidChangeFromState:state];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    [(SXStripGalleryComponentView *)self trackExposedGalleryItems];
  }
}

- (void)trackExposedGalleryItems
{
  component = [(SXComponentView *)self component];
  items = [component items];
  nSArray = [items NSArray];
  itemizedScrollView = [(SXStripGalleryComponentView *)self itemizedScrollView];
  visibleRange = [itemizedScrollView visibleRange];
  v10 = [nSArray subarrayWithRange:{visibleRange, v8}];

  exposedGalleryItems = [(SXStripGalleryComponentView *)self exposedGalleryItems];
  [exposedGalleryItems addObjectsFromArray:v10];
}

- (void)submitEvents
{
  v3.receiver = self;
  v3.super_class = SXStripGalleryComponentView;
  [(SXMediaComponentView *)&v3 submitEvents];
  [(SXStripGalleryComponentView *)self finishMediaViewEvent];
}

- (void)createMediaViewEventForGalleryItem:(id)item
{
  v11[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mediaViewEvent = [(SXStripGalleryComponentView *)self mediaViewEvent];

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
    [(SXStripGalleryComponentView *)self setMediaViewEvent:v6];
  }
}

- (void)finishMediaViewEvent
{
  mediaViewEvent = [(SXStripGalleryComponentView *)self mediaViewEvent];
  startDate = [mediaViewEvent startDate];
  [startDate timeIntervalSinceNow];
  v6 = v5;

  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  mediaViewEvent2 = [(SXStripGalleryComponentView *)self mediaViewEvent];

  if (mediaViewEvent2 && v6 >= 1.0)
  {
    mediaViewEvent3 = [(SXStripGalleryComponentView *)self mediaViewEvent];
    [mediaViewEvent3 determineEndDate];

    analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
    mediaViewEvent4 = [(SXStripGalleryComponentView *)self mediaViewEvent];
    [analyticsReporting reportEvent:mediaViewEvent4];

    [(SXStripGalleryComponentView *)self setMediaViewEvent:0];
  }
}

- (void)preloadAdjacentViewsForIndex:(unint64_t)index
{
  if ([(SXStripGalleryComponentView *)self lastPreloadViewIndex]!= index)
  {
    imageViews = [(SXStripGalleryComponentView *)self imageViews];
    v6 = [imageViews count] - 1;

    if (v6 >= index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = v6;
    }

    if (index + 2 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = index + 2;
    }

    if (index + 2 >= indexCopy)
    {
      do
      {
        if (index != indexCopy)
        {
          imageViews2 = [(SXStripGalleryComponentView *)self imageViews];
          v10 = [imageViews2 objectAtIndex:indexCopy];

          null = [MEMORY[0x1E695DFB0] null];

          if (v10 == null)
          {
            v12 = [(SXStripGalleryComponentView *)self createViewForViewIndex:indexCopy];

            imageViews3 = [(SXStripGalleryComponentView *)self imageViews];
            [imageViews3 replaceObjectAtIndex:indexCopy withObject:v12];

            v10 = v12;
          }
        }

        ++indexCopy;
      }

      while (indexCopy <= v8);
    }

    [(SXStripGalleryComponentView *)self setLastPreloadViewIndex:index];
  }
}

- (BOOL)allowHierarchyRemoval
{
  v7.receiver = self;
  v7.super_class = SXStripGalleryComponentView;
  allowHierarchyRemoval = [(SXComponentView *)&v7 allowHierarchyRemoval];
  fullScreenCanvasController = [(SXStripGalleryComponentView *)self fullScreenCanvasController];
  isFullscreen = [fullScreenCanvasController isFullscreen];

  return (isFullscreen ^ 1) & allowHierarchyRemoval;
}

- (UIView)fullscreenGestureView
{
  WeakRetained = objc_loadWeakRetained(&self->_fullscreenGestureView);

  return WeakRetained;
}

@end