@interface VTUICheckMarkView
- (CALayer)checkMaskLayer;
- (CALayer)xMaskLayer;
- (CGSize)intrinsicContentSize;
- (VTUIColorLayer)colorLayer;
- (void)animateForSuccess:(BOOL)success completion:(id)completion;
@end

@implementation VTUICheckMarkView

- (CGSize)intrinsicContentSize
{
  checkMaskLayer = [(VTUICheckMarkView *)self checkMaskLayer];
  [checkMaskLayer bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)animateForSuccess:(BOOL)success completion:(id)completion
{
  completionCopy = completion;
  if (success)
  {
    [(VTUICheckMarkView *)self checkMaskLayer];
  }

  else
  {
    [(VTUICheckMarkView *)self xMaskLayer];
  }
  v7 = ;
  [(VTUICheckMarkView *)self bounds];
  v9 = v8;
  [v7 bounds];
  v11 = v9 / v10;
  [(VTUICheckMarkView *)self bounds];
  v13 = v12;
  [v7 bounds];
  CGAffineTransformMakeScale(&v38, v11, v13 / v14);
  v37 = v38;
  [v7 setAffineTransform:&v37];
  [(VTUICheckMarkView *)self bounds];
  v16 = v15;
  colorLayer = [(VTUICheckMarkView *)self colorLayer];
  [colorLayer bounds];
  v19 = v16 / v18;
  [(VTUICheckMarkView *)self bounds];
  v21 = v20;
  colorLayer2 = [(VTUICheckMarkView *)self colorLayer];
  [colorLayer2 bounds];
  CGAffineTransformMakeScale(&v36, v19, v21 / v23);
  colorLayer3 = [(VTUICheckMarkView *)self colorLayer];
  v37 = v36;
  [colorLayer3 setAffineTransform:&v37];

  layer = [(VTUICheckMarkView *)self layer];
  [layer setMask:v7];

  [(VTUICheckMarkView *)self setAlpha:1.0];
  [(VTUICheckMarkView *)self setHidden:0];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.666666687];
  [MEMORY[0x277CD9FF0] disableActions];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __50__VTUICheckMarkView_animateForSuccess_completion___block_invoke;
  v33 = &unk_279E541D0;
  selfCopy = self;
  v35 = completionCopy;
  v26 = MEMORY[0x277CD9FF0];
  v27 = completionCopy;
  [v26 setCompletionBlock:&v30];
  v28 = [(VTUICheckMarkView *)self colorLayer:v30];
  LODWORD(v29) = 1.0;
  [v28 setPhase:v29];

  [MEMORY[0x277CD9FF0] commit];
}

void __50__VTUICheckMarkView_animateForSuccess_completion___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__VTUICheckMarkView_animateForSuccess_completion___block_invoke_2;
  v5[3] = &unk_279E54220;
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__VTUICheckMarkView_animateForSuccess_completion___block_invoke_3;
  v3[3] = &unk_279E547A0;
  v3[4] = v6;
  v4 = v2;
  [v1 animateWithDuration:v5 animations:v3 completion:0.333333343];
}

void __50__VTUICheckMarkView_animateForSuccess_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) colorLayer];
  [v3 setPhase:0.0];
}

- (VTUIColorLayer)colorLayer
{
  colorLayer = self->_colorLayer;
  if (!colorLayer)
  {
    v4 = +[VTUIColorLayer layer];
    v5 = self->_colorLayer;
    self->_colorLayer = v4;

    [(VTUIColorLayer *)self->_colorLayer setBounds:0.0, 0.0, 400.0, 400.0];
    layer = [(VTUICheckMarkView *)self layer];
    [layer bounds];
    MidX = CGRectGetMidX(v13);
    layer2 = [(VTUICheckMarkView *)self layer];
    [layer2 bounds];
    MidY = CGRectGetMidY(v14);

    [(VTUIColorLayer *)self->_colorLayer setPosition:MidX, MidY];
    layer3 = [(VTUICheckMarkView *)self layer];
    [layer3 addSublayer:self->_colorLayer];

    colorLayer = self->_colorLayer;
  }

  return colorLayer;
}

- (CALayer)checkMaskLayer
{
  checkMaskLayer = self->_checkMaskLayer;
  if (!checkMaskLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:62.0];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v7 = [v6 imageWithConfiguration:v5];

    [v7 size];
    v9 = v8;
    v11 = v10;
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = v9;
    v17.size.height = v11;
    MidX = CGRectGetMidX(v17);
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = v9;
    v18.size.height = v11;
    MidY = CGRectGetMidY(v18);
    -[CALayer setContents:](layer, "setContents:", [v7 CGImage]);
    [(CALayer *)layer setBounds:0.0, 0.0, v9, v11];
    [(CALayer *)layer setPosition:MidX, MidY];
    v14 = self->_checkMaskLayer;
    self->_checkMaskLayer = layer;

    checkMaskLayer = self->_checkMaskLayer;
  }

  return checkMaskLayer;
}

- (CALayer)xMaskLayer
{
  xMaskLayer = self->_xMaskLayer;
  if (!xMaskLayer)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    [(CALayer *)layer setBounds:0.0, 0.0, 400.0, 400.0];
    [(CALayer *)layer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 80.0, 80.0);
    CGPathAddLineToPoint(Mutable, 0, 320.0, 320.0);
    CGPathMoveToPoint(Mutable, 0, 80.0, 320.0);
    CGPathAddLineToPoint(Mutable, 0, 320.0, 80.0);
    [(CALayer *)layer setPath:Mutable];
    CGPathRelease(Mutable);
    [(CALayer *)layer setFillColor:0];
    [(CALayer *)layer setStrokeColor:CGColorGetConstantColor(*MEMORY[0x277CBF3B8])];
    [(CALayer *)layer setLineWidth:36.0];
    v6 = self->_xMaskLayer;
    self->_xMaskLayer = layer;

    xMaskLayer = self->_xMaskLayer;
  }

  return xMaskLayer;
}

@end