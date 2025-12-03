@interface AXFKAFocusRingShapeLayer
+ (id)layerWithStyle:(int64_t)style kind:(unint64_t)kind;
- (AXFKAFocusRingShapeLayer)init;
- (BOOL)increaseContrast;
- (BOOL)useDefaultRingColor;
- (BOOL)useLargeRing;
- (CGColor)ringColorRef;
- (CGColor)strokeColorForBottomLayer;
- (double)borderScale;
- (double)insetForFocusRingBorder:(id)border;
- (double)lineWidthForBottomLayer;
- (id)bottomFocusRingColorForTintColor:(id)color;
- (id)fillColorForBottomLayer;
- (id)tintColor;
- (void)_updateBottomLayerPath;
- (void)dealloc;
- (void)setPath:(CGPath *)path;
- (void)updateAppearance;
@end

@implementation AXFKAFocusRingShapeLayer

+ (id)layerWithStyle:(int64_t)style kind:(unint64_t)kind
{
  layer = [self layer];
  [layer setInterfaceStyle:style];
  [layer setKind:kind];

  return layer;
}

- (AXFKAFocusRingShapeLayer)init
{
  v20.receiver = self;
  v20.super_class = AXFKAFocusRingShapeLayer;
  v2 = [(AXFKAFocusRingShapeLayer *)&v20 init];
  if (v2)
  {
    v3 = +[AXFKAFocusRingBorderShapeLayer layer];
    [(AXFKAFocusRingShapeLayer *)v2 setBottomBorderLayer:v3];

    objc_initWeak(&location, v2);
    mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __32__AXFKAFocusRingShapeLayer_init__block_invoke;
    v17[3] = &unk_1E78AB970;
    objc_copyWeak(&v18, &location);
    [mEMORY[0x1E6989890] registerUpdateBlock:v17 forRetrieveSelector:sel_fullKeyboardAccessFocusRingColor withListener:v2];

    objc_destroyWeak(&v18);
    mEMORY[0x1E6989890]2 = [MEMORY[0x1E6989890] sharedInstance];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__AXFKAFocusRingShapeLayer_init__block_invoke_2;
    v15[3] = &unk_1E78AB970;
    objc_copyWeak(&v16, &location);
    [mEMORY[0x1E6989890]2 registerUpdateBlock:v15 forRetrieveSelector:sel_fullKeyboardAccessLargeFocusRingEnabled withListener:v2];

    objc_destroyWeak(&v16);
    mEMORY[0x1E6989890]3 = [MEMORY[0x1E6989890] sharedInstance];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __32__AXFKAFocusRingShapeLayer_init__block_invoke_3;
    v13 = &unk_1E78AB970;
    objc_copyWeak(&v14, &location);
    [mEMORY[0x1E6989890]3 registerUpdateBlock:&v10 forRetrieveSelector:sel_fullKeyboardAccessFocusRingHighContrastEnabled withListener:v2];

    objc_destroyWeak(&v14);
    v7 = [(AXFKAFocusRingShapeLayer *)v2 bottomBorderLayer:v10];
    [(AXFKAFocusRingShapeLayer *)v2 addSublayer:v7];

    [(AXFKAFocusRingShapeLayer *)v2 setFillColor:0];
    bottomBorderLayer = [(AXFKAFocusRingShapeLayer *)v2 bottomBorderLayer];
    [bottomBorderLayer setFillColor:0];

    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__AXFKAFocusRingShapeLayer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAppearance];
}

void __32__AXFKAFocusRingShapeLayer_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAppearance];
}

void __32__AXFKAFocusRingShapeLayer_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAppearance];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4CE0] object:0];

  v4.receiver = self;
  v4.super_class = AXFKAFocusRingShapeLayer;
  [(AXFKAFocusRingShapeLayer *)&v4 dealloc];
}

- (void)setPath:(CGPath *)path
{
  v4.receiver = self;
  v4.super_class = AXFKAFocusRingShapeLayer;
  [(AXFKAFocusRingShapeLayer *)&v4 setPath:path];
  [(AXFKAFocusRingShapeLayer *)self _updateBottomLayerPath];
  [(AXFKAFocusRingShapeLayer *)self updateAppearance];
}

- (void)_updateBottomLayerPath
{
  if ([(AXFKAFocusRingShapeLayer *)self path])
  {
    bottomBorderLayer = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer unscaledLineWidth];
    v5 = v4;
    [(AXFKAFocusRingShapeLayer *)self borderScale];
    v7 = v5 * v6;
    bottomBorderLayer2 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer2 setLineWidth:v7];

    v9 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:{-[AXFKAFocusRingShapeLayer path](self, "path")}];
    [v9 bounds];
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    v14 = CGRectGetWidth(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v15 = CGRectGetHeight(v49);
    if (v14 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    bottomBorderLayer3 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [(AXFKAFocusRingShapeLayer *)self insetForFocusRingBorder:bottomBorderLayer3];
    v19 = v18;

    if ([(AXFKAFocusRingShapeLayer *)self kind]!= 1)
    {
      increaseContrast = [(AXFKAFocusRingShapeLayer *)self increaseContrast];
      useLargeRing = [(AXFKAFocusRingShapeLayer *)self useLargeRing];
      v22 = 0.0;
      v23 = 2.0;
      if (useLargeRing)
      {
        v22 = 2.0;
      }

      v24 = v19 + v22;
      if (!useLargeRing)
      {
        v23 = -1.0;
      }

      v25 = v19 + v23;
      if (increaseContrast)
      {
        v19 = v25;
      }

      else
      {
        v19 = v24;
      }
    }

    if (v19 + v19 >= v16)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v19;
    }

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v51 = CGRectInset(v50, v26, v26);
    v27 = v51.size.width;
    v28 = v51.size.height;
    v29 = v51.origin.x;
    v30 = width;
    v31 = y;
    v32 = x;
    v33 = v51.origin.y;
    v43 = CGRectGetWidth(v51);
    v52.origin.x = v32;
    v52.origin.y = v31;
    v52.size.width = v30;
    v52.size.height = height;
    sx = v43 / CGRectGetWidth(v52);
    v53.origin.x = v29;
    v53.origin.y = v33;
    v53.size.width = v27;
    v53.size.height = v28;
    v34 = CGRectGetHeight(v53);
    v54.origin.x = v32;
    v54.origin.y = v31;
    v54.size.width = v30;
    v54.size.height = height;
    v35 = CGRectGetHeight(v54);
    memset(&v47, 0, sizeof(v47));
    v42 = *(MEMORY[0x1E695EFD0] + 16);
    *&v46.a = *MEMORY[0x1E695EFD0];
    v44 = *&v46.a;
    *&v46.c = v42;
    *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
    v41 = *&v46.tx;
    CGAffineTransformScale(&v47, &v46, sx, v34 / v35);
    v46 = v47;
    [v9 applyTransform:&v46];
    [v9 bounds];
    *&v45.a = v44;
    *&v45.c = v42;
    *&v45.tx = v41;
    memset(&v46, 0, sizeof(v46));
    CGAffineTransformTranslate(&v46, &v45, v29 - v36, v33 - v37);
    v45 = v46;
    [v9 applyTransform:&v45];
    [v9 closePath];
    cGPath = [v9 CGPath];
    bottomBorderLayer4 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer4 setPath:cGPath];
  }
}

- (void)updateAppearance
{
  if (![(AXFKAFocusRingShapeLayer *)self kind]|| [(AXFKAFocusRingShapeLayer *)self kind]== 3 || [(AXFKAFocusRingShapeLayer *)self kind]== 1 && [(AXFKAFocusRingShapeLayer *)self increaseContrast])
  {
    strokeColorForBottomLayer = [(AXFKAFocusRingShapeLayer *)self strokeColorForBottomLayer];
    bottomBorderLayer = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer setStrokeColor:strokeColorForBottomLayer];

    if ([(AXFKAFocusRingShapeLayer *)self useLargeRing])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    bottomBorderLayer2 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer2 setRingPosition:v5];

    [(AXFKAFocusRingShapeLayer *)self lineWidthForBottomLayer];
    v8 = v7;
    bottomBorderLayer3 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer3 setUnscaledLineWidth:v8];
  }

  else
  {
    bottomBorderLayer3 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer3 setStrokeColor:0];
  }

  if ([(AXFKAFocusRingShapeLayer *)self kind]== 1)
  {
    if ([(AXFKAFocusRingShapeLayer *)self useLargeRing])
    {
      v10 = 0.3;
    }

    else
    {
      v10 = 0.15;
    }

    fillColorForBottomLayer = [(AXFKAFocusRingShapeLayer *)self fillColorForBottomLayer];
    bottomBorderLayer5 = [fillColorForBottomLayer colorWithAlphaComponent:v10];

    cGColor = [bottomBorderLayer5 CGColor];
    bottomBorderLayer4 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer4 setFillColor:cGColor];
  }

  else
  {
    bottomBorderLayer5 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    [bottomBorderLayer5 setFillColor:0];
  }

  [(AXFKAFocusRingShapeLayer *)self _updateBottomLayerPath];
}

- (double)lineWidthForBottomLayer
{
  if ([(AXFKAFocusRingShapeLayer *)self useLargeRing])
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 4.0;
  }

  if ([(AXFKAFocusRingShapeLayer *)self increaseContrast])
  {
    if ([(AXFKAFocusRingShapeLayer *)self useLargeRing])
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 8.0;
    }

    kind = [(AXFKAFocusRingShapeLayer *)self kind];
    v6 = 1.0;
    if (kind == 1)
    {
      v6 = 1.5;
    }

    return v4 / v6;
  }

  return v3;
}

- (CGColor)strokeColorForBottomLayer
{
  if ([(AXFKAFocusRingShapeLayer *)self increaseContrast])
  {
    if ([(AXFKAFocusRingShapeLayer *)self interfaceStyle]== 2)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    fillColorForBottomLayer = ;
  }

  else
  {
    fillColorForBottomLayer = [(AXFKAFocusRingShapeLayer *)self fillColorForBottomLayer];
  }

  v4 = fillColorForBottomLayer;
  cGColor = [fillColorForBottomLayer CGColor];

  return cGColor;
}

- (id)fillColorForBottomLayer
{
  v3 = [MEMORY[0x1E69DC888] colorWithCGColor:{-[AXFKAFocusRingShapeLayer ringColorRef](self, "ringColorRef")}];
  if ([(AXFKAFocusRingShapeLayer *)self useDefaultRingColor])
  {
    tintColor = [(AXFKAFocusRingShapeLayer *)self tintColor];
    v5 = tintColor;
    if (tintColor)
    {
      v6 = tintColor;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;

    v3 = v7;
  }

  v8 = [(AXFKAFocusRingShapeLayer *)self bottomFocusRingColorForTintColor:v3];

  return v8;
}

- (id)tintColor
{
  objc_opt_class();
  superlayer = [(AXFKAFocusRingShapeLayer *)self superlayer];
  v4 = CALayerGetDelegate();
  v5 = __UIAccessibilityCastAsClass();

  _accessibilityFocusRingTintColor = [v5 _accessibilityFocusRingTintColor];
  v7 = _accessibilityFocusRingTintColor;
  if (_accessibilityFocusRingTintColor)
  {
    v8 = _accessibilityFocusRingTintColor;
  }

  else
  {
    objc_opt_class();
    v9 = [v5 safeValueForKey:@"_normalInheritedTintColor"];
    v8 = __UIAccessibilityCastAsClass();
  }

  return v8;
}

- (double)borderScale
{
  objc_opt_class();
  superlayer = [(AXFKAFocusRingShapeLayer *)self superlayer];
  v4 = CALayerGetDelegate();
  v5 = __UIAccessibilityCastAsClass();

  [v5 _axScaleTransformForFocusLayerLineWidth];
  v7 = v6;

  return v7;
}

- (BOOL)useDefaultRingColor
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  v3 = [mEMORY[0x1E6989890] fullKeyboardAccessFocusRingColor] == 0;

  return v3;
}

- (CGColor)ringColorRef
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] fullKeyboardAccessFocusRingColor];
  v3 = AXSAssistiveTouchCursorColor();

  return v3;
}

- (BOOL)useLargeRing
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  fullKeyboardAccessLargeFocusRingEnabled = [mEMORY[0x1E6989890] fullKeyboardAccessLargeFocusRingEnabled];

  return fullKeyboardAccessLargeFocusRingEnabled;
}

- (BOOL)increaseContrast
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  fullKeyboardAccessFocusRingHighContrastEnabled = [mEMORY[0x1E6989890] fullKeyboardAccessFocusRingHighContrastEnabled];

  return fullKeyboardAccessFocusRingHighContrastEnabled;
}

- (double)insetForFocusRingBorder:(id)border
{
  borderCopy = border;
  if ([borderCopy ringPosition])
  {
    v4 = 0.0;
    v5 = -0.5;
    if ([borderCopy ringPosition] != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0.5;
  }

  [borderCopy lineWidth];
  v4 = v6 * v5;
LABEL_6:

  return v4;
}

- (id)bottomFocusRingColorForTintColor:(id)color
{
  colorCopy = color;
  if (color)
  {
    var8[0] = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    [color getHue:var8 saturation:&v13 brightness:&v12 alpha:0];
    v5 = v12 + v12 * v13 * -0.5;
    v6 = 0.0;
    v7 = v5 == 0.0 || v5 == 1.0;
    v8 = 0.0;
    if (!v7)
    {
      v8 = (v12 - v5) / fmin(v5, 1.0 - v5);
    }

    v9 = fmax(fmin(v5, 0.8), 0.25);
    v10 = v9 + v8 * fmin(v9, 1.0 - v9);
    v12 = v10;
    if (v10 != 0.0)
    {
      v6 = 2.0 - (v9 + v9) / v10;
    }

    v13 = v6;
    colorCopy = [MEMORY[0x1E69DC888] colorWithHue:var8[0] saturation:? brightness:? alpha:?];
    v3 = var8[2];
  }

  return colorCopy;
}

@end