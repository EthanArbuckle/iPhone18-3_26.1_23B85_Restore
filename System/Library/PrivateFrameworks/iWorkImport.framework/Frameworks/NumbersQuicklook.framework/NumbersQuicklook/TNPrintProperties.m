@interface TNPrintProperties
+ (id)a4SizePrintProperties;
+ (id)legacyExportPrintProperties;
+ (id)letterSizeLandscapeFormPrintProperties;
+ (id)letterSizePortraitFormPrintProperties;
+ (id)letterSizePrintProperties;
- (CGAffineTransform)p_transformForContentScale:(SEL)a3 portraitOrientation:(double)a4;
- (CGRect)contentRectForContentScale:(double)a3 portraitOrientation:(BOOL)a4 headerHeight:(double)a5 footerHeight:(double)a6;
- (CGRect)p_unscaledContentRectForOrientation:(BOOL)a3 headerHeight:(double)a4 footerHeight:(double)a5;
- (CGRect)pageHeaderFooterRectForContentScale:(double)a3 portraitOrientation:(BOOL)a4 footer:(BOOL)a5 textHeight:(double)a6;
- (CGRect)unscaledPageRectForDisplayForPortraitOrientation:(BOOL)a3 userViewScale:(double)a4 atPageCoordinate:(TSUCellCoord)a5 layoutLeftToRight:(BOOL)a6;
- (CGSize)pageSizeForContentScale:(double)a3 portraitOrientation:(BOOL)a4;
- (CGSize)pageSizeWithGutterForContentScale:(double)a3 userViewScale:(double)a4 portraitOrientation:(BOOL)a5;
- (CGSize)unscaledPageSize;
- (TNPrintProperties)initWithPageSize:(CGSize)a3 contentRect:(CGRect)a4;
- (TNPrintProperties)initWithPageSize:(CGSize)a3 printMargins:(UIEdgeInsets)a4 headerInset:(double)a5 footerInset:(double)a6;
- (UIEdgeInsets)printMargins;
- (double)contentScaleForIntegralWidthWithContentScale:(double)a3 portraitOrientation:(BOOL)a4;
@end

@implementation TNPrintProperties

- (TNPrintProperties)initWithPageSize:(CGSize)a3 printMargins:(UIEdgeInsets)a4 headerInset:(double)a5 footerInset:(double)a6
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v25.receiver = self;
  v25.super_class = TNPrintProperties;
  v14 = [(TNPrintProperties *)&v25 init];
  v17 = v14;
  if (v14)
  {
    objc_msgSend_setUnscaledPageSize_(v14, v15, v16, width, height);
    objc_msgSend_setPrintMargins_(v17, v18, v19, top, left, bottom, right);
    objc_msgSend_setHeaderInset_(v17, v20, v21, a5);
    objc_msgSend_setFooterInset_(v17, v22, v23, a6);
  }

  return v17;
}

- (TNPrintProperties)initWithPageSize:(CGSize)a3 contentRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  TSURectWithSize();
  v9 = v36.origin.x;
  v10 = v36.origin.y;
  v11 = v36.size.width;
  v12 = v36.size.height;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (!CGRectContainsRect(v36, v45))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TNPrintProperties initWithPageSize:contentRect:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPrintProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 73, 0, "Content rect must be wholly enclosed by page.");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v30 = x;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = v9;
  v38.origin.y = v10;
  v38.size.width = v11;
  v38.size.height = v12;
  v33 = MinY - CGRectGetMinY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v21 = width;
  v39.size.height = height;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = v9;
  v40.origin.y = v10;
  v40.size.width = v11;
  v40.size.height = v12;
  v31 = MinX - CGRectGetMinX(v40);
  v41.origin.x = v9;
  v41.origin.y = v10;
  v41.size.width = v11;
  v41.size.height = v12;
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = v30;
  v42.origin.y = y;
  v42.size.width = v21;
  v42.size.height = height;
  v29 = MaxY - CGRectGetMaxY(v42);
  v43.origin.x = v9;
  v43.origin.y = v10;
  v43.size.width = v11;
  v43.size.height = v12;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = v30;
  v44.origin.y = y;
  v44.size.width = v21;
  v44.size.height = height;
  v26 = MaxX - CGRectGetMaxX(v44);

  return objc_msgSend_initWithPageSize_printMargins_(self, v24, v25, a3.width, a3.height, v33, v31, v29, v26);
}

+ (id)letterSizePrintProperties
{
  result = qword_280A3DF70;
  if (!qword_280A3DF70)
  {
    v3 = [TNPrintProperties alloc];
    result = objc_msgSend_initWithPageSize_contentRect_(v3, v4, v5, 612.0, 792.0, 72.0, 72.0, 468.0, 648.0);
    qword_280A3DF70 = result;
  }

  return result;
}

+ (id)a4SizePrintProperties
{
  result = qword_280A3DF78;
  if (!qword_280A3DF78)
  {
    TSUSubtractSizes();
    TSURectWithOriginAndSize();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [TNPrintProperties alloc];
    result = objc_msgSend_initWithPageSize_contentRect_(v11, v12, v13, 595.0, 842.0, v4, v6, v8, v10);
    qword_280A3DF78 = result;
  }

  return result;
}

+ (id)letterSizePortraitFormPrintProperties
{
  result = qword_280A3DF80;
  if (!qword_280A3DF80)
  {
    v3 = [TNPrintProperties alloc];
    result = objc_msgSend_initWithPageSize_contentRect_(v3, v4, v5, 612.0, 792.0, 91.0, 91.0, 430.0, 610.0);
    qword_280A3DF80 = result;
  }

  return result;
}

+ (id)letterSizeLandscapeFormPrintProperties
{
  result = qword_280A3DF88;
  if (!qword_280A3DF88)
  {
    v3 = [TNPrintProperties alloc];
    result = objc_msgSend_initWithPageSize_contentRect_(v3, v4, v5, 792.0, 612.0, 181.0, 91.0, 430.0, 430.0);
    qword_280A3DF88 = result;
  }

  return result;
}

+ (id)legacyExportPrintProperties
{
  result = qword_280A3DF90;
  if (!qword_280A3DF90)
  {
    v3 = [TNPrintProperties alloc];
    result = objc_msgSend_initWithPageSize_contentRect_(v3, v4, v5, 612.0, 792.0, 72.0, 72.0, 468.0, 648.0);
    qword_280A3DF90 = result;
  }

  return result;
}

- (CGRect)p_unscaledContentRectForOrientation:(BOOL)a3 headerHeight:(double)a4 footerHeight:(double)a5
{
  objc_msgSend_printMargins(self, a2, a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_msgSend_headerInset(self, v17, v18);
  v22 = v21 + a4;
  if (v10 >= v22)
  {
    v23 = v10;
  }

  else
  {
    v23 = v22;
  }

  objc_msgSend_footerInset(self, v19, v20);
  v27 = v26 + a5;
  if (v14 >= v27)
  {
    v27 = v14;
  }

  if (a3)
  {
    v28 = v16;
  }

  else
  {
    v28 = v27;
  }

  if (a3)
  {
    v29 = v27;
  }

  else
  {
    v29 = v16;
  }

  if (a3)
  {
    v30 = v12;
  }

  else
  {
    v30 = v23;
  }

  if (!a3)
  {
    v23 = v12;
  }

  objc_msgSend_unscaledPageSize(self, v24, v25);
  TSURectWithSize();
  v32 = v30 + v31;
  v34 = v23 + v33;
  v36 = v35 - (v28 + v30);
  v38 = v37 - (v29 + v23);
  result.size.height = v38;
  result.size.width = v36;
  result.origin.y = v34;
  result.origin.x = v32;
  return result;
}

- (double)contentScaleForIntegralWidthWithContentScale:(double)a3 portraitOrientation:(BOOL)a4
{
  v4 = a4;
  objc_msgSend_p_unscaledContentRectForOrientation_headerHeight_footerHeight_(self, a2, a4, 0.0, 0.0);
  if (v4)
  {
    Width = CGRectGetWidth(*&v6);
  }

  else
  {
    Width = CGRectGetHeight(*&v6);
  }

  return floor(Width / a3 * a3) / Width * a3;
}

- (CGRect)contentRectForContentScale:(double)a3 portraitOrientation:(BOOL)a4 headerHeight:(double)a5 footerHeight:(double)a6
{
  v8 = a4;
  if (a5 == -1.0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNPrintProperties contentRectForContentScale:portraitOrientation:headerHeight:footerHeight:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPrintProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 185, 0, "Invalider header height");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (a6 == -1.0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNPrintProperties contentRectForContentScale:portraitOrientation:headerHeight:footerHeight:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPrintProperties.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 186, 0, "Invalid footer height");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  memset(&v25[1], 0, sizeof(CGAffineTransform));
  if (self)
  {
    objc_msgSend_p_transformForContentScale_portraitOrientation_(self, a2, v8, a3);
  }

  objc_msgSend_p_unscaledContentRectForOrientation_headerHeight_footerHeight_(self, a2, v8, a5, a6);
  v25[0] = v25[1];
  return CGRectApplyAffineTransform(v26, v25);
}

- (CGRect)pageHeaderFooterRectForContentScale:(double)a3 portraitOrientation:(BOOL)a4 footer:(BOOL)a5 textHeight:(double)a6
{
  v7 = a5;
  v8 = a4;
  objc_msgSend_contentRectForContentScale_portraitOrientation_headerHeight_footerHeight_(self, a2, a4, a3, 0.0, 0.0);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  objc_msgSend_pageSizeForContentScale_portraitOrientation_(self, v19, v8, a3);
  v23 = fmax(a6, 18.0) / a3;
  if (v7)
  {
    v24 = v22;
    objc_msgSend_footerInset(self, v20, v21);
    v26 = v24 - v25 / a3 - v23;
  }

  else
  {
    objc_msgSend_headerInset(self, v20, v21);
    v26 = v27 / a3;
  }

  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = v16;
  v34.size.height = v18;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  Width = CGRectGetWidth(v35);
  v30 = MinX;
  v31 = v26;
  v32 = v23;

  return CGRectIntegral(*&v30);
}

- (CGSize)pageSizeForContentScale:(double)a3 portraitOrientation:(BOOL)a4
{
  v12 = 0u;
  v10 = 0u;
  if (self)
  {
    objc_msgSend_p_transformForContentScale_portraitOrientation_(self, a2, a4, a3, 0, 0, 0);
  }

  objc_msgSend_unscaledPageSize(self, a2, a4, a3, v10, v12);
  v7 = vmlaq_n_f64(vmulq_n_f64(v13, v5), v11, v6);
  v8 = v7.f64[1];
  v9 = v7.f64[0];
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)pageSizeWithGutterForContentScale:(double)a3 userViewScale:(double)a4 portraitOrientation:(BOOL)a5
{
  v5 = a5;
  v9 = objc_msgSend_tsk_phoneUI(MEMORY[0x277D75418], a2, a5);
  v12 = objc_msgSend_tsk_phoneUI(MEMORY[0x277D75418], v10, v11);
  objc_msgSend_unscaledPageSize(self, v13, v14);
  v17 = v16;
  v19 = v18;
  if (self)
  {
    objc_msgSend_p_transformForContentScale_portraitOrientation_(self, v15, v5, a3);
    v21 = 0u;
    v20 = 0u;
  }

  else
  {
    v21 = 0uLL;
    v20 = 0uLL;
  }

  v22 = 10.0;
  if (v9)
  {
    v22 = 5.5;
  }

  v23 = 1.0;
  if (v12)
  {
    v23 = a4;
  }

  v24 = vmlaq_n_f64(vmulq_n_f64(v20, v19 + v22 / v23), v21, v17 + v22 / v23);
  v25 = v24.f64[1];
  result.width = v24.f64[0];
  result.height = v25;
  return result;
}

- (CGRect)unscaledPageRectForDisplayForPortraitOrientation:(BOOL)a3 userViewScale:(double)a4 atPageCoordinate:(TSUCellCoord)a5 layoutLeftToRight:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  objc_msgSend_pageSizeForContentScale_portraitOrientation_(self, a2, a3, 1.0);
  v12 = v11;
  v14 = v13;
  objc_msgSend_pageSizeWithGutterForContentScale_userViewScale_portraitOrientation_(self, v15, v9, 1.0, a4);
  v18 = ceil(v17) * a5.column;
  v19 = -(v12 + v18);
  if (v6)
  {
    v19 = v18;
  }

  v20 = v16 * a5.row;
  v21 = v12;
  v22 = v14;

  return CGRectIntegral(*&v19);
}

- (CGAffineTransform)p_transformForContentScale:(SEL)a3 portraitOrientation:(double)a4
{
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v12.a = *MEMORY[0x277CBF2C0];
  *&v12.c = v7;
  *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (!a5)
  {
    CGAffineTransformMakeRotation(&v12, 1.57079633);
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    v9 = v12;
    CGAffineTransformConcat(&t2, &t1, &v9);
    v12 = t2;
  }

  CGAffineTransformMakeScale(&t2, 1.0 / a4, 1.0 / a4);
  t1 = v12;
  return CGAffineTransformConcat(retstr, &t1, &t2);
}

- (CGSize)unscaledPageSize
{
  objc_copyStruct(v4, &self->_unscaledPageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)printMargins
{
  objc_copyStruct(v6, &self->_printMargins, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end