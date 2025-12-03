@interface TSDErrorImageProvider
+ (TSDErrorImageProvider)sharedInstance;
- (CGPDFDocument)p_iconPDFDocument;
- (CGSize)naturalSize;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
@end

@implementation TSDErrorImageProvider

+ (TSDErrorImageProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766A4088;
  block[3] = &unk_27A6CC4B8;
  block[4] = self;
  if (qword_280A4C248 != -1)
  {
    dispatch_once(&qword_280A4C248, block);
  }

  v2 = qword_280A4C240;

  return v2;
}

- (CGSize)naturalSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  rectCopy = rect;
  if (TSUCGFloatIsValid())
  {
    if (TSUCGFloatIsValid())
    {
      width = rectCopy.size.width;
      if (rectCopy.size.width != 0.0)
      {
        height = rectCopy.size.height;
        if (rectCopy.size.height != 0.0)
        {
          x = rectCopy.origin.x;
          y = rectCopy.origin.y;
          if (!CGRectIsInfinite(*(&width - 2)) && !CGRectIsNull(rectCopy))
          {
            CGContextSetShouldAntialias(context, 1);
            DeviceRGB = TSUCGColorCreateDeviceRGB();
            CGContextSetFillColorWithColor(context, DeviceRGB);
            CGColorRelease(DeviceRGB);
            CGContextFillRect(context, rectCopy);
            v11 = TSUCGColorCreateDeviceRGB();
            CGContextSetStrokeColorWithColor(context, v11);
            CGColorRelease(v11);
            memset(&v56, 0, sizeof(v56));
            CGContextGetCTM(&v56, context);
            TSUDistance();
            v13 = 1.0 / v12;
            CGContextSetLineWidth(context, 1.0 / v12);
            v55 = CGRectInset(rectCopy, v13 * 0.5, v13 * 0.5);
            if (TSUCGFloatIsValid())
            {
              if (TSUCGFloatIsValid())
              {
                v14 = v55.size.width;
                if (v55.size.width != 0.0)
                {
                  v15 = v55.size.height;
                  if (v55.size.height != 0.0)
                  {
                    v16 = v55.origin.x;
                    v17 = v55.origin.y;
                    if (!CGRectIsInfinite(*(&v14 - 2)) && !CGRectIsNull(v55))
                    {
                      CGContextBeginPath(context);
                      CGContextAddRect(context, v55);
                      MinX = CGRectGetMinX(v55);
                      MinY = CGRectGetMinY(v55);
                      CGContextMoveToPoint(context, MinX, MinY);
                      MaxX = CGRectGetMaxX(v55);
                      MaxY = CGRectGetMaxY(v55);
                      CGContextAddLineToPoint(context, MaxX, MaxY);
                      v22 = CGRectGetMaxX(v55);
                      v23 = CGRectGetMinY(v55);
                      CGContextMoveToPoint(context, v22, v23);
                      v24 = CGRectGetMinX(v55);
                      v25 = CGRectGetMaxY(v55);
                      CGContextAddLineToPoint(context, v24, v25);
                      CGContextStrokePath(context);
                      v28 = objc_msgSend_p_iconPDFDocument(self, v26, v27);
                      if (v28)
                      {
                        Page = CGPDFDocumentGetPage(v28, 1uLL);
                        if (Page)
                        {
                          v30 = Page;
                          memset(&v54, 0, sizeof(v54));
                          v52 = 0.0;
                          v53 = 0.0;
                          v31 = TSDComputeBoxTransformAndSizeForPDFPage(Page, &v54, &v52);
                          v33 = v32;
                          v35 = v34;
                          v37 = v36;
                          v38 = v52;
                          v39 = v53;
                          TSUMultiplySizeScalar();
                          if (v41 <= rectCopy.size.width && v40 <= rectCopy.size.height)
                          {
                            TSURectWithSize();
                            TSUCenterRectOverRect();
                            v50 = 0u;
                            v51 = 0u;
                            v49 = 0u;
                            v48 = v54;
                            TSDComputeDrawTransformForPDFPage(&v48, &v49, v38, v39, v43, v44, v45, v46);
                            *&v48.a = v49;
                            *&v48.c = v50;
                            *&v48.tx = v51;
                            CGContextConcatCTM(context, &v48);
                            CGContextClipToRectSafe();
                            v58.origin.x = v31;
                            v58.origin.y = v33;
                            v58.size.width = v35;
                            v58.size.height = v37;
                            v47 = CGRectGetMaxY(v58);
                            CGContextTranslateCTM(context, 0.0, v47);
                            CGContextScaleCTM(context, 1.0, -1.0);
                            CGContextDrawPDFPage(context, v30);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (CGPDFDocument)p_iconPDFDocument
{
  if (qword_280A4C258 != -1)
  {
    sub_276808794();
  }

  v4 = qword_280A4C250;

  return objc_msgSend_CGPDFDocument(v4, a2, v2);
}

@end