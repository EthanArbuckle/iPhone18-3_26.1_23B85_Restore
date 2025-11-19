@interface WCFocusRingShapeLayer
+ (id)clearLayer;
+ (id)focusLayerForUserInterfaceStyle:(int64_t)a3;
- (double)scaledOutlineWidth:(double)a3;
- (id)strokeColorForFocusOutline;
- (id)viewTintColor;
- (void)dealloc;
- (void)setPath:(CGPath *)a3;
- (void)updateAppearance;
- (void)updateCachedSettings;
- (void)updateFocusOutlinePath;
@end

@implementation WCFocusRingShapeLayer

+ (id)clearLayer
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WCFocusRingShapeLayer;
  v2 = objc_msgSendSuper2(&v5, sel_layer);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setFillColor:{objc_msgSend(v3, "CGColor")}];

  return v2;
}

+ (id)focusLayerForUserInterfaceStyle:(int64_t)a3
{
  v3 = [a1 layer];
  [v3 setFillColor:0];
  v4 = [MEMORY[0x277CD9F90] layer];
  [v3 setInnerFocusOutlineLayer:v4];

  v5 = [v3 innerFocusOutlineLayer];
  [v5 setFillColor:0];

  v6 = [v3 innerFocusOutlineLayer];
  [v3 addSublayer:v6];

  v7 = [MEMORY[0x277CD9F90] layer];
  [v3 setOuterFocusOutlineLayer:v7];

  v8 = [v3 outerFocusOutlineLayer];
  [v8 setFillColor:0];

  v9 = [v3 outerFocusOutlineLayer];
  [v3 addSublayer:v9];

  [v3 updateCachedSettings];
  v10 = +[WatchControlSettings sharedInstance];
  [v10 addSettingsObserver:v3];

  return v3;
}

- (void)dealloc
{
  v3 = +[WatchControlSettings sharedInstance];
  [v3 removeSettingsObserver:self];

  v4.receiver = self;
  v4.super_class = WCFocusRingShapeLayer;
  [(WCFocusRingShapeLayer *)&v4 dealloc];
}

uint64_t __55__WCFocusRingShapeLayer_watchControlSettingsDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCachedSettings];
  v2 = *(a1 + 32);

  return [v2 updateAppearance];
}

- (void)setPath:(CGPath *)a3
{
  v4.receiver = self;
  v4.super_class = WCFocusRingShapeLayer;
  [(WCFocusRingShapeLayer *)&v4 setPath:a3];
  [(WCFocusRingShapeLayer *)self updateFocusOutlinePath];
  [(WCFocusRingShapeLayer *)self updateAppearance];
}

- (void)updateCachedSettings
{
  v3 = +[WatchControlSettings sharedInstance];
  -[WCFocusRingShapeLayer setIncreasedContrast:](self, "setIncreasedContrast:", [v3 focusRingHighContrastEnabled]);

  v4 = +[WatchControlSettings sharedInstance];
  -[WCFocusRingShapeLayer setFocusRingColor:](self, "setFocusRingColor:", [v4 focusRingColor]);
}

- (void)updateFocusOutlinePath
{
  if ([(WCFocusRingShapeLayer *)self path])
  {
    v3 = [MEMORY[0x277D75208] bezierPathWithCGPath:{-[WCFocusRingShapeLayer path](self, "path")}];
    [v3 bounds];
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    height = v58.size.height;
    v8 = CGRectGetWidth(v58);
    v59.origin.x = x;
    v59.origin.y = y;
    rect_16 = y;
    v59.size.width = width;
    v59.size.height = height;
    v9 = CGRectGetHeight(v59);
    if (v8 >= v9)
    {
      v8 = v9;
    }

    v10 = [(WCFocusRingShapeLayer *)self innerFocusOutlineLayer];
    [v10 lineWidth];
    v12 = v11 * 0.5;

    v13 = [(WCFocusRingShapeLayer *)self increasedContrast];
    v14 = v12 + -0.5;
    if (!v13)
    {
      v14 = v12;
    }

    if (v14 + v14 >= v8)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v60.origin.x = x;
    v16 = x;
    rect = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    v61 = CGRectInset(v60, v15, v15);
    v17 = v61.size.width;
    v18 = v61.size.height;
    v19 = v61.origin.x;
    v20 = v61.origin.y;
    v21 = CGRectGetWidth(v61);
    v62.origin.x = v16;
    v62.origin.y = rect_16;
    v62.size.width = width;
    v62.size.height = height;
    v22 = v21 / CGRectGetWidth(v62);
    v63.origin.x = v19;
    v63.origin.y = v20;
    v63.size.width = v17;
    v63.size.height = v18;
    v23 = CGRectGetHeight(v63);
    v64.origin.x = rect;
    v64.origin.y = rect_16;
    v64.size.width = width;
    v64.size.height = height;
    v24 = CGRectGetHeight(v64);
    memset(&v57, 0, sizeof(v57));
    recta = *(MEMORY[0x277CBF2C0] + 16);
    *&v56.a = *MEMORY[0x277CBF2C0];
    rect_16a = *&v56.a;
    *&v56.c = recta;
    *&v56.tx = *(MEMORY[0x277CBF2C0] + 32);
    v49 = *&v56.tx;
    CGAffineTransformScale(&v57, &v56, v22, v23 / v24);
    v56 = v57;
    [v3 applyTransform:&v56];
    [v3 bounds];
    *&v55.a = rect_16a;
    *&v55.c = recta;
    *&v55.tx = v49;
    memset(&v56, 0, sizeof(v56));
    CGAffineTransformTranslate(&v56, &v55, v19 - v25, v20 - v26);
    v55 = v56;
    [v3 applyTransform:&v55];
    [v3 closePath];
    v27 = [v3 CGPath];
    v28 = [(WCFocusRingShapeLayer *)self innerFocusOutlineLayer];
    [v28 setPath:v27];

    v29 = [(WCFocusRingShapeLayer *)self outerFocusOutlineLayer];
    [v29 lineWidth];
    v31 = v30 * -0.5;

    v32 = [MEMORY[0x277D75208] bezierPathWithCGPath:{objc_msgSend(v3, "CGPath")}];

    [v32 bounds];
    v33 = v65.origin.x;
    v34 = v65.origin.y;
    v35 = v65.size.width;
    v36 = v65.size.height;
    v66 = CGRectInset(v65, v31, v31);
    v47 = v66.origin.y;
    v37 = v66.size.width;
    v38 = v66.size.height;
    v39 = v66.origin.x;
    v40 = CGRectGetWidth(v66);
    v67.origin.x = v33;
    v67.origin.y = v34;
    v67.size.width = v35;
    v67.size.height = v36;
    sx = v40 / CGRectGetWidth(v67);
    v68.origin.x = v39;
    v68.origin.y = v47;
    v68.size.width = v37;
    v68.size.height = v38;
    v41 = CGRectGetHeight(v68);
    v69.origin.x = v33;
    v69.origin.y = v34;
    v69.size.width = v35;
    v69.size.height = v36;
    v42 = CGRectGetHeight(v69);
    *&v54.a = rect_16a;
    *&v54.c = recta;
    *&v54.tx = v49;
    CGAffineTransformScale(&v55, &v54, sx, v41 / v42);
    v57 = v55;
    [v32 applyTransform:&v55];
    [v32 bounds];
    *&v54.a = rect_16a;
    *&v54.c = recta;
    *&v54.tx = v49;
    CGAffineTransformTranslate(&v55, &v54, v39 - v43, v47 - v44);
    v56 = v55;
    [v32 applyTransform:&v55];
    [v32 closePath];
    v45 = [v32 CGPath];
    v46 = [(WCFocusRingShapeLayer *)self outerFocusOutlineLayer];
    [v46 setPath:v45];
  }
}

- (void)updateAppearance
{
  [(WCFocusRingShapeLayer *)self scaledOutlineWidth:3.0];
  v4 = v3;
  v5 = [(WCFocusRingShapeLayer *)self innerFocusOutlineLayer];
  [v5 setLineWidth:v4];

  v6 = [(WCFocusRingShapeLayer *)self strokeColorForFocusOutline];
  v7 = [v6 CGColor];
  v8 = [(WCFocusRingShapeLayer *)self innerFocusOutlineLayer];
  [v8 setStrokeColor:v7];

  [(WCFocusRingShapeLayer *)self scaledOutlineWidth:3.0];
  v10 = v9;
  v11 = [(WCFocusRingShapeLayer *)self outerFocusOutlineLayer];
  [v11 setLineWidth:v10];

  v12 = [(WCFocusRingShapeLayer *)self increasedContrast];
  if (v12)
  {
    v7 = [MEMORY[0x277D75348] whiteColor];
    v13 = [v7 CGColor];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(WCFocusRingShapeLayer *)self outerFocusOutlineLayer];
  [v14 setStrokeColor:v13];

  if (v12)
  {
  }

  [(WCFocusRingShapeLayer *)self updateFocusOutlinePath];
}

- (id)strokeColorForFocusOutline
{
  v3 = MEMORY[0x277D75348];
  AXAssistiveTouchCursorColorForCursorColor([(WCFocusRingShapeLayer *)self focusRingColor]);
  v4 = [v3 colorWithCGColor:AXSAssistiveTouchCursorColor()];
  if (![(WCFocusRingShapeLayer *)self focusRingColor])
  {
    v5 = [(WCFocusRingShapeLayer *)self viewTintColor];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    v4 = v8;
  }

  v18 = 0.0;
  v19 = 0.0;
  v17 = 0.0;
  [v4 getHue:&v19 saturation:&v18 brightness:&v17 alpha:0];
  v9 = v17 + v17 * v18 * -0.5;
  v10 = 0.0;
  v11 = v9 == 0.0 || v9 == 1.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = (v17 - v9) / fmin(v9, 1.0 - v9);
  }

  v13 = fmax(fmin(v9, 0.8), 0.25);
  v14 = v13 + v12 * fmin(v13, 1.0 - v13);
  v17 = v14;
  if (v14 != 0.0)
  {
    v10 = 2.0 - (v13 + v13) / v14;
  }

  v18 = v10;
  v15 = [MEMORY[0x277D75348] colorWithHue:v19 saturation:? brightness:? alpha:?];

  return v15;
}

- (id)viewTintColor
{
  objc_opt_class();
  v3 = [(WCFocusRingShapeLayer *)self superlayer];
  v4 = CALayerGetDelegate();
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 _accessibilityFocusRingTintColor];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    objc_opt_class();
    v9 = [v5 safeValueForKey:@"_normalInheritedTintColor"];
    v8 = __UIAccessibilityCastAsClass();
  }

  return v8;
}

- (double)scaledOutlineWidth:(double)a3
{
  objc_opt_class();
  v5 = [(WCFocusRingShapeLayer *)self superlayer];
  v6 = CALayerGetDelegate();
  v7 = __UIAccessibilityCastAsClass();

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 _axScaleTransformForFocusLayerLineWidth];
    a3 = v8 * a3;
  }

  return a3;
}

@end