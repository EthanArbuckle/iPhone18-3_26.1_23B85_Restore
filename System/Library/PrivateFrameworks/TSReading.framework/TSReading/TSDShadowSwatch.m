@interface TSDShadowSwatch
- (BOOL)isEqual:(id)a3;
- (TSDShadowSwatch)initWithShadow:(id)a3;
- (void)dealloc;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4 forImage:(CGImage *)a5 swatchRect:(CGRect)a6 wantsStroke:(BOOL)a7;
- (void)p_drawContactShadowInContext:(CGContext *)a3 inRect:(CGRect)a4 forShadow:(id)a5 forImage:(CGImage *)a6 forSwatchRect:(CGRect)a7;
@end

@implementation TSDShadowSwatch

- (TSDShadowSwatch)initWithShadow:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDShadowSwatch;
  v4 = [(TSDShadowSwatch *)&v6 init];
  if (v4)
  {
    v4->mShadow = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDShadowSwatch;
  [(TSDShadowSwatch *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 shadow];
  mShadow = self->mShadow;
  if (mShadow == v5)
  {
    return 1;
  }

  return [(TSDShadow *)mShadow isEqual:?];
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4 forImage:(CGImage *)a5 swatchRect:(CGRect)a6 wantsStroke:(BOOL)a7
{
  v7 = a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a3.size.height;
  v15 = a3.size.width;
  v16 = a3.origin.y;
  v17 = a3.origin.x;
  v37 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(a4);
  mShadow = self->mShadow;
  if (!mShadow)
  {
    v21 = [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")];
    CGContextSetStrokeColorWithColor(a4, v21);
    *lengths = xmmword_26CA65510;
    CGContextSetLineWidth(a4, 1.0);
    CGContextSetLineDash(a4, 0.0, lengths, 2uLL);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGContextStrokeRect(a4, v39);
    CGContextSetFillColorWithColor(a4, v21);
    v22 = [TSDBundle() localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSDrawables"];
    UIGraphicsPushContext(a4);
    v23 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    v34 = *MEMORY[0x277D740A8];
    v24 = v34;
    v35 = v23;
    [v22 sizeWithAttributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v35, &v34, 1)}];
    *&v25 = (width - v25) * 0.5;
    v26 = x + floorf(*&v25);
    *&v25 = (height - v27) * 0.5;
    v32 = v24;
    v33 = v23;
    [v22 drawAtPoint:objc_msgSend(MEMORY[0x277CBEAC0] withAttributes:{"dictionaryWithObjects:forKeys:count:", &v33, &v32, 1), v26, y + floorf(*&v25)}];
    UIGraphicsPopContext();
    goto LABEL_12;
  }

  if ([(TSDShadow *)mShadow isContactShadow])
  {
    objc_opt_class();
    v20 = [TSUDynamicCast() newShadowClampedForSwatches];
    CGContextSaveGState(a4);
    [(TSDShadowSwatch *)self p_drawContactShadowInContext:a4 inRect:v20 forShadow:a5 forImage:v17 forSwatchRect:v16, v15, v14, x, y, width, height];
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    CGContextDrawImage(a4, v38, a5);
    CGContextRestoreGState(a4);
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if ([(TSDShadow *)self->mShadow isDropShadow])
  {
    [(TSDShadow *)self->mShadow applyToContext:a4 viewScale:1 flipped:1.0];
    if (a5)
    {
      goto LABEL_8;
    }

LABEL_11:
    CGContextSetFillColorWithColor(a4, [objc_msgSend(MEMORY[0x277D6C2A8] "lightGrayColor")]);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    CGContextFillRect(a4, v42);
    goto LABEL_12;
  }

  v30 = [MEMORY[0x277D6C290] currentHandler];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadowSwatch drawSwatchInRect:inContext:forImage:swatchRect:wantsStroke:]"];
  [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadowSwatch.m"), 79, @"-drawSwatchInRect: Invalid shadow type"}];
  if (!a5)
  {
    goto LABEL_11;
  }

LABEL_8:
  v28 = x + 1.0;
  v29 = y + 1.0;
  CGContextTranslateCTM(a4, 0.0, v14);
  CGContextScaleCTM(a4, 1.0, -1.0);
  v40.origin.x = v28;
  v40.origin.y = v29;
  v40.size.width = width;
  v40.size.height = height;
  CGContextDrawImage(a4, v40, a5);
  if (v7)
  {
    CGContextSetStrokeColorWithColor(a4, [objc_msgSend(MEMORY[0x277D6C2A8] colorWithWhite:0.0 alpha:{0.2), "CGColor"}]);
    v41.origin.x = v28;
    v41.origin.y = v29;
    v41.size.width = width;
    v41.size.height = height;
    CGContextStrokeRectWithWidth(a4, v41, 1.0);
  }

LABEL_12:
  CGContextRestoreGState(a4);
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [objc_msgSend(MEMORY[0x277D6C2F8] imageNamed:@"TSD_ShadowSwatch" inBundle:{TSDBundle()), "CGImage"}];
  v14 = TSDCenterRectOverRect(0.0, 0.0, 50.0, 50.0, x, y, width, height);

  [(TSDShadowSwatch *)self drawSwatchInRect:a4 inContext:v10 forImage:1 swatchRect:x wantsStroke:y, width, height, v14, v11, v12, v13];
}

- (void)p_drawContactShadowInContext:(CGContext *)a3 inRect:(CGRect)a4 forShadow:(id)a5 forImage:(CGImage *)a6 forSwatchRect:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a4.size.height;
  v14 = a4.size.width;
  v15 = a4.origin.y;
  v16 = a4.origin.x;
  objc_opt_class();
  v18 = TSUDynamicCast();
  if (!v18)
  {
    v19 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadowSwatch p_drawContactShadowInContext:inRect:forShadow:forImage:forSwatchRect:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadowSwatch.m"), 155, @"invalid nil value for '%s'", "contactShadow"}];
  }

  v21 = TSDBitmapContextCreate(3, v14);
  CGContextTranslateCTM(v21, -v16, -v15);
  CGContextTranslateCTM(v21, 0.0, v13 * 0.5);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGContextDrawImage(v21, v25, a6);
  v22 = [v18 newShadowImageFromContext:v21 withSize:0 bounds:v14 unflipped:{v13, x, y, width, height}];
  CGContextSaveGState(a3);
  CGContextTranslateCTM(a3, 0.0, v13 * -0.5);
  CGContextTranslateCTM(a3, 0.0, height);
  [a5 offset];
  CGContextTranslateCTM(a3, 0.0, v23);
  v26.origin.x = v16;
  v26.origin.y = v15;
  v26.size.width = v14;
  v26.size.height = v13;
  CGContextDrawImage(a3, v26, v22);
  CGContextRestoreGState(a3);
  CGImageRelease(v22);

  CGContextRelease(v21);
}

@end