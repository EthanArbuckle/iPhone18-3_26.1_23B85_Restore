@interface PXPhotosGridRecentlyDeletedDecorationView
- (CGRect)clippingRect;
- (PXPhotosGridRecentlyDeletedDecorationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
- (void)updateTextBanner;
@end

@implementation PXPhotosGridRecentlyDeletedDecorationView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (self->_userData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_userData, data);
    [(PXPhotosGridRecentlyDeletedDecorationView *)self updateTextBanner];
    dataCopy = v6;
  }
}

- (void)layoutSubviews
{
  [(PXPhotosGridRecentlyDeletedDecorationView *)self bounds];
  [(PXTextBannerView *)self->_textBannerView setFrame:0.0, CGRectGetHeight(v4) + -24.0, v4.size.width, 24.0];
  v3.receiver = self;
  v3.super_class = PXPhotosGridRecentlyDeletedDecorationView;
  [(PXPhotosGridRecentlyDeletedDecorationView *)&v3 layoutSubviews];
}

- (void)updateTextBanner
{
  textBannerView = [(PXPhotosGridRecentlyDeletedDecorationView *)self textBannerView];
  userData = [(PXPhotosGridRecentlyDeletedDecorationView *)self userData];
  asset = [userData asset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v6 = PXPhotoKitLocalizedMessageForRecentlyDeletedDaysRemainingAsset(asset, &v7);
    [textBannerView setText:v6];
    [textBannerView setDestructiveText:v7];
  }

  else
  {
    [textBannerView setText:0];
  }
}

- (PXPhotosGridRecentlyDeletedDecorationView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXPhotosGridRecentlyDeletedDecorationView;
  v3 = [(PXPhotosGridRecentlyDeletedDecorationView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [PXTextBannerView alloc];
    v5 = [(PXTextBannerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PXTextBannerView *)v5 setTextAlignment:1];
    [(PXPhotosGridRecentlyDeletedDecorationView *)v3 addSubview:v5];
    textBannerView = v3->_textBannerView;
    v3->_textBannerView = v5;
  }

  return v3;
}

@end