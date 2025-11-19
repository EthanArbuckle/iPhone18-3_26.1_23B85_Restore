@interface TSDImageRenderingConfiguration
- (TSDImageRenderingConfiguration)initWithBitmapQualityInfo:(id)a3;
- (TSDImageRenderingConfiguration)initWithCGContext:(CGContext *)a3;
- (TSDImageRenderingConfiguration)initWithContentsScale:(double)a3 additionalScale:(double)a4 wantsHDR:(BOOL)a5 qualityInfo:(id)a6 isForPrinting:(BOOL)a7 isForPDF:(BOOL)a8;
- (id)description;
- (id)i_initWithCanvas:(id)a3;
@end

@implementation TSDImageRenderingConfiguration

- (TSDImageRenderingConfiguration)initWithContentsScale:(double)a3 additionalScale:(double)a4 wantsHDR:(BOOL)a5 qualityInfo:(id)a6 isForPrinting:(BOOL)a7 isForPDF:(BOOL)a8
{
  v15 = a6;
  v19.receiver = self;
  v19.super_class = TSDImageRenderingConfiguration;
  v16 = [(TSDImageRenderingConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_wantsHDR = a5;
    v16->_contentsScale = a3;
    v16->_additionalScale = a4;
    objc_storeStrong(&v16->_qualityInfo, a6);
    v17->_isForPrinting = a7;
    v17->_isForPDF = a8;
  }

  return v17;
}

- (TSDImageRenderingConfiguration)initWithCGContext:(CGContext *)a3
{
  if (a3)
  {
    ShouldRenderHDRContent = TSDCGContextShouldRenderHDRContent(a3);
    IsPrintContext = TSDCGContextIsPrintContext(a3);
    IsPDFContext = TSDCGContextIsPDFContext(a3);
    v8 = TSDCGContextAssociatedScreenScale(a3);
    CGContextGetCTM(&v15, a3);
    TSUTransformScale();
    v10 = v9;
    v11 = TSDCGContextGetBitmapQualityInfo(a3);
    v13 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(self, v12, ShouldRenderHDRContent, v11, IsPrintContext, IsPDFContext, v8, v10);
  }

  else
  {
    v13 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(self, a2, 0, 0, 0, 0, 1.0, 1.0);
  }

  return v13;
}

- (TSDImageRenderingConfiguration)initWithBitmapQualityInfo:(id)a3
{
  v4 = a3;
  objc_msgSend_canvasScale(v4, v5, v6);
  v8 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(self, v7, 0, v4, 0, 0);

  return v8;
}

- (id)i_initWithCanvas:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_msgSend_contentsScale(v5, v6, v7);
  v9 = v8;
  objc_msgSend_viewScale(v5, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_supportsHDR(v5, v14, v15);
  isPrinting = objc_msgSend_isPrinting(v5, v17, v18);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v5, v20, v21);

  v24 = objc_msgSend_initWithContentsScale_additionalScale_wantsHDR_qualityInfo_isForPrinting_isForPDF_(v4, v23, v16, 0, isPrinting, isDrawingIntoPDF, v9, v13);

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