@interface SXImageFillView
- (CGRect)contentFrame;
- (CGRect)fillFrameWithBoundingSize:(CGSize)size;
- (SXAnimatedImage)animatedImage;
- (SXImageFillView)initWithImageFill:(id)fill imageResource:(id)resource imageViewFactory:(id)factory;
- (UIImage)image;
- (void)dealloc;
- (void)layoutSubviews;
- (void)load;
- (void)pause;
- (void)play;
- (void)setContentFrame:(CGRect)frame;
@end

@implementation SXImageFillView

- (SXImageFillView)initWithImageFill:(id)fill imageResource:(id)resource imageViewFactory:(id)factory
{
  fillCopy = fill;
  resourceCopy = resource;
  factoryCopy = factory;
  v21.receiver = self;
  v21.super_class = SXImageFillView;
  v12 = [(SXFillView *)&v21 initWithFill:fillCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageFill, fill);
    objc_storeStrong(&v13->_imageResource, resource);
    v14 = [factoryCopy imageViewForResource:resourceCopy];
    imageView = v13->_imageView;
    v13->_imageView = v14;

    v16 = v13->_imageView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SXImageView *)v16 setBackgroundColor:clearColor];

    v18 = [[SXClippingView alloc] initWithContentView:v13->_imageView];
    clippingView = v13->_clippingView;
    v13->_clippingView = v18;

    [(SXImageFillView *)v13 addSubview:v13->_clippingView];
  }

  return v13;
}

- (void)dealloc
{
  if ([(SXImageView *)self->_imageView objectHasQualityInterest:self quality:0])
  {
    [(SXImageView *)self->_imageView giveUpInterestForObject:self];
  }

  v3.receiver = self;
  v3.super_class = SXImageFillView;
  [(SXImageFillView *)&v3 dealloc];
}

- (void)load
{
  v5.receiver = self;
  v5.super_class = SXImageFillView;
  [(SXFillView *)&v5 load];
  if (![(SXImageView *)self->_imageView objectHasQualityInterest:self quality:0])
  {
    [(SXImageFillView *)self contentFrame];
    [(SXImageView *)self->_imageView setPreferredImageSize:v3, v4];
    [(SXImageView *)self->_imageView addInterestInImageQuality:0 forObject:self];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SXImageFillView;
  [(SXImageFillView *)&v4 layoutSubviews];
  clippingView = [(SXImageFillView *)self clippingView];
  [(SXImageFillView *)self bounds];
  [clippingView setFrame:?];
}

- (CGRect)fillFrameWithBoundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageResource = [(SXImageFillView *)self imageResource];
  [imageResource dimensions];
  v8 = v7;
  v10 = v9;

  fill = [(SXFillView *)self fill];
  fillMode = [fill fillMode];

  fill2 = [(SXFillView *)self fill];
  horizontalAlignment = [fill2 horizontalAlignment];

  fill3 = [(SXFillView *)self fill];
  verticalAlignment = [fill3 verticalAlignment];

  [SXFillPositioning frameForFillWithDimensions:fillMode withinBounds:horizontalAlignment fillMode:verticalAlignment horizontalAlignment:v8 verticalAlignment:v10, width, height];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (UIImage)image
{
  imageView = [(SXImageFillView *)self imageView];
  image = [imageView image];

  return image;
}

- (SXAnimatedImage)animatedImage
{
  imageView = [(SXImageFillView *)self imageView];
  animatedImage = [imageView animatedImage];

  return animatedImage;
}

- (void)play
{
  imageView = [(SXImageFillView *)self imageView];
  [imageView resume];
}

- (void)pause
{
  imageView = [(SXImageFillView *)self imageView];
  [imageView pause];
}

- (CGRect)contentFrame
{
  clippingView = [(SXImageFillView *)self clippingView];
  [clippingView contentFrame];
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

- (void)setContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  clippingView = [(SXImageFillView *)self clippingView];
  [clippingView setContentFrame:{x, y, width, height}];
}

@end