@interface PKBillPaymentRingGradientState
- (PKBillPaymentRingGradientState)initWithStartColor:(id)color endColor:(id)endColor;
@end

@implementation PKBillPaymentRingGradientState

- (PKBillPaymentRingGradientState)initWithStartColor:(id)color endColor:(id)endColor
{
  colorCopy = color;
  endColorCopy = endColor;
  v12.receiver = self;
  v12.super_class = PKBillPaymentRingGradientState;
  v9 = [(PKBillPaymentRingGradientState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startColor, color);
    objc_storeStrong(&v10->_endColor, endColor);
  }

  return v10;
}

@end