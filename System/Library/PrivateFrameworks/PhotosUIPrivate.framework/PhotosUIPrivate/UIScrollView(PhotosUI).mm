@interface UIScrollView(PhotosUI)
- (double)pu_displayFrameForRect:()PhotosUI;
- (uint64_t)pu_isPerformingScrollTest;
- (void)_pu_beginPageSwipeTest:()PhotosUI;
- (void)_pu_endPageSwipeTest:()PhotosUI;
- (void)_pu_incrementForPageSwipeTest:()PhotosUI dt:stop:;
- (void)pu_ppt_performPageSwipeTest:()PhotosUI iterations:numberOfPages:scrollAxis:;
- (void)pu_ppt_scrollToContentOffset:()PhotosUI withCompletionHandler:;
@end

@implementation UIScrollView(PhotosUI)

- (void)_pu_endPageSwipeTest:()PhotosUI
{
  v3 = MEMORY[0x1E69DC668];
  v4 = a3;
  v6 = [v3 sharedApplication];
  v5 = [v4 testName];

  [v6 finishedTest:v5];
}

- (void)_pu_incrementForPageSwipeTest:()PhotosUI dt:stop:
{
  v9 = a3;
  v10 = [v9 currentPage];
  v11 = [v9 currentDirection];
  [v9 currentPageSwipeProgress];
  v13 = fmin(a5 / 0.75, 0.05) + v12;
  if (v13 >= 1.0)
  {
    v10 += v11;
    if (v11 < 1)
    {
      v14 = 0;
      v13 = 0.0;
      if (v11 && !v10)
      {
        v15 = [v9 currentIteration] + 1;
        [v9 setCurrentIteration:v15];
        v14 = v15 >= [v9 numberOfIterations];
        v11 = 1;
      }
    }

    else
    {
      v14 = 0;
      if (v10 == [v9 numberOfPages])
      {
        v11 = -1;
      }

      v13 = 0.0;
    }
  }

  else
  {
    v14 = 0;
  }

  [v9 setCurrentPageSwipeProgress:v13];
  [v9 setCurrentDirection:v11];
  [v9 setCurrentPage:v10];
  v16 = [v9 currentState];
  v17 = v16;
  if (v13 < 0.1)
  {
    goto LABEL_11;
  }

  if (v13 >= 0.3)
  {
    if (v13 >= 0.9)
    {
LABEL_11:
      v18 = 0;
      goto LABEL_16;
    }

    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

LABEL_16:
  if (v18 != v16)
  {
    [v9 setCurrentState:v18];
    v19 = [a1 delegate];
    if (v18)
    {
      if (v18 == 2)
      {
        if (v17 != 1)
        {
          v35 = [MEMORY[0x1E696AAA8] currentHandler];
          [v35 handleFailureInMethod:a2 object:a1 file:@"UIScrollView+PhotosUI.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"oldState == PUScrollViewPageSwipeStateDragging"}];
        }

        if (objc_opt_respondsToSelector())
        {
          v38 = *MEMORY[0x1E695EFF8];
          [v19 scrollViewWillEndDragging:a1 withVelocity:&v38 targetContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v19 scrollViewDidEndDragging:a1 willDecelerate:1];
        }

        if (objc_opt_respondsToSelector())
        {
          [v19 scrollViewWillBeginDecelerating:a1];
        }
      }

      else
      {
        if (v17)
        {
          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          [v37 handleFailureInMethod:a2 object:a1 file:@"UIScrollView+PhotosUI.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"oldState == PUScrollViewPageSwipeStateIdle"}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v19 scrollViewWillBeginDragging:a1];
        }
      }
    }

    else
    {
      if (v17 != 2)
      {
        v36 = [MEMORY[0x1E696AAA8] currentHandler];
        [v36 handleFailureInMethod:a2 object:a1 file:@"UIScrollView+PhotosUI.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"oldState == PUScrollViewPageSwipeStateDecelerating"}];
      }

      if (objc_opt_respondsToSelector())
      {
        [v19 scrollViewDidEndDecelerating:a1];
      }
    }
  }

  [v9 originContentOffset];
  v21 = v20;
  v23 = v22;
  v24 = (v13 + -0.2) / 0.6;
  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

  v25 = v10 + sin(fmin(v24, 1.0) * 1.57079633) * v11;
  v26 = [v9 scrollAxis];
  [a1 bounds];
  if (v26 == 1)
  {
    Width = CGRectGetWidth(*&v27);
    [a1 _interpageSpacing];
    v21 = v21 + v25 * (Width + v32);
  }

  else
  {
    Height = CGRectGetHeight(*&v27);
    [a1 _interpageSpacing];
    v23 = v23 + v25 * (Height + v34);
  }

  [a1 setContentOffset:0 animated:{v21, v23}];
  if (v14)
  {
    *a4 = 1;
  }
}

- (void)_pu_beginPageSwipeTest:()PhotosUI
{
  v4 = a3;
  [a1 contentOffset];
  [v4 setOriginContentOffset:?];
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 testName];

  [v6 startedTest:v5];
}

- (void)pu_ppt_performPageSwipeTest:()PhotosUI iterations:numberOfPages:scrollAxis:
{
  v11 = a3;
  if ((a6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"UIScrollView+PhotosUI.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"scrollAxis == UIAxisHorizontal || scrollAxis == UIAxisVertical"}];
  }

  if (a5 <= 0)
  {
    v15 = [MEMORY[0x1E69DC668] sharedApplication];
    [v15 failedTest:v11];
  }

  else
  {
    v12 = objc_alloc_init(_PUScrollViewPageSwipeTestContext);
    [(_PUScrollViewPageSwipeTestContext *)v12 setTestName:v11];
    [(_PUScrollViewPageSwipeTestContext *)v12 setNumberOfPages:a5];
    [(_PUScrollViewPageSwipeTestContext *)v12 setNumberOfIterations:a4];
    [(_PUScrollViewPageSwipeTestContext *)v12 setScrollAxis:a6];
    v13 = [[_PUScrollViewPPTScrollHelper alloc] initWithScrollView:a1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__UIScrollView_PhotosUI__pu_ppt_performPageSwipeTest_iterations_numberOfPages_scrollAxis___block_invoke;
    v21[3] = &unk_1E7B80C38;
    v21[4] = a1;
    v22 = v12;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90__UIScrollView_PhotosUI__pu_ppt_performPageSwipeTest_iterations_numberOfPages_scrollAxis___block_invoke_2;
    v19[3] = &unk_1E7B80C60;
    v19[4] = a1;
    v20 = v22;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__UIScrollView_PhotosUI__pu_ppt_performPageSwipeTest_iterations_numberOfPages_scrollAxis___block_invoke_3;
    v17[3] = &unk_1E7B80C38;
    v17[4] = a1;
    v18 = v20;
    v14 = v20;
    [(_PUScrollViewPPTScrollHelper *)v13 scrollWithStartHandler:v21 incrementHandler:v19 completionHandler:v17];
  }
}

- (void)pu_ppt_scrollToContentOffset:()PhotosUI withCompletionHandler:
{
  v8 = a5;
  [a1 contentOffset];
  PXPointSubtract();
  PXFloatSign();
  v10 = v9 * 1000.0;
  PXFloatSign();
  v12 = v11 * 1000.0;
  v13 = [[_PUScrollViewPPTScrollHelper alloc] initWithScrollView:a1];
  [a1 px_screenScale];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__UIScrollView_PhotosUI__pu_ppt_scrollToContentOffset_withCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E7B80C10;
  v15[4] = a1;
  v16 = &__block_literal_global_98098;
  v17 = v10;
  v18 = v12;
  v19 = a2;
  v20 = a3;
  v21 = v14;
  [(_PUScrollViewPPTScrollHelper *)v13 scrollWithStartHandler:0 incrementHandler:v15 completionHandler:v8];
}

- (uint64_t)pu_isPerformingScrollTest
{
  v2 = [a1 scrollTestParameters];

  if (v2)
  {
    return 1;
  }

  v4 = [a1 _pu_pptScrollHelper];
  v3 = v4 != 0;

  return v3;
}

- (double)pu_displayFrameForRect:()PhotosUI
{
  [a1 contentOffset];
  v10 = -v9;
  v12 = -v11;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;

  *&result = CGRectOffset(*&v13, v10, v12);
  return result;
}

@end