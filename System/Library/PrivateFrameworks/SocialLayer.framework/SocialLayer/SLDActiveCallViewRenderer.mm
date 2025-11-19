@interface SLDActiveCallViewRenderer
- (SLDActiveCallViewRenderer)initWithStyle:(id)a3 tag:(id)a4;
- (void)renderInContext:(CGContext *)a3;
@end

@implementation SLDActiveCallViewRenderer

- (SLDActiveCallViewRenderer)initWithStyle:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SLDActiveCallViewRenderer;
  v9 = [(SLDActiveCallViewRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, a3);
    objc_storeStrong(&v10->_slotTag, a4);
    v10->_RTL = [v7 layoutDirection] == 1;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(SLDActiveCallViewRenderer *)self slotTag];
  v6 = [v5 isCallActive];

  v7 = SLDaemonLogHandle();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(v26.a) = 138412290;
      *(&v26.a + 4) = self;
      _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_INFO, "[%@] SLDActiveCallViewRenderer had an active conversation at time of rendering.", &v26, 0xCu);
    }

    v9 = [(SLDActiveCallViewRenderer *)self slotTag];
    [v9 maxWidth];
    v11 = v10;

    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = v11;
    v29.size.height = 45.0;
    v12 = CGPathCreateWithRoundedRect(v29, 15.0, 15.0, 0);
    CGContextSetRGBFillColor(a3, 0.8, 0.8, 0.8, 1.0);
    CGContextAddPath(a3, v12);
    CGContextDrawPath(a3, kCGPathFill);
    CGPathRelease(v12);
    v13 = [(SLDActiveCallViewRenderer *)self slotTag];
    v8 = [v13 activeCallGroupPhotoData];

    if (v8)
    {
      v14 = CGDataProviderCreateWithCFData(v8);
      if (v14)
      {
        v15 = v14;
        v16 = CGImageSourceCreateWithDataProvider(v14, 0);
        CFRelease(v15);
        if (v16)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
          CFRelease(v16);
          if (ImageAtIndex)
          {
            CGContextSaveGState(a3);
            CGContextTranslateCTM(a3, 0.0, 45.0);
            CGContextScaleCTM(a3, 1.0, -1.0);
            CGContextBeginPath(a3);
            v30.origin.x = 8.0;
            v30.origin.y = 8.0;
            v30.size.width = 30.0;
            v30.size.height = 30.0;
            CGContextAddEllipseInRect(a3, v30);
            CGContextClip(a3);
            CGContextClosePath(a3);
            v31.origin.x = 8.0;
            v31.origin.y = 8.0;
            v31.size.width = 30.0;
            v31.size.height = 30.0;
            CGContextDrawImage(a3, v31, ImageAtIndex);
            CGContextRestoreGState(a3);
            CGImageRelease(ImageAtIndex);
          }
        }
      }
    }

    CGContextSaveGState(a3);
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v26.a = *MEMORY[0x277CBF2C0];
    *&v26.c = v18;
    *&v26.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGContextSetTextMatrix(a3, &v26);
    CGContextTranslateCTM(a3, 0.0, 45.0);
    CGContextScaleCTM(a3, 1.0, -1.0);
    Mutable = CGPathCreateMutable();
    v32.size.width = v11 + -46.0;
    v32.origin.x = 46.0;
    v32.origin.y = 0.0;
    v32.size.height = 30.0;
    CGPathAddRect(Mutable, 0, v32);
    v20 = [(SLDActiveCallViewRenderer *)self slotTag];
    v21 = [v20 activeCallDisplayName];

    v22 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v21];
    v23 = CTFramesetterCreateWithAttributedString(v22);
    v28.length = [(__CFAttributedString *)v22 length];
    v28.location = 0;
    Frame = CTFramesetterCreateFrame(v23, v28, Mutable, 0);
    CTFrameDraw(Frame, a3);
    CFRelease(Frame);
    CFRelease(Mutable);
    CFRelease(v23);
    CGContextRestoreGState(a3);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SLDActiveCallViewRenderer renderInContext:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end