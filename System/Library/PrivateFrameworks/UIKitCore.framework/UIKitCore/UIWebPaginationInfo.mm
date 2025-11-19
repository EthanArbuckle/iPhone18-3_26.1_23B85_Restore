@interface UIWebPaginationInfo
- (CGSize)layoutSize;
- (CGSize)sizeForPageAtIndex:(int64_t)a3;
- (UIWebPaginationInfo)initWithDocumentView:(id)a3 scaleFactor:(double)a4 layoutSize:(CGSize)a5 pageRects:(id)a6;
- (double)lastPageHeight;
- (void)dealloc;
@end

@implementation UIWebPaginationInfo

- (UIWebPaginationInfo)initWithDocumentView:(id)a3 scaleFactor:(double)a4 layoutSize:(CGSize)a5 pageRects:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = UIWebPaginationInfo;
  v14 = [(UIWebPaginationInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_documentView, a3);
    v15->_scaleFactor = a4;
    v15->_layoutSize.width = width;
    v15->_layoutSize.height = height;
    objc_storeStrong(&v15->_pageRects, a6);
  }

  return v15;
}

- (void)dealloc
{
  [(UIWebDocumentView *)self->_webDocumentView releasePrintMode];
  v3.receiver = self;
  v3.super_class = UIWebPaginationInfo;
  [(UIWebPaginationInfo *)&v3 dealloc];
}

- (double)lastPageHeight
{
  if (![(NSArray *)self->_pageRects count])
  {
    return 0.0;
  }

  v3 = [(NSArray *)self->_pageRects lastObject];
  [v3 rectValue];
  v4 = ceil(CGRectGetHeight(v6) * self->_scaleFactor);

  return v4;
}

- (CGSize)sizeForPageAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSArray *)self->_pageRects count]< a3)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = [(NSArray *)self->_pageRects objectAtIndex:a3];
    [v7 rectValue];
    v9 = v8;
    v11 = v10;

    scaleFactor = self->_scaleFactor;
    v5 = v9 * scaleFactor;
    v6 = v11 * scaleFactor;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)layoutSize
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end