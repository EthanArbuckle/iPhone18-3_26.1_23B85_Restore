@interface PREditingTitledButton
+ (CGSize)defaultPreferredContentFittingSize;
+ (PREditingTitledButtonMetrics)defaultMetrics;
+ (id)_bestFontForTitle:(id)title inMaximumWidth:(double)width withMetrics:(PREditingTitledButtonMetrics)metrics titleSize:(CGSize *)size fontAttributes:(id *)attributes;
+ (id)bestFontForTitle:(id)title fittingInWidth:(double)width;
- (CGSize)preferredContentFittingSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PREditingTitledButton)initWithFrame:(CGRect)frame;
- (PREditingTitledButtonMetrics)metrics;
- (UIEdgeInsets)alignmentRectInsets;
- (id)contentImageWithTitle:(id)title;
- (id)defaultContentImage;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setFrameFromVisibleFrame:(CGRect)frame;
- (void)setPreferredContentFittingSize:(CGSize)size;
@end

@implementation PREditingTitledButton

- (PREditingTitledButton)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = PREditingTitledButton;
  v3 = [(PREditingTitledButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    p_preferredContentFittingSize = &v3->_preferredContentFittingSize;
    [objc_opt_class() defaultPreferredContentFittingSize];
    *&p_preferredContentFittingSize->width = v6;
    v4->_preferredContentFittingSize.height = v7;
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    background = [plainButtonConfiguration background];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [background setBackgroundColor:clearColor];

    [(PREditingTitledButton *)v4 setConfiguration:plainButtonConfiguration];
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

- (void)setPreferredContentFittingSize:(CGSize)size
{
  if (size.width != self->_preferredContentFittingSize.width || size.height != self->_preferredContentFittingSize.height)
  {
    self->_preferredContentFittingSize = size;
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

- (void)setFrameFromVisibleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configuration = [(PREditingTitledButton *)self configuration];
  [configuration contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(PREditingTitledButton *)self setFrame:x - v12, y - v10, width + v12 + v16, height + v10 + v14];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(PREditingTitledButton *)self preferredContentFittingSize];
  v7 = v6;
  v9 = v8;
  configuration = [(PREditingTitledButton *)self configuration];
  [configuration contentInsets];
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
  configuration = [(PREditingTitledButton *)self configuration];
  [configuration contentInsets];

  [(PREditingTitledButton *)self effectiveUserInterfaceLayoutDirection];

  PRDirectionalEdgeInsetsGetEdgeInsets();
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)contentImageWithTitle:(id)title
{
  titleCopy = title;
  [(PREditingTitledButton *)self metrics];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PREditingTitledButton *)self preferredContentFittingSize];
  v14 = v13 - v8;
  v44 = *MEMORY[0x1E695F060];
  v43 = 0;
  v15 = [objc_opt_class() _bestFontForTitle:titleCopy inMaximumWidth:&v44 withMetrics:&v43 titleSize:v13 - v8 fontAttributes:{v6, v8, v10, v12}];
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
  v33 = titleCopy;
  v34 = v16;
  v24 = v16;
  v25 = titleCopy;
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

+ (id)bestFontForTitle:(id)title fittingInWidth:(double)width
{
  titleCopy = title;
  [self defaultMetrics];
  v11 = [self _bestFontForTitle:titleCopy inMaximumWidth:0 withMetrics:0 titleSize:width - v7 fontAttributes:{v8, v7, v9, v10}];

  return v11;
}

+ (id)_bestFontForTitle:(id)title inMaximumWidth:(double)width withMetrics:(PREditingTitledButtonMetrics)metrics titleSize:(CGSize *)size fontAttributes:(id *)attributes
{
  var3 = metrics.var3;
  var2 = metrics.var2;
  v27[2] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v13 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v13 setLineBreakMode:4];
  [v13 setAlignment:0];
  if (var2 < var3)
  {
    v14 = 0;
    v15 = 0;
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
    if (!size)
    {
      goto LABEL_9;
    }

LABEL_8:
    size->width = v16;
    size->height = v17;
    goto LABEL_9;
  }

  attributesCopy = attributes;
  v15 = 0;
  v14 = 0;
  v18 = *MEMORY[0x1E69DB958];
  v19 = *MEMORY[0x1E69DB648];
  v20 = *MEMORY[0x1E69DB688];
  do
  {
    v21 = v14;
    v22 = v15;
    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:var2 weight:{v18, attributesCopy}];

    v26[0] = v19;
    v26[1] = v20;
    v27[0] = v15;
    v27[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    [titleCopy sizeWithAttributes:v14];
    if (v16 <= width)
    {
      break;
    }

    var2 = var2 + -1.0;
  }

  while (var2 >= var3);
  attributes = attributesCopy;
  if (size)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (attributes)
  {
    v23 = v14;
    *attributes = v14;
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

    editingTitledButtonTitle = [objc_opt_class() editingTitledButtonTitle];
    v4 = [(PREditingTitledButton *)self contentImageWithTitle:editingTitledButtonTitle];
    v5 = defaultContentImage_image;
    defaultContentImage_image = v4;
  }

  else
  {
    [(PREditingTitledButton *)self metrics];
    editingTitledButtonTitle = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:v6];
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
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5 withConfiguration:editingTitledButtonTitle];
    v11 = defaultContentImage_image;
    defaultContentImage_image = v10;

    v12 = defaultContentImage_image;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v14 = [v12 imageWithTintColor:blackColor renderingMode:1];
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = MEMORY[0x1E69DCDC0];
  regionCopy = region;
  [(PREditingTitledButton *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  identifier = [regionCopy identifier];

  v17 = [v6 regionWithRect:identifier identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(PREditingButton *)self style:interaction];
  if ((v5 - 1) < 7)
  {
    backgroundView = [(PREditingButton *)self backgroundView];
LABEL_3:
    v7 = backgroundView;
    goto LABEL_4;
  }

  if (!v5)
  {
    backgroundView = [(PREditingButton *)self materialBackgroundView];
    goto LABEL_3;
  }

  v7 = 0;
LABEL_4:
  selfCopy = self;
  v9 = selfCopy;
  if (selfCopy)
  {
    configuration = [(PREditingTitledButton *)selfCopy configuration];
    [configuration contentInsets];
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