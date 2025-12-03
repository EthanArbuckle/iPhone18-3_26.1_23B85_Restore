@interface SBInteractiveScreenshotGestureRoundedCropsView
+ (double)_roundedCropsCornerRadius;
- (void)_setPresentationValue:(id)value forKey:(id)key;
- (void)_setupUI;
- (void)_updateBorderViewMaskWithRect:(CGRect)rect;
- (void)_updateGeometryForBounds:(CGRect)bounds shouldUsePresentationValues:(BOOL)values;
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

  layer = [(UIView *)self->_borderView layer];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];

  layer2 = [(UIView *)self->_borderView layer];
  [objc_opt_class() _roundedCropsCornerRadius];
  [layer2 setCornerRadius:?];

  [(SBInteractiveScreenshotGestureRoundedCropsView *)self addSubview:self->_borderView];
  layer3 = [MEMORY[0x277CD9F90] layer];
  borderViewMask = self->_borderViewMask;
  self->_borderViewMask = layer3;

  layer4 = [(UIView *)self->_borderView layer];
  [layer4 setMask:self->_borderViewMask];

  [(SBInteractiveScreenshotGestureRoundedCropsView *)self _updateUI];
}

- (void)_updateUI
{
  layer = [(UIView *)self->_borderView layer];
  cornerColor = [(SBInteractiveScreenshotGestureCropsView *)self cornerColor];
  [layer setBorderColor:{objc_msgSend(cornerColor, "CGColor")}];

  layer2 = [(UIView *)self->_borderView layer];
  [(SBInteractiveScreenshotGestureCropsView *)self cornerAlpha];
  *&v6 = v6;
  [layer2 setOpacity:v6];

  layer3 = [(UIView *)self->_borderView layer];
  [(SBInteractiveScreenshotGestureCropsView *)self grabberLineWidth];
  [layer3 setBorderWidth:?];

  layer4 = [(UIView *)self->_borderView layer];
  cropsCompositingFilter = [(SBInteractiveScreenshotGestureCropsView *)self cropsCompositingFilter];
  [layer4 setCompositingFilter:cropsCompositingFilter];
}

- (void)_updateGeometryForBounds:(CGRect)bounds shouldUsePresentationValues:(BOOL)values
{
  borderView = self->_borderView;
  if (values)
  {
    [(UIView *)borderView sb_setPresentationBoundsAndPositionFromFrame:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  else
  {
    [(UIView *)borderView sb_setBoundsAndPositionFromFrame:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }
}

- (void)_setPresentationValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"bounds"])
  {
    v17.receiver = self;
    v17.super_class = SBInteractiveScreenshotGestureRoundedCropsView;
    [(SBInteractiveScreenshotGestureCropsView *)&v17 _setPresentationValue:valueCopy forKey:keyCopy];
    [valueCopy CGRectValue];
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

  else if ([keyCopy isEqualToString:@"cornerAlpha"])
  {
    [(UIView *)self->_borderView _setPresentationValue:valueCopy forKey:@"opacity"];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBInteractiveScreenshotGestureRoundedCropsView;
    [(SBInteractiveScreenshotGestureCropsView *)&v16 _setPresentationValue:valueCopy forKey:keyCopy];
  }
}

- (void)_updateBorderViewMaskWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, 37.0, 37.0}];
  [bezierPath appendPath:v8];

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v9 = [MEMORY[0x277D75208] bezierPathWithRect:{CGRectGetMaxX(v18) + -37.0, 0.0, 37.0, 37.0}];
  [bezierPath appendPath:v9];

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
  [bezierPath appendPath:v12];

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, CGRectGetMaxY(v21) + -37.0, 37.0, 37.0}];
  [bezierPath appendPath:v13];

  borderViewMask = self->_borderViewMask;
  v15 = bezierPath;
  -[CAShapeLayer setPath:](borderViewMask, "setPath:", [bezierPath CGPath]);
}

@end