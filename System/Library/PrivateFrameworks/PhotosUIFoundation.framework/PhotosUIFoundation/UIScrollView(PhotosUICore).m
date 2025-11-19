@interface UIScrollView(PhotosUICore)
+ (double)_convertDampingRatio:()PhotosUICore response:toMass:stiffness:damping:;
- (BOOL)px_isPerformingScrollTest;
- (BOOL)px_performDecelerationWithInitialVelocity:()PhotosUICore axis:targetContentOffsetForProposedOffset:;
- (double)_px_currentContentSize;
- (double)px_contentOffsetForEdge:()PhotosUICore padding:;
- (double)px_maximumContentOffset;
- (double)px_minimumContentOffset;
- (long)px_initialVelocityForDecelerationOffset:()PhotosUICore;
- (uint64_t)px_cancelScrollAnimation;
- (uint64_t)px_cancelScrollGesture;
- (uint64_t)px_contentOffsetYFraction;
- (uint64_t)px_isBouncing;
- (uint64_t)px_isDecelerating;
- (uint64_t)px_isScrolledAtEdge:()PhotosUICore;
- (uint64_t)px_isScrolledAtEdge:()PhotosUICore tolerance:;
- (uint64_t)px_scrollToContentOffset:()PhotosUICore animated:;
- (uint64_t)px_scrollToEdge:()PhotosUICore animated:;
- (uint64_t)px_scrollableAxis;
- (void)px_adjustInsetsForKeyboardInfo:()PhotosUICore safeAreaInsets:;
- (void)px_constrainedContentOffset:()PhotosUICore;
- (void)px_scrollDistanceFromEdge:()PhotosUICore;
- (void)px_setPocketColorForAllEdges:()PhotosUICore;
- (void)px_setPocketPreferredUserInterfaceStyleForAllEdges:()PhotosUICore;
@end

@implementation UIScrollView(PhotosUICore)

- (double)_px_currentContentSize
{
  [a1 contentSize];
  v3 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a1 collectionViewLayout];
    [v4 collectionViewContentSize];
    v3 = v5;
  }

  return v3;
}

- (uint64_t)px_isBouncing
{
  v2 = [a1 px_scrollableAxis];
  if (v2)
  {
    if ([a1 px_isScrolledBeyondEdge:0])
    {
      v4 = 1;
      return v4 & 1;
    }

    v3 = [a1 px_isScrolledBeyondEdge:2];
  }

  else
  {
    v3 = 0;
  }

  v4 = ((v2 & 2) != 0) | v3;
  if ((v2 & 2) == 0)
  {
    return v4 & 1;
  }

  if (v3)
  {
    return v4 & 1;
  }

  v4 = 1;
  if ([a1 px_isScrolledBeyondEdge:1])
  {
    return v4 & 1;
  }

  return [a1 px_isScrolledBeyondEdge:3];
}

- (uint64_t)px_scrollableAxis
{
  IsScrollableAlongAxis = PXScrollViewIsScrollableAlongAxis(a1, 2);
  if (PXScrollViewIsScrollableAlongAxis(a1, 1))
  {
    return IsScrollableAlongAxis | 2;
  }

  else
  {
    return IsScrollableAlongAxis;
  }
}

- (void)px_setPocketPreferredUserInterfaceStyleForAllEdges:()PhotosUICore
{
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v5 stringForKey:@"OverridePocketBias"];

  if ([v7 isEqualToString:@"dark"])
  {
    v6 = 2;
  }

  else if ([v7 isEqualToString:@"light"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"unspecified"))
  {
    v6 = 1;
  }

  else if (a3 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (a3 == 2);
  }

  [a1 _setPocketPreferredUserInterfaceStyle:v6 forEdge:1];
  [a1 _setPocketPreferredUserInterfaceStyle:v6 forEdge:4];
  [a1 _setPocketPreferredUserInterfaceStyle:v6 forEdge:2];
  [a1 _setPocketPreferredUserInterfaceStyle:v6 forEdge:8];
}

- (void)px_setPocketColorForAllEdges:()PhotosUICore
{
  v10 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"DebugStaticPocket"];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] systemRedColor];
LABEL_5:

    v9 = v6;
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 BOOLForKey:@"DisableStaticPocket"];

  if (v8)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v9 = v10;
LABEL_7:
  v11 = v9;
  [a1 _setPocketColor:v9 forEdge:1];
  [a1 _setPocketColor:v11 forEdge:4];
  [a1 _setPocketColor:v11 forEdge:2];
  [a1 _setPocketColor:v11 forEdge:8];
}

- (BOOL)px_performDecelerationWithInitialVelocity:()PhotosUICore axis:targetContentOffsetForProposedOffset:
{
  v8 = a5;
  [a1 decelerationRate];
  v10 = log(v9);
  [a1 contentOffset];
  v12 = v11;
  v14 = v13;
  v15 = PXPointValueForAxis(a4, v11, v13);
  [a1 px_decelerationOffsetForInitialVelocity:a2];
  v17 = v8[2](v8, v15 + v16);

  v37 = v12;
  v38 = v14;
  PXPointSetValueForAxis(&v37, a4, v17);
  [a1 px_constrainedContentOffset:{v37, v38}];
  v20 = v14 != v19 || v12 != v18;
  if (v20)
  {
    v21 = v18;
    v22 = v19;
    v35 = 0.0;
    v36 = 0.0;
    v34 = 0.0;
    [MEMORY[0x1E69DCEF8] _convertDampingRatio:&v36 response:&v35 toMass:&v34 stiffness:1.0 damping:0.6];
    v23 = fabs(a2 / (PXPointValueForAxis(a4, v21, v22) - v15));
    v24 = 0.1;
    if (a2 < 0.0)
    {
      v24 = v23;
    }

    if (a2 <= 0.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    v26 = objc_alloc_init(PXCASpringAnimationWorkaround132759829);
    [(CASpringAnimation *)v26 setInitialVelocity:v25];
    [(CASpringAnimation *)v26 setMass:v36];
    [(CASpringAnimation *)v26 setStiffness:v35];
    [(CASpringAnimation *)v26 setDamping:v34];
    v27 = 2.0;
    if (a2 != 0.0)
    {
      v27 = log(0.01 / (fabs(a2) / 1000.0)) / (v10 * 1000.0);
    }

    [(CASpringAnimation *)v26 perceptualDuration];
    [(PXCASpringAnimationWorkaround132759829 *)v26 setDuration:v27 * (1.0 / v28)];
    LODWORD(v29) = 1045220557;
    LODWORD(v30) = 1.0;
    LODWORD(v31) = 1.0;
    v32 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :v29 :v30 :v31];
    [(PXCASpringAnimationWorkaround132759829 *)v26 setTimingFunction:v32];

    [a1 _setContentOffset:v26 animation:{v21, v22}];
  }

  return v20;
}

- (long)px_initialVelocityForDecelerationOffset:()PhotosUICore
{
  v3 = a2 < 0.0;
  [a1 decelerationRate];
  return (dbl_1B4074F10[v3] - log(v4) * a2) * -1000.0;
}

- (uint64_t)px_contentOffsetYFraction
{
  [a1 px_minimumContentOffset];
  [a1 px_maximumContentOffset];
  return [a1 contentOffset];
}

- (double)px_maximumContentOffset
{
  [a1 bounds];
  v3 = v2;
  [a1 px_minimumContentOffset];
  v5 = v4;
  [a1 adjustedContentInset];
  v7 = v6;
  [a1 contentSize];
  v9 = v7 + v8;
  [a1 px_screenScale];
  v11 = round(v9 * v10) / v10 - v3;
  if (v5 >= v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v11;
  }

  [a1 contentSize];
  [a1 px_screenScale];
  return v12;
}

- (double)px_minimumContentOffset
{
  [a1 adjustedContentInset];
  v3 = v2;
  [a1 px_screenScale];
  v5 = round(-(v3 * v4)) / v4;
  [a1 px_screenScale];
  return v5;
}

- (BOOL)px_isPerformingScrollTest
{
  v1 = [a1 scrollTestParameters];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)px_cancelScrollAnimation
{
  [a1 contentOffset];

  return [a1 setContentOffset:0 animated:?];
}

- (uint64_t)px_cancelScrollGesture
{
  result = [a1 isScrollEnabled];
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {

      return [a1 _forcePanGestureToEndImmediately];
    }

    else
    {
      [a1 setScrollEnabled:0];

      return [a1 setScrollEnabled:1];
    }
  }

  return result;
}

- (void)px_scrollDistanceFromEdge:()PhotosUICore
{
  [a1 bounds];
  v6 = v5;
  v8 = v7;
  v11 = v9;
  v12 = v10;
  [a1 contentOffset];
  [a1 _px_currentContentSize];
  [a1 adjustedContentInset];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14.origin.x = v6;
      v14.origin.y = v8;
      v14.size.width = v11;
      v14.size.height = v12;
      CGRectGetWidth(v14);
    }

    else if (a3 == 3)
    {
      v13.origin.x = v6;
      v13.origin.y = v8;
      v13.size.width = v11;
      v13.size.height = v12;
      CGRectGetHeight(v13);
    }
  }
}

- (void)px_adjustInsetsForKeyboardInfo:()PhotosUICore safeAreaInsets:
{
  v8 = a6;
  v9 = [v8 objectForKey:*MEMORY[0x1E69DDFA0]];
  if (v9)
  {
    v10 = [a1 superview];
    [a1 frame];
    [v10 convertRect:0 toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [a1 window];
    [v19 convertRect:0 toView:{v12, v14, v16, v18}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v9 CGRectValue];
    v63.origin.x = v28;
    v63.origin.y = v29;
    v63.size.width = v30;
    v63.size.height = v31;
    v60.origin.x = v21;
    v60.origin.y = v23;
    v60.size.width = v25;
    v60.size.height = v27;
    v61 = CGRectIntersection(v60, v63);
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    height = v61.size.height;
    if (CGRectIsNull(v61) || (v62.origin.x = x, v62.origin.y = y, v62.size.width = width, v62.size.height = height, CGRectIsEmpty(v62)))
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }

    v36 = [a1 window];
    [v36 convertRect:0 fromWindow:{x, y, width, height}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = [a1 superview];
    [v45 convertRect:0 fromView:{v38, v40, v42, v44}];
    v47 = v46;

    [a1 contentInset];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    if (v47 < a4)
    {
      v47 = a4;
    }

    v54 = [v8 objectForKey:*MEMORY[0x1E69DDF40]];
    [v54 doubleValue];
    v56 = v55;

    v57 = [v8 objectForKey:*MEMORY[0x1E69DDF38]];
    v58 = [v57 integerValue];

    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __76__UIScrollView_PhotosUICore__px_adjustInsetsForKeyboardInfo_safeAreaInsets___block_invoke;
    v59[3] = &unk_1E7BB78D0;
    v59[4] = a1;
    v59[5] = v49;
    v59[6] = v51;
    *&v59[7] = v47;
    v59[8] = v53;
    [MEMORY[0x1E69DD250] animateWithDuration:v58 << 16 delay:v59 options:0 animations:v56 completion:0.0];
  }
}

- (uint64_t)px_isDecelerating
{
  if ([a1 isDecelerating])
  {
    return 1;
  }

  return [a1 px_isBouncing];
}

- (double)px_contentOffsetForEdge:()PhotosUICore padding:
{
  [a1 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [a1 contentOffset];
  v18 = v17;
  [a1 _px_currentContentSize];
  v20 = v19;
  [a1 adjustedContentInset];
  if (a7 > 1)
  {
    if (a7 == 2)
    {
      v23 = v22 + a5;
      v28.origin.x = v10;
      v28.origin.y = v12;
      v28.size.width = v14;
      v28.size.height = v16;
      return v23 + v20 - CGRectGetWidth(v28);
    }

    else if (a7 == 3)
    {
      v27.origin.x = v10;
      v27.origin.y = v12;
      v27.size.width = v14;
      v27.size.height = v16;
      CGRectGetHeight(v27);
    }
  }

  else if (!a7)
  {
    return -(v21 + a3);
  }

  return v18;
}

- (uint64_t)px_scrollToEdge:()PhotosUICore animated:
{
  [a1 px_contentOffsetForEdge:?];

  return [a1 px_scrollToContentOffset:a4 animated:?];
}

- (uint64_t)px_isScrolledAtEdge:()PhotosUICore tolerance:
{
  if (a4 < 0.0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"UIScrollView+PhotosUIFoundation.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"tolerance >= 0.0f"}];
  }

  return [a1 _px_isScrolledAtEdge:a3 tolerance:a4];
}

- (uint64_t)px_isScrolledAtEdge:()PhotosUICore
{
  [a1 px_screenScale];
  if (v5 == 0.0)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 0.5 / v5;
  }

  return [a1 px_isScrolledAtEdge:a3 tolerance:v6];
}

- (uint64_t)px_scrollToContentOffset:()PhotosUICore animated:
{
  [a1 px_constrainedContentOffset:?];

  return [a1 setContentOffset:a3 animated:?];
}

- (void)px_constrainedContentOffset:()PhotosUICore
{
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1 _px_currentContentSize];
  [a1 adjustedContentInset];
  [a1 px_screenScale];
  v10.origin.x = v3;
  v10.origin.y = v5;
  v10.size.width = v7;
  v10.size.height = v9;
  CGRectGetWidth(v10);
  v11.origin.x = v3;
  v11.origin.y = v5;
  v11.size.width = v7;
  v11.size.height = v9;
  CGRectGetHeight(v11);
}

+ (double)_convertDampingRatio:()PhotosUICore response:toMass:stiffness:damping:
{
  v7 = 6.28318531 / a2;
  if (a5)
  {
    *a5 = 0x3FF0000000000000;
  }

  v8 = v7 * v7;
  if (a6)
  {
    *a6 = v8;
  }

  if (a7)
  {
    v9 = sqrt(v8);
    result = (v9 + v9) * result;
    *a7 = result;
  }

  return result;
}

@end