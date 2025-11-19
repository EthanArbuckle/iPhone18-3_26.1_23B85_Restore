@interface _UIEditMenuCollectionView
- (CGPoint)contentOffsetForPage:(int64_t)a3;
- (double)currentPage;
- (double)pageProgressForContentOffset:(CGPoint)a3 clamped:(BOOL)a4;
- (double)viewWidthForPageProgress:(double)a3;
- (void)_prepareToPageWithHorizontalVelocity:(double)a3 verticalVelocity:(double)a4;
- (void)decrementTargetPage;
- (void)incrementTargetPage;
- (void)scrollToTargetPageAnimated:(BOOL)a3;
- (void)setPages:(id)a3;
@end

@implementation _UIEditMenuCollectionView

- (void)setPages:(id)a3
{
  objc_storeStrong(&self->_pages, a3);
  [(_UIEditMenuCollectionView *)self clampedPageForPageProgress:self->_targetPage];
  self->_targetPage = v4;
}

- (double)currentPage
{
  [(UIScrollView *)self contentOffset];

  [(_UIEditMenuCollectionView *)self pageProgressForContentOffset:0 clamped:?];
  return result;
}

- (double)pageProgressForContentOffset:(CGPoint)a3 clamped:(BOOL)a4
{
  v4 = a4;
  x = a3.x;
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(_UIEditMenuCollectionView *)self pages];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (x <= 0.0)
      {
        break;
      }

      v13 = *(*(&v23 + 1) + 8 * v12);
      [v13 width];
      v15 = v14;
      [v13 overlapWidth];
      v17 = fmin(x, v15 - v16);
      [v13 width];
      v19 = v18;
      [v13 overlapWidth];
      v11 = v11 + v17 / (v19 - v20);
      x = x - v17;
      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  if (v4)
  {
    [(_UIEditMenuCollectionView *)self clampedPageForPageProgress:v11];
    return v21;
  }

  return v11;
}

- (CGPoint)contentOffsetForPage:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = "";
  v13 = *MEMORY[0x1E695EFF8];
  pages = self->_pages;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___UIEditMenuCollectionView_contentOffsetForPage___block_invoke;
  v8[3] = &unk_1E711B058;
  v8[4] = &v9;
  v8[5] = a3;
  [(NSArray *)pages enumerateObjectsUsingBlock:v8];
  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (double)viewWidthForPageProgress:(double)a3
{
  if (![(NSArray *)self->_pages count])
  {
    return 0.0;
  }

  [(_UIEditMenuCollectionView *)self clampedPageForPageProgress:a3];
  v6 = v5;
  [(NSArray *)self->_pages count];
  [(_UIEditMenuCollectionView *)self clampedPageForPageProgress:floor(v6)];
  v8 = v7;
  [(_UIEditMenuCollectionView *)self clampedPageForPageProgress:(v7 + 1)];
  v10 = v9;
  v11 = v9 - v6;
  v12 = [(NSArray *)self->_pages objectAtIndex:v8];
  [v12 width];
  v14 = v13;

  v15 = [(NSArray *)self->_pages objectAtIndex:v10];
  [v15 width];
  v17 = v16;

  [(UIView *)self _currentScreenScale];

  UIRoundToScale(v11 * v14 + (1.0 - v11) * v17, v18);
  return result;
}

- (void)incrementTargetPage
{
  targetPage = self->_targetPage;
  if (targetPage < [(NSArray *)self->_pages count]- 1)
  {
    ++self->_targetPage;

    [(_UIEditMenuCollectionView *)self scrollToTargetPageAnimated:1];
  }
}

- (void)decrementTargetPage
{
  targetPage = self->_targetPage;
  v3 = targetPage < 1;
  v4 = targetPage - 1;
  if (!v3)
  {
    self->_targetPage = v4;
    [(_UIEditMenuCollectionView *)self scrollToTargetPageAnimated:1];
  }
}

- (void)scrollToTargetPageAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(NSArray *)self->_pages count])
  {
    v5 = [(NSArray *)self->_pages objectAtIndex:self->_targetPage];
    [(_UIEditMenuCollectionView *)self contentOffsetForPage:self->_targetPage];
    v7 = v6;
    v9 = v8;

    if (v3)
    {
LABEL_3:
      if (qword_1ED4993F8 != -1)
      {
        dispatch_once(&qword_1ED4993F8, &__block_literal_global_454);
      }

      v10 = _MergedGlobals_1_20;

      [(UIScrollView *)self _setContentOffset:v10 animation:v7, v9];
      return;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  [(UICollectionView *)self setContentOffset:0 animated:v7, v9];
}

- (void)_prepareToPageWithHorizontalVelocity:(double)a3 verticalVelocity:(double)a4
{
  [(UIView *)self bounds:a3];
  v7 = v6;
  [(UIScrollView *)self _pagingOrigin];
  v9 = v8;
  v10 = [(NSArray *)self->_pages count];
  [(_UIEditMenuCollectionView *)self targetPage];
  [(UIScrollView *)self _pageDecelerationTarget];
  v12 = v11;
  [(UIScrollView *)self contentOffset];
  [(_UIEditMenuCollectionView *)self pageProgressForContentOffset:0 clamped:?];
  v14 = v13;
  v15 = [(_UIEditMenuCollectionView *)self pages];
  if (![v15 count])
  {

    goto LABEL_13;
  }

  v16 = floor(v14);
  if (v16 == v14 && ([(UIScrollView *)self contentOffset], v17 >= v9))
  {

    if (v14 <= v10 + -1.0)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (a3 <= 0.3)
  {
    if (a3 >= -0.3)
    {
      v16 = round(v14);
    }
  }

  else
  {
    v16 = ceil(v14);
  }

  [(_UIEditMenuCollectionView *)self clampedPageForPageProgress:v16];
  v19 = v18;
  [(_UIEditMenuCollectionView *)self contentOffsetForPage:v18];
  v7 = v20;
  v12 = v21;
  if (!v19)
  {
    [(UIScrollView *)self _firstPageOffset];
    v7 = v7 + v22;
  }

LABEL_13:

  [(UIScrollView *)self _setPageDecelerationTarget:v7, v12];
}

@end