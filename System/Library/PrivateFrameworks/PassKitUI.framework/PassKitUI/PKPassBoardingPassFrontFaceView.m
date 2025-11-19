@interface PKPassBoardingPassFrontFaceView
- (id)_transitGlyphForTransitType:(int64_t)a3;
- (id)templateForLayoutMode:(int64_t)a3;
- (void)createBodyContentViews;
- (void)layoutSubviews;
- (void)setShowsBarcodeView:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation PKPassBoardingPassFrontFaceView

- (id)templateForLayoutMode:(int64_t)a3
{
  PKPassFrontFaceContentSize();
  v4 = v3;
  v5 = objc_alloc_init(PKPassFaceTemplate);
  [(PKPassFaceTemplate *)v5 setBarcodeBottomInset:14.0];
  [(PKPassFaceTemplate *)v5 setBarcodeMaxSize:290.0, 188.0];
  v6 = [(PKPassFaceTemplate *)v5 defaultFieldTemplate];
  [v6 setTextAlignment:0];

  v7 = [(PKPassFaceTemplate *)v5 defaultFieldTemplate];
  v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:11.0];
  [v7 setLabelFont:v8];

  v9 = objc_alloc_init(PKPassBucketTemplate);
  [(PKPassBucketTemplate *)v9 setBucketAlignment:3];
  v10 = v4 + -30.0;
  [(PKPassBucketTemplate *)v9 setBucketRect:15.0, 68.0, v10, 60.0];
  [(PKPassBucketTemplate *)v9 setMinFieldPadding:38.0];
  [(PKPassBucketTemplate *)v9 setMaxFields:2];
  v11 = [(PKPassBucketTemplate *)v9 defaultFieldTemplate];
  v12 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:40.0];
  [v11 setValueFont:v12];

  v13 = [(PKPassBucketTemplate *)v9 defaultFieldTemplate];
  [v13 setVerticalPadding:-3.0];

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
  v17 = [(PKPassBucketTemplate *)v16 defaultFieldTemplate];
  v18 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  [v17 setValueFont:v18];

  v19 = [(PKPassBucketTemplate *)v16 defaultFieldTemplate];
  [v19 setVerticalPadding:-2.0];

  [(PKPassFaceTemplate *)v5 addBucketTemplate:v16];
  v20 = objc_alloc_init(PKPassBucketTemplate);

  [(PKPassBucketTemplate *)v20 setBucketAlignment:2];
  [(PKPassBucketTemplate *)v20 setBucketRect:15.0, 137.0, v10, 40.0];
  [(PKPassBucketTemplate *)v20 setMinFieldPadding:10.0];
  v21 = [(PKPassBucketTemplate *)v20 defaultFieldTemplate];
  v22 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  [v21 setValueFont:v22];

  v23 = [(PKPassBucketTemplate *)v20 defaultFieldTemplate];
  [v23 setVerticalPadding:-2.0];

  [(PKPassBucketTemplate *)v20 setMaxFields:5];
  [(PKPassFaceTemplate *)v5 addBucketTemplate:v20];

  return v5;
}

- (void)createBodyContentViews
{
  v15.receiver = self;
  v15.super_class = PKPassBoardingPassFrontFaceView;
  [(PKPassFrontFaceView *)&v15 createBodyContentViews];
  v3 = [(PKPassFaceView *)self pass];
  v4 = -[PKPassBoardingPassFrontFaceView _transitGlyphForTransitType:](self, "_transitGlyphForTransitType:", [v3 transitType]);

  v5 = [(PKPassFaceView *)self colorProfile];
  v6 = [v5 labelImageForGlyph:v4];

  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
  transitImageView = self->_transitImageView;
  self->_transitImageView = v7;

  [(PKPassFrontFaceView *)self insertContentView:self->_transitImageView ofType:2];
  v9 = [(PKPassFaceView *)self pass];
  v10 = [v9 footerImage];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v12 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v10];
    v13 = [v11 initWithImage:v12];
    footerImageView = self->_footerImageView;
    self->_footerImageView = v13;

    if ([(PKPassFrontFaceView *)self showsBarcodeView])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_footerImageView ofType:2];
    }
  }
}

- (void)setShowsBarcodeView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PKPassFrontFaceView *)self showsBarcodeView];
  v10.receiver = self;
  v10.super_class = PKPassBoardingPassFrontFaceView;
  [(PKPassFrontFaceView *)&v10 setShowsBarcodeView:v5 animated:v4];
  if (v7 != v5 && self->_footerImageView)
  {
    v8 = [(PKPassFrontFaceView *)self showsBarcodeView];
    footerImageView = self->_footerImageView;
    if (v8)
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
  v3 = [(PKPassFaceView *)self contentView];
  [v3 bounds];
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

- (id)_transitGlyphForTransitType:(int64_t)a3
{
  if (a3 > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E80123B0[a3];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58]];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3 withConfiguration:v4];
  }

  return v5;
}

@end