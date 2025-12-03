@interface TSDShadowSwatch
- (BOOL)isEqual:(id)equal;
- (TSDShadowSwatch)initWithShadow:(id)shadow;
- (void)dealloc;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context forImage:(CGImage *)image swatchRect:(CGRect)swatchRect wantsStroke:(BOOL)stroke;
- (void)p_drawContactShadowInContext:(CGContext *)context inRect:(CGRect)rect forShadow:(id)shadow forImage:(CGImage *)image forSwatchRect:(CGRect)swatchRect;
@end

@implementation TSDShadowSwatch

- (TSDShadowSwatch)initWithShadow:(id)shadow
{
  v6.receiver = self;
  v6.super_class = TSDShadowSwatch;
  v4 = [(TSDShadowSwatch *)&v6 init];
  if (v4)
  {
    v4->mShadow = shadow;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDShadowSwatch;
  [(TSDShadowSwatch *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  shadow = [equal shadow];
  mShadow = self->mShadow;
  if (mShadow == shadow)
  {
    return 1;
  }

  return [(TSDShadow *)mShadow isEqual:?];
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context forImage:(CGImage *)image swatchRect:(CGRect)swatchRect wantsStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  height = swatchRect.size.height;
  width = swatchRect.size.width;
  y = swatchRect.origin.y;
  x = swatchRect.origin.x;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  v37 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(context);
  mShadow = self->mShadow;
  if (!mShadow)
  {
    v21 = [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")];
    CGContextSetStrokeColorWithColor(context, v21);
    *lengths = xmmword_26CA65510;
    CGContextSetLineWidth(context, 1.0);
    CGContextSetLineDash(context, 0.0, lengths, 2uLL);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGContextStrokeRect(context, v39);
    CGContextSetFillColorWithColor(context, v21);
    v22 = [TSDBundle() localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSDrawables"];
    UIGraphicsPushContext(context);
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
    newShadowClampedForSwatches = [TSUDynamicCast() newShadowClampedForSwatches];
    CGContextSaveGState(context);
    [(TSDShadowSwatch *)self p_drawContactShadowInContext:context inRect:newShadowClampedForSwatches forShadow:image forImage:v17 forSwatchRect:v16, v15, v14, x, y, width, height];
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    CGContextDrawImage(context, v38, image);
    CGContextRestoreGState(context);
    if (!image)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if ([(TSDShadow *)self->mShadow isDropShadow])
  {
    [(TSDShadow *)self->mShadow applyToContext:context viewScale:1 flipped:1.0];
    if (image)
    {
      goto LABEL_8;
    }

LABEL_11:
    CGContextSetFillColorWithColor(context, [objc_msgSend(MEMORY[0x277D6C2A8] "lightGrayColor")]);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    CGContextFillRect(context, v42);
    goto LABEL_12;
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadowSwatch drawSwatchInRect:inContext:forImage:swatchRect:wantsStroke:]"];
  [currentHandler handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadowSwatch.m"), 79, @"-drawSwatchInRect: Invalid shadow type"}];
  if (!image)
  {
    goto LABEL_11;
  }

LABEL_8:
  v28 = x + 1.0;
  v29 = y + 1.0;
  CGContextTranslateCTM(context, 0.0, v14);
  CGContextScaleCTM(context, 1.0, -1.0);
  v40.origin.x = v28;
  v40.origin.y = v29;
  v40.size.width = width;
  v40.size.height = height;
  CGContextDrawImage(context, v40, image);
  if (strokeCopy)
  {
    CGContextSetStrokeColorWithColor(context, [objc_msgSend(MEMORY[0x277D6C2A8] colorWithWhite:0.0 alpha:{0.2), "CGColor"}]);
    v41.origin.x = v28;
    v41.origin.y = v29;
    v41.size.width = width;
    v41.size.height = height;
    CGContextStrokeRectWithWidth(context, v41, 1.0);
  }

LABEL_12:
  CGContextRestoreGState(context);
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [objc_msgSend(MEMORY[0x277D6C2F8] imageNamed:@"TSD_ShadowSwatch" inBundle:{TSDBundle()), "CGImage"}];
  v14 = TSDCenterRectOverRect(0.0, 0.0, 50.0, 50.0, x, y, width, height);

  [(TSDShadowSwatch *)self drawSwatchInRect:context inContext:v10 forImage:1 swatchRect:x wantsStroke:y, width, height, v14, v11, v12, v13];
}

- (void)p_drawContactShadowInContext:(CGContext *)context inRect:(CGRect)rect forShadow:(id)shadow forImage:(CGImage *)image forSwatchRect:(CGRect)swatchRect
{
  height = swatchRect.size.height;
  width = swatchRect.size.width;
  y = swatchRect.origin.y;
  x = swatchRect.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  objc_opt_class();
  v18 = TSUDynamicCast();
  if (!v18)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShadowSwatch p_drawContactShadowInContext:inRect:forShadow:forImage:forSwatchRect:]"];
    [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadowSwatch.m"), 155, @"invalid nil value for '%s'", "contactShadow"}];
  }

  v21 = TSDBitmapContextCreate(3, v14);
  CGContextTranslateCTM(v21, -v16, -v15);
  CGContextTranslateCTM(v21, 0.0, v13 * 0.5);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGContextDrawImage(v21, v25, image);
  v22 = [v18 newShadowImageFromContext:v21 withSize:0 bounds:v14 unflipped:{v13, x, y, width, height}];
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, v13 * -0.5);
  CGContextTranslateCTM(context, 0.0, height);
  [shadow offset];
  CGContextTranslateCTM(context, 0.0, v23);
  v26.origin.x = v16;
  v26.origin.y = v15;
  v26.size.width = v14;
  v26.size.height = v13;
  CGContextDrawImage(context, v26, v22);
  CGContextRestoreGState(context);
  CGImageRelease(v22);

  CGContextRelease(v21);
}

@end