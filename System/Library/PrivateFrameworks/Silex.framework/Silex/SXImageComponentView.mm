@interface SXImageComponentView
- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier;
- (CGRect)imageFrame;
- (CGRect)transitionContentFrame;
- (NSString)description;
- (SXImageComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory mediaSharingPolicyProvider:(id)self0;
- (id)contentViewForBehavior:(id)behavior;
- (id)imageResource;
- (void)dealloc;
- (void)discardContents;
- (void)imageView:(id)view didLoadAnimatedImage:(id)image;
- (void)layoutImageView;
- (void)loadComponent:(id)component;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
- (void)visibilityStateDidChangeFromState:(int64_t)state;
@end

@implementation SXImageComponentView

- (SXImageComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory mediaSharingPolicyProvider:(id)self0
{
  viewFactoryCopy = viewFactory;
  policyProviderCopy = policyProvider;
  v22.receiver = self;
  v22.super_class = SXImageComponentView;
  v18 = [(SXMediaComponentView *)&v22 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitor];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageViewFactory, viewFactory);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, policyProvider);
  }

  return v19;
}

- (void)loadComponent:(id)component
{
  v20.receiver = self;
  v20.super_class = SXImageComponentView;
  [(SXComponentView *)&v20 loadComponent:component];
  if (!self->_imageView)
  {
    dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
    component = [(SXComponentView *)self component];
    imageIdentifier = [component imageIdentifier];
    v7 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

    imageViewFactory = [(SXImageComponentView *)self imageViewFactory];
    v9 = [imageViewFactory imageViewForResource:v7];
    imageView = self->_imageView;
    self->_imageView = v9;

    [(SXImageView *)self->_imageView setDelegate:self];
    contentView = [(SXComponentView *)self contentView];
    imageView = [(SXImageComponentView *)self imageView];
    [contentView addSubview:imageView];

    component2 = [(SXComponentView *)self component];
    -[SXImageView setIsAccessibilityElement:](self->_imageView, "setIsAccessibilityElement:", [component2 shouldBeExposedToAssistiveTechnology]);

    component3 = [(SXComponentView *)self component];
    captionWithLocalizedRoleForSpeaking = [component3 captionWithLocalizedRoleForSpeaking];
    [(SXImageView *)self->_imageView setAccessibilityLabel:captionWithLocalizedRoleForSpeaking];

    v16 = [SXDragManager alloc];
    mediaSharingPolicyProvider = [(SXImageComponentView *)self mediaSharingPolicyProvider];
    v18 = -[SXDragManager initWithSharingPolicy:dataSource:](v16, "initWithSharingPolicy:dataSource:", [mediaSharingPolicyProvider mediaSharingPolicy], self);
    dragManager = self->_dragManager;
    self->_dragManager = v18;

    [(SXDragManager *)self->_dragManager updateAccessibilityDragSourceDescriptorsForDraggableElement:self->_imageView];
  }
}

- (void)layoutImageView
{
  imageView = [(SXImageComponentView *)self imageView];
  [(SXImageComponentView *)self imageFrame];
  [imageView setFrame:?];
}

- (CGRect)imageFrame
{
  [(SXComponentView *)self contentFrame];
  x = v3;
  y = v5;
  Width = v7;
  height = v9;
  componentLayout = [(SXComponentView *)self componentLayout];
  [componentLayout maximumContentWidth];
  v13 = v12;

  if (v13)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = Width;
    v37.size.height = height;
    Width = CGRectGetWidth(v37);
    unitConverter = [(SXComponentView *)self unitConverter];
    componentLayout2 = [(SXComponentView *)self componentLayout];
    maximumContentWidth = [componentLayout2 maximumContentWidth];
    [unitConverter convertValueToPoints:{maximumContentWidth, v17}];
    v19 = v18;

    if (Width >= v19)
    {
      Width = v19;
    }
  }

  imageResource = [(SXImageComponentView *)self imageResource];
  [imageResource dimensions];
  if (v21 > 0.0)
  {
    imageResource2 = [(SXImageComponentView *)self imageResource];
    [imageResource2 dimensions];
    v24 = v23;

    if (v24 <= 0.0)
    {
      goto LABEL_8;
    }

    imageResource = [(SXImageComponentView *)self imageResource];
    [imageResource dimensions];
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = Width;
    v45.size.height = height;
    v38 = AVMakeRectWithAspectRatioInsideRect(v36, v45);
    x = v38.origin.x;
    y = v38.origin.y;
    Width = v38.size.width;
    height = v38.size.height;
  }

LABEL_8:
  componentLayout3 = [(SXComponentView *)self componentLayout];
  if (![componentLayout3 horizontalContentAlignment])
  {

LABEL_13:
    [(SXComponentView *)self contentFrame];
    MinX = CGRectGetMinX(v41);
    [(SXComponentView *)self contentFrame];
    v31 = CGRectGetWidth(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = Width;
    v43.size.height = height;
    v29 = MinX + (v31 - CGRectGetWidth(v43)) * 0.5;
    goto LABEL_15;
  }

  componentLayout4 = [(SXComponentView *)self componentLayout];
  horizontalContentAlignment = [componentLayout4 horizontalContentAlignment];

  if (horizontalContentAlignment != 1)
  {
    if (horizontalContentAlignment == 3)
    {
      [(SXComponentView *)self contentFrame];
      MaxX = CGRectGetMaxX(v39);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = Width;
      v40.size.height = height;
      v29 = MaxX - CGRectGetWidth(v40);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v29 = 0.0;
LABEL_15:
  v32 = y;
  v33 = Width;
  v34 = height;

  return CGRectIntegral(*&v29);
}

- (void)presentComponentWithChanges:(id)changes
{
  v8.receiver = self;
  v8.super_class = SXImageComponentView;
  [(SXComponentView *)&v8 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  [(SXImageComponentView *)self layoutImageView];
  imageView = [(SXImageComponentView *)self imageView];
  imageView2 = [(SXImageComponentView *)self imageView];
  [imageView2 bounds];
  [imageView setPreferredImageSize:{v6, v7}];
}

- (void)renderContents
{
  v4.receiver = self;
  v4.super_class = SXImageComponentView;
  [(SXComponentView *)&v4 renderContents];
  imageView = [(SXImageComponentView *)self imageView];
  [imageView addInterestInImageQuality:0 forObject:self];
}

- (void)discardContents
{
  v7.receiver = self;
  v7.super_class = SXImageComponentView;
  [(SXComponentView *)&v7 discardContents];
  imageView = [(SXImageComponentView *)self imageView];
  v4 = [imageView objectHasQualityInterest:self quality:0];

  if (v4)
  {
    imageView2 = [(SXImageComponentView *)self imageView];
    [imageView2 giveUpInterestForObject:self];
  }

  imageView3 = [(SXImageComponentView *)self imageView];
  [imageView3 setImage:0];
}

- (void)visibilityStateDidChangeFromState:(int64_t)state
{
  v15.receiver = self;
  v15.super_class = SXImageComponentView;
  [(SXMediaComponentView *)&v15 visibilityStateDidChangeFromState:?];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    animatedImageController = [(SXImageComponentView *)self animatedImageController];

    if (animatedImageController)
    {
      animatedImageController2 = [(SXImageComponentView *)self animatedImageController];
      [(SXAnimatedImageController *)animatedImageController2 registerForViewportChanges];
    }

    component = [(SXComponentView *)self component];
    userControllable = [component userControllable];

    if ((userControllable & 1) == 0)
    {
      imageView = [(SXImageComponentView *)self imageView];
      [imageView resume];
LABEL_12:
    }
  }

  else
  {
    visibilityState = [(SXComponentView *)self visibilityState];
    if (state == 1 && visibilityState == 2)
    {
      animatedImageController3 = [(SXImageComponentView *)self animatedImageController];

      if (animatedImageController3)
      {
        animatedImageController4 = [(SXImageComponentView *)self animatedImageController];
        [(SXAnimatedImageController *)animatedImageController4 unregisterForViewportChanges];
      }

      component2 = [(SXComponentView *)self component];
      userControllable2 = [component2 userControllable];

      if ((userControllable2 & 1) == 0)
      {
        imageView = [(SXImageComponentView *)self imageView];
        [imageView pause];
        goto LABEL_12;
      }
    }
  }
}

- (CGRect)transitionContentFrame
{
  imageView = [(SXImageComponentView *)self imageView];
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

- (void)imageView:(id)view didLoadAnimatedImage:(id)image
{
  viewCopy = view;
  component = [(SXComponentView *)self component];
  userControllable = [component userControllable];

  if (userControllable)
  {
    animatedImageController = [(SXImageComponentView *)self animatedImageController];

    if (!animatedImageController)
    {
      v8 = [SXAnimatedImageController alloc];
      viewport = [(SXComponentView *)self viewport];
      imageView = [(SXImageComponentView *)self imageView];
      v11 = [(SXAnimatedImageController *)&v8->super.isa initWithImageComponentView:viewport viewport:imageView imageView:?];

      [(SXImageComponentView *)self setAnimatedImageController:v11];
      [viewCopy setAutoPlayEnabled:0];
      if ([(SXComponentView *)self visibilityState]== 1)
      {
        animatedImageController2 = [(SXImageComponentView *)self animatedImageController];
        [(SXAnimatedImageController *)animatedImageController2 registerForViewportChanges];
      }
    }
  }

  else if ([(SXComponentView *)self visibilityState]== 1)
  {
    [viewCopy setAutoPlayEnabled:1];
    [viewCopy resume];
  }

  [(SXMediaComponentView *)self setIsDisplayingMedia:1];
  imageView2 = [(SXImageComponentView *)self imageView];
  [imageView2 setScrubbingEnabled:1];
}

- (id)contentViewForBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v11.receiver = self;
  v11.super_class = SXImageComponentView;
  v5 = [(SXComponentView *)&v11 contentViewForBehavior:behaviorCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  componentLayout = [(SXComponentView *)self componentLayout];
  [componentLayout maximumContentWidth];
  v9 = v8;

  if (!v9)
  {
LABEL_2:
    imageView = [(SXImageComponentView *)self imageView];
  }

  else
  {
    imageView = 0;
  }

  v5 = imageView;
LABEL_7:

  return v5;
}

- (id)imageResource
{
  imageView = [(SXImageComponentView *)self imageView];
  imageResource = [imageView imageResource];

  return imageResource;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  component = [(SXComponentView *)self component];
  identifier = [component identifier];
  imageResource = [(SXImageComponentView *)self imageResource];
  [imageResource dimensions];
  v8 = NSStringFromCGSize(v12);
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@>: %@", v4, self, identifier, v8];;

  return v9;
}

- (void)dealloc
{
  imageView = [(SXImageComponentView *)self imageView];
  v4 = [imageView objectHasQualityInterest:self quality:0];

  if (v4)
  {
    imageView2 = [(SXImageComponentView *)self imageView];
    [imageView2 giveUpInterestForObject:self];
  }

  v6.receiver = self;
  v6.super_class = SXImageComponentView;
  [(SXComponentView *)&v6 dealloc];
}

@end