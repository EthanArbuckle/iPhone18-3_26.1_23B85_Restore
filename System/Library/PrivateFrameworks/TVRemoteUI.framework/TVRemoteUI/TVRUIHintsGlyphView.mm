@interface TVRUIHintsGlyphView
- (CGSize)intrinsicContentSize;
- (TVRUIHintsGlyphView)initWithImage:(id)a3 styleProvider:(id)a4;
- (void)layoutSubviews;
@end

@implementation TVRUIHintsGlyphView

- (TVRUIHintsGlyphView)initWithImage:(id)a3 styleProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 size];
  v9 = v8;
  [v6 size];
  v11 = v10;
  v27.receiver = self;
  v27.super_class = TVRUIHintsGlyphView;
  v12 = [(TVRUIHintsGlyphView *)&v27 initWithFrame:0.0, 0.0, v9, v10];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_styleProvider, a4);
    [v6 size];
    v15 = v14 * 0.5;
    v16 = [MEMORY[0x277D75348] clearColor];
    [(TVRUIHintsGlyphView *)v13 setBackgroundColor:v16];

    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v9, v11}];
    backgroundView = v13->_backgroundView;
    v13->_backgroundView = v17;

    v19 = [(UIView *)v13->_backgroundView layer];
    [v19 setCornerRadius:v15];

    v20 = [(TVRUIHintsStyleProvider *)v13->_styleProvider backgroundColor];
    [(UIView *)v13->_backgroundView setBackgroundColor:v20];

    v21 = [(TVRUIHintsStyleProvider *)v13->_styleProvider backgroundFilters];
    v22 = [(UIView *)v13->_backgroundView layer];
    [v22 setFilters:v21];

    [(TVRUIHintsGlyphView *)v13 addSubview:v13->_backgroundView];
    v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, v9, v11}];
    imageView = v13->_imageView;
    v13->_imageView = v23;

    [(UIImageView *)v13->_imageView setImage:v6];
    [(UIImageView *)v13->_imageView setContentMode:4];
    [(UIImageView *)v13->_imageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v25 = [(TVRUIHintsStyleProvider *)v13->_styleProvider primaryTintColor];
    [(TVRUIHintsGlyphView *)v13 setTintColor:v25];

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
  v11 = [(TVRUIHintsGlyphView *)self backgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(TVRUIHintsGlyphView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(TVRUIHintsGlyphView *)self imageView];
  [v20 setFrame:{v13, v15, v17, v19}];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(TVRUIHintsGlyphView *)self imageView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end