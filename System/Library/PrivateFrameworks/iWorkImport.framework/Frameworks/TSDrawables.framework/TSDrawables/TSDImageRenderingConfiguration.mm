@interface TSDImageRenderingConfiguration
- (TSDImageRenderingConfiguration)initWithBitmapQualityInfo:(id)info;
- (TSDImageRenderingConfiguration)initWithCGContext:(CGContext *)context;
- (TSDImageRenderingConfiguration)initWithContentsScale:(double)scale additionalScale:(double)additionalScale wantsHDR:(BOOL)r qualityInfo:(id)info isForPrinting:(BOOL)printing isForPDF:(BOOL)f;
- (id)description;
- (id)i_initWithCanvas:(id)canvas;
@end

@implementation TSDImageRenderingConfiguration

- (TSDImageRenderingConfiguration)initWithContentsScale:(double)scale additionalScale:(double)additionalScale wantsHDR:(BOOL)r qualityInfo:(id)info isForPrinting:(BOOL)printing isForPDF:(BOOL)f
{
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = TSDImageRenderingConfiguration;
  v16 = [(TSDImageRenderingConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_wantsHDR = r;
    v16->_contentsScale = scale;
    v16->_additionalScale = additionalScale;
    objc_storeStrong(&v16->_qualityInfo, info);
    v17->_isForPrinting = printing;
    v17->_isForPDF = f;
  }

  return v17;
}

- (TSDImageRenderingConfiguration)initWithCGContext:(CGContext *)context
{
  if (context)
  {
    ShouldRenderHDRContent = TSDCGContextShouldRenderHDRContent(context);
    IsPrintContext = TSDCGContextIsPrintContext(context);
    IsPDFContext = TSDCGContextIsPDFContext(context);
    v8 = TSDCGContextAssociatedScreenScale(context);
    CGContextGetCTM(&v15, context);
    TSUTransformScale();
    v10 = v9;
    v11 = TSDCGContextGetBitmapQualityInfo(context);
    v13 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(self, v12, ShouldRenderHDRContent, v11, IsPrintContext, IsPDFContext, v8, v10);
  }

  else
  {
    v13 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(self, a2, 0, 0, 0, 0, 1.0, 1.0);
  }

  return v13;
}

- (TSDImageRenderingConfiguration)initWithBitmapQualityInfo:(id)info
{
  infoCopy = info;
  objc_msgSend_canvasScale(infoCopy, v5, v6);
  v8 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(self, v7, 0, infoCopy, 0, 0);

  return v8;
}

- (id)i_initWithCanvas:(id)canvas
{
  selfCopy = self;
  canvasCopy = canvas;
  objc_msgSend_contentsScale(canvasCopy, v6, v7);
  v9 = v8;
  objc_msgSend_viewScale(canvasCopy, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_supportsHDR(canvasCopy, v14, v15);
  isPrinting = objc_msgSend_isPrinting(canvasCopy, v17, v18);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(canvasCopy, v20, v21);

  v24 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(selfCopy, v23, v16, 0, isPrinting, isDrawingIntoPDF, v9, v13);

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (objc_msgSend_wantsHDR(self, v6, v7))
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  objc_msgSend_contentsScale(self, v10, v11);
  v13 = v12;
  objc_msgSend_additionalScale(self, v14, v15);
  v17 = v16;
  if (objc_msgSend_isForPrinting(self, v18, v19))
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = v20;
  if (objc_msgSend_isForPDF(self, v22, v23))
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v25 = v24;
  v28 = objc_msgSend_qualityInfo(self, v26, v27);
  v30 = objc_msgSend_stringWithFormat_(v3, v29, @"<%@: %p wantsHDR:%@ contentsScale:%f additionalScale:%f isForPrinting:%@ isForPDF:%@ qualityInfo:%@>", v5, self, v9, v13, v17, v21, v25, v28);

  return v30;
}

@end