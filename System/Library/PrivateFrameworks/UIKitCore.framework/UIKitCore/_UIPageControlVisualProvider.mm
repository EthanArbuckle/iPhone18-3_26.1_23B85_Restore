@interface _UIPageControlVisualProvider
- (CAColorMatrix)activePageIndicatorVibrantColorMatrix;
- (CAColorMatrix)pageIndicatorVibrantColorMatrix;
- (CGAffineTransform)activeTransformForTouchedPage;
- (CGAffineTransform)targetTransformForTouchedPage;
- (CGRect)indicatorFrameForPage:(int64_t)page;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForNumberOfPages:(int64_t)pages;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIPageControlVisualProvider)initWithPageControl:(id)control;
- (void)setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix;
- (void)setActiveTransformForTouchedPage:(CGAffineTransform *)page;
- (void)setPage:(int64_t)page interactionState:(int64_t)state;
- (void)setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix;
- (void)setTargetTransformForTouchedPage:(CGAffineTransform *)page;
@end

@implementation _UIPageControlVisualProvider

- (CAColorMatrix)activePageIndicatorVibrantColorMatrix
{
  v3 = *&self[3].m24;
  *&retstr->m24 = *&self[3].m15;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[3].m33;
  v4 = *&self[3].m11;
  *&retstr->m11 = *&self[2].m42;
  *&retstr->m15 = v4;
  return self;
}

- (CAColorMatrix)pageIndicatorVibrantColorMatrix
{
  v3 = *&self[2].m24;
  *&retstr->m24 = *&self[2].m15;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[2].m33;
  v4 = *&self[2].m11;
  *&retstr->m11 = *&self[1].m42;
  *&retstr->m15 = v4;
  return self;
}

- (_UIPageControlVisualProvider)initWithPageControl:(id)control
{
  v15.receiver = self;
  v15.super_class = _UIPageControlVisualProvider;
  result = [(_UIPageControlVisualProvider *)&v15 init];
  if (result)
  {
    result->_pageControl = control;
    v5 = MEMORY[0x1E695EFD0];
    v6 = *MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_activeTransformForTouchedPage.a = *MEMORY[0x1E695EFD0];
    *&result->_activeTransformForTouchedPage.c = v7;
    v8 = *(v5 + 32);
    *&result->_activeTransformForTouchedPage.tx = v8;
    *&result->_targetTransformForTouchedPage.a = v6;
    *&result->_targetTransformForTouchedPage.c = v7;
    *&result->_targetTransformForTouchedPage.tx = v8;
    v9 = MEMORY[0x1E6979280];
    v11 = *(MEMORY[0x1E6979280] + 48);
    v10 = *(MEMORY[0x1E6979280] + 64);
    v13 = *(MEMORY[0x1E6979280] + 16);
    v12 = *(MEMORY[0x1E6979280] + 32);
    *&result->_pageIndicatorVibrantColorMatrix.m24 = v12;
    *&result->_pageIndicatorVibrantColorMatrix.m33 = v11;
    v14 = *v9;
    *&result->_pageIndicatorVibrantColorMatrix.m11 = *v9;
    *&result->_pageIndicatorVibrantColorMatrix.m15 = v13;
    *&result->_pageIndicatorVibrantColorMatrix.m42 = v10;
    *&result->_activePageIndicatorVibrantColorMatrix.m11 = v14;
    *&result->_activePageIndicatorVibrantColorMatrix.m33 = v11;
    *&result->_activePageIndicatorVibrantColorMatrix.m42 = v10;
    *&result->_activePageIndicatorVibrantColorMatrix.m15 = v13;
    *&result->_activePageIndicatorVibrantColorMatrix.m24 = v12;
  }

  return result;
}

- (void)setPage:(int64_t)page interactionState:(int64_t)state
{
  [(UIPageControl *)self->_pageControl _updateCurrentPage:page updateDisplayImmediately:1];
  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl _emitValueChanged];
}

- (CGSize)sizeForNumberOfPages:(int64_t)pages
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)indicatorFrameForPage:(int64_t)page
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)activeTransformForTouchedPage
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)setActiveTransformForTouchedPage:(CGAffineTransform *)page
{
  v3 = *&page->a;
  v4 = *&page->tx;
  *&self->_activeTransformForTouchedPage.c = *&page->c;
  *&self->_activeTransformForTouchedPage.tx = v4;
  *&self->_activeTransformForTouchedPage.a = v3;
}

- (CGAffineTransform)targetTransformForTouchedPage
{
  v3 = *&self[2].c;
  *&retstr->a = *&self[2].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].tx;
  return self;
}

- (void)setTargetTransformForTouchedPage:(CGAffineTransform *)page
{
  v3 = *&page->a;
  v4 = *&page->tx;
  *&self->_targetTransformForTouchedPage.c = *&page->c;
  *&self->_targetTransformForTouchedPage.tx = v4;
  *&self->_targetTransformForTouchedPage.a = v3;
}

- (void)setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix
{
  *&self->_pageIndicatorVibrantColorMatrix.m11 = *&matrix->m11;
  v3 = *&matrix->m15;
  v4 = *&matrix->m24;
  v5 = *&matrix->m42;
  *&self->_pageIndicatorVibrantColorMatrix.m33 = *&matrix->m33;
  *&self->_pageIndicatorVibrantColorMatrix.m42 = v5;
  *&self->_pageIndicatorVibrantColorMatrix.m15 = v3;
  *&self->_pageIndicatorVibrantColorMatrix.m24 = v4;
}

- (void)setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)matrix
{
  *&self->_activePageIndicatorVibrantColorMatrix.m11 = *&matrix->m11;
  v3 = *&matrix->m15;
  v4 = *&matrix->m24;
  v5 = *&matrix->m42;
  *&self->_activePageIndicatorVibrantColorMatrix.m33 = *&matrix->m33;
  *&self->_activePageIndicatorVibrantColorMatrix.m42 = v5;
  *&self->_activePageIndicatorVibrantColorMatrix.m15 = v3;
  *&self->_activePageIndicatorVibrantColorMatrix.m24 = v4;
}

@end