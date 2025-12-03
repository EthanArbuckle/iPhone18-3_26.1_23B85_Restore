@interface VUILayeredImageContainerView
- (BOOL)fixedFrameOverlayView;
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size;
- (VUILayeredImageContainerView)initWithFrame:(CGRect)frame;
- (VUILayeredImageContainerView)initWithLayeredImageProxy:(id)proxy;
- (void)_loadLayeredImage;
- (void)_setSelectionStyle:(int64_t)style;
- (void)setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator;
- (void)setFixedFrameOverlayView:(BOOL)view;
- (void)setLayeredImageProxy:(id)proxy;
- (void)setPressed:(BOOL)pressed;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)willMoveToWindow:(id)window;
@end

@implementation VUILayeredImageContainerView

- (VUILayeredImageContainerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = VUILayeredImageContainerView;
  v3 = [(_UIStackedImageContainerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    config = [(_UIStackedImageContainerView *)v3 config];
    [config setMaximumParallaxImages:6];
  }

  return v4;
}

- (VUILayeredImageContainerView)initWithLayeredImageProxy:(id)proxy
{
  proxyCopy = proxy;
  v6 = [(VUILayeredImageContainerView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layeredImageProxy, proxy);
    [(VUILayeredImageContainerView *)v7 setAutoresizingMask:18];
  }

  return v7;
}

- (void)setFixedFrameOverlayView:(BOOL)view
{
  viewCopy = view;
  config = [(_UIStackedImageContainerView *)self config];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    config2 = [(_UIStackedImageContainerView *)self config];
    [config2 setOverlayFixedFrame:viewCopy];
  }

  if (viewCopy || (-[_UIStackedImageContainerView config](self, "config"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 selectionStyle], v8, v9 == 1))
  {
    config3 = [(_UIStackedImageContainerView *)self config];
    [config3 setSpecularOpacity:0.0];
  }

  else
  {
    config3 = [(_UIStackedImageContainerView *)self config];
    newStandardConfiguration = [MEMORY[0x277D76278] newStandardConfiguration];
    [newStandardConfiguration specularOpacity];
    [config3 setSpecularOpacity:?];
  }
}

- (BOOL)fixedFrameOverlayView
{
  config = [(_UIStackedImageContainerView *)self config];
  overlayFixedFrame = [config overlayFixedFrame];

  return overlayFixedFrame;
}

- (void)setLayeredImageProxy:(id)proxy
{
  proxyCopy = proxy;
  if (([proxyCopy isEqual:self->_layeredImageProxy] & 1) == 0)
  {
    [(VUILayeredImageProxy *)self->_layeredImageProxy cancel];
    objc_storeStrong(&self->_layeredImageProxy, proxy);
    [(VUILayeredImageContainerView *)self setLayeredImageLoaded:0];
    window = [(VUILayeredImageContainerView *)self window];

    if (window)
    {
      [(VUILayeredImageContainerView *)self _loadLayeredImage];
    }
  }
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size
{
  if (size.width == 0.0 || (height = size.height, size.height == 0.0))
  {
    [(VUILayeredImageContainerView *)self bounds];
    width = v6;
    height = v7;
  }

  else
  {
    width = size.width;
  }

  v8 = MEMORY[0x277D76278];
  config = [(_UIStackedImageContainerView *)self config];
  [config scaleSizeIncrease];
  v11 = v10;
  config2 = [(_UIStackedImageContainerView *)self config];
  [v8 _scaledSizeForSize:objc_msgSend(config2 focusSizeIncrease:"selectionStyle") selectionStyle:{width, height, v11}];
  v14 = v13;
  v16 = v15;

  v17 = floor((v14 - width) * 0.5);
  v18 = floor((v16 - height) * 0.5);
  v19 = v18;
  v20 = v17;
  result.right = v20;
  result.bottom = v19;
  result.left = v17;
  result.top = v18;
  return result;
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = VUILayeredImageContainerView;
  [(VUILayeredImageContainerView *)&v5 willMoveToWindow:?];
  if (window)
  {
    if (![(VUILayeredImageContainerView *)self isLayeredImageLoaded])
    {
      [(VUILayeredImageContainerView *)self _loadLayeredImage];
    }
  }

  else
  {
    [(VUILayeredImageProxy *)self->_layeredImageProxy cancel];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  selectedCopy = selected;
  coordinatorCopy = coordinator;
  v8 = [(_UIStackedImageContainerView *)self controlState]& 0xFFFFFFFFFFFFFFF7;
  v9 = 8;
  if (!selectedCopy)
  {
    v9 = 0;
  }

  [(VUILayeredImageContainerView *)self setControlState:v8 | v9 animated:animatedCopy focusAnimationCoordinator:coordinatorCopy];
}

- (void)setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  v10.receiver = self;
  v10.super_class = VUILayeredImageContainerView;
  coordinatorCopy = coordinator;
  [(_UIStackedImageContainerView *)&v10 setControlState:state animated:animatedCopy focusAnimationCoordinator:coordinatorCopy];
  v9 = [(_UIStackedImageContainerView *)self imageOverlayView:v10.receiver];
  [v9 vui_setSelected:(state >> 3) & 1 animated:animatedCopy withAnimationCoordinator:coordinatorCopy];
}

- (void)setPressed:(BOOL)pressed
{
  v3.receiver = self;
  v3.super_class = VUILayeredImageContainerView;
  [(_UIStackedImageContainerView *)&v3 setPressed:pressed];
}

- (void)_setSelectionStyle:(int64_t)style
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setSelectionStyle:style];
}

- (void)_loadLayeredImage
{
  if (![(VUILayeredImageProxy *)self->_layeredImageProxy isLoading])
  {
    constructedStackImage = [(_UIStackedImageContainerView *)self constructedStackImage];
    stackImage = [(_UIStackedImageContainerView *)self stackImage];
    [(_UIStackedImageContainerView *)self setConstructedStackImage:0];
    [(_UIStackedImageContainerView *)self setStackImage:0];
    [(VUILayeredImageContainerView *)self setLoadedImage:0];
    if (constructedStackImage)
    {
      VUIDeferredRelease(constructedStackImage);
    }

    if (stackImage)
    {
      VUIDeferredRelease(stackImage);
    }

    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_layeredImageProxy);
    [(VUILayeredImageContainerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v9 = objc_loadWeakRetained(&from);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__VUILayeredImageContainerView__loadLayeredImage__block_invoke;
    v10[3] = &unk_279E21938;
    objc_copyWeak(&v11, &location);
    v12[1] = v6;
    v12[2] = v8;
    objc_copyWeak(v12, &from);
    [v9 loadWithCompletion:v10];

    objc_destroyWeak(v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __49__VUILayeredImageContainerView__loadLayeredImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v8 = [v6 code];

    if (v8 == -999)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained config];
  if (v5)
  {
    if (+[VUICoreUtilities canHandleDecodingOnRenderThread])
    {
      [VUINamedLayerStack namedLayerStackWithImage:v5];
    }

    else
    {
      [v10 cornerRadius];
      [VUINamedLayerStack decodedNamedLayerStackWithImage:v5 size:*(a1 + 48) cornerRadius:*(a1 + 56), v12];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__VUILayeredImageContainerView__loadLayeredImage__block_invoke_2;
  v14[3] = &unk_279E21910;
  objc_copyWeak(&v17, (a1 + 32));
  objc_copyWeak(&v18, (a1 + 40));
  v15 = v11;
  v16 = v5;
  v13 = v11;
  dispatch_async(MEMORY[0x277D85CD0], v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);

LABEL_12:
}

void __49__VUILayeredImageContainerView__loadLayeredImage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = v2;
  if (WeakRetained && WeakRetained[56] == v2)
  {
    [WeakRetained setLayeredImageLoaded:1];
    [WeakRetained setConstructedStackImage:*(a1 + 32)];
    v4 = *(a1 + 32) ? 0 : *(a1 + 40);
    [WeakRetained setStackImage:v4];
    if (+[VUICoreUtilities canHandleDecodingOnRenderThread])
    {
      [WeakRetained setLoadedImage:*(a1 + 40)];
    }
  }
}

@end