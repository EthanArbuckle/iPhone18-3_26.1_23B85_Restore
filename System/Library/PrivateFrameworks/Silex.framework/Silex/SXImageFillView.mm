@interface SXImageFillView
- (CGRect)contentFrame;
- (CGRect)fillFrameWithBoundingSize:(CGSize)a3;
- (SXAnimatedImage)animatedImage;
- (SXImageFillView)initWithImageFill:(id)a3 imageResource:(id)a4 imageViewFactory:(id)a5;
- (UIImage)image;
- (void)dealloc;
- (void)layoutSubviews;
- (void)load;
- (void)pause;
- (void)play;
- (void)setContentFrame:(CGRect)a3;
@end

@implementation SXImageFillView

- (SXImageFillView)initWithImageFill:(id)a3 imageResource:(id)a4 imageViewFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = SXImageFillView;
  v12 = [(SXFillView *)&v21 initWithFill:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageFill, a3);
    objc_storeStrong(&v13->_imageResource, a4);
    v14 = [v11 imageViewForResource:v10];
    imageView = v13->_imageView;
    v13->_imageView = v14;

    v16 = v13->_imageView;
    v17 = [MEMORY[0x1E69DC888] clearColor];
    [(SXImageView *)v16 setBackgroundColor:v17];

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
  v3 = [(SXImageFillView *)self clippingView];
  [(SXImageFillView *)self bounds];
  [v3 setFrame:?];
}

- (CGRect)fillFrameWithBoundingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SXImageFillView *)self imageResource];
  [v6 dimensions];
  v8 = v7;
  v10 = v9;

  v11 = [(SXFillView *)self fill];
  v12 = [v11 fillMode];

  v13 = [(SXFillView *)self fill];
  v14 = [v13 horizontalAlignment];

  v15 = [(SXFillView *)self fill];
  v16 = [v15 verticalAlignment];

  [SXFillPositioning frameForFillWithDimensions:v12 withinBounds:v14 fillMode:v16 horizontalAlignment:v8 verticalAlignment:v10, width, height];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (UIImage)image
{
  v2 = [(SXImageFillView *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (SXAnimatedImage)animatedImage
{
  v2 = [(SXImageFillView *)self imageView];
  v3 = [v2 animatedImage];

  return v3;
}

- (void)play
{
  v2 = [(SXImageFillView *)self imageView];
  [v2 resume];
}

- (void)pause
{
  v2 = [(SXImageFillView *)self imageView];
  [v2 pause];
}

- (CGRect)contentFrame
{
  v2 = [(SXImageFillView *)self clippingView];
  [v2 contentFrame];
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

- (void)setContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SXImageFillView *)self clippingView];
  [v7 setContentFrame:{x, y, width, height}];
}

@end