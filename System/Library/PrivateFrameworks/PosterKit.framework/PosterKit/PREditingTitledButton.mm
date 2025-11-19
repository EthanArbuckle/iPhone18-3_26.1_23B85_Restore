@interface PREditingTitledButton
+ (CGSize)defaultPreferredContentFittingSize;
+ (PREditingTitledButtonMetrics)defaultMetrics;
+ (id)_bestFontForTitle:(id)a3 inMaximumWidth:(double)a4 withMetrics:(PREditingTitledButtonMetrics)a5 titleSize:(CGSize *)a6 fontAttributes:(id *)a7;
+ (id)bestFontForTitle:(id)a3 fittingInWidth:(double)a4;
- (CGSize)preferredContentFittingSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PREditingTitledButton)initWithFrame:(CGRect)a3;
- (PREditingTitledButtonMetrics)metrics;
- (UIEdgeInsets)alignmentRectInsets;
- (id)contentImageWithTitle:(id)a3;
- (id)defaultContentImage;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setFrameFromVisibleFrame:(CGRect)a3;
- (void)setPreferredContentFittingSize:(CGSize)a3;
@end

@implementation PREditingTitledButton

- (PREditingTitledButton)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PREditingTitledButton;
  v3 = [(PREditingTitledButton *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    p_preferredContentFittingSize = &v3->_preferredContentFittingSize;
    [objc_opt_class() defaultPreferredContentFittingSize];
    *&p_preferredContentFittingSize->width = v6;
    v4->_preferredContentFittingSize.height = v7;
    v8 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v9 = [v8 background];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:v10];

    [(PREditingTitledButton *)v4 setConfiguration:v8];
    v11 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    [(PREditingTitledButton *)v4 addInteraction:v11];
  }

  return v4;
}

- (PREditingTitledButtonMetrics)metrics
{
  v2 = objc_opt_class();

  [v2 defaultMetrics];
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (PREditingTitledButtonMetrics)defaultMetrics
{
  v2 = 60.0;
  v3 = 10.0;
  v4 = 15.0;
  v5 = 9.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)setPreferredContentFittingSize:(CGSize)a3
{
  if (a3.width != self->_preferredContentFittingSize.width || a3.height != self->_preferredContentFittingSize.height)
  {
    self->_preferredContentFittingSize = a3;
    [(PREditingButton *)self _didInvalidateContentImageMetrics];

    [(PREditingTitledButton *)self invalidateIntrinsicContentSize];
  }
}

+ (CGSize)defaultPreferredContentFittingSize
{
  v2 = 68.0;
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setFrameFromVisibleFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PREditingTitledButton *)self configuration];
  [v8 contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(PREditingTitledButton *)self setFrame:x - v12, y - v10, width + v12 + v16, height + v10 + v14];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PREditingTitledButton *)self preferredContentFittingSize];
  v7 = v6;
  v9 = v8;
  v10 = [(PREditingTitledButton *)self configuration];
  [v10 contentInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = width == *MEMORY[0x1E695F060];
  if (height != *(MEMORY[0x1E695F060] + 8))
  {
    v19 = 0;
  }

  if (height > v16 + v9 + v12 || v19)
  {
    v21 = v16 + v9 + v12;
  }

  else
  {
    v21 = height;
  }

  if (width > v18 + v7 + v14)
  {
    v19 = 1;
  }

  if (v19)
  {
    v22 = v18 + v7 + v14;
  }

  else
  {
    v22 = width;
  }

  result.height = v21;
  result.width = v22;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(PREditingTitledButton *)self configuration];
  [v3 contentInsets];

  [(PREditingTitledButton *)self effectiveUserInterfaceLayoutDirection];

  PRDirectionalEdgeInsetsGetEdgeInsets();
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)contentImageWithTitle:(id)a3
{
  v4 = a3;
  [(PREditingTitledButton *)self metrics];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PREditingTitledButton *)self preferredContentFittingSize];
  v14 = v13 - v8;
  v44 = *MEMORY[0x1E695F060];
  v43 = 0;
  v15 = [objc_opt_class() _bestFontForTitle:v4 inMaximumWidth:&v44 withMetrics:&v43 titleSize:v13 - v8 fontAttributes:{v6, v8, v10, v12}];
  v16 = v43;
  v17 = *&v44;
  if (*&v44 > v14)
  {
    *&v44 = v14;
    v17 = v14;
  }

  v18 = *(&v44 + 1);
  v42 = v44;
  v40 = 0.0;
  v41 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  if (v15 && CTFontGetLanguageAwareOutsets())
  {
    v19 = v41;
    v20 = v40;
    if (v41 < v39)
    {
      v19 = v39;
    }

    if (v40 < v38)
    {
      v20 = v38;
    }

    v17 = v17 + v19 + v19;
    v18 = v18 + v20 + v20;
    v21 = v19 + 0.0;
    v22 = v20 + 0.0;
  }

  else
  {
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    v41 = 0.0;
    v22 = 0.0;
    v21 = 0.0;
  }

  v23 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v17, v18}];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __47__PREditingTitledButton_contentImageWithTitle___block_invoke;
  v32 = &unk_1E78436B0;
  v35 = v21;
  v36 = v22;
  v37 = v42;
  v33 = v4;
  v34 = v16;
  v24 = v16;
  v25 = v4;
  v26 = [v23 imageWithActions:&v29];
  v27 = [v26 imageWithAlignmentRectInsets:{v40, v41, v38, v39, v29, v30, v31, v32}];

  return v27;
}

uint64_t __47__PREditingTitledButton_contentImageWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 scale];
  UIRectIntegralWithScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);

  return [v12 drawWithRect:1 options:v13 attributes:0 context:{v5, v7, v9, v11}];
}

+ (id)bestFontForTitle:(id)a3 fittingInWidth:(double)a4
{
  v6 = a3;
  [a1 defaultMetrics];
  v11 = [a1 _bestFontForTitle:v6 inMaximumWidth:0 withMetrics:0 titleSize:a4 - v7 fontAttributes:{v8, v7, v9, v10}];

  return v11;
}

+ (id)_bestFontForTitle:(id)a3 inMaximumWidth:(double)a4 withMetrics:(PREditingTitledButtonMetrics)a5 titleSize:(CGSize *)a6 fontAttributes:(id *)a7
{
  var3 = a5.var3;
  var2 = a5.var2;
  v27[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v13 setLineBreakMode:4];
  [v13 setAlignment:0];
  if (var2 < var3)
  {
    v14 = 0;
    v15 = 0;
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
    if (!a6)
    {
      goto LABEL_9;
    }

LABEL_8:
    a6->width = v16;
    a6->height = v17;
    goto LABEL_9;
  }

  v25 = a7;
  v15 = 0;
  v14 = 0;
  v18 = *MEMORY[0x1E69DB958];
  v19 = *MEMORY[0x1E69DB648];
  v20 = *MEMORY[0x1E69DB688];
  do
  {
    v21 = v14;
    v22 = v15;
    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:var2 weight:{v18, v25}];

    v26[0] = v19;
    v26[1] = v20;
    v27[0] = v15;
    v27[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    [v12 sizeWithAttributes:v14];
    if (v16 <= a4)
    {
      break;
    }

    var2 = var2 + -1.0;
  }

  while (var2 >= var3);
  a7 = v25;
  if (a6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a7)
  {
    v23 = v14;
    *a7 = v14;
  }

  return v15;
}

- (id)defaultContentImage
{
  if ([objc_opt_class() editingTitledButtonType] == 1)
  {
    if (defaultContentImage_onceToken != -1)
    {
      [PREditingTitledButton defaultContentImage];
    }

    v3 = [objc_opt_class() editingTitledButtonTitle];
    v4 = [(PREditingTitledButton *)self contentImageWithTitle:v3];
    v5 = defaultContentImage_image;
    defaultContentImage_image = v4;
  }

  else
  {
    [(PREditingTitledButton *)self metrics];
    v3 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:v6];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    if (v7 == v8)
    {
      [v9 editingTitledButtonSymbolName:{-[PREditingTitledButton isSelected](self, "isSelected")}];
    }

    else
    {
      [v9 editingTitledButtonSymbolName];
    }
    v5 = ;
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5 withConfiguration:v3];
    v11 = defaultContentImage_image;
    defaultContentImage_image = v10;

    v12 = defaultContentImage_image;
    v13 = [MEMORY[0x1E69DC888] blackColor];
    v14 = [v12 imageWithTintColor:v13 renderingMode:1];
    v15 = defaultContentImage_image;
    defaultContentImage_image = v14;
  }

  v16 = defaultContentImage_image;

  return v16;
}

void __44__PREditingTitledButton_defaultContentImage__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DD898];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_156];
}

void __44__PREditingTitledButton_defaultContentImage__block_invoke_2()
{
  v0 = defaultContentImage_image;
  defaultContentImage_image = 0;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = MEMORY[0x1E69DCDC0];
  v7 = a5;
  [(PREditingTitledButton *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 identifier];

  v17 = [v6 regionWithRect:v16 identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(PREditingButton *)self style:a3];
  if ((v5 - 1) < 7)
  {
    v6 = [(PREditingButton *)self backgroundView];
LABEL_3:
    v7 = v6;
    goto LABEL_4;
  }

  if (!v5)
  {
    v6 = [(PREditingButton *)self materialBackgroundView];
    goto LABEL_3;
  }

  v7 = 0;
LABEL_4:
  v8 = self;
  v9 = v8;
  if (v8)
  {
    v10 = [(PREditingTitledButton *)v8 configuration];
    [v10 contentInsets];
    v29 = v11;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v13 = *(MEMORY[0x1E69DC5C0] + 8);
    v29 = *MEMORY[0x1E69DC5C0];
    v15 = *(MEMORY[0x1E69DC5C0] + 16);
    v17 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  [v7 _cornerRadius];
  [(PREditingTitledButton *)v9 bounds];
  v22 = [MEMORY[0x1E69DC728] _bezierPathWithPillRect:PRDirectionalEdgeInsetsInsetRect(-[PREditingTitledButton effectiveUserInterfaceLayoutDirection](v9 cornerRadius:{"effectiveUserInterfaceLayoutDirection"), v18, v19, v20, v21, v29, v13, v15, v17)}];
  v23 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v23 setShadowPath:v22];
  v24 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v9 parameters:v23];
  v25 = [MEMORY[0x1E69DCDB8] effectWithPreview:v24];
  v26 = [MEMORY[0x1E69DCDC8] shapeWithPath:v22];
  v27 = [MEMORY[0x1E69DCDD0] styleWithEffect:v25 shape:v26];

  return v27;
}

- (CGSize)preferredContentFittingSize
{
  width = self->_preferredContentFittingSize.width;
  height = self->_preferredContentFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end