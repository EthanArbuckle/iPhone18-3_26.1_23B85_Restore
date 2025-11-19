@interface SBFDashBoardViewMetrics
+ (BOOL)_presentsListBelowDateTime;
+ (CGRect)_reducedPageBoundsFromBounds:(CGRect)a3 forPage:(unint64_t)a4;
+ (CGRect)suggestedFrameForCallToActionLabel:(id)a3 yOffset:(double)a4 inBounds:(CGRect)a5;
+ (CGRect)suggestedFrameForDateTimeViewInScreenCoordinates:(CGRect)a3 centeredX:(BOOL)a4;
+ (CGRect)suggestedFrameForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4;
+ (CGRect)suggestedFrameForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4 insets:(UIEdgeInsets)a5;
+ (CGRect)suggestedFrameForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4 insets:(UIEdgeInsets)a5 scrollsDateTime:(BOOL)a6;
+ (CGRect)suggestedFrameForMediaArtworkForControlsFrame:(CGRect)a3 bottomInset:(double)a4 inPageBounds:(CGRect)a5;
+ (CGRect)suggestedFrameForMediaControlsForPageBounds:(CGRect)a3;
+ (CGRect)suggestedFrameForStatusView:(id)a3 inView:(id)a4 withInsets:(UIEdgeInsets)a5;
+ (UIEdgeInsets)_cachedGlyphInsetsForString:(id)a3 withFont:(id)a4;
+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4;
+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4 scrollsDateTime:(BOOL)a5;
+ (double)_dateTimeMinXForReducedBounds:(CGRect)a3 forPage:(unint64_t)a4;
+ (double)_padSpecificInsets:(SBFDashBoardPadPageInsets *)a3 leading:(BOOL)a4;
+ (double)_padSpecificValueForDevice:(SBFDashBoardOrientationLeadingInsets)a3 leading:(BOOL)a4;
+ (double)_padSpecificValueJ99:(double)a3 otherPad:(double)a4;
+ (double)_phoneSpecificValueN56:(double)a3 n61:(double)a4 n69:(double)a5;
+ (double)_phoneSpecificValueN56:(double)a3 n61:(double)a4 n69:(double)a5 d22:(double)a6;
+ (double)dateBaselineToListY;
+ (double)listInsetXForPage:(unint64_t)a3;
+ (double)listInsetXForPage:(unint64_t)a3 leading:(BOOL)a4;
+ (double)listMinYForPage:(unint64_t)a3;
+ (double)listWidthForPage:(unint64_t)a3;
+ (double)scaledFontSize:(double)a3 withMaximumFontSizeCategory:(id)a4;
+ (double)searchBarWidth;
+ (double)searchClippingLineMaxY;
+ (double)singleLineDateViewBaselineDifferenceY;
+ (double)timeLabelBaselineY;
+ (double)timeLabelScrollPercentForPage:(unint64_t)a3;
+ (double)timeLabelToSubtitleLabelDifferenceY;
+ (double)timeSubtitleBaselineY;
+ (double)timeToListInsetXforPage:(unint64_t)a3;
+ (double)timeToSubtitleLabelBaselineDifferenceY;
+ (id)dateFont;
+ (id)dateOnlyLunarDateFont;
+ (unint64_t)dateTimeLayoutForPage:(unint64_t)a3;
+ (unint64_t)listLayoutForPage:(unint64_t)a3;
@end

@implementation SBFDashBoardViewMetrics

+ (double)timeToSubtitleLabelBaselineDifferenceY
{
  if (timeToSubtitleLabelBaselineDifferenceY_onceToken != -1)
  {
    +[SBFDashBoardViewMetrics timeToSubtitleLabelBaselineDifferenceY];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    return *&timeToSubtitleLabelBaselineDifferenceY_timeToSubtitleLabelBaselineDifferenceY;
  }

  v3 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  if (IsAccessibilityCategory)
  {
    +[SBFLockScreenDateSubtitleView labelFontMetrics];
    result = v5;
    timeToSubtitleLabelBaselineDifferenceY_timeToSubtitleLabelBaselineDifferenceY = *&v5;
  }

  else
  {
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [a1 _padSpecificValueJ99:46.0 otherPad:40.0];
      timeToSubtitleLabelBaselineDifferenceY_timeToSubtitleLabelBaselineDifferenceY = *&result;
    }

    else
    {
      timeToSubtitleLabelBaselineDifferenceY_timeToSubtitleLabelBaselineDifferenceY = 0x4042000000000000;
      return 36.0;
    }
  }

  return result;
}

+ (unint64_t)listLayoutForPage:(unint64_t)a3
{
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return a3 != 2;
  }

  v8 = [a1 _isPortrait];
  v9 = 3;
  if (a3)
  {
    v9 = 0;
  }

  if (a3 == 1)
  {
    v9 = 4;
  }

  if (v8)
  {
    return 2;
  }

  else
  {
    return v9;
  }
}

+ (unint64_t)dateTimeLayoutForPage:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return [a1 _presentsListBelowDateTime] ^ 1;
  }

  return 2;
}

+ (CGRect)suggestedFrameForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4
{
  [a1 suggestedFrameForListForPage:a3 pageBounds:a4.origin.x insets:{a4.origin.y, a4.size.width, a4.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)suggestedFrameForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4 insets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = [a1 listScrollsDateTime];

  [a1 suggestedFrameForListForPage:a3 pageBounds:v15 insets:x scrollsDateTime:{y, width, height, top, left, bottom, right}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (CGRect)suggestedFrameForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4 insets:(UIEdgeInsets)a5 scrollsDateTime:(BOOL)a6
{
  v6 = a6;
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [a1 _reducedPageBoundsFromBounds:? forPage:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v45 = width;
  v46 = height;
  [a1 suggestedContentInsetsForListForPage:a3 pageBounds:v6 scrollsDateTime:{x, y, width, height}];
  v23 = v22;
  v24 = [SBFDashBoardViewMetrics listLayoutForPage:a3];
  v25 = 0.0;
  if (!v6)
  {
    [a1 listMinYForPage:a3];
    v25 = v26 - v23;
  }

  v52.origin.x = v15;
  v52.origin.y = v17;
  v52.size.width = v19;
  v52.size.height = v21;
  v27 = CGRectGetHeight(v52) - v25;
  v28 = [SBFDashBoardViewMetrics layoutUsesMargin:v24];
  v29 = [SBFDashBoardViewMetrics layoutCentersContent:v24];
  v30 = v29;
  if (v28)
  {
    [a1 listWidthForPage:a3];
    v43 = v27;
    v44 = v31;
    if (v30)
    {
      [a1 listInsetXForPage:a3];
    }

    else
    {
      if (v24 == 4)
      {
        v58.origin.x = v15;
        v58.origin.y = v17;
        v58.size.width = v19;
        v58.size.height = v21;
        v40 = CGRectGetWidth(v58) - v44;
        [a1 listInsetXForPage:a3 leading:0];
        v33 = v40 - v41;
        goto LABEL_12;
      }

      if (v24 != 3)
      {
        v42 = [MEMORY[0x1E696AAA8] currentHandler];
        [v42 handleFailureInMethod:a2 object:a1 file:@"SBFDashBoardViewMetrics.m" lineNumber:265 description:{@"The only way to get here should be left or right align, not %lu", v24}];

        v33 = 0.0;
        goto LABEL_12;
      }

      [a1 listInsetXForPage:a3 leading:1];
    }

    v33 = v32;
LABEL_12:
    v55.origin.x = v15;
    v55.origin.y = v17;
    v55.size.width = v19;
    v55.size.height = v21;
    v15 = v33 + CGRectGetMinX(v55);
    v21 = v43;
    v19 = v44;
    goto LABEL_13;
  }

  if (!v29)
  {
    goto LABEL_14;
  }

  v53.origin.x = v15;
  v53.origin.y = v17;
  v53.size.width = v19;
  v53.size.height = v21;
  v54 = CGRectInset(v53, 0.0, 0.0);
  v15 = v54.origin.x;
  v19 = v54.size.width;
  v21 = v27;
LABEL_13:
  v17 = v25;
LABEL_14:
  v34 = v19 - (left + right);
  v35 = v21 - (top + bottom);
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = v45;
    v56.size.height = v46;
    CGRectGetWidth(v56);
    v57.origin.x = left + v15;
    v57.origin.y = top + v17;
    v57.size.width = v34;
    v57.size.height = v35;
    CGRectGetMaxX(v57);
  }

  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [a1 listScrollsDateTime];

  [a1 suggestedContentInsetsForListForPage:a3 pageBounds:v10 scrollsDateTime:{x, y, width, height}];
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)a3 pageBounds:(CGRect)a4 scrollsDateTime:(BOOL)a5
{
  v5 = a5;
  [a1 listMinYForPage:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  v9 = v8;
  if (v5)
  {
    *&v10 = 66.0;
    if (!a3)
    {
      [a1 searchClippingLineMaxY];
      v9 = v9 - v11;
    }
  }

  else if (a3 == 1)
  {
    if ([a1 _presentsListBelowDateTime])
    {
      v9 = 10.0;
    }

    *&v10 = 66.0;
  }

  else
  {
    *&v10 = 0.0;
    if (a3)
    {
      v9 = 0.0;
    }

    else
    {
      [a1 searchClippingLineMaxY];
      v9 = -v12;
    }
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = v9;
  v16 = *&v10;
  result.right = v14;
  result.bottom = v16;
  result.left = v13;
  result.top = v15;
  return result;
}

+ (CGRect)suggestedFrameForMediaControlsForPageBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  [MEMORY[0x1E69DCF98] heightForStyle:1 orientation:v11];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [v15 userInterfaceIdiom];

    if (v3 != 1)
    {
LABEL_3:
      v12 = __sb__runningInSpringBoard();
      if (v12)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v13 = 0;
          v14 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        v11 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v11 userInterfaceIdiom])
        {
          v14 = 0;
          v13 = 1;
          goto LABEL_29;
        }
      }

      v13 = v12 ^ 1;
      v20 = __sb__runningInSpringBoard();
      if (v20)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v12 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v12 _referenceBounds];
      }

      v14 = v20 ^ 1;
      BSSizeRoundForScale();
      if (v21 >= *(MEMORY[0x1E69D4380] + 56))
      {
        if (v14)
        {
          goto LABEL_48;
        }

        goto LABEL_37;
      }

LABEL_29:
      v22 = __sb__runningInSpringBoard();
      v23 = v22;
      if (v22)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          if (v14)
          {
            goto LABEL_48;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v4 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v4 userInterfaceIdiom])
        {
          goto LABEL_47;
        }
      }

      v28 = __sb__runningInSpringBoard();
      v29 = v28;
      if (v28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v6 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v6 _referenceBounds];
      }

      BSSizeRoundForScale();
      if (v29)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_51:
        if (v14)
        {
LABEL_48:

          if ((v13 & 1) == 0)
          {
            goto LABEL_39;
          }

LABEL_38:

          goto LABEL_39;
        }

LABEL_37:
        if (!v13)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v23)
      {
        goto LABEL_51;
      }

LABEL_47:

      if (v14)
      {
        goto LABEL_48;
      }

      goto LABEL_37;
    }
  }

  if ((v11 - 3) <= 1)
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    x = CGRectGetWidth(v31) * 0.5;
    width = width - x;
  }

  v16 = __sb__runningInSpringBoard();
  v17 = v16;
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {

      goto LABEL_39;
    }
  }

  v18 = __sb__runningInSpringBoard();
  v19 = v18;
  if (v18)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 _referenceBounds];
  }

  BSSizeRoundForScale();
  if ((v19 & 1) == 0)
  {
  }

  if ((v17 & 1) == 0)
  {
  }

LABEL_39:
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetMinX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  CGRectGetWidth(v33);
  UIRectInset();
  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

+ (CGRect)suggestedFrameForMediaArtworkForControlsFrame:(CGRect)a3 bottomInset:(double)a4 inPageBounds:(CGRect)a5
{
  CGRectGetMaxY(a3);
  v6 = 0x1E69DC000;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    CGRectGetWidth(a5);
    CGRectGetHeight(a5);
    goto LABEL_17;
  }

  if (([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) <= 1)
  {
    CGRectGetWidth(a5);
  }

  v9 = __sb__runningInSpringBoard();
  v10 = v9;
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v6 userInterfaceIdiom] != 1)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v11 = __sb__runningInSpringBoard();
  v12 = v11;
  if (v11)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 _referenceBounds];
  }

  BSSizeRoundForScale();
  if ((v12 & 1) == 0)
  {
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:

  UIRectCenteredXInRectScale();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (CGRect)suggestedFrameForCallToActionLabel:(id)a3 yOffset:(double)a4 inBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [a3 sizeThatFits:{a5.size.width + -48.0, 1.79769313e308}];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetMaxY(v13);
  UIRectCenteredXInRectScale();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

+ (double)searchBarWidth
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SBFDashBoardViewMetrics_searchBarWidth__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (searchBarWidth_onceToken != -1)
  {
    dispatch_once(&searchBarWidth_onceToken, block);
  }

  return *&searchBarWidth_sSearchBarWidth;
}

void __41__SBFDashBoardViewMetrics_searchBarWidth__block_invoke(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = 556.0;
  if (v2)
  {
    v3 = 425.0;
  }

  searchBarWidth_sSearchBarWidth = *&v3;
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v6 = *&searchBarWidth_sSearchBarWidth;
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 _referenceBounds];
    Width = CGRectGetWidth(v12);
    [*(a1 + 32) listInsetXForPage:0];
    v10 = Width + v9 * -2.0;

    if (v6 <= v10)
    {
      *&v11 = v6;
    }

    else
    {
      *&v11 = v10;
    }

    searchBarWidth_sSearchBarWidth = v11;
  }
}

+ (double)timeLabelScrollPercentForPage:(unint64_t)a3
{
  v3 = [a1 dateTimeLayoutForPage:a3];
  if (v3 == 2)
  {
    v5 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
    result = 1.0;
    v6 = -1.0;
  }

  else
  {
    result = 0.0;
    if (v3 != 1)
    {
      return result;
    }

    v5 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
    result = -1.0;
    v6 = 1.0;
  }

  if (v5)
  {
    return v6;
  }

  return result;
}

+ (CGRect)suggestedFrameForDateTimeViewInScreenCoordinates:(CGRect)a3 centeredX:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a1 _reducedPageBoundsFromBounds:0 forPage:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  rect = v10;
  if ([a1 _presentsListBelowDateTime])
  {
    [a1 suggestedFrameForListForPage:0 pageBounds:{x, y, width, height}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [a1 timeToListInsetXforPage:0];
    v26 = MEMORY[0x1E69DDA98];
    v27 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v28 = v19;
    v29 = v21;
    v30 = v23;
    v31 = v25;
    if (v27 == 1)
    {
      CGRectGetMinX(*&v28);
    }

    else
    {
      CGRectGetMaxX(*&v28);
    }

    v33 = x;
    v51 = height;
    [a1 suggestedFrameForListForPage:1 pageBounds:{x, y, width, height}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [a1 timeToListInsetXforPage:1];
    v42 = [*v26 userInterfaceLayoutDirection];
    v43 = v35;
    v44 = v37;
    v45 = v39;
    v46 = v41;
    if (v42 == 1)
    {
      CGRectGetMaxX(*&v43);
    }

    else
    {
      CGRectGetMinX(*&v43);
    }

    height = v51;
    if (![a1 dateTimeLayoutForPage:1])
    {
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v56.size.height = v51;
      CGRectGetMaxX(v56);
    }

    if (v4)
    {
LABEL_17:
      v57.origin.x = v33;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      CGRectGetWidth(v57);
      UIRectCenteredXInRect();
      CGRectGetMinX(v58);
    }
  }

  else
  {
    [a1 _dateTimeMinXForReducedBounds:0 forPage:{v11, v13, v15, v17}];
    v32 = MEMORY[0x1E69DDA98];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v54.origin.x = v11;
      v54.origin.y = v13;
      v54.size.width = v15;
      v54.size.height = v17;
      CGRectGetWidth(v54);
    }

    [a1 _dateTimeMinXForReducedBounds:1 forPage:{v11, v13, v15, v17}];
    v33 = x;
    if ([*v32 userInterfaceLayoutDirection] == 1)
    {
      v55.origin.x = rect;
      v55.origin.y = v13;
      v55.size.width = v15;
      v55.size.height = v17;
      CGRectGetWidth(v55);
    }

    if (v4)
    {
      goto LABEL_17;
    }
  }

  [a1 timeLabelBaselineY];
  +[SBFLockScreenDateView timeFontMetrics];
  [a1 timeSubtitleBaselineY];
  +[SBFLockScreenDateSubtitleView labelFontMetrics];
  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

+ (double)_dateTimeMinXForReducedBounds:(CGRect)a3 forPage:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [a1 dateTimeLayoutForPage:?];
  if (v10)
  {
    if (v10 == 2)
    {
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      MaxX = CGRectGetMaxX(v15);
      [a1 listInsetXForPage:a4];
      return MaxX - v13;
    }

    else if (v10 == 1)
    {

      [a1 listInsetXForPage:a4];
    }
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    return CGRectGetWidth(v16) * 0.5;
  }

  return result;
}

+ (double)timeLabelBaselineY
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SBFDashBoardViewMetrics_timeLabelBaselineY__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (timeLabelBaselineY_onceToken != -1)
  {
    dispatch_once(&timeLabelBaselineY_onceToken, block);
  }

  [a1 searchClippingLineMaxY];
  +[SBFLockScreenDateView timeFontMetrics];
  SBFMainScreenScale();
  BSFloatRoundForScale();
  return result;
}

uint64_t __45__SBFDashBoardViewMetrics_timeLabelBaselineY__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = *(a1 + 32);
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    result = [v4 _padSpecificValueJ99:192.0 otherPad:166.0];
  }

  else
  {
    result = [v4 _phoneSpecificValueN56:154.0 n61:140.0 n69:140.0 d22:175.0];
  }

  timeLabelBaselineY_timeLabelMinimumOffsetFromTopBaselineY = v6;
  return result;
}

+ (double)timeLabelToSubtitleLabelDifferenceY
{
  if (timeLabelToSubtitleLabelDifferenceY_onceToken != -1)
  {
    +[SBFDashBoardViewMetrics timeLabelToSubtitleLabelDifferenceY];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    return *&timeLabelToSubtitleLabelDifferenceY_timeLabelToSubtitleLabelDifferenceY;
  }

  +[SBFLockScreenDateView timeFontMetrics];
  v4 = v3;
  [a1 timeToSubtitleLabelBaselineDifferenceY];
  v6 = v4 + v5;
  +[SBFLockScreenDateSubtitleView labelFontMetrics];
  result = v6 - v7;
  timeLabelToSubtitleLabelDifferenceY_timeLabelToSubtitleLabelDifferenceY = *&result;
  return result;
}

void __62__SBFDashBoardViewMetrics_timeLabelToSubtitleLabelDifferenceY__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_17_1];
}

void __65__SBFDashBoardViewMetrics_timeToSubtitleLabelBaselineDifferenceY__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_21];
}

+ (UIEdgeInsets)_cachedGlyphInsetsForString:(id)a3 withFont:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (_cachedGlyphInsetsForString_withFont__onceToken != -1)
  {
    +[SBFDashBoardViewMetrics _cachedGlyphInsetsForString:withFont:];
  }

  v7 = [_cachedGlyphInsetsForString_withFont__leadingInsetForNumber objectForKeyedSubscript:v5];
  v8 = [_cachedGlyphInsetsForString_withFont__trailingInsetForNumber objectForKeyedSubscript:v5];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v32 = *MEMORY[0x1E69DB648];
    v33[0] = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    [v5 boundingRectWithSize:8 options:v11 attributes:0 context:{*MEMORY[0x1E695F060], v13}];
    UIRectIntegralWithScale();
    v15 = v14;
    v17 = v16;
    [v5 boundingRectWithSize:0 options:v11 attributes:0 context:{v12, v13}];
    UIRectIntegralWithScale();
    v19 = v18;
    v21 = v15 - v20;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v15 - v20];

    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v19 - v17 - v21];

    [_cachedGlyphInsetsForString_withFont__leadingInsetForNumber setObject:v22 forKeyedSubscript:v5];
    [_cachedGlyphInsetsForString_withFont__trailingInsetForNumber setObject:v23 forKeyedSubscript:v5];

    v9 = v23;
    v7 = v22;
  }

  [v7 floatValue];
  v25 = v24;
  [v9 floatValue];
  v27 = v26;

  v28 = v25;
  v29 = v27;
  v30 = 0.0;
  v31 = 0.0;
  result.right = v29;
  result.bottom = v31;
  result.left = v28;
  result.top = v30;
  return result;
}

uint64_t __64__SBFDashBoardViewMetrics__cachedGlyphInsetsForString_withFont___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v1 = _cachedGlyphInsetsForString_withFont__leadingInsetForNumber;
  _cachedGlyphInsetsForString_withFont__leadingInsetForNumber = v0;

  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v3 = _cachedGlyphInsetsForString_withFont__trailingInsetForNumber;
  _cachedGlyphInsetsForString_withFont__trailingInsetForNumber = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (double)timeToListInsetXforPage:(unint64_t)a3
{
  v4 = [a1 _presentsListBelowDateTime];
  result = 0.0;
  if (v4)
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    result = 16.0;
    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v8 = __sb__runningInSpringBoard();
      v9 = v8;
      if (v8)
      {
        if (SBFEffectiveDeviceClass())
        {
          v10 = SBFEffectiveDeviceClass();
          result = 18.0;
          if (v10 != 1)
          {
            return result;
          }
        }
      }

      else
      {
        v7 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v7 userInterfaceIdiom])
        {

          return 18.0;
        }
      }

      v11 = __sb__runningInSpringBoard();
      v12 = v11;
      if (v11)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v3 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v3 _referenceBounds];
      }

      BSSizeRoundForScale();
      v14 = v13 >= *(MEMORY[0x1E69D4380] + 40);
      if ((v12 & 1) == 0)
      {
      }

      if (v9)
      {
        result = 18.0;
        if (!v14)
        {
          return result;
        }
      }

      else
      {

        result = 18.0;
        if (!v14)
        {
          return result;
        }
      }

      return 24.0;
    }
  }

  return result;
}

+ (double)timeSubtitleBaselineY
{
  [a1 timeLabelBaselineY];
  v4 = v3;
  [a1 timeToSubtitleLabelBaselineDifferenceY];
  return v4 + v5;
}

+ (id)dateOnlyLunarDateFont
{
  if (dateOnlyLunarDateFont_onceToken != -1)
  {
    +[SBFDashBoardViewMetrics dateOnlyLunarDateFont];
  }

  if (dateOnlyLunarDateFont_dateOnlyLunarFont)
  {
    goto LABEL_29;
  }

  v4 = MEMORY[0x1E69DB878];
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 23.0;
  }

  else
  {
    v7 = 15.0;
  }

  v8 = __sb__runningInSpringBoard();
  if (v8)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
LABEL_24:
      v12 = MEMORY[0x1E69DDC28];
      goto LABEL_25;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v5 userInterfaceIdiom])
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      goto LABEL_24;
    }
  }

  v11 = v8 ^ 1;
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      v10 = 0;
      v12 = MEMORY[0x1E69DDC30];
      goto LABEL_25;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v8 userInterfaceIdiom])
    {
      v10 = 0;
      v12 = MEMORY[0x1E69DDC30];
      v9 = 1;
      goto LABEL_25;
    }
  }

  v9 = v2 ^ 1;
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v2 _referenceBounds];
  }

  v10 = v13 ^ 1;
  BSSizeRoundForScale();
  if (v14 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_24;
  }

  v12 = MEMORY[0x1E69DDC30];
LABEL_25:
  [a1 scaledFontSize:*v12 withMaximumFontSizeCategory:v7];
  v15 = [v4 systemFontOfSize:?];
  v16 = dateOnlyLunarDateFont_dateOnlyLunarFont;
  dateOnlyLunarDateFont_dateOnlyLunarFont = v15;

  if (v10)
  {

    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else if (!v9)
  {
LABEL_27:
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v11)
  {
LABEL_28:
  }

LABEL_29:
  v17 = dateOnlyLunarDateFont_dateOnlyLunarFont;

  return v17;
}

void __48__SBFDashBoardViewMetrics_dateOnlyLunarDateFont__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_30];
}

void __48__SBFDashBoardViewMetrics_dateOnlyLunarDateFont__block_invoke_2()
{
  v0 = dateOnlyLunarDateFont_dateOnlyLunarFont;
  dateOnlyLunarDateFont_dateOnlyLunarFont = 0;
}

+ (id)dateFont
{
  if (dateFont_onceToken != -1)
  {
    +[SBFDashBoardViewMetrics dateFont];
  }

  v3 = dateFont_dateFont;
  if (!dateFont_dateFont)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [a1 _padSpecificValueJ99:66.0 otherPad:56.0];
    }

    else
    {
      [a1 _phoneSpecificValueN56:42.0 n61:36.0 n69:36.0];
    }

    v6 = MEMORY[0x1E69DB878];
    [a1 scaledFontSize:*MEMORY[0x1E69DDC40] withMaximumFontSizeCategory:?];
    v7 = [v6 _lightSystemFontOfSize:?];
    v8 = dateFont_dateFont;
    dateFont_dateFont = v7;

    v3 = dateFont_dateFont;
  }

  return v3;
}

void __35__SBFDashBoardViewMetrics_dateFont__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_35];
}

void __35__SBFDashBoardViewMetrics_dateFont__block_invoke_2()
{
  v0 = dateFont_dateFont;
  dateFont_dateFont = 0;
}

+ (double)singleLineDateViewBaselineDifferenceY
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SBFDashBoardViewMetrics_singleLineDateViewBaselineDifferenceY__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (singleLineDateViewBaselineDifferenceY_onceToken != -1)
  {
    dispatch_once(&singleLineDateViewBaselineDifferenceY_onceToken, block);
  }

  return *&singleLineDateViewBaselineDifferenceY_singleLineDateViewBaselineDifferenceY;
}

void __64__SBFDashBoardViewMetrics_singleLineDateViewBaselineDifferenceY__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [*(a1 + 32) _padSpecificValueJ99:-3.0 otherPad:-1.0];
    singleLineDateViewBaselineDifferenceY_singleLineDateViewBaselineDifferenceY = v4;
  }
}

+ (double)dateBaselineToListY
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SBFDashBoardViewMetrics_dateBaselineToListY__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (dateBaselineToListY_onceToken != -1)
  {
    dispatch_once(&dateBaselineToListY_onceToken, block);
  }

  return *&dateBaselineToListY_dateBaselineToListY;
}

void __46__SBFDashBoardViewMetrics_dateBaselineToListY__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = 29.0;
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [*(a1 + 32) _padSpecificValueJ99:52.0 otherPad:34.0];
  }

  dateBaselineToListY_dateBaselineToListY = *&v4;
}

+ (double)listMinYForPage:(unint64_t)a3
{
  if ([a1 _presentsListBelowDateTime])
  {
    [a1 timeLabelBaselineY];
    v5 = v4;
    [a1 timeToSubtitleLabelBaselineDifferenceY];
    v7 = v5 + v6;
    [a1 dateBaselineToListY];
    v9 = v7 + v8;
    if (listMinYForPage__onceToken != -1)
    {
      +[SBFDashBoardViewMetrics listMinYForPage:];
    }

    return v9 + *&listMinYForPage__alternateCalendarHeight;
  }

  else
  {

    [a1 _phoneSpecificValueN56:78.0 n61:58.0 n69:32.0];
  }

  return result;
}

void __43__SBFDashBoardViewMetrics_listMinYForPage___block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E6966B78];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_39_0];
}

uint64_t __43__SBFDashBoardViewMetrics_listMinYForPage___block_invoke_2()
{
  result = +[SBFLockScreenAlternateDateLabel showAlternateDate];
  v1 = 0;
  if (result)
  {
    result = +[SBFLockScreenDateSubtitleDateView subtitleLabelToLunarDateLabelBaselineDifferenceY];
  }

  listMinYForPage__alternateCalendarHeight = v1;
  return result;
}

+ (BOOL)_presentsListBelowDateTime
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  return [a1 _isPortrait];
}

+ (double)searchClippingLineMaxY
{
  if (searchClippingLineMaxY_onceToken != -1)
  {
    +[SBFDashBoardViewMetrics searchClippingLineMaxY];
  }

  return *&searchClippingLineMaxY_searchClippingLineMaxY;
}

void __49__SBFDashBoardViewMetrics_searchClippingLineMaxY__block_invoke()
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v0 = 68.0;
    }

    else if (SBFEffectiveHomeButtonType() == 2)
    {
      v0 = 92.0;
    }

    else
    {
      v0 = 68.0;
    }
  }

  else
  {
    v1 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v1 userInterfaceIdiom])
    {
      v0 = 68.0;
    }

    else if (SBFEffectiveHomeButtonType() == 2)
    {
      v0 = 92.0;
    }

    else
    {
      v0 = 68.0;
    }
  }

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = 72.0;
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v4 = v0;
  }

  searchClippingLineMaxY_searchClippingLineMaxY = *&v4;
}

+ (double)_phoneSpecificValueN56:(double)a3 n61:(double)a4 n69:(double)a5
{
  v10 = __sb__runningInSpringBoard();
  v11 = v10;
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v5 userInterfaceIdiom])
    {

      goto LABEL_15;
    }
  }

  v12 = __sb__runningInSpringBoard();
  v13 = v12;
  if (v12)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 _referenceBounds];
  }

  BSSizeRoundForScale();
  v15 = v14;
  v16 = *(MEMORY[0x1E69D4380] + 48);
  if ((v13 & 1) == 0)
  {
  }

  if ((v11 & 1) == 0)
  {
  }

  if (v15 >= v16)
  {
    return a3;
  }

LABEL_15:
  v17 = __sb__runningInSpringBoard();
  v18 = v17;
  if (!v17)
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    if (![v5 userInterfaceIdiom])
    {
      goto LABEL_22;
    }

    return a5;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    return a5;
  }

LABEL_22:
  v19 = __sb__runningInSpringBoard();
  v20 = v19;
  if (v19)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 _referenceBounds];
  }

  BSSizeRoundForScale();
  v22 = v21 >= *(MEMORY[0x1E69D4380] + 40);
  if ((v20 & 1) == 0)
  {
  }

  if (v18)
  {
    a3 = a5;
    if (!v22)
    {
      return a3;
    }

    return a4;
  }

  a3 = a5;
  if (v22)
  {
    return a4;
  }

  return a3;
}

+ (double)_phoneSpecificValueN56:(double)a3 n61:(double)a4 n69:(double)a5 d22:(double)a6
{
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
      return a6;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v12 userInterfaceIdiom])
    {
    }

    else
    {
      v6 = SBFEffectiveHomeButtonType();

      if (v6 == 2)
      {
        return a6;
      }
    }
  }

  v13 = __sb__runningInSpringBoard();
  v14 = v13;
  if (v13)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v6 userInterfaceIdiom])
    {

      goto LABEL_24;
    }
  }

  v15 = __sb__runningInSpringBoard();
  v16 = v15;
  if (v15)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 _referenceBounds];
  }

  BSSizeRoundForScale();
  v18 = v17;
  v19 = *(MEMORY[0x1E69D4380] + 48);
  if ((v16 & 1) == 0)
  {
  }

  if ((v14 & 1) == 0)
  {
  }

  v20 = v18 < v19;
  a6 = a3;
  if (v20)
  {
LABEL_24:
    v21 = __sb__runningInSpringBoard();
    v22 = v21;
    if (v21)
    {
      if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E69DC938] currentDevice];
      if (![v6 userInterfaceIdiom])
      {
LABEL_31:
        v23 = __sb__runningInSpringBoard();
        v24 = v23;
        if (v23)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v7 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v7 _referenceBounds];
        }

        BSSizeRoundForScale();
        v26 = v25 >= *(MEMORY[0x1E69D4380] + 40);
        if ((v24 & 1) == 0)
        {
        }

        if (v22)
        {
          a6 = a5;
          if (!v26)
          {
            return a6;
          }
        }

        else
        {

          a6 = a5;
          if (!v26)
          {
            return a6;
          }
        }

        return a4;
      }
    }

    return a5;
  }

  return a6;
}

+ (double)_padSpecificValueJ99:(double)a3 otherPad:(double)a4
{
  v8 = __sb__runningInSpringBoard();
  v9 = v8;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return a4;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] != 1)
    {
LABEL_13:

      return a4;
    }
  }

  v10 = __sb__runningInSpringBoard();
  v11 = v10;
  if (v10)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v12 >= *(MEMORY[0x1E69D4380] + 280))
  {
    a4 = a3;
  }

  if ((v11 & 1) == 0)
  {
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  return a4;
}

+ (double)_padSpecificInsets:(SBFDashBoardPadPageInsets *)a3 leading:(BOOL)a4
{
  v6 = a4;
  v9 = __sb__runningInSpringBoard();
  v10 = v9;
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] != 1)
    {

      goto LABEL_15;
    }
  }

  v11 = __sb__runningInSpringBoard();
  v12 = v11;
  if (v11)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 _referenceBounds];
  }

  BSSizeRoundForScale();
  v14 = v13;
  v15 = *(MEMORY[0x1E69D4380] + 280);
  if ((v12 & 1) == 0)
  {
  }

  if ((v10 & 1) == 0)
  {
  }

  if (v14 >= v15)
  {
    p_var2 = &a3->var2;
    v17 = 88;
    v18 = 80;
    v19 = 72;
    goto LABEL_30;
  }

LABEL_15:
  v20 = __sb__runningInSpringBoard();
  v21 = v20;
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] != 1)
    {

      goto LABEL_29;
    }
  }

  v22 = __sb__runningInSpringBoard();
  v23 = v22;
  if (v22)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 _referenceBounds];
  }

  BSSizeRoundForScale();
  v25 = v24;
  v26 = *(MEMORY[0x1E69D4380] + 264);
  if ((v23 & 1) == 0)
  {
  }

  if ((v21 & 1) == 0)
  {
  }

  if (v25 >= v26)
  {
    p_var2 = &a3->var1;
    v17 = 56;
    v18 = 48;
    v19 = 40;
    goto LABEL_30;
  }

LABEL_29:
  v17 = 24;
  v18 = 16;
  v19 = 8;
  p_var2 = a3;
LABEL_30:
  var0 = p_var2->var0.var0;
  v28 = *(&a3->var0.var0 + v19);
  v29 = *(&a3->var0.var0 + v18);
  v30 = *(&a3->var0.var0 + v17);

  [a1 _padSpecificValueForDevice:v6 leading:{var0, v28, v29, v30}];
  return result;
}

+ (double)_padSpecificValueForDevice:(SBFDashBoardOrientationLeadingInsets)a3 leading:(BOOL)a4
{
  v4 = a4;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = [a1 _isPortrait];
  if (v4)
  {
    result = var0;
  }

  else
  {
    result = var2;
  }

  if (!v8)
  {
    return var1;
  }

  return result;
}

+ (double)listInsetXForPage:(unint64_t)a3
{
  v4 = [a1 listLayoutForPage:a3] - 3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = v6 & 0xFFFFFFFFFFFFFFFBLL;
  if (v4 > 1)
  {
    result = 8.0;
    if (v7 == 1)
    {
      return 0.0;
    }
  }

  else
  {
    v8 = [a1 _isPortrait];
    if (v7 == 1)
    {
      result = 69.0;
      if (v8)
      {
        return 56.0;
      }
    }

    else
    {
      result = 8.0;
      if ((v8 & 1) == 0)
      {

        [a1 _phoneSpecificValueN56:79.0 n61:69.0 n69:54.0];
      }
    }
  }

  return result;
}

+ (double)listInsetXForPage:(unint64_t)a3 leading:(BOOL)a4
{
  v4 = a4;
  v6 = [a1 listLayoutForPage:a3] - 3;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = v8 & 0xFFFFFFFFFFFFFFFBLL;
  if (v6 > 1)
  {
    result = 8.0;
    if (v9 == 1)
    {
      return 0.0;
    }
  }

  else if (v9 == 1)
  {
    v12[0] = xmmword_1BEAD4030;
    v12[1] = xmmword_1BEAD4040;
    v12[2] = vdupq_n_s64(0x4051400000000000uLL);
    v12[3] = vdupq_n_s64(0x4050000000000000uLL);
    v12[4] = xmmword_1BEAD4050;
    v12[5] = vdupq_n_s64(0x4054000000000000uLL);
    [a1 _padSpecificInsets:v12 leading:v4];
  }

  else
  {
    v11 = [a1 _isPortrait];
    result = 8.0;
    if ((v11 & 1) == 0)
    {

      [a1 _phoneSpecificValueN56:79.0 n61:69.0 n69:54.0];
    }
  }

  return result;
}

+ (double)listWidthForPage:(unint64_t)a3
{
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    result = 0.0;
    if (a3 <= 1)
    {
      v8 = _os_feature_enabled_impl();
      result = 556.0;
      if (v8)
      {
        return 425.0;
      }
    }
  }

  else if ([a1 _isPortrait] || objc_msgSend(a1, "_presentsListBelowDateTime"))
  {

    [a1 searchBarWidth];
  }

  else
  {
    return 320.0;
  }

  return result;
}

+ (CGRect)suggestedFrameForStatusView:(id)a3 inView:(id)a4 withInsets:(UIEdgeInsets)a5
{
  if (a3 && a4)
  {
    right = a5.right;
    left = a5.left;
    v8 = a3;
    [a4 bounds];
    if (left >= right)
    {
      v10 = left;
    }

    else
    {
      v10 = right;
    }

    [v8 sizeThatFits:{v9 + fmax(v10, 25.0) * -2.0}];

    UIRectInset();
    SBFMainScreenScale();
    BSRectRoundForScale();
  }

  else
  {
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (CGRect)_reducedPageBoundsFromBounds:(CGRect)a3 forPage:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_10;
  }

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v12 = CGRectGetWidth(v23);
  [a1 listInsetXForPage:a4];
  v14 = v12 + v13 * -2.0;
  [a1 listWidthForPage:a4];
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [a1 listLayoutForPage:a4];
  if (![a1 layoutUsesMargin:v17])
  {
    v14 = v16;
  }

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v18 = CGRectGetWidth(v24) - v14;
  if (v18 > 0.0)
  {
    if ([a1 layoutCentersContent:v17])
    {
      x = x + v18 * 0.5;
    }
  }

  else
  {
LABEL_10:
    v14 = width;
  }

  v19 = x;
  v20 = y;
  v21 = v14;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (double)scaledFontSize:(double)a3 withMaximumFontSizeCategory:(id)a4
{
  v5 = a4;
  v6 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(v6, v5);

  v8 = MEMORY[0x1E69DB878];
  v9 = *MEMORY[0x1E69DDCF8];
  if (v7 == NSOrderedAscending)
  {
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  else
  {
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v5];
    v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v10];
  }

  [v11 _scaledValueForValue:a3];
  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v14 = v13;

  return v14;
}

@end