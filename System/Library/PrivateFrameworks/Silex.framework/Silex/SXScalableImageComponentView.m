@interface SXScalableImageComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)fullScreenCanvasController:(id)a3 showable:(id)a4 gestureRecognizerShouldBegin:(id)a5;
- (BOOL)fullScreenCanvasController:(id)a3 willShowShowable:(id)a4 viewIndex:(unint64_t)a5;
- (BOOL)gestureShouldBegin:(id)a3;
- (BOOL)requestInteractivityFocusForFullScreenCanvasController:(id)a3;
- (BOOL)usesThumbnailWithImageIdentifier:(id)a3;
- (CGRect)fullScreenCanvasController:(id)a3 fullScreenFrameForShowable:(id)a4 viewIndex:(unint64_t)a5 withinRect:(CGRect)a6;
- (CGRect)fullScreenCanvasController:(id)a3 originalFrameForShowable:(id)a4 onCanvasView:(id)a5 viewIndex:(unint64_t)a6;
- (CGRect)previousContentFrame;
- (CGRect)transitionContentFrame;
- (NSString)description;
- (SXScalableImageComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 canvasControllerFactory:(id)a10 mediaSharingPolicyProvider:(id)a11;
- (UIView)gestureView;
- (id)componentTextStyleForIdentifier:(id)a3 inheritingFromComponentTextStyle:(id)a4;
- (id)contentSizeCategoryForCaption:(id)a3;
- (id)fullScreenCanvasController:(id)a3 canvasViewControllerForShowable:(id)a4 completionBlock:(id)a5;
- (id)fullScreenCanvasController:(id)a3 captionForShowable:(id)a4 viewIndex:(unint64_t)a5;
- (id)textResizerForCaption:(id)a3;
- (id)textRulesForCaption:(id)a3;
- (id)textStyleForIdentifier:(id)a3;
- (void)createMediaViewEvent;
- (void)discardContents;
- (void)finishMediaViewEvent;
- (void)fullScreenCanvasController:(id)a3 didHideShowable:(id)a4 viewIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 shouldAddGestureView:(id)a4 forShowable:(id)a5;
- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 shouldTransferToOriginalViewWithIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 willHideShowable:(id)a4 viewIndex:(unint64_t)a5;
- (void)fullScreenCanvasController:(id)a3 willReturnToFullscreenForShowable:(id)a4 viewIndex:(unint64_t)a5;
- (void)imageView:(id)a3 didLoadAnimatedImage:(id)a4;
- (void)layoutImageView;
- (void)loadComponent:(id)a3;
- (void)presentComponentWithChanges:(id)a3;
- (void)renderContents;
- (void)submitEvents;
- (void)visibilityStateDidChangeFromState:(int64_t)a3;
@end

@implementation SXScalableImageComponentView

- (SXScalableImageComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 canvasControllerFactory:(id)a10 mediaSharingPolicyProvider:(id)a11
{
  v23 = a9;
  v22 = a10;
  v21 = a11;
  v24.receiver = self;
  v24.super_class = SXScalableImageComponentView;
  v18 = [(SXMediaComponentView *)&v24 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageViewFactory, a9);
    objc_storeStrong(&v19->_canvasControllerFactory, a10);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, a11);
  }

  return v19;
}

- (void)loadComponent:(id)a3
{
  v25.receiver = self;
  v25.super_class = SXScalableImageComponentView;
  [(SXComponentView *)&v25 loadComponent:a3];
  if (!self->_imageView)
  {
    v4 = [(SXComponentView *)self DOMObjectProvider];
    v5 = [(SXComponentView *)self component];
    v6 = [v5 imageIdentifier];
    v7 = [v4 imageResourceForIdentifier:v6];

    imageResource = self->_imageResource;
    self->_imageResource = v7;
    v9 = v7;

    v10 = [(SXScalableImageComponentView *)self imageViewFactory];
    v11 = [v10 imageViewForResource:v9];
    imageView = self->_imageView;
    self->_imageView = v11;

    v13 = self->_imageView;
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(SXImageView *)v13 setBackgroundColor:v14];

    [(SXImageView *)self->_imageView setDelegate:self];
    v15 = [(SXComponentView *)self component];
    v16 = [v15 accessibilityCaption];
    [(SXImageView *)self->_imageView setAccessibilityLabel:v16];

    v17 = [(SXComponentView *)self contentView];
    [v17 addSubview:self->_imageView];

    v18 = [(SXScalableImageComponentView *)self canvasControllerFactory];
    v19 = [v18 fullscreenCanvasControllerForShowable:self];
    fullScreenCanvasController = self->_fullScreenCanvasController;
    self->_fullScreenCanvasController = v19;

    v21 = [SXDragManager alloc];
    v22 = [(SXScalableImageComponentView *)self mediaSharingPolicyProvider];
    v23 = -[SXDragManager initWithSharingPolicy:dataSource:](v21, "initWithSharingPolicy:dataSource:", [v22 mediaSharingPolicy], self);
    dragManager = self->_dragManager;
    self->_dragManager = v23;

    [(SXDragManager *)self->_dragManager updateAccessibilityDragSourceDescriptorsForDraggableElement:self->_imageView];
  }
}

- (void)presentComponentWithChanges:(id)a3
{
  v29.receiver = self;
  v29.super_class = SXScalableImageComponentView;
  [(SXComponentView *)&v29 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  [(SXScalableImageComponentView *)self previousContentFrame];
  v5 = v4;
  v7 = v6;
  [(SXComponentView *)self contentFrame];
  if (v5 != v9 || v7 != v8)
  {
    v11 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
    if ([v11 isFullscreen])
    {
    }

    else
    {
      v12 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
      v13 = [v12 isTransitioning];

      if ((v13 & 1) == 0)
      {
        [(SXScalableImageComponentView *)self layoutImageView];
      }
    }

    v14 = [(SXScalableImageComponentView *)self imageView];
    [(SXComponentView *)self contentFrame];
    [v14 setPreferredImageSize:{v15, v16}];

    v17 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
    v18 = [v17 isFullscreen];

    if ((v18 & 1) == 0)
    {
      v19 = [(SXScalableImageComponentView *)self imageView];
      [v19 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [(SXScalableImageComponentView *)self gestureView];
      [v28 setFrame:{v21, v23, v25, v27}];
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
  v3 = [(SXScalableImageComponentView *)self imageView];
  [v3 addInterestInImageQuality:0 forObject:self];
}

- (void)discardContents
{
  v7.receiver = self;
  v7.super_class = SXScalableImageComponentView;
  [(SXComponentView *)&v7 discardContents];
  v3 = [(SXScalableImageComponentView *)self imageView];
  v4 = [v3 objectHasQualityInterest:self quality:0];

  if (v4)
  {
    v5 = [(SXScalableImageComponentView *)self imageView];
    [v5 giveUpInterestForObject:self];
  }

  v6 = [(SXScalableImageComponentView *)self imageView];
  [v6 setImage:0];
}

- (void)visibilityStateDidChangeFromState:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SXScalableImageComponentView;
  [(SXMediaComponentView *)&v7 visibilityStateDidChangeFromState:?];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    v5 = [(SXScalableImageComponentView *)self imageView];
    [v5 resume];
LABEL_6:

    return;
  }

  v6 = [(SXComponentView *)self visibilityState];
  if (a3 == 1 && v6 == 2)
  {
    v5 = [(SXScalableImageComponentView *)self imageView];
    [v5 pause];
    goto LABEL_6;
  }
}

- (void)imageView:(id)a3 didLoadAnimatedImage:(id)a4
{
  [(SXMediaComponentView *)self setIsDisplayingMedia:1, a4];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    v5 = [(SXScalableImageComponentView *)self imageView];
    [v5 resume];
  }

  v6 = [(SXScalableImageComponentView *)self imageView];
  [v6 setScrubbingEnabled:1];
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

- (void)fullScreenCanvasController:(id)a3 showable:(id)a4 shouldTransferToOriginalViewWithIndex:(unint64_t)a5
{
  v6 = [(SXComponentView *)self contentView:a3];
  v7 = [(SXScalableImageComponentView *)self imageView];
  [v6 addSubview:v7];

  [(SXScalableImageComponentView *)self layoutImageView];
}

- (id)fullScreenCanvasController:(id)a3 captionForShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXComponentView *)self component:a3];
  v7 = [v6 captionComponent];

  if (v7)
  {
    v8 = [SXFullscreenCaption alloc];
    v9 = [(SXComponentView *)self component];
    v10 = [v9 captionComponent];
    v11 = [(SXFullscreenCaption *)&v8->super.isa initWithCaption:v10 dataSource:self];
LABEL_5:
    v15 = v11;

    goto LABEL_6;
  }

  v12 = [(SXComponentView *)self component];
  v13 = [v12 caption];

  if (v13)
  {
    v14 = [SXFullscreenCaption alloc];
    v9 = [(SXComponentView *)self component];
    v10 = [v9 caption];
    v11 = [(SXFullscreenCaption *)&v14->super.isa initWithText:v10 dataSource:self];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (BOOL)fullScreenCanvasController:(id)a3 willShowShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXScalableImageComponentView *)self imageView:a3];
  v7 = [v6 hasLoadedImage];

  if (v7)
  {
    v8 = [(SXComponentView *)self presentationDelegate];
    v9 = [v8 addInteractivityFocusForComponent:self];

    if (v9)
    {
      v10 = [(SXScalableImageComponentView *)self imageView];
      [v10 addInterestInImageQuality:1 forObject:self];

      [(SXScalableImageComponentView *)self createMediaViewEvent];
    }

    v11 = [(SXComponentView *)self presentationDelegate];
    v12 = [v11 animationController];
    [v12 stopUpdatingAnimationForComponentView:self finishAnimation:1];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)fullScreenCanvasController:(id)a3 willReturnToFullscreenForShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXComponentView *)self presentationDelegate:a3];
  [v6 willReturnToFullscreenForComponent:self];
}

- (void)fullScreenCanvasController:(id)a3 didHideShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXComponentView *)self presentationDelegate:a3];
  [v6 removeInteractivityFocusForComponent:self];

  v7 = [(SXComponentView *)self presentationDelegate];
  [v7 dismissFullscreenCanvasForComponent:self];

  [(SXComponentView *)self restoreBehavior];
  v8 = [(SXScalableImageComponentView *)self imageView];
  [v8 giveUpInterestForObject:self];

  v9 = [(SXScalableImageComponentView *)self imageView];
  [v9 addInterestInImageQuality:0 forObject:self];

  [(SXScalableImageComponentView *)self finishMediaViewEvent];
}

- (void)fullScreenCanvasController:(id)a3 willHideShowable:(id)a4 viewIndex:(unint64_t)a5
{
  v6 = [(SXComponentView *)self presentationDelegate:a3];
  [v6 willDismissFullscreenCanvasForComponent:self];
}

- (CGRect)fullScreenCanvasController:(id)a3 fullScreenFrameForShowable:(id)a4 viewIndex:(unint64_t)a5 withinRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a3;
  v12 = [(SXScalableImageComponentView *)self imageView];
  [v12 bounds];
  v14 = v13;
  rect = v15;

  v16 = [(SXScalableImageComponentView *)self imageView];
  [v16 bounds];
  [v11 fitSizeForRect:?];
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

- (void)fullScreenCanvasController:(id)a3 shouldAddGestureView:(id)a4 forShowable:(id)a5
{
  v8 = a4;
  v6 = [(SXScalableImageComponentView *)self imageView];
  [v6 bounds];
  [v8 setFrame:?];

  v7 = [(SXScalableImageComponentView *)self imageView];
  [v7 addSubview:v8];

  [(SXScalableImageComponentView *)self setGestureView:v8];
}

- (CGRect)fullScreenCanvasController:(id)a3 originalFrameForShowable:(id)a4 onCanvasView:(id)a5 viewIndex:(unint64_t)a6
{
  v7 = a5;
  [(SXComponentView *)self contentFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SXComponentView *)self contentView];
  [v7 convertRect:v16 fromView:{v9, v11, v13, v15}];
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

- (BOOL)fullScreenCanvasController:(id)a3 showable:(id)a4 gestureRecognizerShouldBegin:(id)a5
{
  v5 = [(SXComponentView *)self presentationDelegate:a3];
  v6 = [v5 isScrolling];

  return v6 ^ 1;
}

- (void)layoutImageView
{
  v3 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
  if ([v3 isFullscreen])
  {
    v4 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
    v5 = [v4 isTransitioning];

    if (!v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [(SXScalableImageComponentView *)self imageView];
  [(SXComponentView *)self contentFrame];
  [v6 setFrame:?];
}

- (BOOL)gestureShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
  v6 = [v5 otherInteractivityGestureShouldBegin:v4];

  return v6;
}

- (CGRect)transitionContentFrame
{
  v2 = [(SXScalableImageComponentView *)self imageView];
  [v2 frame];
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

- (BOOL)usesThumbnailWithImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentView *)self component];
  v6 = [v5 imageIdentifier];
  v7 = [v4 isEqualToString:v6];

  return v7;
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
  v3.super_class = SXScalableImageComponentView;
  [(SXMediaComponentView *)&v3 submitEvents];
  [(SXScalableImageComponentView *)self finishMediaViewEvent];
}

- (void)createMediaViewEvent
{
  v3 = [(SXScalableImageComponentView *)self activeViewEvent];
  if (!v3)
  {
    v4 = [(SXScalableImageComponentView *)self imageView];
    v5 = [v4 image];

    if (!v5)
    {
      return;
    }

    v6 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
    [(SXScalableImageComponentView *)self setActiveViewEvent:v6];
    v3 = v6;
  }
}

- (void)finishMediaViewEvent
{
  v3 = [(SXScalableImageComponentView *)self activeViewEvent];

  if (v3)
  {
    v4 = [(SXScalableImageComponentView *)self activeViewEvent];
    [v4 determineEndDate];

    v5 = [(SXMediaComponentView *)self analyticsReporting];
    v6 = [(SXScalableImageComponentView *)self activeViewEvent];
    [v5 reportEvent:v6];

    [(SXScalableImageComponentView *)self setActiveViewEvent:0];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SXScalableImageComponentView *)self imageResource];
  [v5 dimensions];
  v6 = NSStringFromCGSize(v10);
  v7 = [v3 stringWithFormat:@"<%@: %p>: %@", v4, self, v6];

  return v7;
}

- (BOOL)allowHierarchyRemoval
{
  v7.receiver = self;
  v7.super_class = SXScalableImageComponentView;
  v3 = [(SXComponentView *)&v7 allowHierarchyRemoval];
  v4 = [(SXScalableImageComponentView *)self fullScreenCanvasController];
  v5 = [v4 isFullscreen];

  return (v5 ^ 1) & v3;
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