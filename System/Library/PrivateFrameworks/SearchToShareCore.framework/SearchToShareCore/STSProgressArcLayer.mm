@interface STSProgressArcLayer
- (STSProgressArcLayer)init;
- (void)drawInContext:(CGContext *)a3;
- (void)setEndAngle:(double)a3;
- (void)setLineWidth:(double)a3;
- (void)setRadius:(double)a3;
- (void)setStartAngle:(double)a3;
@end

@implementation STSProgressArcLayer

- (STSProgressArcLayer)init
{
  v5.receiver = self;
  v5.super_class = STSProgressArcLayer;
  v2 = [(STSProgressArcLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lineWidth = 1.0;
    [(STSProgressArcLayer *)v2 setNeedsDisplayOnBoundsChange:1];
  }

  return v3;
}

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  [(STSProgressArcLayer *)self bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  [(STSProgressArcLayer *)self radius];
  v10 = v9;
  [(STSProgressArcLayer *)self lineWidth];
  v12 = v11;
  [(STSProgressArcLayer *)self startAngle];
  v14 = v13;
  [(STSProgressArcLayer *)self endAngle];
  v16 = v15;
  v23[1] = 3221225472;
  v23[0] = MEMORY[0x277D85DD0];
  v23[2] = __37__STSProgressArcLayer_drawInContext___block_invoke;
  v23[3] = &__block_descriptor_96_e8_v16__0d8l;
  v17 = v10 + v12 * -0.5;
  *&v23[4] = x;
  *&v23[5] = y;
  *&v23[6] = width;
  *&v23[7] = height;
  *&v23[8] = v12;
  *&v23[9] = MidX;
  *&v23[10] = MidY;
  v23[11] = a3;
  v18 = MEMORY[0x266751FB0](v23);
  v18[2](v14);
  (v18[2])(v18, v16);
  CGContextSetLineWidth(a3, v12);
  CGContextAddArc(a3, MidX, MidY, v17, v14, v16, 0);
  v19 = [MEMORY[0x277D75348] whiteColor];
  CGContextSetStrokeColorWithColor(a3, [v19 CGColor]);

  CGContextStrokePath(a3);
  CGContextAddArc(a3, MidX, MidY, v17, v16, v14 + 6.28318531, 0);
  v20 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.600000024];
  CGContextSetStrokeColorWithColor(a3, [v20 CGColor]);

  CGContextStrokePath(a3);
  CGContextRestoreGState(a3);
}

void __37__STSProgressArcLayer_drawInContext___block_invoke(uint64_t a1, CGFloat a2)
{
  Mutable = CGPathCreateMutable();
  CGPathAddRect(Mutable, 0, *(a1 + 32));
  v5 = *(a1 + 72);
  v6 = *(a1 + 64) * 0.5;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&v7, v5, *(a1 + 80));
  CGAffineTransformRotate(&m, &v7, a2);
  v9.size.width = CGRectGetWidth(*(a1 + 32)) * 0.5;
  v9.origin.x = 0.0;
  v9.origin.y = v6 * -0.5;
  v9.size.height = v6;
  CGPathAddRect(Mutable, &m, v9);
  CGContextAddPath(*(a1 + 88), Mutable);
  CGContextEOClip(*(a1 + 88));
  CGPathRelease(Mutable);
}

- (void)setRadius:(double)a3
{
  if (self->_radius != a3)
  {
    self->_radius = a3;
    [(STSProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setStartAngle:(double)a3
{
  if (self->_startAngle != a3)
  {
    self->_startAngle = a3;
    [(STSProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setEndAngle:(double)a3
{
  if (self->_endAngle != a3)
  {
    self->_endAngle = a3;
    [(STSProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setLineWidth:(double)a3
{
  if (self->_lineWidth != a3)
  {
    self->_lineWidth = a3;
    [(STSProgressArcLayer *)self setNeedsDisplay];
  }
}

@end