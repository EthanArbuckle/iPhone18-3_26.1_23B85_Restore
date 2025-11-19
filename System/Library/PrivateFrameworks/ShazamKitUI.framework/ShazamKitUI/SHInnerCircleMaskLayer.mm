@interface SHInnerCircleMaskLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)setup;
@end

@implementation SHInnerCircleMaskLayer

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"innerCircleRelativeSize"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SHInnerCircleMaskLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, v4);
  }

  return v5;
}

- (void)setup
{
  [(SHInnerCircleMaskLayer *)self setNeedsDisplayOnBoundsChange:1];
  +[SHPalette contentsScale];

  [(SHInnerCircleMaskLayer *)self setContentsScale:?];
}

- (void)drawInContext:(CGContext *)a3
{
  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  Mutable = CGPathCreateMutable();
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGPathAddRect(Mutable, 0, v24);
  v10 = [(SHPaletteLayer *)self palette];
  CGContextSetFillColorWithColor(a3, [v10 blackColor]);

  CGContextAddPath(a3, Mutable);
  CGContextDrawPath(a3, kCGPathFill);
  CGPathRelease(Mutable);
  [(SHInnerCircleMaskLayer *)self innerCircleRelativeSize];
  v12 = 1.0 / v11;
  [(SHInnerCircleMaskLayer *)self innerCircleRelativeSize];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v14;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v22, &v21, v12, 1.0 / v13);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v26 = CGRectApplyAffineTransform(v25, &v22);
  v15 = v26.size.width;
  v16 = v26.size.height;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v17 = CGRectGetMidX(v26) - v15 * 0.5;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v18 = CGRectGetMidY(v27) - v16 * 0.5;
  v19 = CGPathCreateMutable();
  v28.origin.x = v17;
  v28.origin.y = v18;
  v28.size.width = v15;
  v28.size.height = v16;
  CGPathAddEllipseInRect(v19, 0, v28);
  v20 = [(SHPaletteLayer *)self palette];
  CGContextSetFillColorWithColor(a3, [v20 clearColor]);

  CGContextSetBlendMode(a3, kCGBlendModeClear);
  CGContextBeginPath(a3);
  CGContextAddPath(a3, v19);
  CGContextDrawPath(a3, kCGPathFill);
  CGPathRelease(v19);
  CGContextSetBlendMode(a3, kCGBlendModeNormal);
}

@end