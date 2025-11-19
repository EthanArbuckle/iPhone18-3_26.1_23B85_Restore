@interface TSDErrorImageProvider
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedInstance;
- (CGPDFDocument)p_iconPDFDocument;
- (CGSize)naturalSize;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
@end

@implementation TSDErrorImageProvider

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSDErrorImageProvider;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedInstance
{
  result = sharedInstance_sSingletonInstance;
  if (!sharedInstance_sSingletonInstance)
  {
    objc_sync_enter(a1);
    if (!sharedInstance_sSingletonInstance)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      sharedInstance_sSingletonInstance = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDErrorImageProvider sharedInstance]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDErrorImageProvider.m"), 29, @"Couldn't create singleton instance of %@", a1}];
      }
    }

    objc_sync_exit(a1);
    return sharedInstance_sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDErrorImageProvider allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDErrorImageProvider.m"), 29, @"Don't alloc a singleton"}];
  return 0;
}

- (CGSize)naturalSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CGContextSetShouldAntialias(a3, 1);
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  CGContextSetFillColorWithColor(a3, DeviceRGB);
  CGColorRelease(DeviceRGB);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  CGContextFillRect(a3, v58);
  v11 = TSUCGColorCreateDeviceRGB();
  CGContextSetStrokeColorWithColor(a3, v11);
  CGColorRelease(v11);
  memset(&v57, 0, sizeof(v57));
  CGContextGetCTM(&v57, a3);
  v12 = 1.0 / TSDDistance(v57.tx + v57.a + v57.c * 0.0, v57.ty + v57.b + v57.d * 0.0, v57.tx + v57.c * *(MEMORY[0x277CBF348] + 8) + v57.a * *MEMORY[0x277CBF348], v57.ty + v57.d * *(MEMORY[0x277CBF348] + 8) + v57.b * *MEMORY[0x277CBF348]);
  CGContextSetLineWidth(a3, v12);
  v48 = x;
  v49 = y;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v60 = CGRectInset(v59, v12 * 0.5, v12 * 0.5);
  v13 = v60.origin.x;
  v14 = v60.origin.y;
  v15 = v60.size.width;
  v16 = v60.size.height;
  CGContextBeginPath(a3);
  v61.origin.x = v13;
  v61.origin.y = v14;
  v61.size.width = v15;
  v61.size.height = v16;
  CGContextAddRect(a3, v61);
  v62.origin.x = v13;
  v62.origin.y = v14;
  v62.size.width = v15;
  v62.size.height = v16;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = v13;
  v63.origin.y = v14;
  v63.size.width = v15;
  v63.size.height = v16;
  MinY = CGRectGetMinY(v63);
  CGContextMoveToPoint(a3, MinX, MinY);
  v64.origin.x = v13;
  v64.origin.y = v14;
  v64.size.width = v15;
  v64.size.height = v16;
  MaxX = CGRectGetMaxX(v64);
  v65.origin.x = v13;
  v65.origin.y = v14;
  v65.size.width = v15;
  v65.size.height = v16;
  MaxY = CGRectGetMaxY(v65);
  CGContextAddLineToPoint(a3, MaxX, MaxY);
  v66.origin.x = v13;
  v66.origin.y = v14;
  v66.size.width = v15;
  v66.size.height = v16;
  v21 = CGRectGetMaxX(v66);
  v67.origin.x = v13;
  v67.origin.y = v14;
  v67.size.width = v15;
  v67.size.height = v16;
  v22 = CGRectGetMinY(v67);
  CGContextMoveToPoint(a3, v21, v22);
  v68.origin.x = v13;
  v68.origin.y = v14;
  v68.size.width = v15;
  v68.size.height = v16;
  v23 = CGRectGetMinX(v68);
  v69.origin.x = v13;
  v69.origin.y = v14;
  v69.size.width = v15;
  v69.size.height = v16;
  v24 = CGRectGetMaxY(v69);
  CGContextAddLineToPoint(a3, v23, v24);
  CGContextStrokePath(a3);
  v25 = [(TSDErrorImageProvider *)self p_iconPDFDocument];
  if (v25)
  {
    Page = CGPDFDocumentGetPage(v25, 1uLL);
    if (Page)
    {
      v27 = Page;
      memset(&v56, 0, sizeof(v56));
      v54 = 0.0;
      v55 = 0.0;
      v28 = TSDComputeBoxTransformAndSizeForPDFPage(Page, &v56, &v54);
      v30 = v29;
      v32 = v31;
      v47 = v33;
      v34 = v54;
      v35 = v55;
      if (TSDMultiplySizeScalar(v54, v55, v12) <= width && v36 <= height)
      {
        v38 = TSDRectWithSize();
        v42 = TSDCenterRectOverRect(v38, v39, v40, v41, v48, v49, width, height);
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        transform = v56;
        TSDComputeDrawTransformForPDFPage(&transform, &v51, v34, v35, v42, v43, v44, v45);
        *&transform.a = v51;
        *&transform.c = v52;
        *&transform.tx = v53;
        CGContextConcatCTM(a3, &transform);
        v70.origin.x = v28;
        v70.origin.y = v30;
        v70.size.width = v32;
        v70.size.height = v47;
        CGContextClipToRect(a3, v70);
        v71.origin.x = v28;
        v71.origin.y = v30;
        v71.size.width = v32;
        v71.size.height = v47;
        v46 = CGRectGetMaxY(v71);
        CGContextTranslateCTM(a3, 0.0, v46);
        CGContextScaleCTM(a3, 1.0, -1.0);
        CGContextDrawPDFPage(a3, v27);
      }
    }
  }
}

- (CGPDFDocument)p_iconPDFDocument
{
  if (p_iconPDFDocument_onceToken != -1)
  {
    [TSDErrorImageProvider p_iconPDFDocument];
  }

  v3 = p_iconPDFDocument_sIconProvider;

  return [v3 CGPDFDocument];
}

TSDPDFImageProvider *__42__TSDErrorImageProvider_p_iconPDFDocument__block_invoke()
{
  result = -[TSDImageProvider initWithImageData:]([TSDPDFImageProvider alloc], "initWithImageData:", +[TSPData readOnlyDataFromURL:context:](TSPData, "readOnlyDataFromURL:context:", [TSDBundle() URLForResource:@"TSDErrorImageIcon" withExtension:@"pdf"], 0));
  p_iconPDFDocument_sIconProvider = result;
  return result;
}

@end