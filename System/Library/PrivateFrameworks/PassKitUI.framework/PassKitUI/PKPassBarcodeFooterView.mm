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
    bottomRule = [(PKPassFooterContentView *)self bottomRule];
    [bottomRule frame];
    [bottomRule setFrame:?];
  }
}

@end