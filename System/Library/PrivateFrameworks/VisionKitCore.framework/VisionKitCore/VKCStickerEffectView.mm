@interface VKCStickerEffectView
- (BOOL)boundsIncludeStroke;
- (BOOL)isPaused;
- (CGSize)intrinsicContentSize;
- (UIImage)_image;
- (UIImage)image;
- (VKCStickerEffect)effect;
- (VKCStickerEffectView)init;
- (VKCStickerEffectView)initWithDevice:(id)a3;
- (VKCStickerVideoDecoder)videoDecoder;
- (double)curlPosition;
- (id)imageWithImage:(id)a3 scaledToSize:(CGSize)a4;
- (void)didMoveToWindow;
- (void)displayLinkFired:(id)a3;
- (void)layoutSubviews;
- (void)playSettlingAnimation;
- (void)setBoundsIncludeStroke:(BOOL)a3;
- (void)setCurlPosition:(double)a3;
- (void)setEffect:(id)a3;
- (void)setImage:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setVideoData:(id)a3;
- (void)set_image:(id)a3;
- (void)snapshotWithCompletionHandler:(id)a3;
- (void)startPlaybackIfNecessary;
@end

@implementation VKCStickerEffectView

- (VKCStickerEffectView)init
{
  v3 = MTLCreateSystemDefaultDevice();
  v4 = [(VKCStickerEffectView *)self initWithDevice:v3];

  return v4;
}

- (VKCStickerEffectView)initWithDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKCStickerEffectView;
  v5 = [(VKCStickerEffectView *)&v9 init];
  if (v5)
  {
    v6 = [[VKCStickerEffectViewInternal alloc] initWithDevice:v4];
    internalView = v5->_internalView;
    v5->_internalView = v6;

    [(VKCStickerEffectViewInternal *)v5->_internalView setAutoresizingMask:18];
    [(VKCStickerEffectView *)v5 bounds];
    [(VKCStickerEffectViewInternal *)v5->_internalView setFrame:?];
    [(VKCStickerEffectView *)v5 addSubview:v5->_internalView];
  }

  return v5;
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = VKCStickerEffectView;
  [(VKCStickerEffectView *)&v11 didMoveToWindow];
  v3 = [(VKCStickerEffectView *)self window];
  v4 = [v3 screen];

  if (v4)
  {
    v5 = [v4 displayLinkWithTarget:self selector:sel_displayLinkFired_];
    displayLink = self->_displayLink;
    self->_displayLink = v5;

    v7 = self->_displayLink;
    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink setPaused:1];
    [(VKCStickerEffectView *)self startPlaybackIfNecessary];
  }

  else
  {
    v9 = self->_displayLink;
    if (v9)
    {
      [(CADisplayLink *)v9 invalidate];
      v10 = self->_displayLink;
      self->_displayLink = 0;
    }
  }
}

- (void)startPlaybackIfNecessary
{
  if (![(VKCStickerEffectView *)self isPaused]&& ([(VKCStickerEffectView *)self videoData], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = self->_displayLink, v3, v4))
  {
    [(CADisplayLink *)self->_displayLink setPaused:0];
    self->_startTimeInterval = CACurrentMediaTime();
  }

  else
  {
    displayLink = self->_displayLink;
    if (displayLink)
    {

      [(CADisplayLink *)displayLink setPaused:1];
    }
  }
}

- (void)displayLinkFired:(id)a3
{
  [a3 targetTimestamp];
  v5 = v4 - self->_startTimeInterval;
  v6 = [(VKCStickerEffectView *)self videoDecoder];
  v7 = [(VKCStickerVideoDecoder *)v6 frameForTargetTimestamp:v5];

  v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v7];
  [(VKCStickerEffectView *)self set_image:v8];
}

- (VKCStickerVideoDecoder)videoDecoder
{
  videoDecoder = self->_videoDecoder;
  if (!videoDecoder)
  {
    v4 = objc_alloc_init(VKCStickerVideoDecoder);
    v5 = self->_videoDecoder;
    self->_videoDecoder = v4;

    [(VKCStickerVideoDecoder *)&self->_videoDecoder->super.isa setDelegate:?];
    videoDecoder = self->_videoDecoder;
  }

  return videoDecoder;
}

- (void)setEffect:(id)a3
{
  v5 = [a3 internalEffect];
  v4 = [(VKCStickerEffectView *)self internalView];
  [v4 setEffect:v5];
}

- (VKCStickerEffect)effect
{
  v2 = [(VKCStickerEffectView *)self internalView];
  v3 = [v2 effect];
  v4 = [VKCStickerEffect effectFromInternalEffect:v3];

  return v4;
}

- (void)setVideoData:(id)a3
{
  v7 = a3;
  if (v7)
  {
    fullSizeImage = self->_fullSizeImage;
    self->_fullSizeImage = 0;
  }

  [(CADisplayLink *)self->_displayLink setPaused:1];
  v5 = [(VKCStickerEffectView *)self videoDecoder];
  [(VKCStickerVideoDecoder *)v5 setVideoData:v7];

  v6 = [(VKCStickerEffectView *)self internalView];
  [v6 setReRenderOnMotion:v7 == 0];
}

- (void)set_image:(id)a3
{
  v4 = a3;
  v5 = [(VKCStickerEffectView *)self internalView];
  [v5 setImage:v4];
}

- (UIImage)_image
{
  v2 = [(VKCStickerEffectView *)self internalView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = VKDynamicCast(v5, v4);
  if (v4 && !v6)
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(VKCStickerEffectView *)v4 setImage:v9];
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unsupported Image Format" reason:*MEMORY[0x1E695D940] userInfo:0];
    objc_exception_throw(v10);
  }

  fullSizeImage = self->_fullSizeImage;
  self->_fullSizeImage = v4;
  v11 = v6;
  v8 = v4;

  [(CADisplayLink *)self->_displayLink setPaused:1];
  [(VKCStickerEffectView *)self setVideoData:0];
  [(VKCStickerEffectView *)self setPaused:[(VKCStickerEffectView *)self isPaused]];
  self->_size = *MEMORY[0x1E695F060];
  [(VKCStickerEffectView *)self setNeedsLayout];
}

- (id)imageWithImage:(id)a3 scaledToSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 size];
  VKMScaleSizeWithinSize(v7, v8, width, height);
  v23.origin.x = VKMRectWithSize();
  x = v23.origin.x;
  y = v23.origin.y;
  v11 = v23.size.width;
  v12 = v23.size.height;
  if (!CGRectIsEmpty(v23))
  {
    v13 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithBounds:{x, y, v11, v12}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__VKCStickerEffectView_imageWithImage_scaledToSize___block_invoke;
    v16[3] = &unk_1E7BE4E60;
    v17 = v6;
    v18 = x;
    v19 = y;
    v20 = v11;
    v21 = v12;
    v14 = v6;
    v6 = [v13 imageWithActions:v16];
  }

  return v6;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = VKCStickerEffectView;
  [(VKCStickerEffectView *)&v7 layoutSubviews];
  [(VKCStickerEffectView *)self bounds];
  if (v3 != self->_size.width || v4 != self->_size.height)
  {
    self->_size.width = v3;
    self->_size.height = v4;
    if (self->_fullSizeImage)
    {
      v6 = [(VKCStickerEffectView *)self imageWithImage:v3 scaledToSize:v4];
      [(VKCStickerEffectView *)self set_image:v6];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(VKCStickerEffectView *)self internalView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIImage)image
{
  v3 = [(VKCStickerEffectView *)self videoData];
  if (v3)
  {
    fullSizeImage = 0;
  }

  else
  {
    fullSizeImage = self->_fullSizeImage;
  }

  v5 = fullSizeImage;

  return fullSizeImage;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKCStickerEffectView *)self internalView];
  [v5 setIsPaused:v3];

  [(VKCStickerEffectView *)self startPlaybackIfNecessary];
}

- (BOOL)isPaused
{
  v2 = [(VKCStickerEffectView *)self internalView];
  v3 = [v2 isPaused];

  return v3;
}

- (void)setCurlPosition:(double)a3
{
  v3 = a3;
  v5 = [(VKCStickerEffectView *)self internalView];
  *&v4 = v3;
  [v5 setCurlPosition:v4];
}

- (double)curlPosition
{
  v2 = [(VKCStickerEffectView *)self internalView];
  [v2 curlPosition];
  v4 = v3;

  return v4;
}

- (void)setBoundsIncludeStroke:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCStickerEffectView *)self internalView];
  [v4 setBoundsIncludeStroke:v3];
}

- (BOOL)boundsIncludeStroke
{
  v2 = [(VKCStickerEffectView *)self internalView];
  v3 = [v2 boundsIncludeStroke];

  return v3;
}

- (void)snapshotWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(VKCStickerEffectView *)self _image];
  if (v5)
  {
  }

  else if (self->_fullSizeImage)
  {
    [(VKCStickerEffectView *)self set_image:?];
  }

  v6 = [(VKCStickerEffectView *)self internalView];
  [v6 snapshotWithCompletionHandler:v4];
}

- (void)playSettlingAnimation
{
  v2 = [(VKCStickerEffectView *)self internalView];
  [v2 playSettlingAnimation];
}

- (void)setImage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Trying to pass image of class: %@, but is not a UIImage", &v5, 0xCu);
}

@end