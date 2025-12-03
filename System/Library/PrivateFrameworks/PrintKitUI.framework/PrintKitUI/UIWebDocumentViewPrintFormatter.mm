@interface UIWebDocumentViewPrintFormatter
- (CGRect)rectForPageAtIndex:(int64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_recalcPageCount;
- (void)_resetPaginationInfo;
- (void)drawInRect:(CGRect)rect forPageAtIndex:(int64_t)index;
- (void)removeFromPrintPageRenderer;
@end

@implementation UIWebDocumentViewPrintFormatter

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = UIWebDocumentViewPrintFormatter;
  v4 = [(UIViewPrintFormatter *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_paginationInfo);
  }

  return v5;
}

- (void)removeFromPrintPageRenderer
{
  [(UIWebDocumentViewPrintFormatter *)self _resetPaginationInfo];
  v3.receiver = self;
  v3.super_class = UIWebDocumentViewPrintFormatter;
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
    block[2] = __55__UIWebDocumentViewPrintFormatter__resetPaginationInfo__block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __55__UIWebDocumentViewPrintFormatter__resetPaginationInfo__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
}

- (int64_t)_recalcPageCount
{
  v24.receiver = self;
  v24.super_class = UIWebDocumentViewPrintFormatter;
  [(UIPrintFormatter *)&v24 _pageContentRect:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v23.receiver = self;
  v23.super_class = UIWebDocumentViewPrintFormatter;
  [(UIPrintFormatter *)&v23 _pageContentRect:0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  if (CGRectIsEmpty(v25))
  {
    return 0;
  }

  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  if (CGRectIsEmpty(v26))
  {
    return 0;
  }

  _webDocumentView = [(UIWebDocumentViewPrintFormatter *)self _webDocumentView];
  v21 = [_webDocumentView beginPrintModeWithWidth:1 height:self->_frameToPrint startOffset:v16 shrinkToFit:v18 forFrame:v6 - v14];
  paginationInfo = self->_paginationInfo;
  self->_paginationInfo = v21;

  return [(UIWebPaginationInfo *)self->_paginationInfo pageCount];
}

- (CGRect)rectForPageAtIndex:(int64_t)index
{
  [(UIPrintFormatter *)self _pageContentRect:[(UIPrintFormatter *)self startPage]== index];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIPrintFormatter *)self _recalcIfNecessary];
  paginationInfo = self->_paginationInfo;
  if (paginationInfo)
  {
    [(UIWebPaginationInfo *)paginationInfo sizeForPageAtIndex:index - [(UIPrintFormatter *)self startPage]];
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

- (void)drawInRect:(CGRect)rect forPageAtIndex:(int64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGContextClipToRect(CurrentContext, v13);
  CGContextTranslateCTM(CurrentContext, x, y);
  _webDocumentView = [(UIWebDocumentViewPrintFormatter *)self _webDocumentView];
  [_webDocumentView drawPage:index - -[UIPrintFormatter startPage](self withPaginationInfo:{"startPage"), self->_paginationInfo}];

  CGContextRestoreGState(CurrentContext);
}

@end