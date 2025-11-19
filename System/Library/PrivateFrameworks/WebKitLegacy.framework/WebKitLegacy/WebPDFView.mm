@interface WebPDFView
+ (CGColor)backgroundColor;
+ (CGColor)shadowColor;
+ (Class)_representationClassForWebFrame:(id)a3;
- (CGRect)rectForPageNumber:(unsigned int)a3;
- (id)_pagesInRect:(CGRect)a3;
- (unsigned)pageNumberForRect:(CGRect)a3;
- (unsigned)totalPages;
- (void)_checkPDFTitle;
- (void)_computePageRects;
- (void)dealloc;
- (void)drawPage:(CGPDFPage *)a3;
- (void)drawRect:(CGRect)a3;
- (void)finishedLoadingWithDataSource:(id)a3;
- (void)setDataSource:(id)a3;
@end

@implementation WebPDFView

+ (CGColor)shadowColor
{
  if (_MergedGlobals_5 == 1)
  {
    return qword_1EC261520;
  }

  v5[1] = v2;
  v5[2] = v3;
  createCGColorWithDeviceWhite(0.0, 0.666666667, v5);
  result = v5[0];
  qword_1EC261520 = v5[0];
  _MergedGlobals_5 = 1;
  return result;
}

+ (CGColor)backgroundColor
{
  if (byte_1EC261519 == 1)
  {
    return qword_1EC261528;
  }

  v5[1] = v2;
  v5[2] = v3;
  createCGColorWithDeviceWhite(0.8, 1.0, v5);
  result = v5[0];
  qword_1EC261528 = v5[0];
  byte_1EC261519 = 1;
  return result;
}

+ (Class)_representationClassForWebFrame:(id)a3
{
  [objc_msgSend(a3 "webView")];

  return objc_opt_class();
}

- (void)dealloc
{
  PDFDocument = self->_PDFDocument;
  if (PDFDocument)
  {
    CGPDFDocumentRelease(PDFDocument);
  }

  free(self->_pageRects);
  v4.receiver = self;
  v4.super_class = WebPDFView;
  [(WebPDFView *)&v4 dealloc];
}

- (void)drawPage:(CGPDFPage *)a3
{
  v5 = WKGetCurrentGraphicsContext();
  v6 = &self->_pageRects[CGPDFPageGetPageNumber(a3)];
  x = v6[-1].origin.x;
  y = v6[-1].origin.y;
  width = v6[-1].size.width;
  height = v6[-1].size.height;
  CGContextSaveGState(v5);
  v11 = [objc_opt_class() shadowColor];
  v19.width = 0.0;
  v19.height = 2.0;
  CGContextSetShadowWithColor(v5, v19, 3.0, v11);
  v18 = 0x11040000FFFFFFFFLL;
  WebCore::cachedCGColor();
  CGContextSetFillColorWithColor(v5, *&color.a);
  a = color.a;
  color.a = 0.0;
  if (a != 0.0)
  {
    CFRelease(*&a);
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGContextFillRect(v5, v20);
  CGContextRestoreGState(v5);
  CGContextSaveGState(v5);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  CGContextTranslateCTM(v5, MinX, MinY);
  CGContextScaleCTM(v5, 1.0, -1.0);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v15 = CGRectGetHeight(v23);
  CGContextTranslateCTM(v5, 0.0, -v15);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v16 = CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v26.size.height = CGRectGetHeight(v25);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v16;
  CGPDFPageGetDrawingTransform(&color, a3, kCGPDFCropBox, v26, 0, 1);
  CGContextConcatCTM(v5, &color);
  BoxRect = CGPDFPageGetBoxRect(a3, kCGPDFCropBox);
  CGContextClipToRect(v5, BoxRect);
  CGContextDrawPDFPage(v5, a3);
  CGContextRestoreGState(v5);
}

- (id)_pagesInRect:(CGRect)a3
{
  v18 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  NumberOfPages = CGPDFDocumentGetNumberOfPages(self->_PDFDocument);
  v6 = bsearch(&v18, self->_pageRects, NumberOfPages, 0x20uLL, comparePageRects);
  if (v6)
  {
    v7 = (v6 - self->_pageRects) >> 5;
    Page = CGPDFDocumentGetPage(self->_PDFDocument, v7 + 1);
    if (Page)
    {
      [v4 addObject:Page];
      v9 = v7;
      if (v7 - 1 < NumberOfPages)
      {
        v10 = v7;
        v11 = v7;
        do
        {
          v19 = CGRectInset(self->_pageRects[v10 - 1], 0.0, -16.0);
          if (!CGRectIntersectsRect(v19, v18))
          {
            break;
          }

          v13 = CGPDFDocumentGetPage(self->_PDFDocument, v11);
          if (v13)
          {
            [v4 addObject:v13];
          }

          v12 = v11 - 2;
          --v11;
          --v10;
        }

        while (v12 < NumberOfPages);
      }

      if (v7 + 1 < NumberOfPages)
      {
        v14 = ~v7 + NumberOfPages;
        v15 = v7 + 2;
        do
        {
          v20 = CGRectInset(self->_pageRects[v9 + 1], 0.0, -16.0);
          if (!CGRectIntersectsRect(v20, v18))
          {
            break;
          }

          v16 = CGPDFDocumentGetPage(self->_PDFDocument, v15);
          if (v16)
          {
            [v4 addObject:v16];
          }

          ++v15;
          ++v9;
          --v14;
        }

        while (v14);
      }
    }
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = WKGetCurrentGraphicsContext();
  CGContextSaveGState(v8);
  v9 = [objc_opt_class() backgroundColor];
  CGContextSetFillColorWithColor(v8, v9);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGContextFillRect(v8, v13);
  CGContextRestoreGState(v8);
  if (self->_PDFDocument)
  {
    v10 = [-[WebPDFView _pagesInRect:](self _pagesInRect:{x, y, width, height), "objectEnumerator"}];
    v11 = [v10 nextObject];
    if (v11)
    {
      v12 = v11;
      do
      {
        [(WebPDFView *)self drawPage:v12];
        v12 = [v10 nextObject];
      }

      while (v12);
    }
  }
}

- (void)setDataSource:(id)a3
{
  if (!self->dataSourceHasBeenSet)
  {
    if (!self->_title.m_ptr)
    {
      v4 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "request")];
      m_ptr = self->_title.m_ptr;
      self->_title.m_ptr = v4;
      if (m_ptr)
      {
      }
    }

    v6 = [(WebPDFView *)self superview];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      [(WebPDFView *)self convertRect:v7 fromView:?];
      [(WebPDFView *)self setBoundsSize:v8, v9];
      self->dataSourceHasBeenSet = 1;
    }
  }
}

- (void)_computePageRects
{
  NumberOfPages = CGPDFDocumentGetNumberOfPages(self->_PDFDocument);
  self->_pageRects = malloc_type_malloc(32 * NumberOfPages, 0x1000040E0EAB150uLL);
  if (NumberOfPages)
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 1;
    v7 = 8.0;
    do
    {
      Page = CGPDFDocumentGetPage(self->_PDFDocument, v6);
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v14 = CGPDFPageGetRotationAngle(Page) * 0.0174532925;
      if (v14 != 0.0)
      {
        CGAffineTransformMakeRotation(&v25, v14);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v29 = CGRectApplyAffineTransform(v28, &v25);
        x = v29.origin.x;
        *&v29.origin.x = v29.size.width;
        width = roundf(*&v29.origin.x);
        *&v29.origin.x = v29.size.height;
        height = roundf(*&v29.origin.x);
      }

      v8 = &self->_pageRects[v4];
      v8->size.width = width;
      v8->size.height = height;
      v8->origin.x = x;
      v8->origin.y = v7;
      v7 = v7 + height + 8.0;
      if (v5 < width)
      {
        v5 = width;
      }

      ++v6;
      ++v4;
    }

    while (v6 <= NumberOfPages);
    v15 = v5 + 16.0;
    [(WebPDFView *)self setBoundsSize:v5 + 16.0, v7];
    pageRects = self->_pageRects;
    if (NumberOfPages == 1)
    {
      v17 = 0;
LABEL_16:
      v22 = NumberOfPages - v17;
      p_width = &pageRects[v17].size.width;
      do
      {
        v24 = (v15 - *p_width) * 0.5;
        *(p_width - 2) = roundf(v24);
        p_width += 4;
        --v22;
      }

      while (v22);
      return;
    }

    v17 = NumberOfPages & 0xFFFFFFFFFFFFFFFELL;
    p_x = &pageRects[1].origin.x;
    v19 = NumberOfPages & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v20 = (v15 - *(p_x - 2)) * 0.5;
      v21 = (v15 - p_x[2]) * 0.5;
      *(p_x - 4) = roundf(v20);
      *p_x = roundf(v21);
      p_x += 8;
      v19 -= 2;
    }

    while (v19);
    if (NumberOfPages != v17)
    {
      goto LABEL_16;
    }
  }

  else
  {

    [(WebPDFView *)self setBoundsSize:16.0, 8.0];
  }
}

- (void)_checkPDFTitle
{
  PDFDocument = self->_PDFDocument;
  if (PDFDocument)
  {
    Info = CGPDFDocumentGetInfo(PDFDocument);
    value = 0;
    if (CGPDFDictionaryGetString(Info, "Title", &value))
    {
      v5 = CGPDFStringCopyTextString(value);
      if (v5)
      {
        v6 = v5;
        if (CFStringGetLength(v5))
        {
          v7 = v6;
          m_ptr = self->_title.m_ptr;
          self->_title.m_ptr = &v6->isa;
          if (m_ptr)
          {
          }

          v9 = *(*(*(*([(WAKView *)self _frame]+ 8) + 8) + 208) + 16);
          MEMORY[0x1CCA63A40](&v12, self->_title.m_ptr);
          v13 = 0;
          (*(*v9 + 320))(v9, &v12);
          v11 = v12;
          v12 = 0;
          if (v11)
          {
            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v10);
            }
          }
        }

        CFRelease(v6);
      }
    }
  }
}

- (void)finishedLoadingWithDataSource:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = CGDataProviderCreateWithCFData([a3 data]);
  if (v5)
  {
    v6 = v5;
    v7 = CGPDFDocumentCreateWithProvider(v5);
    self->_PDFDocument = v7;
    if (v7)
    {
      [(WebPDFView *)self _checkPDFTitle];
      [(WebPDFView *)self _computePageRects];
      v8 = allScriptsInPDFDocument(self->_PDFDocument);
      if ([v8 count])
      {
        v9 = JSGlobalContextCreate(0);
        {
          v10 = jsPDFDocClass(void)::jsPDFDocClass;
        }

        else
        {
          v10 = JSClassCreate(&jsPDFDocClass(void)::jsPDFDocClassDefinition);
          jsPDFDocClass(void)::jsPDFDocClass = v10;
        }

        v11 = JSObjectMake(v9, v10, a3);
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          v13 = *v23;
          do
          {
            v14 = 0;
            do
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v8);
              }

              MEMORY[0x1CCA63A40](&v20, *(*(&v22 + 1) + 8 * v14));
              OpaqueJSString::tryCreate();
              JSEvaluateScript(v9, script, v11, 0, 0, 0);
              v16 = script;
              script = 0;
              if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v16);
                OpaqueJSString::~OpaqueJSString(v16);
                WTF::fastFree(v18, v19);
                v17 = v20;
                v20 = 0;
                if (!v17)
                {
                  goto LABEL_9;
                }
              }

              else
              {
                v17 = v20;
                v20 = 0;
                if (!v17)
                {
                  goto LABEL_9;
                }
              }

              if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v15);
              }

LABEL_9:
              ++v14;
            }

            while (v12 != v14);
            v12 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v12);
        }

        JSGlobalContextRelease(v9);
        [(WebPDFView *)self setNeedsDisplay:1];
      }
    }

    CFRelease(v6);
  }
}

- (unsigned)pageNumberForRect:(CGRect)a3
{
  if (!self->_PDFDocument)
  {
    return 0;
  }

  if (!self->_pageRects)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(WebPDFView *)self _pagesInRect:?];
  v9 = [v8 count];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = 0.0;
  do
  {
    PageNumber = CGPDFPageGetPageNumber([v8 objectAtIndex:v12]);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v16 = CGRectIntersection(self->_pageRects[PageNumber - 1], v17);
    *&v16.origin.x = v16.size.width * v16.size.height;
    if (v13 < *&v16.origin.x)
    {
      v13 = v16.size.width * v16.size.height;
      v11 = PageNumber;
    }

    ++v12;
  }

  while (v10 != v12);
  return v11;
}

- (unsigned)totalPages
{
  PDFDocument = self->_PDFDocument;
  if (PDFDocument)
  {
    LODWORD(PDFDocument) = CGPDFDocumentGetNumberOfPages(PDFDocument);
  }

  return PDFDocument;
}

- (CGRect)rectForPageNumber:(unsigned int)a3
{
  pageRects = self->_pageRects;
  v4 = pageRects != 0;
  p_x = &pageRects[a3 - 1].origin.x;
  if (a3 == 0 || !v4)
  {
    p_x = MEMORY[0x1E695F050];
  }

  v6 = *p_x;
  v7 = p_x[1];
  v8 = p_x[2];
  v9 = p_x[3];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end