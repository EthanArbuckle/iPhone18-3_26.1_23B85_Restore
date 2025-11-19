@interface PKPassValueAddedServiceInfoView
- (CGSize)_snapshotSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPassValueAddedServiceInfoView)initWithStyle:(int64_t)a3;
- (double)_baselineDistance;
- (id)_labelAttributedStringForString:(id)a3;
- (id)_statusAttributedStringForStyle:(int64_t)a3;
- (void)_calculateViewMetricsForWidth:(double)a3 labelSize:(CGSize *)a4 statusSize:(CGSize *)a5 baselineAdjustment:(double *)a6;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setPass:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setStyle:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation PKPassValueAddedServiceInfoView

- (PKPassValueAddedServiceInfoView)initWithStyle:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = PKPassValueAddedServiceInfoView;
  v4 = [(PKPassValueAddedServiceInfoView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = objc_alloc_init(PKPassSnapshotter);
    snapshotter = v5->_snapshotter;
    v5->_snapshotter = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    labelView = v5->_labelView;
    v5->_labelView = v8;

    [(UILabel *)v5->_labelView setNumberOfLines:2];
    [(PKPassValueAddedServiceInfoView *)v5 addSubview:v5->_labelView];
    v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    snapshotView = v5->_snapshotView;
    v5->_snapshotView = v10;

    [(UIImageView *)v5->_snapshotView setContentMode:1];
    [(UIImageView *)v5->_snapshotView setAccessibilityIgnoresInvertColors:1];
    [(PKPassValueAddedServiceInfoView *)v5 addSubview:v5->_snapshotView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    statusView = v5->_statusView;
    v5->_statusView = v12;

    v14 = v5->_statusView;
    v15 = [(PKPassValueAddedServiceInfoView *)v5 _statusAttributedStringForStyle:a3];
    [(UILabel *)v14 setAttributedText:v15];

    [(UILabel *)v5->_statusView setNumberOfLines:1];
    [(PKPassValueAddedServiceInfoView *)v5 addSubview:v5->_statusView];
    [(UIView *)v5 pkui_setMaskType:3];
    v16 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKPassValueAddedServiceInfoView *)v5 setBackgroundColor:v16];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPassValueAddedServiceInfoView;
  [(PKPassValueAddedServiceInfoView *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKPassValueAddedServiceInfoView;
  [(PKPassValueAddedServiceInfoView *)&v28 layoutSubviews];
  [(PKPassValueAddedServiceInfoView *)self bounds];
  v4 = v3;
  v6 = v5 + 13.0;
  v8 = v7 + -28.0;
  [(PKPassValueAddedServiceInfoView *)self _snapshotSize];
  v10 = v9;
  v12 = v11;
  v26 = 0.0;
  v27 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v23 = 0.0;
  [(PKPassValueAddedServiceInfoView *)self _calculateViewMetricsForWidth:&v25 labelSize:&v23 statusSize:&v27 baselineAdjustment:v8 - (v9 + 13.0)];
  v13.n128_f64[0] = v27 + v26 + v24 + 1.0;
  v14.n128_u64[0] = 0.5;
  if (v12 <= v13.n128_f64[0])
  {
    v13.n128_f64[0] = (v13.n128_f64[0] - v12) * 0.5;
    PKFloatFloorToPixel(v13, v14);
    v21 = v6 + v16;
  }

  else
  {
    v13.n128_f64[0] = (v12 - v13.n128_f64[0]) * 0.5;
    PKFloatFloorToPixel(v13, v14);
    v21 = v6;
    v6 = v6 + v15;
  }

  v17 = v4 + 14.0;
  v18 = v27 + v6 + v26 + 1.0;
  v20 = v23;
  v19 = v24;
  [(UILabel *)self->_labelView setFrame:v10 + v17 + 13.0, v6, v25, *&v21];
  [(UILabel *)self->_statusView setFrame:v10 + v17 + 13.0, v18, v20, v19];
  [(UIImageView *)self->_snapshotView setFrame:v17, v22, v10, v12];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PKPassValueAddedServiceInfoView *)self _snapshotSize:a3.width];
  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0;
  v10 = 0;
  [(PKPassValueAddedServiceInfoView *)self _calculateViewMetricsForWidth:&v12 labelSize:&v10 statusSize:&v14 baselineAdjustment:fmax(width - (v5 + 14.0 + 13.0 + 14.0), 0.0)];
  v6 = v14 + v13 + v11 + 1.0;
  [(PKPassValueAddedServiceInfoView *)self _snapshotSize];
  v8 = fmax(v7, v6) + 13.0 + 13.0;
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)_calculateViewMetricsForWidth:(double)a3 labelSize:(CGSize *)a4 statusSize:(CGSize *)a5 baselineAdjustment:(double *)a6
{
  [(UILabel *)self->_labelView pkui_sizeThatFits:1 forceWordWrap:a3, 1.79769313e308];
  a4->width = v11;
  a4->height = v12;
  [(UILabel *)self->_statusView pkui_sizeThatFits:0 forceWordWrap:a3, 1.79769313e308];
  a5->width = v13;
  a5->height = v14;
  height = a4->height;
  v16 = [(UILabel *)self->_labelView font];
  [v16 descender];
  v18 = height + v17;

  v19 = a5->height + a4->height;
  v20 = [(UILabel *)self->_statusView font];
  [v20 descender];
  v22 = v19 + v21;

  [(PKPassValueAddedServiceInfoView *)self _baselineDistance];
  *a6 = fmax(v23 - (v22 - v18), 0.0);
}

- (void)setStyle:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (self->_style == a3)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 1);
    }
  }

  else
  {
    self->_style = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__PKPassValueAddedServiceInfoView_setStyle_animated_completion___block_invoke;
    aBlock[3] = &unk_1E80119C8;
    aBlock[4] = self;
    aBlock[5] = a3;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (v5)
    {
      v12 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__PKPassValueAddedServiceInfoView_setStyle_animated_completion___block_invoke_2;
      v16[3] = &unk_1E8010970;
      v16[4] = self;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64__PKPassValueAddedServiceInfoView_setStyle_animated_completion___block_invoke_3;
      v13[3] = &unk_1E80210E8;
      v13[4] = self;
      v14 = v10;
      v15 = v9;
      [v12 animateWithDuration:v16 animations:v13 completion:0.2];
    }

    else
    {
      v10[2](v10);
      if (v9)
      {
        v9[2](v9, 1);
      }
    }
  }
}

uint64_t __64__PKPassValueAddedServiceInfoView_setStyle_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[56];
  v4 = [v2 _statusAttributedStringForStyle:*(a1 + 40)];
  [v3 setAttributedText:v4];

  v5 = *(a1 + 32);

  return [v5 setNeedsLayout];
}

uint64_t __64__PKPassValueAddedServiceInfoView_setStyle_animated_completion___block_invoke_3(void *a1)
{
  (*(a1[5] + 16))();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PKPassValueAddedServiceInfoView_setStyle_animated_completion___block_invoke_4;
  v3[3] = &unk_1E8010970;
  v3[4] = a1[4];
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:a1[6] completion:0.2];
}

- (void)setPass:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke;
  v19 = &unk_1E8021138;
  v11 = v9;
  v20 = v11;
  v21 = self;
  v23 = a4;
  v12 = v10;
  v22 = v12;
  v13 = _Block_copy(&v16);
  objc_storeStrong(&self->_pass, a3);
  pass = self->_pass;
  if (pass)
  {
    snapshotter = self->_snapshotter;
    [(PKPassValueAddedServiceInfoView *)self _snapshotSize:v16];
    [(PKPassSnapshotter *)snapshotter snapshotWithPass:pass size:4087 suppressedContent:v13 completion:?];
  }

  else
  {
    v13[2](v13, 0);
  }
}

void __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_2;
  block[3] = &unk_1E8021110;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v13 = *(a1 + 56);
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_2(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_3;
  aBlock[3] = &unk_1E8010A88;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (*(a1 + 64) == 1)
  {
    v7 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_4;
    v13[3] = &unk_1E8010970;
    v13[4] = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_5;
    v10[3] = &unk_1E80210E8;
    v8 = v5;
    v10[4] = *(a1 + 40);
    v11 = v8;
    v12 = *(a1 + 56);
    [v7 animateWithDuration:v13 animations:v10 completion:0.2];
  }

  else
  {
    v5[2](v5);
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 1);
    }
  }
}

void __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedDescription];
  v9 = v2;
  if (!v2 || (v3 = [v2 length], v4 = v9, !v3))
  {
    v5 = [*(a1 + 32) organizationName];

    v4 = v5;
  }

  v6 = *(a1 + 40);
  v7 = v6[54];
  v10 = v4;
  v8 = [v6 _labelAttributedStringForString:v4];
  [v7 setAttributedText:v8];

  [*(*(a1 + 40) + 440) setImage:*(a1 + 48)];
  [*(a1 + 40) setNeedsLayout];
}

uint64_t __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setAlpha:0.0];
}

uint64_t __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_5(void *a1)
{
  (*(a1[5] + 16))();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_6;
  v3[3] = &unk_1E8010970;
  v3[4] = a1[4];
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:a1[6] completion:0.2];
}

uint64_t __63__PKPassValueAddedServiceInfoView_setPass_animated_completion___block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 448);

  return [v2 setAlpha:1.0];
}

- (CGSize)_snapshotSize
{
  [(PKPass *)self->_pass style];
  PKPassViewFrontSize();
  PKPassHeightAdjustmentForStyle();

  PKSizeRoundToPixel();
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_labelAttributedStringForString:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E69DB7C8];
    v5 = a3;
    v6 = [v4 defaultParagraphStyle];
    v7 = [v6 mutableCopy];

    [v7 setAlignment:4];
    [v7 setLineBreakMode:4];
    v15[0] = *MEMORY[0x1E69DB650];
    v8 = [MEMORY[0x1E69DC888] labelColor];
    v9 = *MEMORY[0x1E69DB688];
    v16[0] = v8;
    v16[1] = v7;
    v10 = *MEMORY[0x1E69DB648];
    v15[1] = v9;
    v15[2] = v10;
    v11 = [(PKPassValueAddedServiceInfoView *)self _labelFont];
    v16[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_statusAttributedStringForStyle:(int64_t)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 != 1)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v4 = @"VAS_PASS_DID_SEND";
  }

  else
  {
    v4 = @"VAS_PASS_WILL_SEND";
  }

  v5 = PKLocalizedString(&v4->isa);
  if (v5)
  {
    v6 = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
    v7 = [v6 mutableCopy];

    [v7 setAlignment:4];
    [v7 setLineBreakMode:4];
    v15[0] = *MEMORY[0x1E69DB650];
    v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v9 = *MEMORY[0x1E69DB688];
    v16[0] = v8;
    v16[1] = v7;
    v10 = *MEMORY[0x1E69DB648];
    v15[1] = v9;
    v15[2] = v10;
    v11 = [(PKPassValueAddedServiceInfoView *)self _statusFont];
    v16[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v12];
    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

- (double)_baselineDistance
{
  v2 = [(PKPassValueAddedServiceInfoView *)self _labelFont];
  [v2 _bodyLeading];
  PKFloatRoundToPixel();
  v4 = v3;

  return v4;
}

@end