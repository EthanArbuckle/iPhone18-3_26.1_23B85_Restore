@interface UITallPDFPrintFormatter
- (UITallPDFPrintFormatter)initWithPDFData:(id)data pdfPassword:(id)password;
- (UITallPDFPrintFormatter)initWithPDFURL:(id)l pdfPassword:(id)password;
- (int64_t)_recalcPageCount;
- (void)drawInRect:(CGRect)rect forPageAtIndex:(int64_t)index;
@end

@implementation UITallPDFPrintFormatter

- (UITallPDFPrintFormatter)initWithPDFURL:(id)l pdfPassword:(id)password
{
  lCopy = l;
  passwordCopy = password;
  v13.receiver = self;
  v13.super_class = UITallPDFPrintFormatter;
  v9 = [(UIPrintFormatter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_rotate90 = 0;
    v9->_pdfScaleFactor = 1.0;
    objc_storeStrong(&v9->_pdfPath, l);
    v11 = CGPDFDocumentCreateWithURL(v10->_pdfPath);
    v10->_pdfDocRef = v11;
    if (passwordCopy)
    {
      if (v11 && CGPDFDocumentIsEncrypted(v11))
      {
        CGPDFDocumentUnlockWithPassword(v10->_pdfDocRef, [passwordCopy cStringUsingEncoding:4]);
      }
    }
  }

  return v10;
}

- (UITallPDFPrintFormatter)initWithPDFData:(id)data pdfPassword:(id)password
{
  dataCopy = data;
  passwordCopy = password;
  v14.receiver = self;
  v14.super_class = UITallPDFPrintFormatter;
  v8 = [(UIPrintFormatter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_rotate90 = 0;
    v8->_pdfScaleFactor = 1.0;
    if (dataCopy)
    {
      v10 = CGDataProviderCreateWithCFData(dataCopy);
      v11 = v10;
      if (v10)
      {
        v9->_pdfDocRef = CGPDFDocumentCreateWithProvider(v10);
      }

      CGDataProviderRelease(v11);
      if (passwordCopy)
      {
        pdfDocRef = v9->_pdfDocRef;
        if (pdfDocRef)
        {
          if (CGPDFDocumentIsEncrypted(pdfDocRef))
          {
            CGPDFDocumentUnlockWithPassword(v9->_pdfDocRef, [passwordCopy cStringUsingEncoding:4]);
          }
        }
      }
    }
  }

  return v9;
}

- (int64_t)_recalcPageCount
{
  v25.receiver = self;
  v25.super_class = UITallPDFPrintFormatter;
  [(UIPrintFormatter *)&v25 _pageContentRect:0];
  self->_rotate90 = 0;
  self->_pdfScaleFactor = 1.0;
  self->_shiftUpLength = 0.0;
  pdfDocRef = self->_pdfDocRef;
  if (pdfDocRef)
  {
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    NumberOfPages = CGPDFDocumentGetNumberOfPages(pdfDocRef);
    Page = CGPDFDocumentGetPage(self->_pdfDocRef, 1uLL);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    v14 = 0;
    if (BoxRect.size.height > 0.0 && BoxRect.size.width > 0.0 && v11 > 0.0 && v10 > 0.0)
    {
      v15 = BoxRect.size.width / BoxRect.size.height;
      v16 = v10 / v11;
      if (fabs((BoxRect.size.width / BoxRect.size.height - v10 / v11) / (v10 / v11)) < 0.100000001)
      {
        v17 = BoxRect.size.width / v10;
LABEL_20:
        self->_pdfScaleFactor = v17;
        return NumberOfPages;
      }

      v18 = v15 > 1.0 && v16 < 1.0;
      if (v18 || (v16 > 1.0 ? (v19 = v15 < 1.0) : (v19 = 0), v19))
      {
        if (fabs((1.0 / v15 - v16) / v16) < 0.100000001)
        {
          self->_rotate90 = 1;
          v17 = BoxRect.size.height / v10;
          goto LABEL_20;
        }
      }

      self->_pdfScaleFactor = v10 / BoxRect.size.width;
      v21 = BoxRect.size.height * (v10 / BoxRect.size.width);
      v27.origin.x = v8;
      v27.origin.y = v9;
      v27.size.width = v10;
      v27.size.height = v11;
      v22 = v21 / CGRectGetHeight(v27);
      v14 = vcvtpd_s64_f64(v22);
      v23 = ceil(v22);
      v24.receiver = self;
      v24.super_class = UITallPDFPrintFormatter;
      [(UIPrintFormatter *)&v24 _pageContentRect:0];
      self->_shiftUpLength = -(v21 - CGRectGetHeight(v28) * v23) - v9;
    }
  }

  else
  {
    NumberOfPages = 0;
    v14 = 0;
  }

  return NumberOfPages * v14;
}

- (void)drawInRect:(CGRect)rect forPageAtIndex:(int64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGContextClipToRect(CurrentContext, v18);
  pdfDocRef = self->_pdfDocRef;
  if (pdfDocRef)
  {
    NumberOfPages = CGPDFDocumentGetNumberOfPages(pdfDocRef);
    if (NumberOfPages)
    {
      v13 = [(UIPrintFormatter *)self pageCount]/ NumberOfPages;
    }

    else
    {
      v13 = 1;
    }

    Page = CGPDFDocumentGetPage(self->_pdfDocRef, vcvtpd_u64_f64((index + 1.0) / v13));
    v15 = index - [(UIPrintFormatter *)self startPage];
    v17.receiver = self;
    v17.super_class = UITallPDFPrintFormatter;
    [(UIPrintFormatter *)&v17 _pageContentRect:0];
    v16 = CGRectGetHeight(v19);
    CGContextTranslateCTM(CurrentContext, x, v16 * v13 - v16 * (v15 % v13) - self->_shiftUpLength);
    CGContextScaleCTM(CurrentContext, self->_pdfScaleFactor, -self->_pdfScaleFactor);
    if (self->_rotate90)
    {
      CGContextRotateCTM(CurrentContext, 90.0);
    }

    if ([(UIPrintFormatter *)self imagePDFAnnotations])
    {
      CGContextDrawPDFPageWithAnnotations();
    }

    else
    {
      CGContextDrawPDFPage(CurrentContext, Page);
    }
  }

  CGContextRestoreGState(CurrentContext);
}

@end