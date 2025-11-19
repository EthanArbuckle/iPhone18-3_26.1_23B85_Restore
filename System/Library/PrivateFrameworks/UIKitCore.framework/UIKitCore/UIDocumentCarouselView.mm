@interface UIDocumentCarouselView
@end

@implementation UIDocumentCarouselView

void __41___UIDocumentCarouselView__performLayout__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1 || a2 == 2)
      {
        return;
      }

LABEL_12:
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:*(a1 + 112) object:*(a1 + 32) file:@"_UIDocumentCarouselView.m" lineNumber:399 description:@"UIKit internal inconsistency: unhandled item position"];

      return;
    }

LABEL_10:
    CGRectGetMidX(*(a1 + 48));
    return;
  }

  if (a2 == 3)
  {
    goto LABEL_10;
  }

  if (a2 != 4 && a2 != 5)
  {
    goto LABEL_12;
  }
}

double __41___UIDocumentCarouselView__performLayout__block_invoke_3(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 4:
      return *(a1 + 32);
    case 3:
      return 1.0;
    case 2:
      return *(a1 + 32);
  }

  return *(a1 + 32) * 0.25;
}

double __41___UIDocumentCarouselView__performLayout__block_invoke_4(uint64_t a1, unint64_t a2)
{
  if (a2 < 6)
  {
    return dbl_18A67CA50[a2];
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIDocumentCarouselView.m" lineNumber:430 description:@"UIKit internal inconsistency: unhandled item position"];

  return 0.0;
}

double __41___UIDocumentCarouselView__performLayout__block_invoke_5(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a3 + a5 * 0.5 > CGRectGetHeight(*(a1 + 40)) - *(a1 + 88))
  {
    UIRoundToViewScale(*(a1 + 32));
  }

  return 0.0;
}

__n128 __47___UIDocumentCarouselView__invalidateItemSizes__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = *MEMORY[0x1E695F060];
    *(a3 + 424) = *MEMORY[0x1E695F060];
  }

  return result;
}

void __62___UIDocumentCarouselView__updatePagingFraction_withTracking___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIDocumentCarouselView *)WeakRetained _cleanUpAfterAnimation];
}

void __57___UIDocumentCarouselView__configureAnimatableProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIDocumentCarouselView *)WeakRetained _performLayout];
}

void __53___UIDocumentCarouselView_setPagingEnabled_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIDocumentCarouselView *)WeakRetained _cleanUpAfterAnimation];
}

@end