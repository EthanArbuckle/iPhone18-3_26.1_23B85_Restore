@interface SXScalableImageComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)fullScreenCanvasController:(id)controller showable:(id)showable gestureRecognizerShouldBegin:(id)begin;
- (BOOL)fullScreenCanvasController:(id)controller willShowShowable:(id)showable viewIndex:(unint64_t)index;
- (BOOL)gestureShouldBegin:(id)begin;
- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)controller;
- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier;
- (CGRect)fullScreenCanvasController:(id)controller fullScreenFrameForShowable:(id)showable viewIndex:(unint64_t)index withinRect:(CGRect)rect;
- (CGRect)fullScreenCanvasController:(id)controller originalFrameForShowable:(id)showable onCanvasView:(id)view viewIndex:(unint64_t)index;
- (CGRect)previousContentFrame;
- (CGRect)transitionContentFrame;
- (NSString)description;
- (SXScalableImageComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory canvasControllerFactory:(id)self0 mediaSharingPolicyProvider:(id)self1;
- (UIView)gestureView;
- (id)componentTextStyleForIdentifier:(id)identifier inheritingFromComponentTextStyle:(id)style;
- (id)contentSizeCategoryForCaption:(id)caption;
- (id)fullScreenCanvasController:(id)controller canvasViewControllerForShowable:(id)showable completionBlock:(id)block;
- (id)fullScreenCanvasController:(id)controller captionForShowable:(id)showable viewIndex:(unint64_t)index;
- (id)textResizerForCaption:(id)caption;
- (id)textRulesForCaption:(id)caption;
- (id)textStyleForIdentifier:(id)identifier;
- (void)createMediaViewEvent;
- (void)discardContents;
- (void)finishMediaViewEvent;
- (void)fullScreenCanvasController:(id)controller didHideShowable:(id)showable viewIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller shouldAddGestureView:(id)view forShowable:(id)showable;
- (void)fullScreenCanvasController:(id)controller showable:(id)showable shouldTransferToOriginalViewWithIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller willHideShowable:(id)showable viewIndex:(unint64_t)index;
- (void)fullScreenCanvasController:(id)controller willReturnToFullscreenForShowable:(id)showable viewIndex:(unint64_t)index;
- (void)imageView:(id)view didLoadAnimatedImage:(id)image;
- (void)layoutImageView;
- (void)loadComponent:(id)component;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
- (void)submitEvents;
- (void)visibilityStateDidChangeFromState:(int64_t)state;
@end

@implementation SXScalableImageComponentView

- (SXScalableImageComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory canvasControllerFactory:(id)self0 mediaSharingPolicyProvider:(id)self1
{
  viewFactoryCopy = viewFactory;
  controllerFactoryCopy = controllerFactory;
  policyProviderCopy = policyProvider;
  v24.receiver = self;
  v24.super_class = SXScalableImageComponentView;
  v18 = [(SXMediaComponentView *)&v24 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitor];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageViewFactory, viewFactory);
    objc_storeStrong(&v19->_canvasControllerFactory, controllerFactory);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, policyProvider);
  }

  return v19;
}

- (void)loadComponent:(id)component
{
  v25.receiver = self;
  v25.super_class = SXScalableImageComponentView;
  [(SXComponentView *)&v25 loadComponent:component];
  if (!self->_imageView)
  {
    dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
    component = [(SXComponentView *)self component];
    imageIdentifier = [component imageIdentifier];
    v7 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

    imageResource = self->_imageResource;
    self->_imageResource = v7;
    v9 = v7;

    imageViewFactory = [(SXScalableImageComponentView *)self imageViewFactory];
    v11 = [imageViewFactory imageViewForResource:v9];
    imageView = self->_imageView;
    self->_imageView = v11;

    v13 = self->_imageView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SXImageView *)v13 setBackgroundColor:clearColor];

    [(SXImageView *)self->_imageView setDelegate:self];
    component2 = [(SXComponentView *)self component];
    accessibilityCaption = [component2 accessibilityCaption];
    [(SXImageView *)self->_imageView setAccessibilityLabel:accessibilityCaption];

    contentView = [(SXComponentView *)self contentView];
    [contentView addSubview:self->_imageView];

    canvasControllerFactory = [(SXScalableImageComponentView *)self canvasControllerFactory];
    v19 = [canvasControllerFactory fullscreenCanvasControllerForShowable:self];
    fullScreenCanvasController = self->_fullScreenCanvasController;
    self->_fullScreenCanvasController = v19;

    v21 = [SXDragManager alloc];
    mediaSharingPolicyProvider = [(SXScalableImageComponentView *)self mediaSharingPolicyProvider];
    v23 = -[SXDragManager initWithSharingPolicy:dataSource:](v21, "initWithSharingPolicy:dataSource:", [mediaSharingPolicyProvider mediaSharingPolicy], self);
    dragManager = self->_dragManager;
    self->_dragManager = v23;

    [(SXDragManager *)self->_dragManager updateAccessibilityDragSourceDescriptorsForDraggableElement:self->_imageView];
  }
}

- (void)presentComponentWithChanges:(id)changes
{
  v29.receiver = self;
  v29.super_class = SXScalableImageComponentView;
  [(SXComponentView *)&v29 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  [(SXScalableImageComponentView *)self previousContentFrame];
  v5 = v4;
  v7 = v6;
  [(SXComponentView *)self contentFrame];
  if (v5 != v9 || v7 != v8)
  {
    fullScreenCanvasController = [(SXScalableImageComponentView *)self fullScreenCanvasController];
    if ([fullScreenCanvasController isFullscreen])
    {
    }

    else
    {
      fullScreenCanvasController2 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
      isTransitioning = [fullScreenCanvasController2 isTransitioning];

      if ((isTransitioning & 1) == 0)
      {
        [(SXScalableImageComponentView *)self layoutImageView];
      }
    }

    imageView = [(SXScalableImageComponentView *)self imageView];
    [(SXComponentView *)self contentFrame];
    [imageView setPreferredImageSize:{v15, v16}];

    fullScreenCanvasController3 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
    isFullscreen = [fullScreenCanvasController3 isFullscreen];

    if ((isFullscreen & 1) == 0)
    {
      imageView2 = [(SXScalableImageComponentView *)self imageView];
      [imageView2 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      gestureView = [(SXScalableImageComponentView *)self gestureView];
      [gestureView setFrame:{v21, v23, v25, v27}];
    }
  }

  [(SXComponentView *)self contentFrame];
  [(SXScalableImageComponentView *)self setPreviousContentFrame:?];
}

- (void)renderContents
{
  v4.receiver = self;
  v4.super_class = SXScalableImageComponentView;
  [(SXComponentView *)&v4 renderContents];
  imageView = [(SXScalableImageComponentView *)self imageView];
  [imageView addInterestInImageQuality:0 forObject:self];
}

- (void)discardContents
{
  v7.receiver = self;
  v7.super_class = SXScalableImageComponentView;
  [(SXComponentView *)&v7 discardContents];
  imageView = [(SXScalableImageComponentView *)self imageView];
  v4 = [imageView objectHasQualityInterest:self quality:0];

  if (v4)
  {
    imageView2 = [(SXScalableImageComponentView *)self imageView];
    [imageView2 giveUpInterestForObject:self];
  }

  imageView3 = [(SXScalableImageComponentView *)self imageView];
  [imageView3 setImage:0];
}

- (void)visibilityStateDidChangeFromState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = SXScalableImageComponentView;
  [(SXMediaComponentView *)&v7 visibilityStateDidChangeFromState:?];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    imageView = [(SXScalableImageComponentView *)self imageView];
    [imageView resume];
LABEL_6:

    return;
  }

  visibilityState = [(SXComponentView *)self visibilityState];
  if (state == 1 && visibilityState == 2)
  {
    imageView = [(SXScalableImageComponentView *)self imageView];
    [imageView pause];
    goto LABEL_6;
  }
}

- (void)imageView:(id)view didLoadAnimatedImage:(id)image
{
  [(SXMediaComponentView *)self setIsDisplayingMedia:1, image];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    imageView = [(SXScalableImageComponentView *)self imageView];
    [imageView resume];
  }

  imageView2 = [(SXScalableImageComponentView *)self imageView];
  [imageView2 setScrubbingEnabled:1];
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

- (void)fullScreenCanvasController:(id)controller showable:(id)showable shouldTransferToOriginalViewWithIndex:(unint64_t)index
{
  v6 = [(SXComponentView *)self contentView:controller];
  imageView = [(SXScalableImageComponentView *)self imageView];
  [v6 addSubview:imageView];

  [(SXScalableImageComponentView *)self layoutImageView];
}

- (id)fullScreenCanvasController:(id)controller captionForShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXComponentView *)self component:controller];
  captionComponent = [v6 captionComponent];

  if (captionComponent)
  {
    v8 = [SXFullscreenCaption alloc];
    component = [(SXComponentView *)self component];
    captionComponent2 = [component captionComponent];
    v11 = [(SXFullscreenCaption *)&v8->super.isa initWithCaption:captionComponent2 dataSource:self];
LABEL_5:
    v15 = v11;

    goto LABEL_6;
  }

  component2 = [(SXComponentView *)self component];
  caption = [component2 caption];

  if (caption)
  {
    v14 = [SXFullscreenCaption alloc];
    component = [(SXComponentView *)self component];
    captionComponent2 = [component caption];
    v11 = [(SXFullscreenCaption *)&v14->super.isa initWithText:captionComponent2 dataSource:self];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (BOOL)fullScreenCanvasController:(id)controller willShowShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXScalableImageComponentView *)self imageView:controller];
  hasLoadedImage = [v6 hasLoadedImage];

  if (hasLoadedImage)
  {
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    v9 = [presentationDelegate addInteractivityFocusForComponent:self];

    if (v9)
    {
      imageView = [(SXScalableImageComponentView *)self imageView];
      [imageView addInterestInImageQuality:1 forObject:self];

      [(SXScalableImageComponentView *)self createMediaViewEvent];
    }

    presentationDelegate2 = [(SXComponentView *)self presentationDelegate];
    animationController = [presentationDelegate2 animationController];
    [animationController stopUpdatingAnimationForComponentView:self finishAnimation:1];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)fullScreenCanvasController:(id)controller willReturnToFullscreenForShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXComponentView *)self presentationDelegate:controller];
  [v6 willReturnToFullscreenForComponent:self];
}

- (void)fullScreenCanvasController:(id)controller didHideShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXComponentView *)self presentationDelegate:controller];
  [v6 removeInteractivityFocusForComponent:self];

  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate dismissFullscreenCanvasForComponent:self];

  [(SXComponentView *)self restoreBehavior];
  imageView = [(SXScalableImageComponentView *)self imageView];
  [imageView giveUpInterestForObject:self];

  imageView2 = [(SXScalableImageComponentView *)self imageView];
  [imageView2 addInterestInImageQuality:0 forObject:self];

  [(SXScalableImageComponentView *)self finishMediaViewEvent];
}

- (void)fullScreenCanvasController:(id)controller willHideShowable:(id)showable viewIndex:(unint64_t)index
{
  v6 = [(SXComponentView *)self presentationDelegate:controller];
  [v6 willDismissFullscreenCanvasForComponent:self];
}

- (CGRect)fullScreenCanvasController:(id)controller fullScreenFrameForShowable:(id)showable viewIndex:(unint64_t)index withinRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  imageView = [(SXScalableImageComponentView *)self imageView];
  [imageView bounds];
  v14 = v13;
  rect = v15;

  imageView2 = [(SXScalableImageComponentView *)self imageView];
  [imageView2 bounds];
  [controllerCopy fitSizeForRect:?];
  v18 = v17;
  v20 = v19;

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v21 = CGRectGetHeight(v29);
  v30.origin.x = v14;
  v30.origin.y = rect;
  v30.size.width = v18;
  v30.size.height = v20;
  v22 = (v21 - CGRectGetHeight(v30)) * 0.5;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v23 = CGRectGetWidth(v31);
  v32.origin.x = v14;
  v32.origin.y = v22;
  v32.size.width = v18;
  v32.size.height = v20;
  v24 = (v23 - CGRectGetWidth(v32)) * 0.5;
  v25 = v22;
  v26 = v18;
  v27 = v20;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)fullScreenCanvasController:(id)controller shouldAddGestureView:(id)view forShowable:(id)showable
{
  viewCopy = view;
  imageView = [(SXScalableImageComponentView *)self imageView];
  [imageView bounds];
  [viewCopy setFrame:?];

  imageView2 = [(SXScalableImageComponentView *)self imageView];
  [imageView2 addSubview:viewCopy];

  [(SXScalableImageComponentView *)self setGestureView:viewCopy];
}

- (CGRect)fullScreenCanvasController:(id)controller originalFrameForShowable:(id)showable onCanvasView:(id)view viewIndex:(unint64_t)index
{
  viewCopy = view;
  [(SXComponentView *)self contentFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  contentView = [(SXComponentView *)self contentView];
  [viewCopy convertRect:contentView fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)fullScreenCanvasController:(id)controller showable:(id)showable gestureRecognizerShouldBegin:(id)begin
{
  v5 = [(SXComponentView *)self presentationDelegate:controller];
  isScrolling = [v5 isScrolling];

  return isScrolling ^ 1;
}

- (void)layoutImageView
{
  fullScreenCanvasController = [(SXScalableImageComponentView *)self fullScreenCanvasController];
  if ([fullScreenCanvasController isFullscreen])
  {
    fullScreenCanvasController2 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
    isTransitioning = [fullScreenCanvasController2 isTransitioning];

    if (!isTransitioning)
    {
      return;
    }
  }

  else
  {
  }

  imageView = [(SXScalableImageComponentView *)self imageView];
  [(SXComponentView *)self contentFrame];
  [imageView setFrame:?];
}

- (BOOL)gestureShouldBegin:(id)begin
{
  beginCopy = begin;
  fullScreenCanvasController = [(SXScalableImageComponentView *)self fullScreenCanvasController];
  v6 = [fullScreenCanvasController otherInteractivityGestureShouldBegin:beginCopy];

  return v6;
}

- (CGRect)transitionContentFrame
{
  imageView = [(SXScalableImageComponentView *)self imageView];
  [imageView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  component = [(SXComponentView *)self component];
  imageIdentifier = [component imageIdentifier];
  v7 = [identifierCopy isEqualToString:imageIdentifier];

  return v7;
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
  v3.super_class = SXScalableImageComponentView;
  [(SXMediaComponentView *)&v3 submitEvents];
  [(SXScalableImageComponentView *)self finishMediaViewEvent];
}

- (void)createMediaViewEvent
{
  activeViewEvent = [(SXScalableImageComponentView *)self activeViewEvent];
  if (!activeViewEvent)
  {
    imageView = [(SXScalableImageComponentView *)self imageView];
    image = [imageView image];

    if (!image)
    {
      return;
    }

    v6 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
    [(SXScalableImageComponentView *)self setActiveViewEvent:v6];
    activeViewEvent = v6;
  }
}

- (void)finishMediaViewEvent
{
  activeViewEvent = [(SXScalableImageComponentView *)self activeViewEvent];

  if (activeViewEvent)
  {
    activeViewEvent2 = [(SXScalableImageComponentView *)self activeViewEvent];
    [activeViewEvent2 determineEndDate];

    analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
    activeViewEvent3 = [(SXScalableImageComponentView *)self activeViewEvent];
    [analyticsReporting reportEvent:activeViewEvent3];

    [(SXScalableImageComponentView *)self setActiveViewEvent:0];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  imageResource = [(SXScalableImageComponentView *)self imageResource];
  [imageResource dimensions];
  v6 = NSStringFromCGSize(v10);
  v7 = [v3 stringWithFormat:@"<%@: %p>: %@", v4, self, v6];

  return v7;
}

- (BOOL)allowHierarchyRemoval
{
  v7.receiver = self;
  v7.super_class = SXScalableImageComponentView;
  allowHierarchyRemoval = [(SXComponentView *)&v7 allowHierarchyRemoval];
  fullScreenCanvasController = [(SXScalableImageComponentView *)self fullScreenCanvasController];
  isFullscreen = [fullScreenCanvasController isFullscreen];

  return (isFullscreen ^ 1) & allowHierarchyRemoval;
}

- (CGRect)previousContentFrame
{
  x = self->_previousContentFrame.origin.x;
  y = self->_previousContentFrame.origin.y;
  width = self->_previousContentFrame.size.width;
  height = self->_previousContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)gestureView
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureView);

  return WeakRetained;
}

@end