@interface UIPrintPageRenderer
- (BOOL)_startPrintJobContext:(id)context printInfo:(id)info printSettings:(id)settings;
- (CGRect)paperRect;
- (CGRect)printableRect;
- (NSArray)printFormatters;
- (NSArray)printFormattersForPageAtIndex:(NSInteger)pageIndex;
- (int64_t)_maxFormatterPage;
- (int64_t)_numberOfPages;
- (void)_drawPage:(int64_t)page withScale:(double)scale drawingToPDF:(BOOL)f;
- (void)_endPrintJobContext;
- (void)_removePrintFormatter:(id)formatter;
- (void)_startPrintJobContext:(CGContext *)context;
- (void)_startSaveContext:(CGContext *)context;
- (void)addPrintFormatter:(UIPrintFormatter *)formatter startingAtPageAtIndex:(NSInteger)pageIndex;
- (void)drawPageAtIndex:(NSInteger)pageIndex inRect:(CGRect)printableRect;
- (void)drawPrintFormatter:(UIPrintFormatter *)printFormatter forPageAtIndex:(NSInteger)pageIndex;
- (void)setFooterHeight:(CGFloat)footerHeight;
- (void)setHeaderHeight:(CGFloat)headerHeight;
- (void)setPaperRect:(CGRect)rect;
- (void)setPrintFormatters:(NSArray *)printFormatters;
- (void)setPrintableRect:(CGRect)rect;
@end

@implementation UIPrintPageRenderer

- (NSArray)printFormatters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  printFormatters = selfCopy->_printFormatters;
  if (printFormatters)
  {
    v4 = [(NSMutableArray *)printFormatters copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setPrintFormatters:(NSArray *)printFormatters
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = printFormatters;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_printFormatters != v4)
  {
    v6 = [(NSArray *)v4 mutableCopy];
    v7 = selfCopy->_printFormatters;
    selfCopy->_printFormatters = v6;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = selfCopy->_printFormatters;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v12 + 1) + 8 * v11++) setPrintPageRenderer:{selfCopy, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)addPrintFormatter:(UIPrintFormatter *)formatter startingAtPageAtIndex:(NSInteger)pageIndex
{
  v6 = formatter;
  if (v6)
  {
    v11 = v6;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    printFormatters = selfCopy->_printFormatters;
    if (printFormatters)
    {
      [(NSMutableArray *)printFormatters addObject:v11];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v11, 0}];
      v10 = selfCopy->_printFormatters;
      selfCopy->_printFormatters = v9;
    }

    [(UIPrintFormatter *)v11 setPrintPageRenderer:selfCopy];
    [(UIPrintFormatter *)v11 setStartPage:pageIndex];
    objc_sync_exit(selfCopy);

    v6 = v11;
  }
}

- (NSArray)printFormattersForPageAtIndex:(NSInteger)pageIndex
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  printFormatters = [(UIPrintPageRenderer *)self printFormatters];
  v5 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(printFormatters);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        StartPageFromFormatter = GetStartPageFromFormatter(v10);
        if (StartPageFromFormatter <= pageIndex && GetPageCountFromFormatter(v10) + StartPageFromFormatter > pageIndex)
        {
          if (v7)
          {
            [v7 addObject:v10];
          }

          else
          {
            v7 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
          }
        }
      }

      v6 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removePrintFormatter:(id)formatter
{
  formatterCopy = formatter;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [formatterCopy setPrintPageRenderer:0];
  [(NSMutableArray *)selfCopy->_printFormatters removeObject:formatterCopy];
  objc_sync_exit(selfCopy);
}

- (int64_t)_maxFormatterPage
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  printFormatters = [(UIPrintPageRenderer *)self printFormatters];
  v3 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(printFormatters);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        StartPageFromFormatter = GetStartPageFromFormatter(v8);
        if (StartPageFromFormatter != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = StartPageFromFormatter;
          PageCountFromFormatter = GetPageCountFromFormatter(v8);
          if (v5 <= PageCountFromFormatter + v10)
          {
            v5 = PageCountFromFormatter + v10;
          }
        }
      }

      v4 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_numberOfPages
{
  if ([(UIPrintPageRenderer *)self cachedPageCount]<= 0)
  {
    [(UIPrintPageRenderer *)self setCachedPageCount:[(UIPrintPageRenderer *)self numberOfPages]];
  }

  return [(UIPrintPageRenderer *)self cachedPageCount];
}

- (void)setHeaderHeight:(CGFloat)headerHeight
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_headerHeight != headerHeight)
  {
    self->_headerHeight = headerHeight;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    printFormatters = [(UIPrintPageRenderer *)self printFormatters];
    v5 = [printFormatters countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(printFormatters);
          }

          [*(*(&v9 + 1) + 8 * v8++) _setNeedsRecalc];
        }

        while (v6 != v8);
        v6 = [printFormatters countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(UIPrintPageRenderer *)self setCachedPageCount:-1];
  }
}

- (void)setFooterHeight:(CGFloat)footerHeight
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_footerHeight != footerHeight)
  {
    self->_footerHeight = footerHeight;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    printFormatters = [(UIPrintPageRenderer *)self printFormatters];
    v5 = [printFormatters countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(printFormatters);
          }

          [*(*(&v9 + 1) + 8 * v8++) _setNeedsRecalc];
        }

        while (v6 != v8);
        v6 = [printFormatters countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(UIPrintPageRenderer *)self setCachedPageCount:-1];
  }
}

- (void)setPaperRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = *MEMORY[0x277D85DE8];
  if (!CGRectEqualToRect(self->_paperRect, rect))
  {
    self->_paperRect.origin.x = x;
    self->_paperRect.origin.y = y;
    self->_paperRect.size.width = width;
    self->_paperRect.size.height = height;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    printFormatters = [(UIPrintPageRenderer *)self printFormatters];
    v9 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(printFormatters);
          }

          [*(*(&v13 + 1) + 8 * v12++) _setNeedsRecalc];
        }

        while (v10 != v12);
        v10 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [(UIPrintPageRenderer *)self setCachedPageCount:-1];
  }
}

- (void)setPrintableRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = *MEMORY[0x277D85DE8];
  if (!CGRectEqualToRect(self->_printableRect, rect))
  {
    self->_printableRect.origin.x = x;
    self->_printableRect.origin.y = y;
    self->_printableRect.size.width = width;
    self->_printableRect.size.height = height;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    printFormatters = [(UIPrintPageRenderer *)self printFormatters];
    v9 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(printFormatters);
          }

          [*(*(&v13 + 1) + 8 * v12++) _setNeedsRecalc];
        }

        while (v10 != v12);
        v10 = [printFormatters countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [(UIPrintPageRenderer *)self setCachedPageCount:-1];
  }
}

- (void)drawPageAtIndex:(NSInteger)pageIndex inRect:(CGRect)printableRect
{
  height = printableRect.size.height;
  width = printableRect.size.width;
  y = printableRect.origin.y;
  x = printableRect.origin.x;
  v29 = *MEMORY[0x277D85DE8];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  memset(&v25, 0, sizeof(v25));
  [(UIPrintPageRenderer *)self headerHeight];
  v11 = v10;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectDivide(v30, &slice, &remainder, v11, CGRectMinYEdge);
  [(UIPrintPageRenderer *)self footerHeight];
  CGRectDivide(remainder, &v25, &remainder, v12, CGRectMaxYEdge);
  CurrentContext = UIGraphicsGetCurrentContext();
  if (!CGRectIsEmpty(slice))
  {
    CGContextSaveGState(CurrentContext);
    [(UIPrintPageRenderer *)self drawHeaderForPageAtIndex:pageIndex inRect:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    CGContextRestoreGState(CurrentContext);
  }

  if (!CGRectIsEmpty(remainder))
  {
    CGContextSaveGState(CurrentContext);
    [(UIPrintPageRenderer *)self drawContentForPageAtIndex:pageIndex inRect:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
    CGContextRestoreGState(CurrentContext);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  printFormatters = [(UIPrintPageRenderer *)self printFormatters];
  v15 = [printFormatters countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(printFormatters);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        StartPageFromFormatter = GetStartPageFromFormatter(v19);
        if (StartPageFromFormatter <= pageIndex && GetPageCountFromFormatter(v19) + StartPageFromFormatter > pageIndex)
        {
          CGContextSaveGState(CurrentContext);
          [(UIPrintPageRenderer *)self drawPrintFormatter:v19 forPageAtIndex:pageIndex];
          CGContextRestoreGState(CurrentContext);
        }
      }

      v16 = [printFormatters countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v16);
  }

  if (!CGRectIsEmpty(v25))
  {
    CGContextSaveGState(CurrentContext);
    [(UIPrintPageRenderer *)self drawFooterForPageAtIndex:pageIndex inRect:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
    CGContextRestoreGState(CurrentContext);
  }
}

- (void)drawPrintFormatter:(UIPrintFormatter *)printFormatter forPageAtIndex:(NSInteger)pageIndex
{
  v6 = printFormatter;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__UIPrintPageRenderer_drawPrintFormatter_forPageAtIndex___block_invoke;
  v14[3] = &unk_279A9C6D8;
  v7 = v6;
  v15 = v7;
  v16 = pageIndex;
  v8 = MEMORY[0x25F8E54A0](v14);
  if (pthread_main_np() == 1 || ![(UIPrintFormatter *)v7 requiresMainThread])
  {
    v8[2](v8);
  }

  else
  {
    printCGContext = [(UIPrintPageRenderer *)self printCGContext];
    v10 = printCGContext;
    if (printCGContext)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __57__UIPrintPageRenderer_drawPrintFormatter_forPageAtIndex___block_invoke_2;
      v11[3] = &unk_279A9CC10;
      v12 = printCGContext;
      v13 = v8;
      dispatch_sync(MEMORY[0x277D85CD0], v11);
    }
  }
}

uint64_t __57__UIPrintPageRenderer_drawPrintFormatter_forPageAtIndex___block_invoke(uint64_t a1)
{
  [*(a1 + 32) rectForPageAtIndex:*(a1 + 40)];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  result = CGRectIsEmpty(v10);
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v7 drawInRect:v8 forPageAtIndex:{x, y, width, height}];
  }

  return result;
}

void __57__UIPrintPageRenderer_drawPrintFormatter_forPageAtIndex___block_invoke_2(uint64_t a1)
{
  UIGraphicsPushContext(*(a1 + 32));
  (*(*(a1 + 40) + 16))();

  UIGraphicsPopContext();
}

- (BOOL)_startPrintJobContext:(id)context printInfo:(id)info printSettings:(id)settings
{
  contextCopy = context;
  infoCopy = info;
  if ([contextCopy startJob:settings ofType:*MEMORY[0x277D41100]])
  {
    v10 = 0;
  }

  else
  {
    v11 = contextCopy;
    v12 = CGDataConsumerCreate(v11, _startPrintJobContext_printInfo_printSettings____consumerCallbacks);
    if (v12)
    {
      v13 = v12;
      [(UIPrintPageRenderer *)self paperRect];
      v15 = v14;
      v17 = v16;
      [infoCopy scalingFactor];
      v25.size.width = v20 * v15;
      [infoCopy scalingFactor];
      v25.size.height = v21 * v17;
      v10 = CGPDFContextCreate(v13, &v25, 0);
      CFRelease(v13);
    }

    else
    {
      CFRelease(v11);
      v10 = 0;
    }

    [(UIPrintPageRenderer *)self setUsingPrintJobContext:1];
  }

  [(UIPrintPageRenderer *)self setPrintCGContext:v10];
  printCGContext = [(UIPrintPageRenderer *)self printCGContext];
  v23 = printCGContext != 0;

  return v23;
}

- (void)_startPrintJobContext:(CGContext *)context
{
  [(UIPrintPageRenderer *)self setUsingPrintJobContext:1];

  [(UIPrintPageRenderer *)self setPrintCGContext:context];
}

- (void)_endPrintJobContext
{
  context = [(UIPrintPageRenderer *)self printCGContext];
  [(UIPrintPageRenderer *)self setPrintCGContext:0];
  if ([(UIPrintPageRenderer *)self usingPrintJobContext]&& context)
  {
    CGPDFContextClose(context);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_startSaveContext:(CGContext *)context
{
  [(UIPrintPageRenderer *)self setUsingPrintJobContext:0];

  [(UIPrintPageRenderer *)self setPrintCGContext:context];
}

- (void)_drawPage:(int64_t)page withScale:(double)scale drawingToPDF:(BOOL)f
{
  fCopy = f;
  printCGContext = [(UIPrintPageRenderer *)self printCGContext];
  if (printCGContext)
  {
    printCGContext2 = [(UIPrintPageRenderer *)self printCGContext];

    if (fCopy)
    {
      CGPDFContextBeginPage(printCGContext2, 0);
    }

    CGContextSaveGState(printCGContext2);
    [(UIPrintPageRenderer *)self paperRect];
    CGContextTranslateCTM(printCGContext2, 0.0, v11 * scale);
    CGContextScaleCTM(printCGContext2, scale, -scale);
    CGAffineTransformMakeScale(&v12, scale, -scale);
    CGContextSetBaseCTM();
    UIGraphicsPushContext(printCGContext2);
    [(UIPrintPageRenderer *)self printableRect];
    [(UIPrintPageRenderer *)self drawPageAtIndex:page inRect:?];
    UIGraphicsPopContext();
    CGContextRestoreGState(printCGContext2);
    if (fCopy)
    {
      CGPDFContextEndPage(printCGContext2);
    }
  }
}

- (CGRect)paperRect
{
  x = self->_paperRect.origin.x;
  y = self->_paperRect.origin.y;
  width = self->_paperRect.size.width;
  height = self->_paperRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)printableRect
{
  x = self->_printableRect.origin.x;
  y = self->_printableRect.origin.y;
  width = self->_printableRect.size.width;
  height = self->_printableRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end