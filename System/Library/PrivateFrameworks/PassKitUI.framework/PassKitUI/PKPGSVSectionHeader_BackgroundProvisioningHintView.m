@interface PKPGSVSectionHeader_BackgroundProvisioningHintView
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_layoutSubviewsInBounds:(double)a3 withCommitMode:(double)a4;
- (void)_updateFonts:(uint64_t)a1;
- (void)layoutSubviews;
@end

@implementation PKPGSVSectionHeader_BackgroundProvisioningHintView

- (void)_updateFonts:(uint64_t)a1
{
  if (a1)
  {
    v4 = [a1 traitCollection];
    *(a1 + 424) = 0xBFF0000000000000;
    v7 = v4;
    v5 = _PKFontForDesign(v4, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 0, 0, 0);
    [*(a1 + 408) setFont:v5];
    [*(a1 + 416) sizeToFit];
    if ((a2 & 1) == 0)
    {
      [a1 setNeedsLayout];
      v6 = *(a1 + 448);
      if (v6)
      {
        (*(v6 + 16))(v6, a1);
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)self _layoutSubviewsInBounds:*MEMORY[0x1E695EFF8] withCommitMode:*(MEMORY[0x1E695EFF8] + 8), a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_layoutSubviewsInBounds:(double)a3 withCommitMode:(double)a4
{
  if (!a1)
  {
    return 0.0;
  }

  v8 = [a1 _shouldReverseLayoutDirection];
  if (v8)
  {
    v9 = CGRectMaxXEdge;
  }

  else
  {
    v9 = CGRectMinXEdge;
  }

  [*(a1 + 416) frame];
  v11 = v10;
  v36 = v12;
  v37 = a5;
  v13 = v10 + 10.0;
  v14 = fmax(a5 - (v10 + 10.0), 0.0);
  if (*(a1 + 424) == v14)
  {
    v15 = a5;
    v16 = *(a1 + 432);
  }

  else
  {
    [*(a1 + 408) sizeThatFits:{v14, 1.79769313e308}];
    v16 = fmin(v18, v14);
    if (a2)
    {
      *(a1 + 424) = v14;
      *(a1 + 432) = v16;
      *(a1 + 440) = v17;
    }

    v15 = v37;
  }

  if (v15 - v16 < v13 + v13)
  {
    PKSizeAlignedInRect();
  }

  PKSizeAlignedInRect();
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  if (a2)
  {
    [*(a1 + 408) setFrame:{v19, v20, v21, v22}];
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v23;
  remainder.origin.y = v24;
  remainder.size.width = v25;
  remainder.size.height = v26;
  v27 = [*(a1 + 408) font];
  [v27 lineHeight];
  v29 = v28;
  v40.origin.x = v23;
  v40.origin.y = v24;
  v40.size.width = v25;
  v40.size.height = v26;
  CGRectDivide(v40, &slice, &remainder, v29, CGRectMinYEdge);
  height = slice.size.height;
  v31 = -v13;
  if (v8)
  {
    v31 = 0.0;
  }

  v32 = slice.size.width - (0.0 - v13);
  v33 = vaddq_f64(*&v31, slice.origin);
  remainder.origin = v33;
  remainder.size.width = v32;
  remainder.size.height = slice.size.height;
  y = v33.y;
  CGRectDivide(*(&height - 3), &slice, &remainder, v11, v9);
  PKSizeAlignedInRect();
  if (a2)
  {
    [*(a1 + 416) setFrame:?];
  }

  return v37;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPGSVSectionHeader_BackgroundProvisioningHintView;
  [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)&v6 layoutSubviews];
  [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)self bounds];
  [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)self _layoutSubviewsInBounds:v3 withCommitMode:v4, v5];
}

@end