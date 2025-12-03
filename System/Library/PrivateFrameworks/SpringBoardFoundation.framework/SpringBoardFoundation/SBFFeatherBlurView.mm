@interface SBFFeatherBlurView
+ (BOOL)_requiresLowQualityFeatherBlur:(unint64_t)blur;
+ (UIEdgeInsets)gradientMaskLayerInsetsForFeatherBlurRecipe:(unint64_t)recipe;
+ (id)configureGradientMaskForFeatherBlurRecipe:(unint64_t)recipe onContentView:(id)view;
+ (id)matchMoveAnimationForFrame:(CGRect)frame relativeToView:(id)view;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (SBFFeatherBlurView)initWithRecipe:(unint64_t)recipe;
- (void)layoutSubviews;
@end

@implementation SBFFeatherBlurView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBFFeatherBlurView;
  [(SBFFeatherBlurView *)&v3 layoutSubviews];
  [(SBFFeatherBlurView *)self bounds];
  [(MTMaterialView *)self->_backgroundBlurView setFrame:?];
}

+ (BOOL)_requiresLowQualityFeatherBlur:(unint64_t)blur
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sbf_featherBlurGraphicsQuality = [currentDevice sbf_featherBlurGraphicsQuality];

  return (blur == 2 || (blur & 0xFFFFFFFFFFFFFFFDLL) == 1) && sbf_featherBlurGraphicsQuality < 100;
}

- (SBFFeatherBlurView)initWithRecipe:(unint64_t)recipe
{
  v17.receiver = self;
  v17.super_class = SBFFeatherBlurView;
  v4 = [(SBFFeatherBlurView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    if (recipe > 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_1E807F5A0[recipe];
      *&v4->_intrinsicHeight = qword_1BEAD3C00[recipe];
    }

    v7 = MEMORY[0x1E69AE158];
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v7 materialViewWithRecipeNamed:v6 inBundle:v8 options:0 initialWeighting:0 scaleAdjustment:0.99];
    backgroundBlurView = v5->_backgroundBlurView;
    v5->_backgroundBlurView = v9;

    v11 = [objc_opt_class() _requiresLowQualityFeatherBlur:recipe];
    v12 = v5->_backgroundBlurView;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__SBFFeatherBlurView_initWithRecipe___block_invoke;
    v15[3] = &__block_descriptor_33_e8_d16__0d8l;
    v16 = v11;
    [(MTMaterialView *)v12 setBackdropScaleAdjustment:v15];
    v13 = v5->_backgroundBlurView;
    [(SBFFeatherBlurView *)v5 bounds];
    [(MTMaterialView *)v13 setFrame:?];
    [(SBFFeatherBlurView *)v5 addSubview:v5->_backgroundBlurView];
    [(MTMaterialView *)v5->_backgroundBlurView setWeighting:1.0];
  }

  return v5;
}

double __37__SBFFeatherBlurView_initWithRecipe___block_invoke(uint64_t a1, double a2)
{
  v2 = 0.6;
  if (*(a1 + 32))
  {
    v2 = 0.4;
  }

  return v2 / a2;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  intrinsicHeight = self->_intrinsicHeight;
  result.height = intrinsicHeight;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  intrinsicHeight = self->_intrinsicHeight;
  result.height = intrinsicHeight;
  return result;
}

+ (id)configureGradientMaskForFeatherBlurRecipe:(unint64_t)recipe onContentView:(id)view
{
  v51[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  superview = [viewCopy superview];
  if (!superview)
  {
    [SBFFeatherBlurView configureGradientMaskForFeatherBlurRecipe:a2 onContentView:self];
  }

  if ([objc_opt_class() _requiresLowQualityFeatherBlur:recipe])
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  viewCopy = [v10 stringWithFormat:@"<%@:%p>:destOut", v12, viewCopy];

  layer = [MEMORY[0x1E6979310] layer];
  [layer setCaptureOnly:1];
  [layer setGroupName:viewCopy];
  layer2 = [superview layer];
  layer3 = [viewCopy layer];
  [layer2 insertSublayer:layer below:layer3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v18 = whiteColor;
  v19 = 0;
  v43 = layer;
  if (recipe <= 2)
  {
    if (!recipe)
    {
      v21 = [whiteColor colorWithAlphaComponent:0.84];
      v51[0] = [v21 CGColor];
      v22 = [v18 colorWithAlphaComponent:0.66];
      v51[1] = [v22 CGColor];
      v25 = [v18 colorWithAlphaComponent:0.0];
      v51[2] = [v25 CGColor];
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];

      v19 = &unk_1F3D3ECB8;
      goto LABEL_17;
    }

    if (recipe != 1)
    {
      v20 = 0;
      if (recipe == 2)
      {
        v21 = [whiteColor colorWithAlphaComponent:0.84];
        v50[0] = [v21 CGColor];
        v22 = [v18 colorWithAlphaComponent:0.0];
        v50[1] = [v22 CGColor];
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
        v19 = &unk_1F3D3ECD0;
LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_18;
    }

LABEL_14:
    v21 = [whiteColor colorWithAlphaComponent:0.84];
    v49[0] = [v21 CGColor];
    v22 = [v18 colorWithAlphaComponent:0.66];
    v49[1] = [v22 CGColor];
    v24 = [v18 colorWithAlphaComponent:0.0];
    v49[2] = [v24 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];

    v19 = &unk_1F3D3ECE8;
    goto LABEL_17;
  }

  if (recipe == 3)
  {
    goto LABEL_14;
  }

  if (recipe == 4)
  {
    v21 = [whiteColor colorWithAlphaComponent:0.77];
    v48[0] = [v21 CGColor];
    v22 = [v18 colorWithAlphaComponent:0.81];
    v48[1] = [v22 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v19 = &unk_1F3D3ED00;
    goto LABEL_17;
  }

  v20 = 0;
  if (recipe == 7)
  {
    v21 = [whiteColor colorWithAlphaComponent:0.84];
    v47[0] = [v21 CGColor];
    v22 = [v18 colorWithAlphaComponent:0.42];
    v47[1] = [v22 CGColor];
    v23 = [v18 colorWithAlphaComponent:0.0];
    v47[2] = [v23 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];

    v19 = &unk_1F3D3ED18;
    goto LABEL_17;
  }

LABEL_18:
  v42 = v20;
  layer4 = [MEMORY[0x1E6979380] layer];
  [layer4 setType:*MEMORY[0x1E6979DA0]];
  [layer4 setColors:v20];
  [layer4 setLocations:v19];
  [layer4 setStartPoint:{0.5, 0.0}];
  [layer4 setEndPoint:{0.5, 1.0}];
  [layer4 setCompositingFilter:*MEMORY[0x1E69798E8]];
  layer5 = [superview layer];
  layer6 = [viewCopy layer];
  [layer5 insertSublayer:layer4 above:layer6];

  layer7 = [MEMORY[0x1E6979310] layer];
  [layer7 setGroupName:viewCopy];
  [layer7 setCompositingFilter:*MEMORY[0x1E69798F0]];
  layer8 = [superview layer];
  [layer8 insertSublayer:layer7 above:layer4];

  layer9 = [superview layer];
  [layer9 setAllowsGroupBlending:0];

  v45[0] = @"position";
  null = [MEMORY[0x1E695DFB0] null];
  v46[0] = null;
  v45[1] = @"bounds";
  [MEMORY[0x1E695DFB0] null];
  v33 = v41 = viewCopy;
  v46[1] = v33;
  v45[2] = @"opacity";
  null2 = [MEMORY[0x1E695DFB0] null];
  v46[2] = null2;
  v45[3] = @"hidden";
  [MEMORY[0x1E695DFB0] null];
  v35 = superview;
  v36 = viewCopy;
  v38 = v37 = v18;
  v46[3] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];

  [v43 setActions:v39];
  [layer4 setActions:v39];
  [layer7 setActions:v39];
  v44[0] = v43;
  v44[1] = layer4;
  v44[2] = layer7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];

  viewCopy = v36;
  superview = v35;

LABEL_19:

  return v9;
}

+ (UIEdgeInsets)gradientMaskLayerInsetsForFeatherBlurRecipe:(unint64_t)recipe
{
  if (recipe - 4 >= 4)
  {
    v3 = 0.0;
    v5 = 30.0;
    if (recipe != 3)
    {
      v5 = -10.0;
    }

    v4 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (id)matchMoveAnimationForFrame:(CGRect)frame relativeToView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26[4] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69793B8];
  viewCopy = view;
  v10 = objc_alloc_init(v8);
  layer = [viewCopy layer];

  [v10 setSourceLayer:layer];
  v12 = MEMORY[0x1E696B098];
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v14 = [v12 valueWithCGPoint:{MinX, CGRectGetMinY(v29)}];
  v26[0] = v14;
  v15 = MEMORY[0x1E696B098];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MaxX = CGRectGetMaxX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v17 = [v15 valueWithCGPoint:{MaxX, CGRectGetMinY(v31)}];
  v26[1] = v17;
  v18 = MEMORY[0x1E696B098];
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v19 = CGRectGetMaxX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v20 = [v18 valueWithCGPoint:{v19, CGRectGetMaxY(v33)}];
  v26[2] = v20;
  v21 = MEMORY[0x1E696B098];
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v22 = CGRectGetMinX(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v23 = [v21 valueWithCGPoint:{v22, CGRectGetMaxY(v35)}];
  v26[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v10 setSourcePoints:v24];

  [v10 setAppliesScale:1];
  [v10 setAppliesRotation:0];
  [v10 setDuration:INFINITY];
  [v10 setFillMode:*MEMORY[0x1E69797E0]];
  [v10 setRemovedOnCompletion:0];

  return v10;
}

+ (void)configureGradientMaskForFeatherBlurRecipe:(uint64_t)a1 onContentView:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFFeatherBlurView.m" lineNumber:121 description:@"contentView must have a superview."];
}

@end