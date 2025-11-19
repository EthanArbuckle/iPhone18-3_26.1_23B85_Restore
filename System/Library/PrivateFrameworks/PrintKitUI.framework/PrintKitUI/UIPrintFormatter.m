@interface UIPrintFormatter
- (CGRect)_pageContentRect:(BOOL)a3;
- (CGRect)rectForPageAtIndex:(NSInteger)pageIndex;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)perPageContentInsets;
- (UIPrintFormatter)init;
- (UIPrintPageRenderer)printPageRenderer;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_recalcIfNecessary;
- (void)removeFromPrintPageRenderer;
- (void)setContentInsets:(UIEdgeInsets)contentInsets;
- (void)setMaximumContentHeight:(CGFloat)maximumContentHeight;
- (void)setMaximumContentWidth:(CGFloat)maximumContentWidth;
- (void)setPerPageContentInsets:(UIEdgeInsets)perPageContentInsets;
- (void)setPrintPageRenderer:(id)a3;
@end

@implementation UIPrintFormatter

- (UIPrintFormatter)init
{
  v5.receiver = self;
  v5.super_class = UIPrintFormatter;
  v2 = [(UIPrintFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_startPage = 0x7FFFFFFFFFFFFFFFLL;
    [(UIPrintFormatter *)v2 _setNeedsRecalc];
    *&v3->_maximumContentHeight = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&v3->_perPageContentInsets.top = 0u;
    *&v3->_perPageContentInsets.bottom = 0u;
    *&v3->_requiresMainThread = 257;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 3) = *&self->_maximumContentHeight;
  *(result + 4) = *&self->_maximumContentWidth;
  v5 = *&self->_contentInsets.top;
  *(result + 72) = *&self->_contentInsets.bottom;
  *(result + 56) = v5;
  v6 = *&self->_perPageContentInsets.bottom;
  *(result + 88) = *&self->_perPageContentInsets.top;
  *(result + 104) = v6;
  return result;
}

- (void)removeFromPrintPageRenderer
{
  v4 = self;
  WeakRetained = objc_loadWeakRetained(&self->_printPageRenderer);
  [WeakRetained _removePrintFormatter:v4];
}

- (void)setMaximumContentWidth:(CGFloat)maximumContentWidth
{
  if (self->_maximumContentWidth != maximumContentWidth)
  {
    self->_maximumContentWidth = maximumContentWidth;
    [(UIPrintFormatter *)self _setNeedsRecalc];
  }
}

- (void)setMaximumContentHeight:(CGFloat)maximumContentHeight
{
  if (self->_maximumContentHeight != maximumContentHeight)
  {
    self->_maximumContentHeight = maximumContentHeight;
    [(UIPrintFormatter *)self _setNeedsRecalc];
  }
}

- (void)setContentInsets:(UIEdgeInsets)contentInsets
{
  v3.f64[0] = contentInsets.top;
  v3.f64[1] = contentInsets.left;
  v4.f64[0] = contentInsets.bottom;
  v4.f64[1] = contentInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = contentInsets;
    [(UIPrintFormatter *)self _setNeedsRecalc];
  }
}

- (void)setPerPageContentInsets:(UIEdgeInsets)perPageContentInsets
{
  v3.f64[0] = perPageContentInsets.top;
  v3.f64[1] = perPageContentInsets.left;
  v4.f64[0] = perPageContentInsets.bottom;
  v4.f64[1] = perPageContentInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_perPageContentInsets.top), vceqq_f64(v4, *&self->_perPageContentInsets.bottom)))) & 1) == 0)
  {
    self->_perPageContentInsets = perPageContentInsets;
    [(UIPrintFormatter *)self _setNeedsRecalc];
  }
}

- (void)setPrintPageRenderer:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_printPageRenderer);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_printPageRenderer, obj);
    [(UIPrintFormatter *)self _setNeedsRecalc];
    v5 = obj;
  }
}

- (void)_recalcIfNecessary
{
  if (self->_needsRecalc)
  {
    self->_needsRecalc = 0;
    self->_pageCount = [(UIPrintFormatter *)self _recalcPageCount];
  }
}

- (CGRect)_pageContentRect:(BOOL)a3
{
  v3 = a3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  remainder.origin = *MEMORY[0x277CBF3A0];
  remainder.size = v5;
  WeakRetained = objc_loadWeakRetained(&self->_printPageRenderer);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained printableRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    remainder.origin.x = v8;
    remainder.origin.y = v10;
    remainder.size.width = v12;
    remainder.size.height = v14;
    [v7 headerHeight];
    v17 = v16;
    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    CGRectDivide(v43, &v41, &remainder, v17, CGRectMinYEdge);
    [v7 footerHeight];
    CGRectDivide(remainder, &v41, &remainder, v18, CGRectMaxYEdge);
    top = 0.0;
    if (v3)
    {
      top = self->_contentInsets.top;
    }

    v21.f64[0] = self->_contentInsets.left;
    v21.f64[1] = top;
    v22 = vaddq_f64(v21, remainder.origin);
    v19.f64[0] = self->_contentInsets.right;
    v23 = vsubq_f64(remainder.size, vaddq_f64(v21, v19));
    remainder.origin = v22;
    remainder.size = v23;
    left = self->_perPageContentInsets.left;
    if (left > v22.x)
    {
      remainder.size.width = v23.width - (left - v22.x);
      remainder.origin.x = left;
    }

    right = self->_perPageContentInsets.right;
    [v7 paperRect];
    if (right > v26 - remainder.size.width - remainder.origin.x)
    {
      v27 = self->_perPageContentInsets.right;
      [v7 paperRect];
      remainder.size.width = remainder.size.width - (v27 - (v28 - remainder.size.width - remainder.origin.x));
    }

    v29 = self->_perPageContentInsets.top;
    if (v29 > remainder.origin.y)
    {
      remainder.size.height = remainder.size.height - (v29 - remainder.origin.y);
      remainder.origin.y = v29;
    }

    bottom = self->_perPageContentInsets.bottom;
    [v7 paperRect];
    height = remainder.size.height;
    if (bottom > v32 - remainder.size.height - remainder.origin.y)
    {
      v33 = self->_perPageContentInsets.bottom;
      [v7 paperRect];
      height = remainder.size.height - (v33 - (v34 - remainder.size.height - remainder.origin.y));
    }

    v35.f64[0] = remainder.size.width;
    v35.f64[1] = height;
    v36 = vextq_s8(*&self->_maximumContentHeight, *&self->_maximumContentHeight, 8uLL);
    remainder.size = vmaxnmq_f64(vbslq_s8(vcgtq_f64(v36, v35), v35, v36), 0);
  }

  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  v40 = remainder.size.height;
  result.size.height = v40;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rectForPageAtIndex:(NSInteger)pageIndex
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = *MEMORY[0x277CBF3A0];
  startPage = self->_startPage;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (startPage <= pageIndex)
  {
    v7 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
    if (self->_pageCount + startPage > pageIndex)
    {
      [(UIPrintFormatter *)self _pageContentRect:startPage == pageIndex];
      v7 = v12;
      v9 = v13;
      v10 = v14;
      v11 = v15;
    }
  }

  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  IsEmpty = CGRectIsEmpty(v21);
  if (IsEmpty)
  {
    v17 = v3;
  }

  else
  {
    v17 = v7;
  }

  if (IsEmpty)
  {
    v18 = v4;
  }

  else
  {
    v18 = v9;
  }

  if (IsEmpty)
  {
    v19 = v5;
  }

  else
  {
    v19 = v10;
  }

  if (IsEmpty)
  {
    v20 = v6;
  }

  else
  {
    v20 = v11;
  }

  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (UIPrintPageRenderer)printPageRenderer
{
  WeakRetained = objc_loadWeakRetained(&self->_printPageRenderer);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)perPageContentInsets
{
  top = self->_perPageContentInsets.top;
  left = self->_perPageContentInsets.left;
  bottom = self->_perPageContentInsets.bottom;
  right = self->_perPageContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end