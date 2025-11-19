@interface PXProgressArcLayer
- (PXProgressArcLayer)init;
- (void)drawInContext:(CGContext *)a3;
- (void)setEndAngle:(double)a3;
- (void)setLineWidth:(double)a3;
- (void)setRadius:(double)a3;
- (void)setStartAngle:(double)a3;
@end

@implementation PXProgressArcLayer

- (void)setLineWidth:(double)a3
{
  if (self->_lineWidth != a3)
  {
    self->_lineWidth = a3;
    [(PXProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setEndAngle:(double)a3
{
  if (self->_endAngle != a3)
  {
    self->_endAngle = a3;
    [(PXProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setStartAngle:(double)a3
{
  if (self->_startAngle != a3)
  {
    self->_startAngle = a3;
    [(PXProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)setRadius:(double)a3
{
  if (self->_radius != a3)
  {
    self->_radius = a3;
    [(PXProgressArcLayer *)self setNeedsDisplay];
  }
}

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  [(PXProgressArcLayer *)self bounds];
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
  [(PXProgressArcLayer *)self radius];
  v10 = v9;
  [(PXProgressArcLayer *)self lineWidth];
  v12 = v11;
  [(PXProgressArcLayer *)self startAngle];
  v14 = v13;
  [(PXProgressArcLayer *)self endAngle];
  v16 = v15;
  aBlock[1] = 3221225472;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[2] = __36__PXProgressArcLayer_drawInContext___block_invoke;
  aBlock[3] = &__block_descriptor_96_e8_v16__0d8l;
  v17 = v10 + v12 * -0.5;
  *&aBlock[4] = x;
  *&aBlock[5] = y;
  *&aBlock[6] = width;
  *&aBlock[7] = height;
  *&aBlock[8] = v12;
  *&aBlock[9] = MidX;
  *&aBlock[10] = MidY;
  aBlock[11] = a3;
  v18 = _Block_copy(aBlock);
  v18[2](v14);
  (v18[2])(v18, v16);
  CGContextSetLineWidth(a3, v12);
  CGContextAddArc(a3, MidX, MidY, v17, v14, v16, 0);
  v19 = [MEMORY[0x1E69DC888] whiteColor];
  CGContextSetStrokeColorWithColor(a3, [v19 CGColor]);

  CGContextStrokePath(a3);
  CGContextAddArc(a3, MidX, MidY, v17, v16, v14 + 6.28318531, 0);
  v20 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.600000024];
  CGContextSetStrokeColorWithColor(a3, [v20 CGColor]);

  CGContextStrokePath(a3);
  CGContextRestoreGState(a3);
}

void __36__PXProgressArcLayer_drawInContext___block_invoke(uint64_t a1, CGFloat a2)
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

- (PXProgressArcLayer)init
{
  v5.receiver = self;
  v5.super_class = PXProgressArcLayer;
  v2 = [(PXProgressArcLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lineWidth = 1.0;
    [(PXProgressArcLayer *)v2 setNeedsDisplayOnBoundsChange:1];
  }

  return v3;
}

@end