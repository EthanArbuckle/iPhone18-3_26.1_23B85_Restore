@interface OKProgressArcLayer
- (OKProgressArcLayer)init;
- (void)drawInContext:(CGContext *)context;
- (void)setEndAngle:(double)angle;
- (void)setLineWidth:(double)width;
- (void)setRadius:(double)radius;
- (void)setStartAngle:(double)angle;
@end

@implementation OKProgressArcLayer

- (OKProgressArcLayer)init
{
  v5.receiver = self;
  v5.super_class = OKProgressArcLayer;
  v2 = [(OKProgressArcLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lineWidth = 1.0;
    [(OKProgressArcLayer *)v2 setNeedsDisplayOnBoundsChange:1];
  }

  return v3;
}

- (void)drawInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  [(OKProgressArcLayer *)self bounds];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MidY = CGRectGetMidY(v32);
  [(OKProgressArcLayer *)self radius];
  v10 = v9;
  [(OKProgressArcLayer *)self lineWidth];
  v12 = v11;
  [(OKProgressArcLayer *)self startAngle];
  v14 = v13;
  [(OKProgressArcLayer *)self endAngle];
  v16 = v15;
  v20[1] = 3221225472;
  v20[0] = MEMORY[0x277D85DD0];
  v21 = __36__OKProgressArcLayer_drawInContext___block_invoke;
  v22 = &__block_descriptor_96_e8_v16__0d8l;
  v17 = v10 + v12 * -0.5;
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  v27 = v12;
  v28 = MidX;
  v29 = MidY;
  contextCopy = context;
  __36__OKProgressArcLayer_drawInContext___block_invoke(v20, v14);
  v21(v20, v16);
  CGContextSetLineWidth(context, v12);
  CGContextAddArc(context, MidX, MidY, v17, v14, v16, 0);
  CGContextSetStrokeColorWithColor(context, [objc_msgSend(MEMORY[0x277D75348] "whiteColor")]);
  CGContextStrokePath(context);
  CGContextAddArc(context, MidX, MidY, v17, v16, v14 + 6.28318531, 0);
  CGContextSetStrokeColorWithColor(context, [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:1.0 alpha:{0.600000024), "CGColor"}]);
  CGContextStrokePath(context);
  CGContextRestoreGState(context);
}

void __36__OKProgressArcLayer_drawInContext___block_invoke(uint64_t a1, CGFloat a2)
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

- (void)setRadius:(double)radius
{
  if (self->_radius != radius)
  {
    self->_radius = radius;
    [(OKProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setStartAngle:(double)angle
{
  if (self->_startAngle != angle)
  {
    self->_startAngle = angle;
    [(OKProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setEndAngle:(double)angle
{
  if (self->_endAngle != angle)
  {
    self->_endAngle = angle;
    [(OKProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setLineWidth:(double)width
{
  if (self->_lineWidth != width)
  {
    self->_lineWidth = width;
    [(OKProgressArcLayer *)self setNeedsDisplay];
  }
}

@end