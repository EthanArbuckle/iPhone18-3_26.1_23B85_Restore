@interface PKExpressBannerTrailingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (uint64_t)_updateStateAnimated:(double)animated withDelay:;
- (void)expressGlyphView:(id)view revealingCheckmarkAnimated:(BOOL)animated;
- (void)layoutSubviews;
@end

@implementation PKExpressBannerTrailingView

- (uint64_t)_updateStateAnimated:(double)animated withDelay:
{
  memset(&v21, 0, sizeof(v21));
  if (*(self + 408) == 1)
  {
    v6 = *(MEMORY[0x1E69792E8] + 80);
    *&v21.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v21.m33 = v6;
    v7 = *(MEMORY[0x1E69792E8] + 112);
    *&v21.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v21.m43 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 16);
    *&v21.m11 = *MEMORY[0x1E69792E8];
    *&v21.m13 = v8;
    v9 = *(MEMORY[0x1E69792E8] + 48);
    *&v21.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v21.m23 = v9;
  }

  else
  {
    CATransform3DMakeRotation(&v21, -1.74532925, 0.0, 1.0, 0.0);
  }

  memset(&v20, 0, sizeof(v20));
  v10 = *(self + 416);
  if (v10)
  {
    [v10 transform3D];
  }

  a = v20;
  b = v21;
  result = CATransform3DEqualToTransform(&a, &b);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      v12 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:100.0 damping:10.0];
      v13 = [v12 springAnimationWithKeyPath:@"transform"];
      a = v20;
      b = v21;
      [v13 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&b];
      if (animated != 0.0)
      {
        [v13 setBeginTime:animated];
      }

      layer = [*(self + 416) layer];
      v15 = [layer pkui_addAdditiveAnimation:v13];
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = v21;
    v16[2] = __62__PKExpressBannerTrailingView__updateStateAnimated_withDelay___block_invoke;
    v16[3] = &unk_1E80121B0;
    v16[4] = self;
    return [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKExpressGlyphView *)self->_glyphView sizeThatFits:18.0, 18.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKExpressBannerTrailingView;
  [(PKExpressBannerTrailingView *)&v16 layoutSubviews];
  [(PKExpressBannerTrailingView *)self bounds];
  [(PKExpressGlyphView *)self->_glyphView sizeThatFits:v3, v4];
  PKSizeAlignedInRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PKExpressGlyphView *)self->_glyphView setBounds:?];
  glyphView = self->_glyphView;
  [(PKExpressGlyphView *)glyphView anchorPoint];
  [(PKExpressGlyphView *)glyphView setCenter:v6 + v14 * v10, v8 + v15 * v12];
}

uint64_t __62__PKExpressBannerTrailingView__updateStateAnimated_withDelay___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 416);
  v2 = *(a1 + 120);
  v7[4] = *(a1 + 104);
  v7[5] = v2;
  v3 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v3;
  v4 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  v5 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v5;
  return [v1 setTransform3D:v7];
}

- (void)expressGlyphView:(id)view revealingCheckmarkAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained expressTrailingView:self revealingCheckmarkAnimated:animatedCopy];
}

@end