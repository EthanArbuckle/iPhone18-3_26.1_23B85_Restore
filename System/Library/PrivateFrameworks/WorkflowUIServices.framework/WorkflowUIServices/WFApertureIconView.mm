@interface WFApertureIconView
+ (CGSize)opticalAlignmentForSymbol:(id)a3;
+ (id)configurationForSymbol:(id)a3;
+ (id)downscaledImageForOriginalImage:(id)a3;
+ (id)preferredImageForSymbolName:(id)a3;
- (BOOL)inSiri;
- (CGSize)resolution;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)keyColor;
- (WFApertureIconView)initWithApplicationBundleIdentifier:(id)a3;
- (WFApertureIconView)initWithIcon:(id)a3;
- (id)iconStackPlatterColorForImage:(id)a3;
- (id)symbolColor;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setBlendedBorderLayerHidden:(BOOL)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setIcon:(id)a3 animated:(BOOL)a4;
- (void)setIcon:(id)a3 associatedAppBundleIdentifier:(id)a4 animated:(BOOL)a5;
- (void)setIconImage:(id)a3 associatedIcon:(id)a4 style:(int64_t)a5 previousIconStyle:(int64_t)a6 animated:(BOOL)a7;
- (void)setMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setSymbolColorOverride:(id)a3;
@end

@implementation WFApertureIconView

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  v3 = [(WFApertureIconView *)self iconImageView];
  v4 = [v3 layer];
  [v4 removeObserver:self forKeyPath:@"allowsEdgeAntialiasing"];

  v5.receiver = self;
  v5.super_class = WFApertureIconView;
  [(WFApertureIconView *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(WFApertureIconView *)self iconImageView];
  v12 = [v11 layer];

  if (v12 != v10)
  {
    goto LABEL_2;
  }

  v13 = [v16 isEqualToString:@"allowsEdgeAntialiasing"];

  if (v13)
  {
    v14 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v15 = [v14 BOOLValue];

    if ((v15 & 1) == 0)
    {
      v11 = [(WFApertureIconView *)self iconImageView];
      v12 = [v11 layer];
      [v12 setAllowsEdgeAntialiasing:1];
LABEL_2:
    }
  }
}

- (BOOL)inSiri
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69E0F68]];

  return v4;
}

- (void)setSymbolColorOverride:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_symbolColorOverride, a3);
  if ([(WFApertureIconView *)self isEnabled])
  {
    v5 = [(WFApertureIconView *)self iconImageView];
    [v5 setTintColor:v6];
  }
}

- (id)symbolColor
{
  v3 = [(WFApertureIconView *)self symbolColorOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WFApertureIconView *)self primaryColor];
  }

  v6 = v5;

  return v6;
}

- (UIColor)keyColor
{
  v3 = [(WFApertureIconView *)self keyColorOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WFApertureIconView *)self primaryColor];
  }

  v6 = v5;

  return v6;
}

- (id)iconStackPlatterColorForImage:(id)a3
{
  v4 = a3;
  v5 = [(WFApertureIconView *)self icon];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [(WFApertureIconView *)self associatedAppBundleIdentifier];
  }

  v10 = v9;

  v11 = [(WFApertureIconView *)self primaryColor];
  if (([(WFApertureIconView *)self iconStyle]== 2 || [(WFApertureIconView *)self iconStyle]== 3) && v10 && (v7 || [(WFApertureIconView *)self iconStyle]!= 1))
  {
    v12 = objc_alloc_init(MEMORY[0x1E69E0988]);
    v13 = [v12 colorsForBundleIdentifier:v10 error:0];
    v14 = v13;
    if (v13 && ([v13 backgroundGradient], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [v14 backgroundGradient];
      v17 = [v16 baseColor];
      v18 = [v17 UIColor];
    }

    else
    {
      if (!v4)
      {
LABEL_20:

        goto LABEL_21;
      }

      v16 = [objc_alloc(MEMORY[0x1E69E0B58]) initWithPlatformImage:v4];
      v17 = [WFJoeColorUtility colorForImage:v16];
      v19 = [v17 UIColor];
      v18 = [v19 colorWithAlphaComponent:1.0];

      v11 = v19;
    }

    v11 = v18;
    goto LABEL_20;
  }

LABEL_21:
  if (CGColorGetNumberOfComponents([v11 CGColor]) == 4)
  {
    Components = CGColorGetComponents([v11 CGColor]);
    [v11 _luminance];
    v22 = [MEMORY[0x1E69DC888] colorWithRed:(0.5 - v21 + *Components) * 0.3 green:(0.5 - v21 + Components[1]) * 0.3 blue:(0.5 - v21 + Components[2]) * 0.3 alpha:1.0];
  }

  else
  {
    v23 = [MEMORY[0x1E69DC888] systemGrayColor];
    v22 = [v23 colorWithAlphaComponent:0.4];
  }

  return v22;
}

- (void)setBlendedBorderLayerHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFApertureIconView *)self iconBlendedBorderLayer];

  if (!v5 && !v3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6979398]);
    v7 = [(WFApertureIconView *)self iconImageView];
    [v7 bounds];
    v9 = v8;
    v10 = [(WFApertureIconView *)self iconImageView];
    [v10 bounds];
    [(CALayer *)v6 setFrame:0.0, 0.0, v9];

    [(CALayer *)v6 setCornerCurve:*MEMORY[0x1E69796E8]];
    SRGB = CGColorCreateSRGB(0.247058824, 0.247058824, 0.247058824, 1.0);
    [(CALayer *)v6 setBorderColor:SRGB];
    CFRelease(SRGB);
    [(CALayer *)v6 setCompositingFilter:*MEMORY[0x1E6979C30]];
    iconBlendedBorderLayer = self->_iconBlendedBorderLayer;
    self->_iconBlendedBorderLayer = v6;
  }

  v13 = [(WFApertureIconView *)self iconBlendedBorderLayer];
  v14 = [v13 superlayer];
  v15 = (v14 != 0) ^ v3;

  if ((v15 & 1) == 0)
  {
    if (v3)
    {
      v18 = [(WFApertureIconView *)self iconBlendedBorderLayer];
      [v18 removeFromSuperlayer];
    }

    else
    {
      v18 = [(WFApertureIconView *)self iconImageView];
      v16 = [v18 layer];
      v17 = [(WFApertureIconView *)self iconBlendedBorderLayer];
      [v16 addSublayer:v17];
    }
  }
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_enabled = a3;
  if (a3)
  {
    [(WFApertureIconView *)self symbolColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] sbui_inactiveColor];
  }
  v6 = ;
  v7 = v6;
  if (v4)
  {
    v8 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__WFApertureIconView_setEnabled_animated___block_invoke;
    v10[3] = &unk_1E83086D8;
    v10[4] = self;
    v11 = v6;
    [v8 animateWithDuration:v10 animations:0.2];
  }

  else
  {
    v9 = [(WFApertureIconView *)self iconImageView];
    [v9 setTintColor:v7];
  }
}

void __42__WFApertureIconView_setEnabled_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  [v2 setTintColor:*(a1 + 40)];
}

- (void)setMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(WFApertureIconView *)self mode]!= a3)
  {
    self->_mode = a3;
    v7 = [(WFApertureIconView *)self iconImageViewContainer];
    v8 = [v7 layer];
    [v8 removeAllAnimations];

    v9 = [(WFApertureIconView *)self iconImageView];
    v10 = [v9 layer];
    [v10 removeAllAnimations];

    v11 = [(WFApertureIconView *)self colorViewContainer];
    v12 = [v11 layer];
    [v12 removeAllAnimations];

    v13 = [(WFApertureIconView *)self colorView];
    v14 = [v13 layer];
    [v14 removeAllAnimations];

    v15 = [(WFApertureIconView *)self iconImageViewContainer];
    v16 = [v15 layer];
    v74 = *(MEMORY[0x1E69792E8] + 80);
    v95 = *(MEMORY[0x1E69792E8] + 64);
    v75 = v95;
    v96 = v74;
    v72 = *(MEMORY[0x1E69792E8] + 112);
    v97 = *(MEMORY[0x1E69792E8] + 96);
    v73 = v97;
    v98 = v72;
    v70 = *(MEMORY[0x1E69792E8] + 16);
    *&v93.a = *MEMORY[0x1E69792E8];
    v71 = *&v93.a;
    *&v93.c = v70;
    v68 = *(MEMORY[0x1E69792E8] + 48);
    *&v93.tx = *(MEMORY[0x1E69792E8] + 32);
    v69 = *&v93.tx;
    v94 = v68;
    [v16 setTransform:&v93];

    v17 = [(WFApertureIconView *)self iconImageView];
    v18 = [v17 layer];
    v95 = v75;
    v96 = v74;
    v97 = v73;
    v98 = v72;
    *&v93.a = v71;
    *&v93.c = v70;
    *&v93.tx = v69;
    v94 = v68;
    [v18 setTransform:&v93];

    v19 = [(WFApertureIconView *)self colorViewContainer];
    v20 = [v19 layer];
    v95 = v75;
    v96 = v74;
    v97 = v73;
    v98 = v72;
    *&v93.a = v71;
    *&v93.c = v70;
    *&v93.tx = v69;
    v94 = v68;
    [v20 setTransform:&v93];

    v21 = [(WFApertureIconView *)self colorView];
    v22 = [v21 layer];
    v95 = v75;
    v96 = v74;
    v97 = v73;
    v98 = v72;
    *&v93.a = v71;
    *&v93.c = v70;
    *&v93.tx = v69;
    v94 = v68;
    [v22 setTransform:&v93];

    v23 = [(WFApertureIconView *)self icon];
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v26 = [v25 bundleIdentifier];

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = [(WFApertureIconView *)self associatedAppBundleIdentifier];
    }

    v28 = v27;

    if ([(WFApertureIconView *)self iconStyle]!= 2 && [(WFApertureIconView *)self iconStyle]!= 3)
    {
      v41 = 0;
      if (a3 == 1)
      {
LABEL_19:
        v45 = [(WFApertureIconView *)self colorView];
        v46 = [(WFApertureIconView *)self iconStackPlatterColorForImage:v41];
        [v45 setBackgroundColor:v46];

        v47 = [(WFApertureIconView *)self colorView];
        [v47 setHidden:0];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __39__WFApertureIconView_setMode_animated___block_invoke_3;
        aBlock[3] = &unk_1E83086B0;
        aBlock[4] = self;
        v48 = _Block_copy(aBlock);
        memset(&v93, 0, sizeof(v93));
        [(WFApertureIconView *)self bounds];
        CGAffineTransformMakeTranslation(&v93, 0.0, v49 * -0.17);
        memset(&v85, 0, sizeof(v85));
        [(WFApertureIconView *)self bounds];
        CGAffineTransformMakeTranslation(&v85, 0.0, v50 * 0.17);
        if (v4)
        {
          v51 = dispatch_time(0, 170000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__WFApertureIconView_setMode_animated___block_invoke_4;
          block[3] = &unk_1E8307E88;
          block[4] = self;
          v82 = v48;
          v83 = v93;
          v84 = v85;
          dispatch_after(v51, MEMORY[0x1E69E96A0], block);
          v52 = v82;
        }

        else
        {
          v48[2](v48);
          v53 = [(WFApertureIconView *)self iconImageViewContainer];
          v80 = v93;
          [v53 setTransform:&v80];

          v52 = [(WFApertureIconView *)self colorViewContainer];
          v80 = v85;
          [v52 setTransform:&v80];
        }

LABEL_41:

        return;
      }

LABEL_38:
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __39__WFApertureIconView_setMode_animated___block_invoke_9;
      v79[3] = &unk_1E83086B0;
      v79[4] = self;
      v66 = _Block_copy(v79);
      v48 = v66;
      if (v4)
      {
        v67 = MEMORY[0x1E69DD250];
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __39__WFApertureIconView_setMode_animated___block_invoke_10;
        v77[3] = &unk_1E8307D48;
        v78 = v66;
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __39__WFApertureIconView_setMode_animated___block_invoke_11;
        v76[3] = &unk_1E8307EB0;
        v76[4] = self;
        [v67 animateWithSpringDuration:4 bounce:v77 initialSpringVelocity:v76 delay:0.5 options:0.0 animations:0.0 completion:0.0];
        v52 = v78;
      }

      else
      {
        v66[2](v66);
        v52 = [(WFApertureIconView *)self colorView];
        [v52 setHidden:1];
      }

      goto LABEL_41;
    }

    if (a3 == 1)
    {
      v29 = [MEMORY[0x1E69E0B58] applicationIconImageForBundleIdentifier:v28 format:0];
      v30 = [v29 UIImage];

      v31 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v32 = [(WFApertureIconView *)self iconImageView];
      [v32 bounds];
      v33 = [v31 initWithFrame:?];

      [v33 setImage:v30];
      v34 = [v33 layer];
      [v34 setCornerCurve:*MEMORY[0x1E69796E8]];

      v35 = [v33 layer];
      v36 = [(WFApertureIconView *)self iconImageView];
      v37 = [v36 layer];
      [v37 cornerRadius];
      [v35 setCornerRadius:?];

      v38 = [v33 layer];
      [v38 setAllowsEdgeAntialiasing:1];

      [v33 setAlpha:0.0];
      v39 = [(WFApertureIconView *)self iconImageView];
      [v39 addSubview:v33];

      v40 = MEMORY[0x1E69DD250];
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __39__WFApertureIconView_setMode_animated___block_invoke;
      v91[3] = &unk_1E83086B0;
      v92 = v33;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __39__WFApertureIconView_setMode_animated___block_invoke_2;
      v87[3] = &unk_1E8307E10;
      v88 = v92;
      v89 = self;
      v41 = v30;
      v90 = v41;
      v42 = v92;
      [v40 animateWithDuration:v91 animations:v87 completion:0.25];
      [(WFApertureIconView *)self setBlendedBorderLayerHidden:0];

      goto LABEL_19;
    }

    v43 = [(WFApertureIconView *)self icon];
    if (v43)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v44 = 0;
    }

    v54 = v44;

    v55 = [(WFApertureIconView *)self icon];
    if (v55)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      v56 = 0;
    }

    v57 = v56;

    if (v54 && (-[WFApertureIconView icon](self, "icon"), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v58 hasClearBackground], v58, v59))
    {
      v60 = objc_opt_class();
      v61 = [v54 symbolName];
      v41 = [v60 preferredImageForSymbolName:v61];

      v62 = [(WFApertureIconView *)self iconImageView];
      [v62 setImage:v41];
    }

    else
    {
      if ([(WFApertureIconView *)self inSiri])
      {
        v41 = 0;
LABEL_37:
        [(WFApertureIconView *)self setBlendedBorderLayerHidden:1];

        goto LABEL_38;
      }

      v62 = [v57 associatedLogo];
      if (v62)
      {
        v63 = objc_opt_class();
        v64 = [v62 UIImage];
        v41 = [v63 downscaledImageForOriginalImage:v64];

        v65 = [(WFApertureIconView *)self iconImageView];
        [v65 setImage:v41];
      }

      else
      {
        v41 = 0;
      }
    }

    goto LABEL_37;
  }
}

void __39__WFApertureIconView_setMode_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) iconImageView];
  [v2 setImage:*(a1 + 48)];
}

void __39__WFApertureIconView_setMode_animated___block_invoke_3(uint64_t a1)
{
  memset(&v12, 0, sizeof(v12));
  CATransform3DMakeScale(&v12, 0.76, 0.76, 1.0);
  memset(&v11, 0, sizeof(v11));
  CATransform3DMakeRotation(&v11, -0.785398163, 0.0, 0.0, 1.0);
  memset(&v10, 0, sizeof(v10));
  CATransform3DMakeScale(&v10, 1.0, 0.8, 1.0);
  memset(&v9, 0, sizeof(v9));
  a = v11;
  v6 = v10;
  CATransform3DConcat(&b, &a, &v6);
  a = v12;
  CATransform3DConcat(&v9, &a, &b);
  v2 = [*(a1 + 32) iconImageView];
  v3 = [v2 layer];
  b = v9;
  [v3 setTransform:&b];

  v4 = [*(a1 + 32) colorView];
  v5 = [v4 layer];
  b = v9;
  [v5 setTransform:&b];
}

void __39__WFApertureIconView_setMode_animated___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__WFApertureIconView_setMode_animated___block_invoke_5;
  v14[3] = &unk_1E8307D48;
  v15 = *(a1 + 40);
  [v2 animateWithSpringDuration:4 bounce:v14 initialSpringVelocity:0 delay:0.45 options:0.0 animations:0.0 completion:0.0];
  v3 = dispatch_time(0, 60000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v4 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v4;
  v5 = *(a1 + 96);
  v10 = *(a1 + 80);
  v11 = v5;
  v6 = *(a1 + 128);
  v12 = *(a1 + 112);
  v7[2] = __39__WFApertureIconView_setMode_animated___block_invoke_6;
  v7[3] = &unk_1E8307E60;
  v7[4] = *(a1 + 32);
  v13 = v6;
  dispatch_after(v3, MEMORY[0x1E69E96A0], v7);
}

void __39__WFApertureIconView_setMode_animated___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  v3 = [v2 layer];
  v15 = *(MEMORY[0x1E69792E8] + 80);
  v23 = *(MEMORY[0x1E69792E8] + 64);
  v17 = v23;
  v24 = v15;
  v12 = *(MEMORY[0x1E69792E8] + 112);
  v25 = *(MEMORY[0x1E69792E8] + 96);
  v13 = v25;
  v26 = v12;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v19 = *MEMORY[0x1E69792E8];
  v11 = v19;
  v20 = v10;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v21 = *(MEMORY[0x1E69792E8] + 32);
  v9 = v21;
  v22 = v8;
  [v3 setTransform:&v19];

  v4 = [*(a1 + 32) colorView];
  v5 = [v4 layer];
  v23 = v17;
  v24 = v15;
  v25 = v13;
  v26 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  [v5 setTransform:&v19];

  v6 = [*(a1 + 32) iconImageViewContainer];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  v19 = *MEMORY[0x1E695EFD0];
  v18 = v19;
  v20 = v16;
  v21 = *(MEMORY[0x1E695EFD0] + 32);
  v14 = v21;
  [v6 setTransform:&v19];

  v7 = [*(a1 + 32) colorViewContainer];
  v19 = v18;
  v20 = v16;
  v21 = v14;
  [v7 setTransform:&v19];
}

void __39__WFApertureIconView_setMode_animated___block_invoke_11(uint64_t a1)
{
  v1 = [*(a1 + 32) colorView];
  [v1 setHidden:1];
}

uint64_t __39__WFApertureIconView_setMode_animated___block_invoke_6(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__WFApertureIconView_setMode_animated___block_invoke_7;
  v7[3] = &unk_1E8307E38;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  [MEMORY[0x1E69DD250] animateWithSpringDuration:4 bounce:v7 initialSpringVelocity:0 delay:0.55 options:0.5 animations:0.0 completion:0.0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__WFApertureIconView_setMode_animated___block_invoke_8;
  v3[3] = &unk_1E8307E38;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  v6 = *(a1 + 120);
  return [MEMORY[0x1E69DD250] animateWithSpringDuration:4 bounce:v3 initialSpringVelocity:0 delay:0.55 options:0.0 animations:0.0 completion:0.0];
}

void __39__WFApertureIconView_setMode_animated___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageViewContainer];
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  v4[2] = *(a1 + 72);
  [v2 setTransform:v4];
}

void __39__WFApertureIconView_setMode_animated___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) colorViewContainer];
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  v4[2] = *(a1 + 72);
  [v2 setTransform:v4];
}

- (void)setIconImage:(id)a3 associatedIcon:(id)a4 style:(int64_t)a5 previousIconStyle:(int64_t)a6 animated:(BOOL)a7
{
  v7 = a7;
  v54[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if (v7)
  {
    if ([(WFApertureIconView *)self mode])
    {
      v14 = 1;
    }

    else if (a6 == 1 && a5 == 1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke;
  aBlock[3] = &unk_1E8308650;
  aBlock[4] = self;
  v16 = v13;
  v51 = v16;
  v53 = a5;
  v17 = v12;
  v52 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v20 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      [v20 setName:@"gaussianBlur"];
      [v20 setValue:&unk_1F4819AE8 forKey:*MEMORY[0x1E6979BA8]];
      v21 = MEMORY[0x1E695E110];
      [v20 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979B78]];
      [v20 setValue:v21 forKey:*MEMORY[0x1E6979B48]];
      [v20 setValue:@"default" forKey:*MEMORY[0x1E6979BA0]];
      [v20 setValue:@"default" forKey:*MEMORY[0x1E6979B60]];
      v22 = [(WFApertureIconView *)self iconImageView];
      v23 = [v22 layer];
      v54[0] = v20;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      [v23 setFilters:v24];

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_199;
      v47[3] = &unk_1E83086B0;
      v47[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:1 response:v47 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
      v25 = dispatch_time(0, 200000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_205;
      block[3] = &unk_1E8307D98;
      block[4] = self;
      v46 = v19;
      dispatch_after(v25, MEMORY[0x1E69E96A0], block);

      goto LABEL_19;
    }

    v36 = *MEMORY[0x1E69792E8];
    v28 = *(MEMORY[0x1E69792E8] + 80);
    v41 = *(MEMORY[0x1E69792E8] + 64);
    v42 = v28;
    v29 = *(MEMORY[0x1E69792E8] + 112);
    v43 = *(MEMORY[0x1E69792E8] + 96);
    v44 = v29;
    v30 = *(MEMORY[0x1E69792E8] + 48);
    v39 = *(MEMORY[0x1E69792E8] + 32);
    v31 = *(MEMORY[0x1E69792E8] + 16);
    v40 = v30;
    v32 = MEMORY[0x1E69DD250];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_5;
    v35[3] = &unk_1E8307DC0;
    v35[4] = self;
    v37 = v31;
    v38 = 0xBF7CAC083126E979;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_6;
    v33[3] = &unk_1E8307DE8;
    v33[4] = self;
    v34 = v18;
    [v32 animateWithDuration:0x10000 delay:v35 options:v33 animations:0.15 completion:0.0];
    v27 = v34;
LABEL_18:

    goto LABEL_19;
  }

  if (v14)
  {
    v26 = MEMORY[0x1E69DD250];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_2;
    v48[3] = &unk_1E8307D48;
    v49 = v18;
    [v26 transitionWithView:self duration:5242880 options:v48 animations:0 completion:0.5];
    v27 = v49;
    goto LABEL_18;
  }

  v18[2](v18);
LABEL_19:
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  [v2 _removeAllRetargetableAnimations:1];

  v3 = [*(a1 + 32) iconImageViewContainer];
  [v3 _removeAllRetargetableAnimations:1];

  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 && *(a1 + 56) == 1;
  v5 = [*(a1 + 32) iconImageView];
  v6 = [v5 layer];
  [v6 setMasksToBounds:v4];

  [*(a1 + 32) setIconStyle:*(a1 + 56)];
  v7 = [*(a1 + 32) iconImageView];
  [v7 setImage:*(a1 + 48)];

  v8 = [*(a1 + 32) iconImageView];
  if ([*(a1 + 32) isEnabled])
  {
    [*(a1 + 32) symbolColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] sbui_inactiveColor];
  }
  v9 = ;
  [v8 setTintColor:v9];

  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v11 = [*(a1 + 32) colorView];
  v10 = [*(a1 + 32) iconStackPlatterColorForImage:*(a1 + 48)];
  [v11 setBackgroundColor:v10];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_199(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  v3 = [v2 layer];
  [v3 setValue:&unk_1F4819AF8 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v4 = [*(a1 + 32) iconImageView];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) iconImageView];
  v6 = [v5 layer];
  CATransform3DMakeScale(&v7, 0.87, 0.87, 1.0);
  [v6 setTransform:&v7];
}

uint64_t __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_205(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_2_206;
  v5[3] = &unk_1E83086B0;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_3;
  v4[3] = &unk_1E8307D70;
  v4[4] = v6;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:1 response:v5 tracking:v4 dampingRatioSmoothing:1.0 responseSmoothing:0.45 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_4;
  v3[3] = &unk_1E83086B0;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:1 response:v3 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.34 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  [v2 setAlpha:0.4];

  v3 = [*(a1 + 32) iconImageView];
  v4 = [v3 layer];
  v5 = *(a1 + 120);
  *&v13.m31 = *(a1 + 104);
  *&v13.m33 = v5;
  v6 = *(a1 + 152);
  *&v13.m41 = *(a1 + 136);
  *&v13.m43 = v6;
  v7 = *(a1 + 56);
  *&v13.m11 = *(a1 + 40);
  *&v13.m13 = v7;
  v8 = *(a1 + 88);
  *&v13.m21 = *(a1 + 72);
  *&v13.m23 = v8;
  [v4 setTransform:&v13];

  v9 = [*(a1 + 32) iconImageViewContainer];
  v10 = [v9 layer];
  CATransform3DMakeRotation(&a, 1.57079633, 0.0, 1.0, 0.0);
  CATransform3DMakeScale(&v11, 0.94, 0.94, 1.0);
  CATransform3DConcat(&v13, &a, &v11);
  [v10 setTransform:&v13];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if ([*(a1 + 32) mode])
  {
    v7 = [*(a1 + 32) iconImageView];
    [v7 setAlpha:1.0];
  }

  else
  {
    v11 = *MEMORY[0x1E69792E8];
    v12 = *(MEMORY[0x1E69792E8] + 16);
    v2 = *(MEMORY[0x1E69792E8] + 80);
    v16 = *(MEMORY[0x1E69792E8] + 64);
    v17 = v2;
    v3 = *(MEMORY[0x1E69792E8] + 112);
    v18 = *(MEMORY[0x1E69792E8] + 96);
    v19 = v3;
    v4 = *(MEMORY[0x1E69792E8] + 48);
    v14 = *(MEMORY[0x1E69792E8] + 32);
    v15 = v4;
    v5 = [*(a1 + 32) iconImageView];
    v6 = [v5 layer];
    v13 = 0x3F7CAC083126E979;
    [v6 setTransform:&v11];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_7;
    v10[3] = &unk_1E83086B0;
    v10[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0.4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_8;
    v9[3] = &unk_1E83086B0;
    v9[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithSpringDuration:2 bounce:v9 initialSpringVelocity:0 delay:0.9 options:0.5 animations:3.0 completion:0.0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_9;
    v8[3] = &unk_1E83086B0;
    v8[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithSpringDuration:2 bounce:v8 initialSpringVelocity:0 delay:0.9 options:0.6 animations:3.0 completion:0.0];
  }
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) iconImageView];
  [v1 setAlpha:1.0];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) iconImageViewContainer];
  v2 = [v1 layer];
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v7[4] = *(MEMORY[0x1E69792E8] + 64);
  v7[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v7[6] = *(MEMORY[0x1E69792E8] + 96);
  v7[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v7[0] = *MEMORY[0x1E69792E8];
  v7[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v7[2] = *(MEMORY[0x1E69792E8] + 32);
  v7[3] = v6;
  [v2 setTransform:v7];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_9(uint64_t a1)
{
  v1 = [*(a1 + 32) iconImageView];
  v2 = [v1 layer];
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v7[4] = *(MEMORY[0x1E69792E8] + 64);
  v7[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v7[6] = *(MEMORY[0x1E69792E8] + 96);
  v7[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v7[0] = *MEMORY[0x1E69792E8];
  v7[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v7[2] = *(MEMORY[0x1E69792E8] + 32);
  v7[3] = v6;
  [v2 setTransform:v7];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_2_206(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  v1 = [v2 layer];
  [v1 setValue:&unk_1F4819AE8 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  v1 = [v2 layer];
  [v1 setFilters:0];
}

void __83__WFApertureIconView_setIconImage_associatedIcon_style_previousIconStyle_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  [v2 setAlpha:1.0];

  if (![*(a1 + 32) mode])
  {
    v3 = [*(a1 + 32) iconImageView];
    v4 = [v3 layer];
    v5 = *(MEMORY[0x1E69792E8] + 80);
    v9[4] = *(MEMORY[0x1E69792E8] + 64);
    v9[5] = v5;
    v6 = *(MEMORY[0x1E69792E8] + 112);
    v9[6] = *(MEMORY[0x1E69792E8] + 96);
    v9[7] = v6;
    v7 = *(MEMORY[0x1E69792E8] + 16);
    v9[0] = *MEMORY[0x1E69792E8];
    v9[1] = v7;
    v8 = *(MEMORY[0x1E69792E8] + 48);
    v9[2] = *(MEMORY[0x1E69792E8] + 32);
    v9[3] = v8;
    [v4 setTransform:v9];
  }
}

- (void)setIcon:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v97 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(WFApertureIconView *)self icon];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(WFApertureIconView *)self iconStyle];
    v86 = v6;
    if (v86)
    {
      objc_opt_class();
      v10 = v86;
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v86;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = v86;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v84 = v15;

      v16 = v14;
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v83 = v18;

      v19 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v82 = v9;
      if (isKindOfClass)
      {
        v22 = objc_alloc_init(MEMORY[0x1E69E0988]);
        v23 = [v19 bundleIdentifier];
        v24 = [v22 colorsForBundleIdentifier:v23 error:0];

        if (!v24)
        {
          goto LABEL_27;
        }

        v25 = [v24 backgroundGradient];

        if (v25)
        {
          v26 = [v24 backgroundGradient];
          v27 = [v26 startColor];
          [v27 UIColor];
          v28 = v4;
          v30 = v29 = v22;
          [(WFApertureIconView *)self setPrimaryColor:v30];

          v22 = v29;
          v4 = v28;
          goto LABEL_28;
        }

        v36 = [v24 tintColor];

        if (v36)
        {
          v26 = [v24 tintColor];
          v27 = [v26 UIColor];
          [(WFApertureIconView *)self setPrimaryColor:v27];
        }

        else
        {
LABEL_27:
          v26 = [v84 image];
          v27 = [WFJoeColorUtility colorForImage:v26];
          [v27 UIColor];
          v37 = v80 = v22;
          [v37 colorWithAlphaComponent:1.0];
          v38 = v21;
          v40 = v39 = v4;
          [(WFApertureIconView *)self setPrimaryColor:v40];

          v4 = v39;
          v21 = v38;

          v22 = v80;
        }

LABEL_28:
        v85 = v21;

        icon = [v19 associatedLogo];
        if ([(WFApertureIconView *)self inSiri]|| !icon)
        {
          v47 = v4;
          if ([(WFApertureIconView *)self inSiri])
          {
            v48 = 2;
          }

          else
          {
            v48 = 0;
          }

          v44 = [v19 bundleIdentifier];
          v49 = [MEMORY[0x1E696AAE8] mainBundle];
          v50 = [v49 bundleIdentifier];
          v51 = [v50 isEqualToString:*MEMORY[0x1E69E0F70]];

          if (v51)
          {
            v52 = MEMORY[0x1E698B0D0];
            v53 = [v19 bundleIdentifier];
            v54 = [v52 applicationWithBundleIdentifier:v53];

            if ([v54 isHidden])
            {

              v44 = @"INVALID_BUNDLE_ID";
            }

            v4 = v47;
            v31 = v83;
          }

          else
          {
            v4 = v47;
            v31 = v83;
          }

          v55 = [MEMORY[0x1E69E0B58] applicationIconImageForBundleIdentifier:v44 format:v48];
          v45 = [v55 UIImage];

          if (!v45)
          {
            v57 = getWFGeneralLogObject();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = [v19 bundleIdentifier];
              *buf = 136315394;
              v94 = "[WFApertureIconView setIcon:animated:]";
              v95 = 2112;
              v96 = v58;
              _os_log_impl(&dword_1C830A000, v57, OS_LOG_TYPE_ERROR, "%s Failed to load application icon for bundle ID: %@", buf, 0x16u);
            }

            v60 = v84;
            v59 = v85;
            goto LABEL_67;
          }

          v46 = 1;
        }

        else
        {
          v42 = objc_opt_class();
          v43 = [icon UIImage];
          v44 = [v42 downscaledImageForOriginalImage:v43];

          v45 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{-[__CFString CGImage](v44, "CGImage")}];
          v46 = 3;
          v31 = v83;
        }

        v56 = v19;
        goto LABEL_65;
      }

      if (v21)
      {
        v31 = v83;
        if ([v19 hasClearBackground])
        {
          [v19 hasClearBackground];
          v32 = [v21 symbolColor];
          v33 = [v32 UIColor];
          [(WFApertureIconView *)self setPrimaryColor:v33];
          v85 = v19;
LABEL_63:

          if (v84)
          {
            goto LABEL_64;
          }

          v59 = v85;
          if (v85)
          {
            v9 = v82;
            if ([v19 hasClearBackground])
            {
              v77 = objc_opt_class();
              v78 = [v85 symbolName];
              v79 = [v77 preferredImageForSymbolName:v78];

              v46 = 2;
              [(WFApertureIconView *)self setIconImage:v79 associatedIcon:v19 style:2 previousIconStyle:v82 animated:v4];

              v19 = 0;
              v60 = 0;
              goto LABEL_66;
            }
          }

          else
          {
            v85 = 0;
            v9 = v82;
          }

LABEL_48:
          v66 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__WFApertureIconView_setIcon_animated___block_invoke;
          block[3] = &unk_1E8307D20;
          v88 = v86;
          v89 = self;
          v46 = 1;
          v90 = 1;
          v91 = v9;
          v92 = v4;
          v67 = MEMORY[0x1E69E96A0];
          dispatch_after(v66, MEMORY[0x1E69E96A0], block);

          v19 = 0;
          v60 = 0;
          v59 = v85;
LABEL_66:
          self->_iconStyle = v46;
          v76 = v86;
          icon = self->_icon;
          self->_icon = v76;
LABEL_67:

          goto LABEL_68;
        }

LABEL_23:
        v34 = [v31 background];
        v81 = v4;
        v85 = v21;
        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = [v21 background];
          if (!v35)
          {
            v72 = 0;
            v32 = 0;
            goto LABEL_59;
          }
        }

        objc_opt_class();
        v68 = objc_opt_isKindOfClass();
        if (v68)
        {
          v69 = v35;
        }

        else
        {
          v69 = 0;
        }

        v70 = v69;

        v32 = v35;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = v32;
        }

        else
        {
          v71 = 0;
        }

        v72 = v71;

        if (v68)
        {
          v73 = [v32 color];
          v74 = 0;
          v33 = v32;
LABEL_60:
          v75 = [v73 UIColor];
          [(WFApertureIconView *)self setPrimaryColor:v75];

          if (v74)
          {

            v73 = v10;
          }

          v4 = v81;
          v31 = v83;
          goto LABEL_63;
        }

LABEL_59:
        v10 = [v72 gradient];
        v73 = [v10 darkBaseColor];
        v33 = 0;
        v74 = 1;
        goto LABEL_60;
      }

      v31 = v83;
      if (v17)
      {
        goto LABEL_23;
      }

      if (v84)
      {
        v61 = [v84 image];
        v62 = [WFJoeColorUtility colorForImage:v61];
        v63 = [v62 UIColor];
        v64 = [v63 colorWithAlphaComponent:1.0];
        [(WFApertureIconView *)self setPrimaryColor:v64];

        v31 = 0;
        v85 = 0;
LABEL_64:
        icon = [v19 image];
        v45 = [icon UIImage];
        v56 = 0;
        v46 = 1;
        v84 = v19;
LABEL_65:

        [(WFApertureIconView *)self setIconImage:v45 associatedIcon:v19 style:v46 previousIconStyle:v82 animated:v4];
        v19 = v56;
        v60 = v84;
        v59 = v85;
        goto LABEL_66;
      }
    }

    v65 = [MEMORY[0x1E69DC888] whiteColor];
    [(WFApertureIconView *)self setPrimaryColor:v65];

    v85 = 0;
    v31 = 0;
    goto LABEL_48;
  }

LABEL_68:
}

void __39__WFApertureIconView_setIcon_animated___block_invoke(uint64_t a1)
{
  v2 = [WFIconViewImageGenerator loadIcon:*(a1 + 32) size:3 style:50.0, 50.0];
  [*(a1 + 40) setIconImage:v2 associatedIcon:*(a1 + 32) style:*(a1 + 48) previousIconStyle:*(a1 + 56) animated:*(a1 + 64)];
}

- (void)setIcon:(id)a3 associatedAppBundleIdentifier:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  [(WFApertureIconView *)self setIcon:a3 animated:v5];
  [(WFApertureIconView *)self setAssociatedAppBundleIdentifier:v8];
}

- (void)layoutSubviews
{
  v114[4] = *MEMORY[0x1E69E9840];
  v111.receiver = self;
  v111.super_class = WFApertureIconView;
  [(WFApertureIconView *)&v111 layoutSubviews];
  v3 = [(WFApertureIconView *)self iconImageView];
  v4 = [v3 layer];
  v114[0] = v4;
  v5 = [(WFApertureIconView *)self iconImageViewContainer];
  v6 = [v5 layer];
  v114[1] = v6;
  v7 = [(WFApertureIconView *)self colorView];
  v8 = [v7 layer];
  v114[2] = v8;
  v9 = [(WFApertureIconView *)self colorViewContainer];
  v10 = [v9 layer];
  v114[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:4];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v107 objects:v113 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v108;
    v90 = *(MEMORY[0x1E69792E8] + 80);
    v92 = *(MEMORY[0x1E69792E8] + 64);
    v88 = *(MEMORY[0x1E69792E8] + 112);
    v89 = *(MEMORY[0x1E69792E8] + 96);
    v86 = *(MEMORY[0x1E69792E8] + 16);
    v87 = *MEMORY[0x1E69792E8];
    v84 = *(MEMORY[0x1E69792E8] + 48);
    v85 = *(MEMORY[0x1E69792E8] + 32);
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v108 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v107 + 1) + 8 * i);
        v19 = MEMORY[0x1E696B098];
        if (v18)
        {
          [*(*(&v107 + 1) + 8 * i) transform];
        }

        else
        {
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
        }

        v20 = [v19 valueWithCATransform3D:{&v99, v84, v85, v86, v87, v88, v89}];
        [v12 addObject:v20];

        v103 = v92;
        v104 = v90;
        v105 = v89;
        v106 = v88;
        v99 = v87;
        v100 = v86;
        v101 = v85;
        v102 = v84;
        [v18 setTransform:&v99];
      }

      v15 = [v13 countByEnumeratingWithState:&v107 objects:v113 count:16];
    }

    while (v15);
  }

  v21 = [(WFApertureIconView *)self inSiri];
  v22 = MEMORY[0x1E695EFF8];
  if (v21 || ([(WFApertureIconView *)self bounds], v23 > 25.0))
  {
    [(WFApertureIconView *)self bounds];
    v25 = v24;
    v27 = v26;
    v28 = *v22;
    v29 = v22[1];
  }

  else
  {
    if ([(WFApertureIconView *)self iconStyle]== 2 && ([(WFApertureIconView *)self icon], v30 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v30, (isKindOfClass & 1) != 0))
    {
      v32 = [(WFApertureIconView *)self icon];
      if (v32)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v38 = v33;

      v39 = [(WFApertureIconView *)self iconImageView];
      [v39 intrinsicContentSize];
      v25 = v40;
      v27 = v41;

      [(WFApertureIconView *)self bounds];
      [(WFApertureIconView *)self bounds];
      v42 = [(WFApertureIconView *)self traitCollection];
      [v42 displayScale];
      BSPointRoundForScale();

      v43 = objc_opt_class();
      v44 = [v38 symbolName];

      [v43 opticalAlignmentForSymbol:v44];
      v37 = [(WFApertureIconView *)self traitCollection];
      [v37 displayScale];
    }

    else
    {
      [(WFApertureIconView *)self iconStyle];
      v34 = [(WFApertureIconView *)self traitCollection];
      [v34 displayScale];
      BSSizeCeilForScale();
      v25 = v35;
      v27 = v36;

      [(WFApertureIconView *)self bounds];
      v37 = [(WFApertureIconView *)self traitCollection];
      [v37 displayScale];
    }

    BSPointRoundForScale();
    v28 = v45;
    v29 = v46;
  }

  v47 = [(WFApertureIconView *)self iconImageViewContainer];
  [v47 setFrame:{v28, v29, v25, v27}];

  v93 = v28;
  v91 = v29;
  if ([(WFApertureIconView *)self iconStyle]== 3)
  {
    v48 = [(WFApertureIconView *)self mode];
    v49 = *v22;
    v50 = v22[1];
    if (!v48)
    {
      v115.origin.x = *v22;
      v115.origin.y = v22[1];
      v115.size.width = v25;
      v115.size.height = v27;
      v116 = CGRectInset(v115, -1.0, -1.0);
      v51 = v27;
      x = v116.origin.x;
      y = v116.origin.y;
      width = v116.size.width;
      height = v116.size.height;
      v56 = [(WFApertureIconView *)self iconImageView];
      [v56 setFrame:{x, y, width, height}];
      goto LABEL_29;
    }
  }

  else
  {
    v49 = *v22;
    v50 = v22[1];
  }

  v56 = [(WFApertureIconView *)self iconImageView];
  [v56 setFrame:{v49, v50, v25, v27}];
  v51 = v27;
LABEL_29:

  v57 = [(WFApertureIconView *)self iconImageView];
  [v57 bounds];
  v117.origin.x = v49;
  v117.origin.y = v50;
  v118 = CGRectInset(v117, -0.1, -0.1);
  v58 = v118.origin.x;
  v59 = v118.origin.y;
  v60 = v118.size.width;
  v61 = v118.size.height;
  v62 = [(WFApertureIconView *)self iconBlendedBorderLayer];
  [v62 setFrame:{v58, v59, v60, v61}];

  v63 = [(WFApertureIconView *)self colorViewContainer];
  [v63 setFrame:{v93, v91, v25, v51}];

  v64 = [(WFApertureIconView *)self colorView];
  [v64 setFrame:{v49, v50, v25, v51}];

  v65 = v25 * *MEMORY[0x1E69E0FE0];
  v66 = [(WFApertureIconView *)self iconImageView];
  v67 = [v66 layer];
  [v67 setCornerRadius:v65];

  v68 = [(WFApertureIconView *)self iconBlendedBorderLayer];
  [v68 setCornerRadius:v65];

  v69 = [(WFApertureIconView *)self colorView];
  v70 = [v69 layer];
  [v70 setCornerRadius:v65];

  [(WFApertureIconView *)self bounds];
  v72 = v71;
  v73 = [(WFApertureIconView *)self iconBlendedBorderLayer];
  v74 = v73;
  if (v72 <= 25.0)
  {
    v75 = [(WFApertureIconView *)self traitCollection];
    [v75 displayScale];
    BSFloatRoundForScale();
    [v74 setBorderWidth:?];
  }

  else
  {
    [v73 setBorderWidth:0.75];
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v76 = v13;
  v77 = [v76 countByEnumeratingWithState:&v95 objects:v112 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v96;
    do
    {
      for (j = 0; j != v78; ++j)
      {
        if (*v96 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v95 + 1) + 8 * j);
        v82 = [v12 objectAtIndex:0];
        v83 = v82;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        if (v82)
        {
          [v82 CATransform3DValue];
        }

        v94[4] = v103;
        v94[5] = v104;
        v94[6] = v105;
        v94[7] = v106;
        v94[0] = v99;
        v94[1] = v100;
        v94[2] = v101;
        v94[3] = v102;
        [v81 setTransform:v94];
        [v12 removeObjectAtIndex:0];
      }

      v78 = [v76 countByEnumeratingWithState:&v95 objects:v112 count:16];
    }

    while (v78);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (![(WFApertureIconView *)self inSiri])
  {
    v10 = [(WFApertureIconView *)self icon];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [(WFApertureIconView *)self icon];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (sizeThatFits__onceToken == -1)
    {
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&sizeThatFits__onceToken, &__block_literal_global_167);
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    if ([(WFApertureIconView *)self iconStyle]== 2)
    {
      v16 = [v12 symbolName];
      v17 = unfilledVariantForSymbolName(v16);

      v9 = 24.0;
      v7 = 24.0;
      if (([v17 isEqualToString:@"qrcode.viewfinder"] & 1) == 0)
      {
        v18 = [objc_opt_class() preferredImageForSymbolName:v17];
        [v18 size];
        v20 = v19;
        v9 = v21;

        v22 = [sizeThatFits__horizontalWidthIncreaseOverrideMapping objectForKeyedSubscript:v17];
        [v22 floatValue];
        v24 = v23;

        v7 = v20 + v24;
        if (v7 <= v9)
        {
          if (v7 == v9)
          {
            v7 = 22.0;
            v9 = 23.333;
          }
        }

        else
        {
          v7 = fmin(v7 + 8.0, 28.0);
        }
      }

LABEL_26:
      goto LABEL_27;
    }

LABEL_23:
    v9 = 24.0;
    v7 = 27.333;
    if (v15 && [(WFApertureIconView *)self iconStyle]== 3)
    {
      v25 = sizeThatFits__horizontalWidthIncreaseOverrideMapping;
      v26 = [v15 bundleIdentifier];
      v27 = [v25 objectForKeyedSubscript:v26];
      [v27 floatValue];
      v29 = v28;

      v7 = v29 + 22.0;
      v9 = 23.333;
    }

    goto LABEL_26;
  }

  v32.receiver = self;
  v32.super_class = WFApertureIconView;
  [(WFApertureIconView *)&v32 sizeThatFits:width, height];
  v7 = v6;
  v9 = v8;
LABEL_27:
  v30 = v7;
  v31 = v9;
  result.height = v31;
  result.width = v30;
  return result;
}

void __35__WFApertureIconView_sizeThatFits___block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v4[0] = @"square.and.pencil";
  v4[1] = @"music";
  v5[0] = &unk_1F4819AA8;
  v5[1] = &unk_1F4819AB8;
  v0 = *MEMORY[0x1E69E0F88];
  v4[2] = @"apple.keynote";
  v4[3] = v0;
  v5[2] = &unk_1F4819AA8;
  v5[3] = &unk_1F4819AC8;
  v1 = *MEMORY[0x1E69E0EF0];
  v4[4] = *MEMORY[0x1E69E0E80];
  v4[5] = v1;
  v5[4] = &unk_1F4819AD8;
  v5[5] = &unk_1F4819AD8;
  v4[6] = *MEMORY[0x1E69E0F90];
  v5[6] = &unk_1F4819AA8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:7];
  v3 = sizeThatFits__horizontalWidthIncreaseOverrideMapping;
  sizeThatFits__horizontalWidthIncreaseOverrideMapping = v2;
}

- (WFApertureIconView)initWithApplicationBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69E0960];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5];

  v7 = [(WFApertureIconView *)self initWithIcon:v6];
  if (v7)
  {
    v8 = v7;
  }

  return v7;
}

- (WFApertureIconView)initWithIcon:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = WFApertureIconView;
  v5 = [(WFApertureIconView *)&v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_mode = 0;
    v5->_iconStyle = 0;
    v7 = [MEMORY[0x1E69DC888] systemWhiteColor];
    primaryColor = v6->_primaryColor;
    v6->_primaryColor = v7;

    v6->_enabled = 1;
    [(WFApertureIconView *)v6 setUserInteractionEnabled:0];
    v9 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 24.0, 24.0}];
    v10 = [v9 layer];
    [v10 setAllowsEdgeAntialiasing:1];

    v11 = [v9 layer];
    [v11 setShadowRadius:6.0];

    v12 = [v9 layer];
    LODWORD(v13) = 1051931443;
    [v12 setShadowOpacity:v13];

    [(WFApertureIconView *)v6 addSubview:v9];
    objc_storeStrong(&v6->_iconImageViewContainer, v9);
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, 24.0, 24.0}];
    [v14 setContentMode:1];
    v15 = [v14 layer];
    v16 = *MEMORY[0x1E69796E8];
    [v15 setCornerCurve:*MEMORY[0x1E69796E8]];

    v17 = [v14 layer];
    [v17 setAllowsEdgeAntialiasing:1];

    [v9 addSubview:v14];
    objc_storeStrong(&v6->_iconImageView, v14);
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 24.0, 24.0}];
    v19 = [v18 layer];
    [v19 setAllowsEdgeAntialiasing:1];

    [(WFApertureIconView *)v6 insertSubview:v18 atIndex:0];
    objc_storeStrong(&v6->_colorViewContainer, v18);
    v20 = objc_opt_new();
    [v20 setHidden:1];
    v21 = [v20 layer];
    [v21 setCornerCurve:v16];

    v22 = [v20 layer];
    [v22 setMasksToBounds:1];

    v23 = [v20 layer];
    [v23 setAllowsEdgeAntialiasing:1];

    [v18 addSubview:v20];
    objc_storeStrong(&v6->_colorView, v20);
    v24 = [(WFApertureIconView *)v6 iconImageView];
    v25 = [v24 layer];
    [v25 addObserver:v6 forKeyPath:@"allowsEdgeAntialiasing" options:1 context:0];

    [(WFApertureIconView *)v6 setIcon:v4 animated:0];
    if ([(WFApertureIconView *)v6 inSiri])
    {
      v26 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__WFApertureIconView_initWithIcon___block_invoke;
      block[3] = &unk_1E83086B0;
      v30 = v6;
      dispatch_after(v26, MEMORY[0x1E69E96A0], block);
    }

    v27 = v6;
  }

  return v6;
}

+ (id)downscaledImageForOriginalImage:(id)a3
{
  v3 = MEMORY[0x1E69DCEB0];
  v4 = a3;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;
  v11.width = 36.0;
  v11.height = 36.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v7);

  [v4 drawInRect:{0.0, 0.0, 36.0, 36.0}];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (id)preferredImageForSymbolName:(id)a3
{
  v4 = unfilledVariantForSymbolName(a3);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__WFApertureIconView_preferredImageForSymbolName___block_invoke;
  aBlock[3] = &__block_descriptor_40_e27___UIImage_16__0__NSString_8l;
  aBlock[4] = a1;
  v5 = _Block_copy(aBlock);
  if (([&unk_1F4819B08 containsObject:v4] & 1) != 0 || (objc_msgSend(v4, "stringByAppendingString:", @".fill"), v6 = objc_claimAutoreleasedReturnValue(), v5[2](v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = v5[2](v5, v4);
  }

  return v7;
}

id __50__WFApertureIconView_preferredImageForSymbolName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() configurationForSymbol:v2];
  v4 = MEMORY[0x1E69E0B58];
  [v3 pointSize];
  v6 = [v4 glyphNamed:v2 pointSize:objc_msgSend(v3 symbolWeight:"weight") scaleFactor:{v5, 4.0}];
  v7 = [v6 UIImage];

  if (!v7)
  {
    v8 = MEMORY[0x1E69DCAB8];
    v9 = MEMORY[0x1E69DCAD8];
    [v3 pointSize];
    v10 = [v9 configurationWithPointSize:5 weight:?];
    v7 = [v8 _systemImageNamed:v2 withConfiguration:v10];
  }

  return v7;
}

+ (CGSize)opticalAlignmentForSymbol:(id)a3
{
  v3 = unfilledVariantForSymbolName(a3);
  if (opticalAlignmentForSymbol__onceToken != -1)
  {
    dispatch_once(&opticalAlignmentForSymbol__onceToken, &__block_literal_global_138);
  }

  v4 = [opticalAlignmentForSymbol__opticalAlignmentOverrideMapping objectForKeyedSubscript:v3];
  [v4 CGSizeValue];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v10 = [objc_opt_class() configurationForSymbol:v3];
    [v10 pointSize];
    v12 = v11;

    [WFSymbolAlignment absoluteOffsetFor:v3 fontSize:v12];
    v6 = v13;
    v8 = v14;
  }

  v15 = v6;
  v16 = v8;
  result.height = v16;
  result.width = v15;
  return result;
}

void __48__WFApertureIconView_opticalAlignmentForSymbol___block_invoke()
{
  v11[8] = *MEMORY[0x1E69E9840];
  v10[0] = @"square.and.pencil";
  v0 = [MEMORY[0x1E696B098] valueWithCGSize:{1.6, -1.3}];
  v11[0] = v0;
  v10[1] = @"music";
  v1 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, -0.3}];
  v11[1] = v1;
  v10[2] = @"apple.pages";
  v2 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, -0.3}];
  v11[2] = v2;
  v10[3] = @"apple.numbers";
  v3 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, -1.0}];
  v11[3] = v3;
  v10[4] = @"star";
  v4 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, -0.3}];
  v11[4] = v4;
  v10[5] = @"pin";
  v5 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, 1.3}];
  v11[5] = v5;
  v10[6] = @"alarm";
  v6 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, -0.3}];
  v11[6] = v6;
  v10[7] = @"rocket";
  v7 = [MEMORY[0x1E696B098] valueWithCGSize:{0.0, -0.3}];
  v11[7] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:8];
  v9 = opticalAlignmentForSymbol__opticalAlignmentOverrideMapping;
  opticalAlignmentForSymbol__opticalAlignmentOverrideMapping = v8;
}

+ (id)configurationForSymbol:(id)a3
{
  v3 = unfilledVariantForSymbolName(a3);
  if (configurationForSymbol__onceToken != -1)
  {
    dispatch_once(&configurationForSymbol__onceToken, &__block_literal_global_72);
  }

  v4 = [configurationForSymbol__symbolConfigurationMapping objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if ([v3 containsString:@".circle"])
    {
      [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:19.0];
    }

    else
    {
      [objc_opt_class() defaultSymbolConfiguration];
    }
    v6 = ;
  }

  v7 = v6;

  return v7;
}

void __45__WFApertureIconView_configurationForSymbol___block_invoke()
{
  v23[20] = *MEMORY[0x1E69E9840];
  v22[0] = @"timer";
  v21 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:19.0];
  v23[0] = v21;
  v22[1] = @"clock";
  v20 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:19.0];
  v23[1] = v20;
  v22[2] = @"alarm";
  v19 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:17.0];
  v23[2] = v19;
  v22[3] = @"doc.viewfinder";
  v18 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:17.0];
  v23[3] = v18;
  v22[4] = @"headphones";
  v17 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:16.0];
  v23[4] = v17;
  v22[5] = @"appletvremote.gen4";
  v16 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:19.0];
  v23[5] = v16;
  v22[6] = @"apple.podcasts";
  v15 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:19.0];
  v23[6] = v15;
  v22[7] = @"square.and.pencil";
  v14 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:19.0];
  v23[7] = v14;
  v22[8] = @"music";
  v13 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:18.0];
  v23[8] = v13;
  v22[9] = @"apple.freeform";
  v12 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:17.0];
  v23[9] = v12;
  v22[10] = @"apple.pages";
  v0 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:18.0];
  v23[10] = v0;
  v22[11] = @"apple.numbers";
  v1 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:17.0];
  v23[11] = v1;
  v22[12] = @"apple.keynote";
  v2 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:18.0];
  v23[12] = v2;
  v22[13] = @"video";
  v3 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:17.0];
  v23[13] = v3;
  v22[14] = @"star";
  v4 = [WFApertureSymbolConfiguration configurationWithPointSize:7 weight:17.0];
  v23[14] = v4;
  v22[15] = @"pin";
  v5 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:17.0];
  v23[15] = v5;
  v22[16] = @"note.text";
  v6 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:18.0];
  v23[16] = v6;
  v22[17] = @"qrcode.viewfinder";
  v7 = [WFApertureSymbolConfiguration configurationWithPointSize:6 weight:19.0];
  v23[17] = v7;
  v22[18] = @"rectangle.grid.2x2";
  v8 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:17.0];
  v23[18] = v8;
  v22[19] = @"rocket";
  v9 = [WFApertureSymbolConfiguration configurationWithPointSize:5 weight:16.0];
  v23[19] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:20];
  v11 = configurationForSymbol__symbolConfigurationMapping;
  configurationForSymbol__symbolConfigurationMapping = v10;
}

@end