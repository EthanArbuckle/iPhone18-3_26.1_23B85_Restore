@interface PKPassBarcodeFooterView
- (void)layoutSubviews;
@end

@implementation PKPassBarcodeFooterView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPassBarcodeFooterView;
  [(PKPassFooterContentView *)&v4 layoutSubviews];
  if (PKUIGetMinScreenType() <= 3)
  {
    v3 = [(PKPassFooterContentView *)self bottomRule];
    [v3 frame];
    [v3 setFrame:?];
  }
}

@end