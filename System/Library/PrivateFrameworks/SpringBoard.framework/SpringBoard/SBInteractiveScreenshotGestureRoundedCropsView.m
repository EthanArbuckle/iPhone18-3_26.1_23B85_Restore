@interface SBInteractiveScreenshotGestureRoundedCropsView
+ (double)_roundedCropsCornerRadius;
- (void)_setPresentationValue:(id)a3 forKey:(id)a4;
- (void)_setupUI;
- (void)_updateBorderViewMaskWithRect:(CGRect)a3;
- (void)_updateGeometryForBounds:(CGRect)a3 shouldUsePresentationValues:(BOOL)a4;
- (void)_updateUI;
@end

@implementation SBInteractiveScreenshotGestureRoundedCropsView

+ (double)_roundedCropsCornerRadius
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 28.0;
  }

  v2 = MEMORY[0x277D4BE20];

  [v2 roundedCropsCornerRadius];
  return result;
}

- (void)_setupUI
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  borderView = self->_borderView;
  self->_borderView = v4;

  v6 = [(UIView *)self->_borderView layer];
  [v6 setCornerCurve:*MEMORY[0x277CDA138]];

  v7 = [(UIView *)self->_borderView layer];
  [objc_opt_class() _roundedCropsCornerRadius];
  [v7 setCornerRadius:?];

  [(SBInteractiveScreenshotGestureRoundedCropsView *)self addSubview:self->_borderView];
  v8 = [MEMORY[0x277CD9F90] layer];
  borderViewMask = self->_borderViewMask;
  self->_borderViewMask = v8;

  v10 = [(UIView *)self->_borderView layer];
  [v10 setMask:self->_borderViewMask];

  [(SBInteractiveScreenshotGestureRoundedCropsView *)self _updateUI];
}

- (void)_updateUI
{
  v3 = [(UIView *)self->_borderView layer];
  v4 = [(SBInteractiveScreenshotGestureCropsView *)self cornerColor];
  [v3 setBorderColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(UIView *)self->_borderView layer];
  [(SBInteractiveScreenshotGestureCropsView *)self cornerAlpha];
  *&v6 = v6;
  [v5 setOpacity:v6];

  v7 = [(UIView *)self->_borderView layer];
  [(SBInteractiveScreenshotGestureCropsView *)self grabberLineWidth];
  [v7 setBorderWidth:?];

  v9 = [(UIView *)self->_borderView layer];
  v8 = [(SBInteractiveScreenshotGestureCropsView *)self cropsCompositingFilter];
  [v9 setCompositingFilter:v8];
}

- (void)_updateGeometryForBounds:(CGRect)a3 shouldUsePresentationValues:(BOOL)a4
{
  borderView = self->_borderView;
  if (a4)
  {
    [(UIView *)borderView sb_setPresentationBoundsAndPositionFromFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }

  else
  {
    [(UIView *)borderView sb_setBoundsAndPositionFromFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }
}

- (void)_setPresentationValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"bounds"])
  {
    v17.receiver = self;
    v17.super_class = SBInteractiveScreenshotGestureRoundedCropsView;
    [(SBInteractiveScreenshotGestureCropsView *)&v17 _setPresentationValue:v6 forKey:v7];
    [v6 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(CAShapeLayer *)self->_borderViewMask setFrame:v9, v11, v13, v15];
    [(SBInteractiveScreenshotGestureRoundedCropsView *)self _updateBorderViewMaskWithRect:v9, v11, v13, v15];
    [MEMORY[0x277CD9FF0] commit];
  }

  else if ([v7 isEqualToString:@"cornerAlpha"])
  {
    [(UIView *)self->_borderView _setPresentationValue:v6 forKey:@"opacity"];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBInteractiveScreenshotGestureRoundedCropsView;
    [(SBInteractiveScreenshotGestureCropsView *)&v16 _setPresentationValue:v6 forKey:v7];
  }
}

- (void)_updateBorderViewMaskWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = [MEMORY[0x277D75208] bezierPath];
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, 37.0, 37.0}];
  [v16 appendPath:v8];

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v9 = [MEMORY[0x277D75208] bezierPathWithRect:{CGRectGetMaxX(v18) + -37.0, 0.0, 37.0, 37.0}];
  [v16 appendPath:v9];

  v10 = MEMORY[0x277D75208];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = CGRectGetMaxX(v19) + -37.0;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = [v10 bezierPathWithRect:{v11, CGRectGetMaxY(v20) + -37.0, 37.0, 37.0}];
  [v16 appendPath:v12];

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, CGRectGetMaxY(v21) + -37.0, 37.0, 37.0}];
  [v16 appendPath:v13];

  borderViewMask = self->_borderViewMask;
  v15 = v16;
  -[CAShapeLayer setPath:](borderViewMask, "setPath:", [v16 CGPath]);
}

@end