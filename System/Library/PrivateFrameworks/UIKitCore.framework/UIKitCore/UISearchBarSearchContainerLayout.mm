@interface UISearchBarSearchContainerLayout
@end

@implementation UISearchBarSearchContainerLayout

double __49___UISearchBarSearchContainerLayout_updateLayout__block_invoke(uint64_t a1, double a2, CGFloat a3, double a4, CGFloat a5)
{
  v8 = a2;
  v10 = *(*(a1 + 32) + 232);
  if (v10 < CGRectGetWidth(*&a2))
  {
    v11 = *(*(a1 + 32) + 232);
    v12 = round(CGRectGetMidX(*(a1 + 40)) + v11 * -0.5);
    v13 = v8;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    if (*(a1 + 72) == 1)
    {
      MinX = CGRectGetMinX(*&v13);
      v21.origin.x = v12;
      v21.origin.y = a3;
      v21.size.width = v11;
      v21.size.height = a5;
      v18 = fmax(MinX - CGRectGetMinX(v21), 0.0);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v13);
      v22.origin.x = v12;
      v22.origin.y = a3;
      v22.size.width = v11;
      v22.size.height = a5;
      v18 = MaxX - CGRectGetMaxX(v22);
      if (v18 > 0.0)
      {
        v18 = 0.0;
      }
    }

    return v12 + v18;
  }

  return v8;
}

uint64_t __48___UISearchBarSearchContainerLayout_applyLayout__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = [*(a1 + 32) traitCollection];
  if ([v2 userInterfaceIdiom] == 3)
  {
    v3 = _UISolariumEnabled();

    if (v3)
    {
      [*(a1 + 32) _setCornerRadius:CGRectGetHeight(*(a1 + 48)) * 0.5];
      [*(a1 + 32) _setWantsGlassAppearance:1];
    }
  }

  else
  {
  }

  [*(a1 + 32) layoutIfNeeded];
  if (*(a1 + 80))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [*(a1 + 40) mainContentAlpha];
  v6 = v4 * v5;
  v7 = *(a1 + 32);

  return [v7 setAlpha:v6];
}

@end