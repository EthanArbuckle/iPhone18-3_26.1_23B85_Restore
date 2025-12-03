@interface AXFKAFocusDoubleRingShapeLayer
- (AXFKAFocusDoubleRingShapeLayer)init;
- (CGColor)strokeColorForTopLayer;
- (double)lineWidthForTopLayer;
- (id)topLayerFocusRingColorForTintColor:(id)color;
- (void)_updateTopLayerPath;
- (void)setPath:(CGPath *)path;
- (void)updateAppearance;
@end

@implementation AXFKAFocusDoubleRingShapeLayer

- (AXFKAFocusDoubleRingShapeLayer)init
{
  v7.receiver = self;
  v7.super_class = AXFKAFocusDoubleRingShapeLayer;
  v2 = [(AXFKAFocusRingShapeLayer *)&v7 init];
  if (v2)
  {
    v3 = +[AXFKAFocusRingBorderShapeLayer layer];
    [(AXFKAFocusDoubleRingShapeLayer *)v2 setTopBorderLayer:v3];

    topBorderLayer = [(AXFKAFocusDoubleRingShapeLayer *)v2 topBorderLayer];
    [(AXFKAFocusDoubleRingShapeLayer *)v2 addSublayer:topBorderLayer];

    topBorderLayer2 = [(AXFKAFocusDoubleRingShapeLayer *)v2 topBorderLayer];
    [topBorderLayer2 setFillColor:0];
  }

  return v2;
}

- (void)setPath:(CGPath *)path
{
  v4.receiver = self;
  v4.super_class = AXFKAFocusDoubleRingShapeLayer;
  [(AXFKAFocusRingShapeLayer *)&v4 setPath:path];
  [(AXFKAFocusDoubleRingShapeLayer *)self _updateTopLayerPath];
}

- (void)_updateTopLayerPath
{
  bottomBorderLayer = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
  path = [bottomBorderLayer path];

  if (path)
  {
    topBorderLayer = [(AXFKAFocusDoubleRingShapeLayer *)self topBorderLayer];
    [topBorderLayer unscaledLineWidth];
    v7 = v6;
    [(AXFKAFocusRingShapeLayer *)self borderScale];
    v9 = v7 * v8;
    topBorderLayer2 = [(AXFKAFocusDoubleRingShapeLayer *)self topBorderLayer];
    [topBorderLayer2 setLineWidth:v9];

    topBorderLayer3 = [(AXFKAFocusDoubleRingShapeLayer *)self topBorderLayer];
    [(AXFKAFocusRingShapeLayer *)self insetForFocusRingBorder:topBorderLayer3];
    v13 = v12;

    v14 = MEMORY[0x1E69DC728];
    bottomBorderLayer2 = [(AXFKAFocusRingShapeLayer *)self bottomBorderLayer];
    v16 = [v14 bezierPathWithCGPath:{objc_msgSend(bottomBorderLayer2, "path")}];

    [v16 bounds];
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v40 = CGRectInset(v39, v13, v13);
    v21 = v40.size.width;
    v22 = v40.size.height;
    v23 = v40.origin.x;
    v24 = v40.origin.y;
    v34 = CGRectGetWidth(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    sx = v34 / CGRectGetWidth(v41);
    v42.origin.x = v23;
    v42.origin.y = v24;
    v42.size.width = v21;
    v42.size.height = v22;
    v25 = CGRectGetHeight(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v26 = CGRectGetHeight(v43);
    memset(&v38, 0, sizeof(v38));
    v33 = *(MEMORY[0x1E695EFD0] + 16);
    *&v37.a = *MEMORY[0x1E695EFD0];
    v35 = *&v37.a;
    *&v37.c = v33;
    *&v37.tx = *(MEMORY[0x1E695EFD0] + 32);
    v32 = *&v37.tx;
    CGAffineTransformScale(&v38, &v37, sx, v25 / v26);
    v37 = v38;
    [v16 applyTransform:&v37];
    [v16 bounds];
    *&v36.a = v35;
    *&v36.c = v33;
    *&v36.tx = v32;
    memset(&v37, 0, sizeof(v37));
    CGAffineTransformTranslate(&v37, &v36, v23 - v27, v24 - v28);
    v36 = v37;
    [v16 applyTransform:&v36];
    [v16 closePath];
    cGPath = [v16 CGPath];
    topBorderLayer4 = [(AXFKAFocusDoubleRingShapeLayer *)self topBorderLayer];
    [topBorderLayer4 setPath:cGPath];
  }
}

- (void)updateAppearance
{
  v10.receiver = self;
  v10.super_class = AXFKAFocusDoubleRingShapeLayer;
  [(AXFKAFocusRingShapeLayer *)&v10 updateAppearance];
  if (![(AXFKAFocusRingShapeLayer *)self kind]|| [(AXFKAFocusRingShapeLayer *)self kind]== 3 || [(AXFKAFocusRingShapeLayer *)self kind]== 1 && [(AXFKAFocusRingShapeLayer *)self increaseContrast])
  {
    if ([(AXFKAFocusRingShapeLayer *)self increaseContrast])
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    topBorderLayer = [(AXFKAFocusDoubleRingShapeLayer *)self topBorderLayer];
    [topBorderLayer setRingPosition:v3];

    [(AXFKAFocusDoubleRingShapeLayer *)self lineWidthForTopLayer];
    v6 = v5;
    topBorderLayer2 = [(AXFKAFocusDoubleRingShapeLayer *)self topBorderLayer];
    [topBorderLayer2 setUnscaledLineWidth:v6];

    strokeColorForTopLayer = [(AXFKAFocusDoubleRingShapeLayer *)self strokeColorForTopLayer];
  }

  else
  {
    strokeColorForTopLayer = 0;
  }

  topBorderLayer3 = [(AXFKAFocusDoubleRingShapeLayer *)self topBorderLayer];
  [topBorderLayer3 setStrokeColor:strokeColorForTopLayer];

  [(AXFKAFocusDoubleRingShapeLayer *)self _updateTopLayerPath];
}

- (double)lineWidthForTopLayer
{
  if ([(AXFKAFocusRingShapeLayer *)self useLargeRing])
  {
    v3 = 4.0;
  }

  else
  {
    v3 = 2.0;
  }

  if ([(AXFKAFocusRingShapeLayer *)self increaseContrast])
  {
    if ([(AXFKAFocusRingShapeLayer *)self useLargeRing])
    {
      v4 = 6.0;
    }

    else
    {
      v4 = 4.0;
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

- (CGColor)strokeColorForTopLayer
{
  ringColorRef = [(AXFKAFocusRingShapeLayer *)self ringColorRef];
  if ([(AXFKAFocusRingShapeLayer *)self increaseContrast])
  {
    if ([(AXFKAFocusRingShapeLayer *)self interfaceStyle]== 2)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v4 = ;
    cGColor = [v4 CGColor];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] colorWithCGColor:ringColorRef];
    if ([(AXFKAFocusRingShapeLayer *)self useDefaultRingColor])
    {
      tintColor = [(AXFKAFocusRingShapeLayer *)self tintColor];
      v6 = tintColor;
      if (tintColor)
      {
        v7 = tintColor;
      }

      else
      {
        v7 = v4;
      }

      v8 = v7;

      v4 = v8;
    }

    v9 = [(AXFKAFocusDoubleRingShapeLayer *)self topLayerFocusRingColorForTintColor:v4];
    cGColor = [v9 CGColor];
  }

  return cGColor;
}

- (id)topLayerFocusRingColorForTintColor:(id)color
{
  colorCopy = color;
  if (color)
  {
    var8[0] = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    [color getHue:var8 saturation:&v20 brightness:&v19 alpha:0];
    v5 = v19 + v19 * v20 * -0.5;
    v6 = 0.0;
    v7 = v5 == 0.0 || v5 == 1.0;
    v8 = (v19 - v5) / fmin(v5, 1.0 - v5);
    if (v7)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v8;
    }

    v10 = fmin(v5, 0.8);
    v11 = 0.25;
    v12 = fmax(v10, 0.25);
    v13 = v9 * 0.75;
    if (v12 > 0.6)
    {
      v11 = -0.25;
    }

    v14 = v12 + v11;
    v15 = v12 + v9 * fmin(v12, 1.0 - v12);
    v19 = v15;
    v16 = 0.0;
    if (v15 != 0.0)
    {
      v16 = 2.0 - (v12 + v12) / v15;
    }

    v20 = v16;
    v17 = v14 + v13 * fmin(v14, 1.0 - v14);
    if (v17 != 0.0)
    {
      v6 = 2.0 - (v14 + v14) / v17;
    }

    colorCopy = [MEMORY[0x1E69DC888] colorWithHue:var8[0] saturation:v6 brightness:? alpha:?];
    v3 = var8[2];
  }

  return colorCopy;
}

@end