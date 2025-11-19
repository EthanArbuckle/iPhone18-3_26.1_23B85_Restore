@interface SXImageComponentView
- (BOOL)usesThumbnailWithImageIdentifier:(id)a3;
- (CGRect)imageFrame;
- (CGRect)transitionContentFrame;
- (NSString)description;
- (SXImageComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 mediaSharingPolicyProvider:(id)a10;
- (id)contentViewForBehavior:(id)a3;
- (id)imageResource;
- (void)dealloc;
- (void)discardContents;
- (void)imageView:(id)a3 didLoadAnimatedImage:(id)a4;
- (void)layoutImageView;
- (void)loadComponent:(id)a3;
- (void)presentComponentWithChanges:(id)a3;
- (void)renderContents;
- (void)visibilityStateDidChangeFromState:(int64_t)a3;
@end

@implementation SXImageComponentView

- (SXImageComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 mediaSharingPolicyProvider:(id)a10
{
  v21 = a9;
  v17 = a10;
  v22.receiver = self;
  v22.super_class = SXImageComponentView;
  v18 = [(SXMediaComponentView *)&v22 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageViewFactory, a9);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, a10);
  }

  return v19;
}

- (void)loadComponent:(id)a3
{
  v20.receiver = self;
  v20.super_class = SXImageComponentView;
  [(SXComponentView *)&v20 loadComponent:a3];
  if (!self->_imageView)
  {
    v4 = [(SXComponentView *)self DOMObjectProvider];
    v5 = [(SXComponentView *)self component];
    v6 = [v5 imageIdentifier];
    v7 = [v4 imageResourceForIdentifier:v6];

    v8 = [(SXImageComponentView *)self imageViewFactory];
    v9 = [v8 imageViewForResource:v7];
    imageView = self->_imageView;
    self->_imageView = v9;

    [(SXImageView *)self->_imageView setDelegate:self];
    v11 = [(SXComponentView *)self contentView];
    v12 = [(SXImageComponentView *)self imageView];
    [v11 addSubview:v12];

    v13 = [(SXComponentView *)self component];
    -[SXImageView setIsAccessibilityElement:](self->_imageView, "setIsAccessibilityElement:", [v13 shouldBeExposedToAssistiveTechnology]);

    v14 = [(SXComponentView *)self component];
    v15 = [v14 captionWithLocalizedRoleForSpeaking];
    [(SXImageView *)self->_imageView setAccessibilityLabel:v15];

    v16 = [SXDragManager alloc];
    v17 = [(SXImageComponentView *)self mediaSharingPolicyProvider];
    v18 = -[SXDragManager initWithSharingPolicy:dataSource:](v16, "initWithSharingPolicy:dataSource:", [v17 mediaSharingPolicy], self);
    dragManager = self->_dragManager;
    self->_dragManager = v18;

    [(SXDragManager *)self->_dragManager updateAccessibilityDragSourceDescriptorsForDraggableElement:self->_imageView];
  }
}

- (void)layoutImageView
{
  v3 = [(SXImageComponentView *)self imageView];
  [(SXImageComponentView *)self imageFrame];
  [v3 setFrame:?];
}

- (CGRect)imageFrame
{
  [(SXComponentView *)self contentFrame];
  x = v3;
  y = v5;
  Width = v7;
  height = v9;
  v11 = [(SXComponentView *)self componentLayout];
  [v11 maximumContentWidth];
  v13 = v12;

  if (v13)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = Width;
    v37.size.height = height;
    Width = CGRectGetWidth(v37);
    v14 = [(SXComponentView *)self unitConverter];
    v15 = [(SXComponentView *)self componentLayout];
    v16 = [v15 maximumContentWidth];
    [v14 convertValueToPoints:{v16, v17}];
    v19 = v18;

    if (Width >= v19)
    {
      Width = v19;
    }
  }

  v20 = [(SXImageComponentView *)self imageResource];
  [v20 dimensions];
  if (v21 > 0.0)
  {
    v22 = [(SXImageComponentView *)self imageResource];
    [v22 dimensions];
    v24 = v23;

    if (v24 <= 0.0)
    {
      goto LABEL_8;
    }

    v20 = [(SXImageComponentView *)self imageResource];
    [v20 dimensions];
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
  v25 = [(SXComponentView *)self componentLayout];
  if (![v25 horizontalContentAlignment])
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

  v26 = [(SXComponentView *)self componentLayout];
  v27 = [v26 horizontalContentAlignment];

  if (v27 != 1)
  {
    if (v27 == 3)
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

- (void)presentComponentWithChanges:(id)a3
{
  v8.receiver = self;
  v8.super_class = SXImageComponentView;
  [(SXComponentView *)&v8 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  [(SXImageComponentView *)self layoutImageView];
  v4 = [(SXImageComponentView *)self imageView];
  v5 = [(SXImageComponentView *)self imageView];
  [v5 bounds];
  [v4 setPreferredImageSize:{v6, v7}];
}

- (void)renderContents
{
  v4.receiver = self;
  v4.super_class = SXImageComponentView;
  [(SXComponentView *)&v4 renderContents];
  v3 = [(SXImageComponentView *)self imageView];
  [v3 addInterestInImageQuality:0 forObject:self];
}

- (void)discardContents
{
  v7.receiver = self;
  v7.super_class = SXImageComponentView;
  [(SXComponentView *)&v7 discardContents];
  v3 = [(SXImageComponentView *)self imageView];
  v4 = [v3 objectHasQualityInterest:self quality:0];

  if (v4)
  {
    v5 = [(SXImageComponentView *)self imageView];
    [v5 giveUpInterestForObject:self];
  }

  v6 = [(SXImageComponentView *)self imageView];
  [v6 setImage:0];
}

- (void)visibilityStateDidChangeFromState:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = SXImageComponentView;
  [(SXMediaComponentView *)&v15 visibilityStateDidChangeFromState:?];
  if ([(SXComponentView *)self visibilityState]== 1)
  {
    v5 = [(SXImageComponentView *)self animatedImageController];

    if (v5)
    {
      v6 = [(SXImageComponentView *)self animatedImageController];
      [(SXAnimatedImageController *)v6 registerForViewportChanges];
    }

    v7 = [(SXComponentView *)self component];
    v8 = [v7 userControllable];

    if ((v8 & 1) == 0)
    {
      v9 = [(SXImageComponentView *)self imageView];
      [v9 resume];
LABEL_12:
    }
  }

  else
  {
    v10 = [(SXComponentView *)self visibilityState];
    if (a3 == 1 && v10 == 2)
    {
      v11 = [(SXImageComponentView *)self animatedImageController];

      if (v11)
      {
        v12 = [(SXImageComponentView *)self animatedImageController];
        [(SXAnimatedImageController *)v12 unregisterForViewportChanges];
      }

      v13 = [(SXComponentView *)self component];
      v14 = [v13 userControllable];

      if ((v14 & 1) == 0)
      {
        v9 = [(SXImageComponentView *)self imageView];
        [v9 pause];
        goto LABEL_12;
      }
    }
  }
}

- (CGRect)transitionContentFrame
{
  v2 = [(SXImageComponentView *)self imageView];
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

- (void)imageView:(id)a3 didLoadAnimatedImage:(id)a4
{
  v14 = a3;
  v5 = [(SXComponentView *)self component];
  v6 = [v5 userControllable];

  if (v6)
  {
    v7 = [(SXImageComponentView *)self animatedImageController];

    if (!v7)
    {
      v8 = [SXAnimatedImageController alloc];
      v9 = [(SXComponentView *)self viewport];
      v10 = [(SXImageComponentView *)self imageView];
      v11 = [(SXAnimatedImageController *)&v8->super.isa initWithImageComponentView:v9 viewport:v10 imageView:?];

      [(SXImageComponentView *)self setAnimatedImageController:v11];
      [v14 setAutoPlayEnabled:0];
      if ([(SXComponentView *)self visibilityState]== 1)
      {
        v12 = [(SXImageComponentView *)self animatedImageController];
        [(SXAnimatedImageController *)v12 registerForViewportChanges];
      }
    }
  }

  else if ([(SXComponentView *)self visibilityState]== 1)
  {
    [v14 setAutoPlayEnabled:1];
    [v14 resume];
  }

  [(SXMediaComponentView *)self setIsDisplayingMedia:1];
  v13 = [(SXImageComponentView *)self imageView];
  [v13 setScrubbingEnabled:1];
}

- (id)contentViewForBehavior:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SXImageComponentView;
  v5 = [(SXComponentView *)&v11 contentViewForBehavior:v4];
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

  v7 = [(SXComponentView *)self componentLayout];
  [v7 maximumContentWidth];
  v9 = v8;

  if (!v9)
  {
LABEL_2:
    v6 = [(SXImageComponentView *)self imageView];
  }

  else
  {
    v6 = 0;
  }

  v5 = v6;
LABEL_7:

  return v5;
}

- (id)imageResource
{
  v2 = [(SXImageComponentView *)self imageView];
  v3 = [v2 imageResource];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SXComponentView *)self component];
  v6 = [v5 identifier];
  v7 = [(SXImageComponentView *)self imageResource];
  [v7 dimensions];
  v8 = NSStringFromCGSize(v12);
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@>: %@", v4, self, v6, v8];;

  return v9;
}

- (void)dealloc
{
  v3 = [(SXImageComponentView *)self imageView];
  v4 = [v3 objectHasQualityInterest:self quality:0];

  if (v4)
  {
    v5 = [(SXImageComponentView *)self imageView];
    [v5 giveUpInterestForObject:self];
  }

  v6.receiver = self;
  v6.super_class = SXImageComponentView;
  [(SXComponentView *)&v6 dealloc];
}

@end