@interface PKPassBoardingPassFrontFaceView
- (id)_transitGlyphForTransitType:(int64_t)type;
- (id)templateForLayoutMode:(int64_t)mode;
- (void)createBodyContentViews;
- (void)layoutSubviews;
- (void)setShowsBarcodeView:(BOOL)view animated:(BOOL)animated;
@end

@implementation PKPassBoardingPassFrontFaceView

- (id)templateForLayoutMode:(int64_t)mode
{
  PKPassFrontFaceContentSize();
  v4 = v3;
  v5 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v5 setBarcodeBottomInset:14.0];
  [(PKPassFaceTemplate *)v5 setBarcodeMaxSize:290.0, 188.0];
  defaultFieldTemplate = [(PKPassFaceTemplate *)v5 defaultFieldTemplate];
  [defaultFieldTemplate setTextAlignment:0];

  defaultFieldTemplate2 = [(PKPassFaceTemplate *)v5 defaultFieldTemplate];
  v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [defaultFieldTemplate2 setLabelFont:v8];

  v9 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v9 setBucketAlignment:3];
  v10 = v4 + -30.0;
  [(PKPassBucketTemplate *)v9 setBucketRect:15.0, 68.0, v10, 60.0];
  [(PKPassBucketTemplate *)v9 setMinFieldPadding:38.0];
  [(PKPassBucketTemplate *)v9 setMaxFields:2];
  defaultFieldTemplate3 = [(PKPassBucketTemplate *)v9 defaultFieldTemplate];
  v12 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:40.0];
  [defaultFieldTemplate3 setValueFont:v12];

  defaultFieldTemplate4 = [(PKPassBucketTemplate *)v9 defaultFieldTemplate];
  [defaultFieldTemplate4 setVerticalPadding:-3.0];

  v14 = [PKPassFieldTemplate fieldTemplateWithTextAlignment:0];
  [(PKPassBucketTemplate *)v9 addFieldTemplate:v14];

  v15 = [PKPassFieldTemplate fieldTemplateWithTextAlignment:2];
  [(PKPassBucketTemplate *)v9 addFieldTemplate:v15];

  [(PKPassFaceTemplate *)v5 addBucketTemplate:v9];
  v16 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v16 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v16 setBucketRect:15.0, 192.0, v10, 40.0];
  [(PKPassBucketTemplate *)v16 setMinFieldPadding:10.0];
  [(PKPassBucketTemplate *)v16 setMaxFields:4];
  defaultFieldTemplate5 = [(PKPassBucketTemplate *)v16 defaultFieldTemplate];
  v18 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  [defaultFieldTemplate5 setValueFont:v18];

  defaultFieldTemplate6 = [(PKPassBucketTemplate *)v16 defaultFieldTemplate];
  [defaultFieldTemplate6 setVerticalPadding:-2.0];

  [(PKPassFaceTemplate *)v5 addBucketTemplate:v16];
  v20 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v20 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v20 setBucketRect:15.0, 137.0, v10, 40.0];
  [(PKPassBucketTemplate *)v20 setMinFieldPadding:10.0];
  defaultFieldTemplate7 = [(PKPassBucketTemplate *)v20 defaultFieldTemplate];
  v22 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  [defaultFieldTemplate7 setValueFont:v22];

  defaultFieldTemplate8 = [(PKPassBucketTemplate *)v20 defaultFieldTemplate];
  [defaultFieldTemplate8 setVerticalPadding:-2.0];

  [(PKPassBucketTemplate *)v20 setMaxFields:5];
  [(PKPassFaceTemplate *)v5 addBucketTemplate:v20];

  return v5;
}

- (void)createBodyContentViews
{
  v15.receiver = self;
  v15.super_class = PKPassBoardingPassFrontFaceView;
  [(PKPassFrontFaceView *)&v15 createBodyContentViews];
  pass = [(PKPassFaceView *)self pass];
  v4 = -[PKPassBoardingPassFrontFaceView _transitGlyphForTransitType:](self, "_transitGlyphForTransitType:", [pass transitType]);

  colorProfile = [(PKPassFaceView *)self colorProfile];
  v6 = [colorProfile labelImageForGlyph:v4];

  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
  transitImageView = self->_transitImageView;
  self->_transitImageView = v7;

  [(PKPassFrontFaceView *)self insertContentView:self->_transitImageView ofType:2];
  pass2 = [(PKPassFaceView *)self pass];
  footerImage = [pass2 footerImage];

  if (footerImage)
  {
    v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v12 = [MEMORY[0x1E69DCAB8] imageWithPKImage:footerImage];
    v13 = [v11 initWithImage:v12];
    footerImageView = self->_footerImageView;
    self->_footerImageView = v13;

    if ([(PKPassFrontFaceView *)self showsBarcodeView])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_footerImageView ofType:2];
    }
  }
}

- (void)setShowsBarcodeView:(BOOL)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  showsBarcodeView = [(PKPassFrontFaceView *)self showsBarcodeView];
  v10.receiver = self;
  v10.super_class = PKPassBoardingPassFrontFaceView;
  [(PKPassFrontFaceView *)&v10 setShowsBarcodeView:viewCopy animated:animatedCopy];
  if (showsBarcodeView != viewCopy && self->_footerImageView)
  {
    showsBarcodeView2 = [(PKPassFrontFaceView *)self showsBarcodeView];
    footerImageView = self->_footerImageView;
    if (showsBarcodeView2)
    {
      [(PKPassFrontFaceView *)self insertContentView:footerImageView ofType:2];
    }

    else
    {
      [(PKPassFaceView *)self removeContentView:footerImageView ofType:2];
    }
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKPassBoardingPassFrontFaceView;
  [(PKPassFrontFaceView *)&v15 layoutSubviews];
  contentView = [(PKPassFaceView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIImageView *)self->_transitImageView frame];
  transitImageView = self->_transitImageView;
  UIRectCenteredXInRect();
  [(UIImageView *)transitImageView setFrame:?];
  footerImageView = self->_footerImageView;
  if (footerImageView)
  {
    [(UIImageView *)footerImageView frame];
    [(PKPassFrontFaceView *)self barcodeFrame];
    if (CGRectIsNull(v16))
    {
      v17.origin.x = v5;
      v17.origin.y = v7;
      v17.size.width = v9;
      v17.size.height = v11;
      CGRectGetMaxY(v17);
    }

    v14 = self->_footerImageView;
    UIRectCenteredXInRect();
    [(UIImageView *)v14 setFrame:?];
  }
}

- (id)_transitGlyphForTransitType:(int64_t)type
{
  if (type > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E80123B0[type];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58]];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3 withConfiguration:v4];
  }

  return v5;
}

@end