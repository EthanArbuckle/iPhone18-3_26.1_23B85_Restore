@interface PXFocusRing
+ (void)updateView:(id)view infoProviderBlock:(id)block;
- (PXFocusRing)initWithFrame:(CGRect)frame;
- (void)_updateColors;
- (void)_updateWithInfo:(id)info;
- (void)_updateWithView:(id)view;
- (void)_updateWithView:(id)view focusRect:(CGRect)rect cornerRadius:(double)radius innerBorderWidth:(double)width outerBorderWidth:(double)borderWidth;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXFocusRing

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(PXFocusRing *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(PXFocusRing *)self _updateColors];
  }
}

- (void)_updateWithInfo:(id)info
{
  infoCopy = info;
  [infoCopy cornerRadius];
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

  view = [infoCopy view];
  [view bounds];
  v18 = CGRectInset(v17, -4.0, -4.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;

  if ([infoCopy wantsInnerBorder])
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  if ([infoCopy wantsOuterBorder])
  {
    v7 = 1.0;
  }

  view2 = [infoCopy view];

  [(PXFocusRing *)self _updateWithView:view2 focusRect:x cornerRadius:y innerBorderWidth:width outerBorderWidth:height, v8, v14, v7];
}

- (void)_updateWithView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [layer cornerRadius];

  [viewCopy bounds];
  [PXFocusRing _updateWithView:"_updateWithView:focusRect:cornerRadius:innerBorderWidth:outerBorderWidth:" focusRect:viewCopy cornerRadius:? innerBorderWidth:? outerBorderWidth:?];
}

- (void)_updateWithView:(id)view focusRect:(CGRect)rect cornerRadius:(double)radius innerBorderWidth:(double)width outerBorderWidth:(double)borderWidth
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  superview = [(PXFocusRing *)self superview];
  if (!superview)
  {
    goto LABEL_23;
  }

  [viewCopy bounds];
  [superview convertRect:viewCopy fromView:?];
  [(PXFocusRing *)self setFrame:?];
  [(CALayer *)self->_focusLayer setFrame:x, y, width, height];
  [(CALayer *)self->_focusLayer setBorderWidth:3.0];
  [(CALayer *)self->_focusLayer setCornerRadius:radius];
  innerLayer = self->_innerLayer;
  if (width > 0.0 && !innerLayer)
  {
    layer = [MEMORY[0x1E6979398] layer];
    v18 = self->_innerLayer;
    self->_innerLayer = layer;

    [(CALayer *)self->_innerLayer setBorderWidth:1.0];
    v19 = radius + -3.0;
    if (radius + -3.0 < 0.0)
    {
      v19 = 0.0;
    }

    [(CALayer *)self->_innerLayer setCornerRadius:v19];
    layer2 = [(PXFocusRing *)self layer];
    [layer2 addSublayer:self->_innerLayer];
    goto LABEL_10;
  }

  if (width <= 0.0 && innerLayer)
  {
    [(CALayer *)innerLayer removeFromSuperlayer];
    layer2 = self->_innerLayer;
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
  if (borderWidth <= 0.0 || outerLayer)
  {
    if (borderWidth > 0.0 || !outerLayer)
    {
      goto LABEL_20;
    }

    [(CALayer *)outerLayer removeFromSuperlayer];
    layer4 = self->_outerLayer;
    self->_outerLayer = 0;
  }

  else
  {
    layer3 = [MEMORY[0x1E6979398] layer];
    v23 = self->_outerLayer;
    self->_outerLayer = layer3;

    [(CALayer *)self->_outerLayer setBorderWidth:1.0];
    [(CALayer *)self->_outerLayer setCornerRadius:radius + 1.0];
    layer4 = [(PXFocusRing *)self layer];
    [layer4 addSublayer:self->_outerLayer];
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
  traitCollection = [(PXFocusRing *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PXFocusRing__updateColors__block_invoke;
  v4[3] = &unk_1E774C648;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
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

- (PXFocusRing)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PXFocusRing;
  v3 = [(PXFocusRing *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXFocusRing *)v3 setUserInteractionEnabled:0];
    layer = [MEMORY[0x1E6979398] layer];
    focusLayer = v4->_focusLayer;
    v4->_focusLayer = layer;

    layer2 = [(PXFocusRing *)v4 layer];
    [layer2 addSublayer:v4->_focusLayer];
  }

  return v4;
}

+ (void)updateView:(id)view infoProviderBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8 = (*(blockCopy + 2))(blockCopy);
  }

  else
  {
    v8 = 0;
  }

  view = [v8 view];
  superview = [view superview];
  v11 = superview;
  if (superview)
  {
    v12 = superview;
  }

  else
  {
    superview2 = [viewCopy superview];
    if (superview2)
    {
      v14 = superview2;
    }

    else
    {
      v14 = viewCopy;
    }

    v12 = v14;
  }

  v15 = NSStringFromClass(self);
  v16 = [v15 hash];

  v17 = [v12 viewWithTag:v16];
  isFocused = [viewCopy isFocused];
  v19 = isFocused;
  if (!v17 && isFocused)
  {
    v20 = [PXFocusRing alloc];
    [viewCopy bounds];
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
      [(PXFocusRing *)v17 _updateWithView:viewCopy];
    }
  }

  else
  {
    [(PXFocusRing *)v17 removeFromSuperview];
  }
}

@end