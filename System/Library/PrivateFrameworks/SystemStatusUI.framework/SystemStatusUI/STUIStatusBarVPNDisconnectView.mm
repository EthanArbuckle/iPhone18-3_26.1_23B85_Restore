@interface STUIStatusBarVPNDisconnectView
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_setupForStyleAttributes:(id)attributes;
- (void)animateSlashForUpdate:(id)update;
- (void)applyStyleAttributes:(id)attributes;
- (void)resetSlashForUpdate:(id)update;
@end

@implementation STUIStatusBarVPNDisconnectView

- (void)_setupForStyleAttributes:(id)attributes
{
  if (!self->_vpnView)
  {
    v4 = objc_alloc_init(STUIStatusBarStringView);
    vpnView = self->_vpnView;
    self->_vpnView = v4;

    [(STUIStatusBarStringView *)self->_vpnView setText:@"VPN"];
    [(STUIStatusBarStringView *)self->_vpnView setEncapsulated:1];
    [(STUIStatusBarStringView *)self->_vpnView sizeToFit];
    [(STUIStatusBarVPNDisconnectView *)self addSubview:self->_vpnView];
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    [(STUIStatusBarStringView *)self->_vpnView frame];
    v28 = [v6 initWithFrame:?];
    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    layer = [v28 layer];
    [layer setBackgroundColor:cGColor];

    layer2 = [MEMORY[0x277CD9F90] layer];
    vpnSlashMaskShapeLayer = self->_vpnSlashMaskShapeLayer;
    self->_vpnSlashMaskShapeLayer = layer2;

    blackColor2 = [MEMORY[0x277D75348] blackColor];
    -[CAShapeLayer setStrokeColor:](self->_vpnSlashMaskShapeLayer, "setStrokeColor:", [blackColor2 CGColor]);

    Mutable = CGPathCreateMutable();
    v30.origin.x = 5.0;
    v30.origin.y = 0.0;
    v30.size.width = 19.0;
    v30.size.height = 19.0;
    MinX = CGRectGetMinX(v30);
    v31.origin.x = 5.0;
    v31.origin.y = 0.0;
    v31.size.width = 19.0;
    v31.size.height = 19.0;
    MinY = CGRectGetMinY(v31);
    CGPathMoveToPoint(Mutable, 0, MinX, MinY);
    v32.origin.x = 5.0;
    v32.origin.y = 0.0;
    v32.size.width = 19.0;
    v32.size.height = 19.0;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = 5.0;
    v33.origin.y = 0.0;
    v33.size.width = 19.0;
    v33.size.height = 19.0;
    MaxY = CGRectGetMaxY(v33);
    CGPathAddLineToPoint(Mutable, 0, MaxX, MaxY);
    [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer setPath:Mutable];
    CGPathRelease(Mutable);
    [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer setLineWidth:4.0];
    v18 = *MEMORY[0x277CDA780];
    [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer setLineCap:*MEMORY[0x277CDA780]];
    blackColor3 = [MEMORY[0x277D75348] blackColor];
    -[CAShapeLayer setStrokeColor:](self->_vpnSlashMaskShapeLayer, "setStrokeColor:", [blackColor3 CGColor]);

    [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer setStrokeEnd:0.0];
    v20 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer setCompositingFilter:v20];

    layer3 = [v28 layer];
    [layer3 addSublayer:self->_vpnSlashMaskShapeLayer];

    [(STUIStatusBarStringView *)self->_vpnView setMaskView:v28];
    v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{5.0, 0.0, 19.0, 19.0}];
    slashView = self->_slashView;
    self->_slashView = v22;

    [(STUIStatusBarVPNDisconnectView *)self addSubview:self->_slashView];
    layer4 = [MEMORY[0x277CD9F90] layer];
    slashShapeLayer = self->_slashShapeLayer;
    self->_slashShapeLayer = layer4;

    v26 = CGPathCreateMutable();
    CGPathMoveToPoint(v26, 0, 0.0, 0.0);
    CGPathAddLineToPoint(v26, 0, 19.0, 19.0);
    [(CAShapeLayer *)self->_slashShapeLayer setPath:v26];
    CGPathRelease(v26);
    [(CAShapeLayer *)self->_slashShapeLayer setLineWidth:1.0];
    [(CAShapeLayer *)self->_slashShapeLayer setLineCap:v18];
    [(CAShapeLayer *)self->_slashShapeLayer setStrokeEnd:0.0];
    layer5 = [(UIView *)self->_slashView layer];
    [layer5 addSublayer:self->_slashShapeLayer];
  }
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(STUIStatusBarVPNDisconnectView *)self _setupForStyleAttributes:attributesCopy];
  [(STUIStatusBarStringView *)self->_vpnView applyStyleAttributes:attributesCopy];
  imageTintColor = [attributesCopy imageTintColor];

  v5 = imageTintColor;
  -[CAShapeLayer setStrokeColor:](self->_slashShapeLayer, "setStrokeColor:", [imageTintColor CGColor]);
}

- (void)resetSlashForUpdate:(id)update
{
  styleAttributes = [update styleAttributes];
  [(STUIStatusBarVPNDisconnectView *)self _setupForStyleAttributes:styleAttributes];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] disableActions];
  [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer setStrokeEnd:0.0];
  [(CAShapeLayer *)self->_slashShapeLayer setStrokeEnd:0.0];
  v5 = MEMORY[0x277CD9FF0];

  [v5 commit];
}

- (void)animateSlashForUpdate:(id)update
{
  styleAttributes = [update styleAttributes];
  [(STUIStatusBarVPNDisconnectView *)self _setupForStyleAttributes:styleAttributes];

  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  layer = [(STUIStatusBarVPNDisconnectView *)self layer];
  [layer convertTime:0 toLayer:CACurrentMediaTime()];
  [v8 setBeginTime:v6 + 0.75];

  [v8 setFromValue:&unk_287D1B2C0];
  [v8 setToValue:&unk_287D1B2D0];
  [v8 setDuration:0.75];
  [v8 setDelegate:self];
  v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v8 setTimingFunction:v7];

  [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer addAnimation:v8 forKey:@"slash"];
  [(CAShapeLayer *)self->_slashShapeLayer addAnimation:v8 forKey:@"slash"];
  [(CAShapeLayer *)self->_vpnSlashMaskShapeLayer setStrokeEnd:1.0];
  [(CAShapeLayer *)self->_slashShapeLayer setStrokeEnd:1.0];
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(STUIStatusBarStringView *)self->_vpnView alignmentRectInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(STUIStatusBarStringView *)self->_vpnView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end