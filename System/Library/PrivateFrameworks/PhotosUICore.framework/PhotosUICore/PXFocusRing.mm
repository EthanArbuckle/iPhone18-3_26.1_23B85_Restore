@interface PXFocusRing
+ (void)updateView:(id)a3 infoProviderBlock:(id)a4;
- (PXFocusRing)initWithFrame:(CGRect)a3;
- (void)_updateColors;
- (void)_updateWithInfo:(id)a3;
- (void)_updateWithView:(id)a3;
- (void)_updateWithView:(id)a3 focusRect:(CGRect)a4 cornerRadius:(double)a5 innerBorderWidth:(double)a6 outerBorderWidth:(double)a7;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXFocusRing

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PXFocusRing *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {

    [(PXFocusRing *)self _updateColors];
  }
}

- (void)_updateWithInfo:(id)a3
{
  v4 = a3;
  [v4 cornerRadius];
  v6 = v5 + 4.0;
  v7 = 0.0;
  if (v6 >= 0.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v4 view];
  [v9 bounds];
  v18 = CGRectInset(v17, -4.0, -4.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;

  if ([v4 wantsInnerBorder])
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  if ([v4 wantsOuterBorder])
  {
    v7 = 1.0;
  }

  v15 = [v4 view];

  [(PXFocusRing *)self _updateWithView:v15 focusRect:x cornerRadius:y innerBorderWidth:width outerBorderWidth:height, v8, v14, v7];
}

- (void)_updateWithView:(id)a3
{
  v5 = a3;
  v4 = [v5 layer];
  [v4 cornerRadius];

  [v5 bounds];
  [PXFocusRing _updateWithView:"_updateWithView:focusRect:cornerRadius:innerBorderWidth:outerBorderWidth:" focusRect:v5 cornerRadius:? innerBorderWidth:? outerBorderWidth:?];
}

- (void)_updateWithView:(id)a3 focusRect:(CGRect)a4 cornerRadius:(double)a5 innerBorderWidth:(double)a6 outerBorderWidth:(double)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v25 = a3;
  v15 = [(PXFocusRing *)self superview];
  if (!v15)
  {
    goto LABEL_23;
  }

  [v25 bounds];
  [v15 convertRect:v25 fromView:?];
  [(PXFocusRing *)self setFrame:?];
  [(CALayer *)self->_focusLayer setFrame:x, y, width, height];
  [(CALayer *)self->_focusLayer setBorderWidth:3.0];
  [(CALayer *)self->_focusLayer setCornerRadius:a5];
  innerLayer = self->_innerLayer;
  if (a6 > 0.0 && !innerLayer)
  {
    v17 = [MEMORY[0x1E6979398] layer];
    v18 = self->_innerLayer;
    self->_innerLayer = v17;

    [(CALayer *)self->_innerLayer setBorderWidth:1.0];
    v19 = a5 + -3.0;
    if (a5 + -3.0 < 0.0)
    {
      v19 = 0.0;
    }

    [(CALayer *)self->_innerLayer setCornerRadius:v19];
    v20 = [(PXFocusRing *)self layer];
    [v20 addSublayer:self->_innerLayer];
    goto LABEL_10;
  }

  if (a6 <= 0.0 && innerLayer)
  {
    [(CALayer *)innerLayer removeFromSuperlayer];
    v20 = self->_innerLayer;
    self->_innerLayer = 0;
LABEL_10:

    innerLayer = self->_innerLayer;
  }

  if (innerLayer)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectInset(v27, 3.0, 3.0);
    [(CALayer *)self->_innerLayer setFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
  }

  outerLayer = self->_outerLayer;
  if (a7 <= 0.0 || outerLayer)
  {
    if (a7 > 0.0 || !outerLayer)
    {
      goto LABEL_20;
    }

    [(CALayer *)outerLayer removeFromSuperlayer];
    v24 = self->_outerLayer;
    self->_outerLayer = 0;
  }

  else
  {
    v22 = [MEMORY[0x1E6979398] layer];
    v23 = self->_outerLayer;
    self->_outerLayer = v22;

    [(CALayer *)self->_outerLayer setBorderWidth:1.0];
    [(CALayer *)self->_outerLayer setCornerRadius:a5 + 1.0];
    v24 = [(PXFocusRing *)self layer];
    [v24 addSublayer:self->_outerLayer];
  }

  outerLayer = self->_outerLayer;
LABEL_20:
  if (outerLayer)
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectInset(v29, -1.0, -1.0);
    [(CALayer *)self->_outerLayer setFrame:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
  }

  [(PXFocusRing *)self _updateColors];
LABEL_23:
}

- (void)_updateColors
{
  v3 = [(PXFocusRing *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PXFocusRing__updateColors__block_invoke;
  v4[3] = &unk_1E774C648;
  v4[4] = self;
  [v3 performAsCurrentTraitCollection:v4];
}

void __28__PXFocusRing__updateColors__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tintColor];
  [*(*(a1 + 32) + 416) setBorderColor:{objc_msgSend(v2, "CGColor")}];

  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [*(*(a1 + 32) + 408) setBorderColor:{objc_msgSend(v3, "CGColor")}];

  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = v5;
  [*(*(a1 + 32) + 424) setBorderColor:{objc_msgSend(v5, "CGColor")}];
}

- (PXFocusRing)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PXFocusRing;
  v3 = [(PXFocusRing *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXFocusRing *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E6979398] layer];
    focusLayer = v4->_focusLayer;
    v4->_focusLayer = v5;

    v7 = [(PXFocusRing *)v4 layer];
    [v7 addSublayer:v4->_focusLayer];
  }

  return v4;
}

+ (void)updateView:(id)a3 infoProviderBlock:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 2))(v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 view];
  v10 = [v9 superview];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v21 superview];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v21;
    }

    v12 = v14;
  }

  v15 = NSStringFromClass(a1);
  v16 = [v15 hash];

  v17 = [v12 viewWithTag:v16];
  v18 = [v21 isFocused];
  v19 = v18;
  if (!v17 && v18)
  {
    v20 = [PXFocusRing alloc];
    [v21 bounds];
    v17 = [(PXFocusRing *)v20 initWithFrame:?];
    [(PXFocusRing *)v17 setTag:v16];
  }

  if (v19)
  {
    [v12 addSubview:v17];
    if (v8)
    {
      [(PXFocusRing *)v17 _updateWithInfo:v8];
    }

    else
    {
      [(PXFocusRing *)v17 _updateWithView:v21];
    }
  }

  else
  {
    [(PXFocusRing *)v17 removeFromSuperview];
  }
}

@end