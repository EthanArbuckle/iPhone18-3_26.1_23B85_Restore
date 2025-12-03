@interface TVRUIHintsGlyphView
- (CGSize)intrinsicContentSize;
- (TVRUIHintsGlyphView)initWithImage:(id)image styleProvider:(id)provider;
- (void)layoutSubviews;
@end

@implementation TVRUIHintsGlyphView

- (TVRUIHintsGlyphView)initWithImage:(id)image styleProvider:(id)provider
{
  imageCopy = image;
  providerCopy = provider;
  [imageCopy size];
  v9 = v8;
  [imageCopy size];
  v11 = v10;
  v27.receiver = self;
  v27.super_class = TVRUIHintsGlyphView;
  v12 = [(TVRUIHintsGlyphView *)&v27 initWithFrame:0.0, 0.0, v9, v10];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_styleProvider, provider);
    [imageCopy size];
    v15 = v14 * 0.5;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(TVRUIHintsGlyphView *)v13 setBackgroundColor:clearColor];

    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v9, v11}];
    backgroundView = v13->_backgroundView;
    v13->_backgroundView = v17;

    layer = [(UIView *)v13->_backgroundView layer];
    [layer setCornerRadius:v15];

    backgroundColor = [(TVRUIHintsStyleProvider *)v13->_styleProvider backgroundColor];
    [(UIView *)v13->_backgroundView setBackgroundColor:backgroundColor];

    backgroundFilters = [(TVRUIHintsStyleProvider *)v13->_styleProvider backgroundFilters];
    layer2 = [(UIView *)v13->_backgroundView layer];
    [layer2 setFilters:backgroundFilters];

    [(TVRUIHintsGlyphView *)v13 addSubview:v13->_backgroundView];
    v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, v9, v11}];
    imageView = v13->_imageView;
    v13->_imageView = v23;

    [(UIImageView *)v13->_imageView setImage:imageCopy];
    [(UIImageView *)v13->_imageView setContentMode:4];
    [(UIImageView *)v13->_imageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    primaryTintColor = [(TVRUIHintsStyleProvider *)v13->_styleProvider primaryTintColor];
    [(TVRUIHintsGlyphView *)v13 setTintColor:primaryTintColor];

    [(TVRUIHintsGlyphView *)v13 addSubview:v13->_imageView];
  }

  return v13;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TVRUIHintsGlyphView;
  [(TVRUIHintsGlyphView *)&v21 layoutSubviews];
  [(TVRUIHintsGlyphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundView = [(TVRUIHintsGlyphView *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, v10}];

  [(TVRUIHintsGlyphView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  imageView = [(TVRUIHintsGlyphView *)self imageView];
  [imageView setFrame:{v13, v15, v17, v19}];
}

- (CGSize)intrinsicContentSize
{
  imageView = [(TVRUIHintsGlyphView *)self imageView];
  [imageView bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end