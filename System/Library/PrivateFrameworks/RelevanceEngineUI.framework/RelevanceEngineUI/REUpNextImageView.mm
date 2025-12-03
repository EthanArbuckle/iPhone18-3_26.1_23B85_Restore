@interface REUpNextImageView
- (BOOL)_hasMultipartImages;
- (CGSize)intrinsicContentSize;
- (REUpNextImageView)initWithFrame:(CGRect)frame;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
- (void)setImageProvider:(id)provider;
- (void)setOverrideImage:(id)image;
@end

@implementation REUpNextImageView

- (REUpNextImageView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = REUpNextImageView;
  v3 = [(REUpNextImageView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    foregroundImageView = v3->_foregroundImageView;
    v3->_foregroundImageView = v9;

    [(UIImageView *)v3->_foregroundImageView setContentMode:4];
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    foregroundAccentImageView = v3->_foregroundAccentImageView;
    v3->_foregroundAccentImageView = v11;

    [(UIImageView *)v3->_foregroundAccentImageView setContentMode:4];
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    backgroundImageView = v3->_backgroundImageView;
    v3->_backgroundImageView = v13;

    [(UIImageView *)v3->_backgroundImageView setContentMode:4];
    [(REUpNextImageView *)v3 addSubview:v3->_backgroundImageView];
    [(REUpNextImageView *)v3 addSubview:v3->_foregroundImageView];
    [(REUpNextImageView *)v3 addSubview:v3->_foregroundAccentImageView];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  overrideImage = self->_overrideImage;
  if (overrideImage)
  {
    [(UIImage *)overrideImage size];
    if (v4 >= 3.0 || ([(UIImage *)self->_overrideImage size], v5 >= 5.0))
    {
      [(UIImage *)self->_overrideImage size];
      v7 = v8;
      v6 = v9;
    }

    else
    {
      v6 = *MEMORY[0x277D77260];
      v7 = 2.5;
    }
  }

  else if (self->_imageProvider)
  {
    if ([(REUpNextImageView *)self _hasMultipartImages])
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x3010000000;
      v23 = "";
      v24 = *MEMORY[0x277CBF3A8];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __41__REUpNextImageView_intrinsicContentSize__block_invoke;
      v19[3] = &unk_279AF63F0;
      v19[4] = &v20;
      v10 = MEMORY[0x2667182D0](v19);
      twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
      (v10)[2](v10, twoPieceImageBackground);

      twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
      (v10)[2](v10, twoPieceImageForeground);

      foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
      (v10)[2](v10, foregroundAccentImage);

      v7 = v21[4];
      v6 = v21[5];

      _Block_object_dispose(&v20, 8);
    }

    else
    {
      onePieceImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
      [onePieceImage size];
      v7 = v15;
      v6 = v16;
    }
  }

  else
  {
    v7 = *MEMORY[0x277D77260];
    v6 = *MEMORY[0x277D77260];
  }

  v17 = v7;
  v18 = v6;
  result.height = v18;
  result.width = v17;
  return result;
}

void __41__REUpNextImageView_intrinsicContentSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 32);
  v4 = a2;
  [v4 size];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 32) = v5;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  [v4 size];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  *(*(*(a1 + 32) + 8) + 40) = v9;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = REUpNextImageView;
  [(REUpNextImageView *)&v6 layoutSubviews];
  foregroundAccentImageView = self->_foregroundAccentImageView;
  [(REUpNextImageView *)self bounds];
  [(UIImageView *)foregroundAccentImageView setFrame:?];
  foregroundImageView = self->_foregroundImageView;
  [(REUpNextImageView *)self bounds];
  [(UIImageView *)foregroundImageView setFrame:?];
  backgroundImageView = self->_backgroundImageView;
  [(REUpNextImageView *)self bounds];
  [(UIImageView *)backgroundImageView setFrame:?];
}

- (BOOL)_hasMultipartImages
{
  twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
  if (twoPieceImageBackground)
  {
    twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
    if (twoPieceImageForeground)
    {
      v5 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
  v5 = foregroundAccentImage != 0;

  if (twoPieceImageBackground)
  {
    twoPieceImageForeground = 0;
    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

- (void)setImageProvider:(id)provider
{
  providerCopy = provider;
  if (self->_imageProvider != providerCopy)
  {
    v20 = providerCopy;
    overrideImage = self->_overrideImage;
    self->_overrideImage = 0;

    objc_storeStrong(&self->_imageProvider, provider);
    _hasMultipartImages = [(REUpNextImageView *)self _hasMultipartImages];
    [(UIImageView *)self->_backgroundImageView setHidden:0];
    foregroundImageView = self->_foregroundImageView;
    if (_hasMultipartImages)
    {
      [(UIImageView *)foregroundImageView setHidden:0];
      [(UIImageView *)self->_foregroundAccentImageView setHidden:0];
      v9 = self->_foregroundImageView;
      twoPieceImageForeground = [(CLKImageProvider *)self->_imageProvider twoPieceImageForeground];
      v11 = [twoPieceImageForeground imageWithRenderingMode:2];
      [(UIImageView *)v9 setImage:v11];

      backgroundImageView = self->_backgroundImageView;
      twoPieceImageBackground = [(CLKImageProvider *)self->_imageProvider twoPieceImageBackground];
      v14 = [twoPieceImageBackground imageWithRenderingMode:2];
      [(UIImageView *)backgroundImageView setImage:v14];

      foregroundAccentImageView = self->_foregroundAccentImageView;
      foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider foregroundAccentImage];
      v17 = foregroundAccentImage;
      v18 = 1;
    }

    else
    {
      [(UIImageView *)foregroundImageView setHidden:1];
      [(UIImageView *)self->_foregroundAccentImageView setHidden:1];
      foregroundAccentImageView = self->_backgroundImageView;
      foregroundAccentImage = [(CLKImageProvider *)self->_imageProvider onePieceImage];
      v17 = foregroundAccentImage;
      v18 = 2;
    }

    v19 = [foregroundAccentImage imageWithRenderingMode:v18];
    [(UIImageView *)foregroundAccentImageView setImage:v19];

    [(REUpNextImageView *)self _updateColors];
    [(REUpNextImageView *)self invalidateIntrinsicContentSize];
    providerCopy = v20;
  }
}

- (void)setOverrideImage:(id)image
{
  imageCopy = image;
  if (self->_overrideImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_overrideImage, image);
    imageProvider = self->_imageProvider;
    self->_imageProvider = 0;

    [(UIImageView *)self->_foregroundImageView setHidden:1];
    [(UIImageView *)self->_backgroundImageView setHidden:1];
    [(UIImageView *)self->_foregroundAccentImageView setHidden:0];
    [(UIImageView *)self->_foregroundAccentImageView setImage:self->_overrideImage];
    [(REUpNextImageView *)self invalidateIntrinsicContentSize];
    imageCopy = v7;
  }
}

- (void)_updateColors
{
  tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
  fallbackTintColor = tintColor;
  if (tintColor || (fallbackTintColor = self->_fallbackTintColor) != 0)
  {
    whiteColor = fallbackTintColor;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v8 = whiteColor;

  foregroundImageView = self->_foregroundImageView;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [(UIImageView *)foregroundImageView setTintColor:whiteColor2];

  [(UIImageView *)self->_backgroundImageView setTintColor:v8];
}

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = REUpNextImageView;
  [(REUpNextImageView *)&v5 setContentMode:?];
  [(UIImageView *)self->_foregroundImageView setContentMode:mode];
  [(UIImageView *)self->_backgroundImageView setContentMode:mode];
  [(UIImageView *)self->_foregroundAccentImageView setContentMode:mode];
}

@end