@interface PKPGSVTransitionInterstitialAlignmentView
- (CGPoint)alignmentRectAnchorPoint;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPGSVTransitionInterstitialAlignmentView)initWithView:(id)view alignmentRectInsetsAdjustmentProvider:(id)provider;
- (UIEdgeInsets)alignmentRectInsets;
- (void)layoutSubviews;
- (void)sizeToFit;
@end

@implementation PKPGSVTransitionInterstitialAlignmentView

- (PKPGSVTransitionInterstitialAlignmentView)initWithView:(id)view alignmentRectInsetsAdjustmentProvider:(id)provider
{
  viewCopy = view;
  result = provider;
  if (viewCopy && (v9 = result) != 0)
  {
    v19.receiver = self;
    v19.super_class = PKPGSVTransitionInterstitialAlignmentView;
    v10 = [(PKPGSVTransitionInterstitialAlignmentView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_view, view);
      v12 = _Block_copy(v9);
      provider = v11->_provider;
      v11->_provider = v12;

      __asm { FMOV            V0.2D, #0.5 }

      v11->_alignmentRectAnchorPoint = _Q0;
      [(PKPGSVTransitionInterstitialAlignmentView *)v11 addSubview:v11->_view];
      [(PKPGSVTransitionInterstitialAlignmentView *)v11 sizeToFit];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_effectiveAlignmentInsets.top;
  left = self->_effectiveAlignmentInsets.left;
  bottom = self->_effectiveAlignmentInsets.bottom;
  right = self->_effectiveAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)sizeToFit
{
  p_alignmentInsets = &self->_alignmentInsets;
  [(UIView *)self->_view alignmentRectInsets];
  p_alignmentInsets->top = v4;
  p_alignmentInsets->left = v5;
  p_alignmentInsets->bottom = v6;
  p_alignmentInsets->right = v7;
  v8.f64[0] = (*(self->_provider + 2))();
  self->_alignmentInsetAdjustments.top = v8.f64[0];
  self->_alignmentInsetAdjustments.left = v9;
  self->_alignmentInsetAdjustments.bottom = v10.f64[0];
  self->_alignmentInsetAdjustments.right = v11;
  v8.f64[1] = v9;
  v10.f64[1] = v11;
  v12 = vsubq_f64(*&p_alignmentInsets->bottom, v10);
  *&self->_effectiveAlignmentInsets.top = vsubq_f64(*&p_alignmentInsets->top, v8);
  *&self->_effectiveAlignmentInsets.bottom = v12;
  v18.receiver = self;
  v18.super_class = PKPGSVTransitionInterstitialAlignmentView;
  [(PKPGSVTransitionInterstitialAlignmentView *)&v18 sizeToFit];
  [(PKPGSVTransitionInterstitialAlignmentView *)self bounds];
  v14.f64[1] = v13;
  v15 = vaddq_f64(*&self->_effectiveAlignmentInsets.top, *&self->_effectiveAlignmentInsets.bottom);
  v17.f64[1] = v16;
  [(PKPGSVTransitionInterstitialAlignmentView *)self setAnchorPoint:vdivq_f64(vsubq_f64(vmlaq_f64(vaddq_f64(v14, vextq_s8(*&self->_effectiveAlignmentInsets.top, *&self->_effectiveAlignmentInsets.top, 8uLL)), vsubq_f64(v17, vextq_s8(v15, v15, 8uLL)), self->_alignmentRectAnchorPoint), v14), v17)];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_view bounds:fits.width];
  v5.f64[1] = v4;
  v6 = vmaxnmq_f64(vsubq_f64(v5, vaddq_f64(*&self->_alignmentInsetAdjustments.top, *&self->_alignmentInsetAdjustments.bottom)), 0);
  v7 = v6.f64[1];
  result.height = v6.f64[0];
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPGSVTransitionInterstitialAlignmentView;
  [(PKPGSVTransitionInterstitialAlignmentView *)&v9 layoutSubviews];
  [(PKPGSVTransitionInterstitialAlignmentView *)self bounds];
  [(UIView *)self->_view bounds];
  v7 = v3;
  v8 = v4;
  PKSizeAlignedInRect();
  [(UIView *)self->_view setFrame:v5 - self->_effectiveAlignmentInsets.left - self->_alignmentInsets.left, v6 - self->_effectiveAlignmentInsets.top - self->_alignmentInsets.top, v7, v8];
}

- (CGPoint)alignmentRectAnchorPoint
{
  x = self->_alignmentRectAnchorPoint.x;
  y = self->_alignmentRectAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end