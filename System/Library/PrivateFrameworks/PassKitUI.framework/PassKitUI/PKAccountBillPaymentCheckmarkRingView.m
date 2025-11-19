@interface PKAccountBillPaymentCheckmarkRingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAccountBillPaymentCheckmarkRingView)initWithRingView:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKAccountBillPaymentCheckmarkRingView

- (PKAccountBillPaymentCheckmarkRingView)initWithRingView:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountBillPaymentCheckmarkRingView;
  v6 = [(PKAccountBillPaymentCheckmarkRingView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ringView, a3);
    [(PKAccountBillPaymentCheckmarkRingView *)v7 addSubview:v7->_ringView];
    v8 = objc_alloc_init(MEMORY[0x1E69AD2E8]);
    checkmarkLayer = v7->_checkmarkLayer;
    v7->_checkmarkLayer = v8;

    [(LAUICheckmarkLayer *)v7->_checkmarkLayer setLineWidthScale:1.4];
    [(LAUICheckmarkLayer *)v7->_checkmarkLayer setRevealed:0 animated:0];
    v10 = [(PKAccountBillPaymentCheckmarkRingView *)v7 layer];
    [v10 addSublayer:v7->_checkmarkLayer];
  }

  return v7;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = PKAccountBillPaymentCheckmarkRingView;
  [(PKAccountBillPaymentCheckmarkRingView *)&v23 layoutSubviews];
  [(PKAccountBillPaymentCheckmarkRingView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKBillPaymentRingView *)self->_ringView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v8 = v7;
  v10 = v9;
  [(PKBillPaymentRingView *)self->_ringView setBounds:v4, v6, v7, v9];
  PKSizeScaleAspectFit();
  v12 = v11;
  v14 = v13;
  ringView = self->_ringView;
  CATransform3DMakeScale(&v22, v11 / v8, v13 / v10, 1.0);
  [(PKBillPaymentRingView *)ringView setTransform3D:&v22];
  v16 = self->_ringView;
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  v19 = [(PKBillPaymentRingView *)v16 layer];
  [v19 anchorPoint];
  [(PKBillPaymentRingView *)v16 setPosition:v17 + v20 * v12, v18 + v21 * v14];

  [(LAUICheckmarkLayer *)self->_checkmarkLayer aspectSize];
  PKSizeScaleAspectFit();
  PKSizeAlignedInRect();
  [(LAUICheckmarkLayer *)self->_checkmarkLayer setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKBillPaymentRingView *)self->_ringView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  PKSizeScaleAspectFit();
  result.height = v4;
  result.width = v3;
  return result;
}

@end