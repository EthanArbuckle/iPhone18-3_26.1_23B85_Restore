@interface UIMarkupTextPrintFormatter
- (CGRect)rectForPageAtIndex:(int64_t)a3;
- (UIMarkupTextPrintFormatter)initWithMarkupText:(NSString *)markupText;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_recalcPageCount;
- (void)_resetPaginationInfo;
- (void)dealloc;
- (void)drawInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)removeFromPrintPageRenderer;
- (void)setMarkupText:(NSString *)markupText;
@end

@implementation UIMarkupTextPrintFormatter

- (UIMarkupTextPrintFormatter)initWithMarkupText:(NSString *)markupText
{
  v4 = markupText;
  v9.receiver = self;
  v9.super_class = UIMarkupTextPrintFormatter;
  v5 = [(UIPrintFormatter *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D75D78]) initWithFrame:{0.0, 0.0, 612.0, 798.0}];
    webDocumentView = v5->_webDocumentView;
    v5->_webDocumentView = v6;

    [(UIMarkupTextPrintFormatter *)v5 setMarkupText:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = UIMarkupTextPrintFormatter;
  v4 = [(UIPrintFormatter *)&v9 copyWithZone:a3];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D75D78]) initWithFrame:{0.0, 0.0, 612.0, 798.0}];
    v6 = *(v4 + 15);
    *(v4 + 15) = v5;

    objc_storeStrong(v4 + 17, self->_markupText);
    v7 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  return v4;
}

- (void)dealloc
{
  if (pthread_main_np() != 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__UIMarkupTextPrintFormatter_dealloc__block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v3.receiver = self;
  v3.super_class = UIMarkupTextPrintFormatter;
  [(UIMarkupTextPrintFormatter *)&v3 dealloc];
}

void __37__UIMarkupTextPrintFormatter_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  *(v4 + 120) = 0;
}

- (void)setMarkupText:(NSString *)markupText
{
  v4 = markupText;
  if (self->_markupText != v4)
  {
    v7 = v4;
    if (![(NSString *)v4 isEqualToString:?])
    {
      v5 = [(NSString *)v7 copy];
      v6 = self->_markupText;
      self->_markupText = v5;

      [(UIWebDocumentView *)self->_webDocumentView setLoadsSynchronously:1];
      [(UIWebDocumentView *)self->_webDocumentView loadHTMLString:self->_markupText baseURL:0];
      [(UIPrintFormatter *)self _setNeedsRecalc];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)removeFromPrintPageRenderer
{
  [(UIMarkupTextPrintFormatter *)self _resetPaginationInfo];
  v3.receiver = self;
  v3.super_class = UIMarkupTextPrintFormatter;
  [(UIPrintFormatter *)&v3 removeFromPrintPageRenderer];
}

- (void)_resetPaginationInfo
{
  if (pthread_main_np() == 1)
  {
    paginationInfo = self->_paginationInfo;
    self->_paginationInfo = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__UIMarkupTextPrintFormatter__resetPaginationInfo__block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __50__UIMarkupTextPrintFormatter__resetPaginationInfo__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
}

- (int64_t)_recalcPageCount
{
  v23.receiver = self;
  v23.super_class = UIMarkupTextPrintFormatter;
  [(UIPrintFormatter *)&v23 _pageContentRect:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v22.receiver = self;
  v22.super_class = UIMarkupTextPrintFormatter;
  [(UIPrintFormatter *)&v22 _pageContentRect:0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  if (CGRectIsEmpty(v24))
  {
    return 0;
  }

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  if (CGRectIsEmpty(v25))
  {
    return 0;
  }

  v20 = [(UIWebDocumentView *)self->_webDocumentView beginPrintModeWithWidth:1 height:0 startOffset:v16 shrinkToFit:v18 forFrame:v6 - v14];
  paginationInfo = self->_paginationInfo;
  self->_paginationInfo = v20;

  return [(UIWebPaginationInfo *)self->_paginationInfo pageCount];
}

- (CGRect)rectForPageAtIndex:(int64_t)a3
{
  [(UIPrintFormatter *)self _pageContentRect:[(UIPrintFormatter *)self startPage]== a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIPrintFormatter *)self _recalcIfNecessary];
  paginationInfo = self->_paginationInfo;
  if (paginationInfo)
  {
    [(UIWebPaginationInfo *)paginationInfo sizeForPageAtIndex:a3 - [(UIPrintFormatter *)self startPage]];
    v10 = v14;
    v12 = v15;
  }

  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)drawInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGContextClipToRect(CurrentContext, v12);
  CGContextTranslateCTM(CurrentContext, x, y);
  [(UIWebDocumentView *)self->_webDocumentView drawPage:a4 - [(UIPrintFormatter *)self startPage] withPaginationInfo:self->_paginationInfo];

  CGContextRestoreGState(CurrentContext);
}

@end