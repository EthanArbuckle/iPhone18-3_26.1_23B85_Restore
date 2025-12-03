@interface SBFDashBoardViewMetrics
+ (BOOL)_presentsListBelowDateTime;
+ (CGRect)_reducedPageBoundsFromBounds:(CGRect)bounds forPage:(unint64_t)page;
+ (CGRect)suggestedFrameForCallToActionLabel:(id)label yOffset:(double)offset inBounds:(CGRect)bounds;
+ (CGRect)suggestedFrameForDateTimeViewInScreenCoordinates:(CGRect)coordinates centeredX:(BOOL)x;
+ (CGRect)suggestedFrameForListForPage:(unint64_t)page pageBounds:(CGRect)bounds;
+ (CGRect)suggestedFrameForListForPage:(unint64_t)page pageBounds:(CGRect)bounds insets:(UIEdgeInsets)insets;
+ (CGRect)suggestedFrameForListForPage:(unint64_t)page pageBounds:(CGRect)bounds insets:(UIEdgeInsets)insets scrollsDateTime:(BOOL)time;
+ (CGRect)suggestedFrameForMediaArtworkForControlsFrame:(CGRect)frame bottomInset:(double)inset inPageBounds:(CGRect)bounds;
+ (CGRect)suggestedFrameForMediaControlsForPageBounds:(CGRect)bounds;
+ (CGRect)suggestedFrameForStatusView:(id)view inView:(id)inView withInsets:(UIEdgeInsets)insets;
+ (UIEdgeInsets)_cachedGlyphInsetsForString:(id)string withFont:(id)font;
+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)page pageBounds:(CGRect)bounds;
+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)page pageBounds:(CGRect)bounds scrollsDateTime:(BOOL)time;
+ (double)_dateTimeMinXForReducedBounds:(CGRect)bounds forPage:(unint64_t)page;
+ (double)_padSpecificInsets:(SBFDashBoardPadPageInsets *)insets leading:(BOOL)leading;
+ (double)_padSpecificValueForDevice:(SBFDashBoardOrientationLeadingInsets)device leading:(BOOL)leading;
+ (double)_padSpecificValueJ99:(double)j99 otherPad:(double)pad;
+ (double)_phoneSpecificValueN56:(double)n56 n61:(double)n61 n69:(double)n69;
+ (double)_phoneSpecificValueN56:(double)n56 n61:(double)n61 n69:(double)n69 d22:(double)d22;
+ (double)dateBaselineToListY;
+ (double)listInsetXForPage:(unint64_t)page;
+ (double)listInsetXForPage:(unint64_t)page leading:(BOOL)leading;
+ (double)listMinYForPage:(unint64_t)page;
+ (double)listWidthForPage:(unint64_t)page;
+ (double)scaledFontSize:(double)size withMaximumFontSizeCategory:(id)category;
+ (double)searchBarWidth;
+ (double)searchClippingLineMaxY;
+ (double)singleLineDateViewBaselineDifferenceY;
+ (double)timeLabelBaselineY;
+ (double)timeLabelScrollPercentForPage:(unint64_t)page;
+ (double)timeLabelToSubtitleLabelDifferenceY;
+ (double)timeSubtitleBaselineY;
+ (double)timeToListInsetXforPage:(unint64_t)page;
+ (double)timeToSubtitleLabelBaselineDifferenceY;
+ (id)dateFont;
+ (id)dateOnlyLunarDateFont;
+ (unint64_t)dateTimeLayoutForPage:(unint64_t)page;
+ (unint64_t)listLayoutForPage:(unint64_t)page;
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

  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    +[SBFLockScreenDateSubtitleView labelFontMetrics];
    result = v5;
    timeToSubtitleLabelBaselineDifferenceY_timeToSubtitleLabelBaselineDifferenceY = *&v5;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [self _padSpecificValueJ99:46.0 otherPad:40.0];
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

+ (unint64_t)listLayoutForPage:(unint64_t)page
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return page != 2;
  }

  _isPortrait = [self _isPortrait];
  v9 = 3;
  if (page)
  {
    v9 = 0;
  }

  if (page == 1)
  {
    v9 = 4;
  }

  if (_isPortrait)
  {
    return 2;
  }

  else
  {
    return v9;
  }
}

+ (unint64_t)dateTimeLayoutForPage:(unint64_t)page
{
  if (page == 2)
  {
    return 1;
  }

  if (page == 1)
  {
    return [self _presentsListBelowDateTime] ^ 1;
  }

  return 2;
}

+ (CGRect)suggestedFrameForListForPage:(unint64_t)page pageBounds:(CGRect)bounds
{
  [self suggestedFrameForListForPage:page pageBounds:bounds.origin.x insets:{bounds.origin.y, bounds.size.width, bounds.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)suggestedFrameForListForPage:(unint64_t)page pageBounds:(CGRect)bounds insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  listScrollsDateTime = [self listScrollsDateTime];

  [self suggestedFrameForListForPage:page pageBounds:listScrollsDateTime insets:x scrollsDateTime:{y, width, height, top, left, bottom, right}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (CGRect)suggestedFrameForListForPage:(unint64_t)page pageBounds:(CGRect)bounds insets:(UIEdgeInsets)insets scrollsDateTime:(BOOL)time
{
  timeCopy = time;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [self _reducedPageBoundsFromBounds:? forPage:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v45 = width;
  v46 = height;
  [self suggestedContentInsetsForListForPage:page pageBounds:timeCopy scrollsDateTime:{x, y, width, height}];
  v23 = v22;
  v24 = [SBFDashBoardViewMetrics listLayoutForPage:page];
  v25 = 0.0;
  if (!timeCopy)
  {
    [self listMinYForPage:page];
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
    [self listWidthForPage:page];
    v43 = v27;
    v44 = v31;
    if (v30)
    {
      [self listInsetXForPage:page];
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
        [self listInsetXForPage:page leading:0];
        v33 = v40 - v41;
        goto LABEL_12;
      }

      if (v24 != 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBFDashBoardViewMetrics.m" lineNumber:265 description:{@"The only way to get here should be left or right align, not %lu", v24}];

        v33 = 0.0;
        goto LABEL_12;
      }

      [self listInsetXForPage:page leading:1];
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

+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)page pageBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  listScrollsDateTime = [self listScrollsDateTime];

  [self suggestedContentInsetsForListForPage:page pageBounds:listScrollsDateTime scrollsDateTime:{x, y, width, height}];
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

+ (UIEdgeInsets)suggestedContentInsetsForListForPage:(unint64_t)page pageBounds:(CGRect)bounds scrollsDateTime:(BOOL)time
{
  timeCopy = time;
  [self listMinYForPage:{bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}];
  v9 = v8;
  if (timeCopy)
  {
    *&v10 = 66.0;
    if (!page)
    {
      [self searchClippingLineMaxY];
      v9 = v9 - v11;
    }
  }

  else if (page == 1)
  {
    if ([self _presentsListBelowDateTime])
    {
      v9 = 10.0;
    }

    *&v10 = 66.0;
  }

  else
  {
    *&v10 = 0.0;
    if (page)
    {
      v9 = 0.0;
    }

    else
    {
      [self searchClippingLineMaxY];
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

+ (CGRect)suggestedFrameForMediaControlsForPageBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  activeInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  [MEMORY[0x1E69DCF98] heightForStyle:1 orientation:activeInterfaceOrientation];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
LABEL_3:
      mainScreen = __sb__runningInSpringBoard();
      if (mainScreen)
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
        activeInterfaceOrientation = [MEMORY[0x1E69DC938] currentDevice];
        if ([activeInterfaceOrientation userInterfaceIdiom])
        {
          v14 = 0;
          v13 = 1;
          goto LABEL_29;
        }
      }

      v13 = mainScreen ^ 1;
      v20 = __sb__runningInSpringBoard();
      if (v20)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen _referenceBounds];
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
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice2 userInterfaceIdiom])
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
        mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen2 _referenceBounds];
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

  if ((activeInterfaceOrientation - 3) <= 1)
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
    userInterfaceIdiom = [MEMORY[0x1E69DC938] currentDevice];
    if ([userInterfaceIdiom userInterfaceIdiom] != 1)
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
    mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen3 _referenceBounds];
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

+ (CGRect)suggestedFrameForMediaArtworkForControlsFrame:(CGRect)frame bottomInset:(double)inset inPageBounds:(CGRect)bounds
{
  CGRectGetMaxY(frame);
  currentDevice2 = 0x1E69DC000;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    CGRectGetWidth(bounds);
    CGRectGetHeight(bounds);
    goto LABEL_17;
  }

  if (([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) <= 1)
  {
    CGRectGetWidth(bounds);
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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

+ (CGRect)suggestedFrameForCallToActionLabel:(id)label yOffset:(double)offset inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [label sizeThatFits:{bounds.size.width + -48.0, 1.79769313e308}];
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
  block[4] = self;
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

+ (double)timeLabelScrollPercentForPage:(unint64_t)page
{
  v3 = [self dateTimeLayoutForPage:page];
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

+ (CGRect)suggestedFrameForDateTimeViewInScreenCoordinates:(CGRect)coordinates centeredX:(BOOL)x
{
  xCopy = x;
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  [self _reducedPageBoundsFromBounds:0 forPage:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  rect = v10;
  if ([self _presentsListBelowDateTime])
  {
    [self suggestedFrameForListForPage:0 pageBounds:{x, y, width, height}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [self timeToListInsetXforPage:0];
    v26 = MEMORY[0x1E69DDA98];
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v28 = v19;
    v29 = v21;
    v30 = v23;
    v31 = v25;
    if (userInterfaceLayoutDirection == 1)
    {
      CGRectGetMinX(*&v28);
    }

    else
    {
      CGRectGetMaxX(*&v28);
    }

    xCopy3 = x;
    v51 = height;
    [self suggestedFrameForListForPage:1 pageBounds:{x, y, width, height}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [self timeToListInsetXforPage:1];
    userInterfaceLayoutDirection2 = [*v26 userInterfaceLayoutDirection];
    v43 = v35;
    v44 = v37;
    v45 = v39;
    v46 = v41;
    if (userInterfaceLayoutDirection2 == 1)
    {
      CGRectGetMaxX(*&v43);
    }

    else
    {
      CGRectGetMinX(*&v43);
    }

    height = v51;
    if (![self dateTimeLayoutForPage:1])
    {
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v56.size.height = v51;
      CGRectGetMaxX(v56);
    }

    if (xCopy)
    {
LABEL_17:
      v57.origin.x = xCopy3;
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
    [self _dateTimeMinXForReducedBounds:0 forPage:{v11, v13, v15, v17}];
    v32 = MEMORY[0x1E69DDA98];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v54.origin.x = v11;
      v54.origin.y = v13;
      v54.size.width = v15;
      v54.size.height = v17;
      CGRectGetWidth(v54);
    }

    [self _dateTimeMinXForReducedBounds:1 forPage:{v11, v13, v15, v17}];
    xCopy3 = x;
    if ([*v32 userInterfaceLayoutDirection] == 1)
    {
      v55.origin.x = rect;
      v55.origin.y = v13;
      v55.size.width = v15;
      v55.size.height = v17;
      CGRectGetWidth(v55);
    }

    if (xCopy)
    {
      goto LABEL_17;
    }
  }

  [self timeLabelBaselineY];
  +[SBFLockScreenDateView timeFontMetrics];
  [self timeSubtitleBaselineY];
  +[SBFLockScreenDateSubtitleView labelFontMetrics];
  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

+ (double)_dateTimeMinXForReducedBounds:(CGRect)bounds forPage:(unint64_t)page
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = [self dateTimeLayoutForPage:?];
  if (v10)
  {
    if (v10 == 2)
    {
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      MaxX = CGRectGetMaxX(v15);
      [self listInsetXForPage:page];
      return MaxX - v13;
    }

    else if (v10 == 1)
    {

      [self listInsetXForPage:page];
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
  block[4] = self;
  if (timeLabelBaselineY_onceToken != -1)
  {
    dispatch_once(&timeLabelBaselineY_onceToken, block);
  }

  [self searchClippingLineMaxY];
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
  [self timeToSubtitleLabelBaselineDifferenceY];
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

+ (UIEdgeInsets)_cachedGlyphInsetsForString:(id)string withFont:(id)font
{
  v33[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  fontCopy = font;
  if (_cachedGlyphInsetsForString_withFont__onceToken != -1)
  {
    +[SBFDashBoardViewMetrics _cachedGlyphInsetsForString:withFont:];
  }

  v7 = [_cachedGlyphInsetsForString_withFont__leadingInsetForNumber objectForKeyedSubscript:stringCopy];
  v8 = [_cachedGlyphInsetsForString_withFont__trailingInsetForNumber objectForKeyedSubscript:stringCopy];
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
    v33[0] = fontCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    [stringCopy boundingRectWithSize:8 options:v11 attributes:0 context:{*MEMORY[0x1E695F060], v13}];
    UIRectIntegralWithScale();
    v15 = v14;
    v17 = v16;
    [stringCopy boundingRectWithSize:0 options:v11 attributes:0 context:{v12, v13}];
    UIRectIntegralWithScale();
    v19 = v18;
    v21 = v15 - v20;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v15 - v20];

    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v19 - v17 - v21];

    [_cachedGlyphInsetsForString_withFont__leadingInsetForNumber setObject:v22 forKeyedSubscript:stringCopy];
    [_cachedGlyphInsetsForString_withFont__trailingInsetForNumber setObject:v23 forKeyedSubscript:stringCopy];

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

+ (double)timeToListInsetXforPage:(unint64_t)page
{
  _presentsListBelowDateTime = [self _presentsListBelowDateTime];
  result = 0.0;
  if (_presentsListBelowDateTime)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    result = 16.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
        userInterfaceIdiom = [MEMORY[0x1E69DC938] currentDevice];
        if ([userInterfaceIdiom userInterfaceIdiom])
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
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen _referenceBounds];
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
  [self timeLabelBaselineY];
  v4 = v3;
  [self timeToSubtitleLabelBaselineDifferenceY];
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 23.0;
  }

  else
  {
    v7 = 15.0;
  }

  currentDevice2 = __sb__runningInSpringBoard();
  if (currentDevice2)
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      goto LABEL_24;
    }
  }

  v11 = currentDevice2 ^ 1;
  mainScreen = __sb__runningInSpringBoard();
  if (mainScreen)
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
    {
      v10 = 0;
      v12 = MEMORY[0x1E69DDC30];
      v9 = 1;
      goto LABEL_25;
    }
  }

  v9 = mainScreen ^ 1;
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  v10 = v13 ^ 1;
  BSSizeRoundForScale();
  if (v14 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_24;
  }

  v12 = MEMORY[0x1E69DDC30];
LABEL_25:
  [self scaledFontSize:*v12 withMaximumFontSizeCategory:v7];
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [self _padSpecificValueJ99:66.0 otherPad:56.0];
    }

    else
    {
      [self _phoneSpecificValueN56:42.0 n61:36.0 n69:36.0];
    }

    v6 = MEMORY[0x1E69DB878];
    [self scaledFontSize:*MEMORY[0x1E69DDC40] withMaximumFontSizeCategory:?];
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
  block[4] = self;
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
  block[4] = self;
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

+ (double)listMinYForPage:(unint64_t)page
{
  if ([self _presentsListBelowDateTime])
  {
    [self timeLabelBaselineY];
    v5 = v4;
    [self timeToSubtitleLabelBaselineDifferenceY];
    v7 = v5 + v6;
    [self dateBaselineToListY];
    v9 = v7 + v8;
    if (listMinYForPage__onceToken != -1)
    {
      +[SBFDashBoardViewMetrics listMinYForPage:];
    }

    return v9 + *&listMinYForPage__alternateCalendarHeight;
  }

  else
  {

    [self _phoneSpecificValueN56:78.0 n61:58.0 n69:32.0];
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  return [self _isPortrait];
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

+ (double)_phoneSpecificValueN56:(double)n56 n61:(double)n61 n69:(double)n69
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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
    return n56;
  }

LABEL_15:
  v17 = __sb__runningInSpringBoard();
  v18 = v17;
  if (!v17)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if (![currentDevice userInterfaceIdiom])
    {
      goto LABEL_22;
    }

    return n69;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    return n69;
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v22 = v21 >= *(MEMORY[0x1E69D4380] + 40);
  if ((v20 & 1) == 0)
  {
  }

  if (v18)
  {
    n56 = n69;
    if (!v22)
    {
      return n56;
    }

    return n61;
  }

  n56 = n69;
  if (v22)
  {
    return n61;
  }

  return n56;
}

+ (double)_phoneSpecificValueN56:(double)n56 n61:(double)n61 n69:(double)n69 d22:(double)d22
{
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && SBFEffectiveHomeButtonType() == 2)
    {
      return d22;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
    }

    else
    {
      currentDevice2 = SBFEffectiveHomeButtonType();

      if (currentDevice2 == 2)
      {
        return d22;
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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
  d22 = n56;
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
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if (![currentDevice2 userInterfaceIdiom])
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
          mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen _referenceBounds];
        }

        BSSizeRoundForScale();
        v26 = v25 >= *(MEMORY[0x1E69D4380] + 40);
        if ((v24 & 1) == 0)
        {
        }

        if (v22)
        {
          d22 = n69;
          if (!v26)
          {
            return d22;
          }
        }

        else
        {

          d22 = n69;
          if (!v26)
          {
            return d22;
          }
        }

        return n61;
      }
    }

    return n69;
  }

  return d22;
}

+ (double)_padSpecificValueJ99:(double)j99 otherPad:(double)pad
{
  v8 = __sb__runningInSpringBoard();
  v9 = v8;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return pad;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
LABEL_13:

      return pad;
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v12 >= *(MEMORY[0x1E69D4380] + 280))
  {
    pad = j99;
  }

  if ((v11 & 1) == 0)
  {
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  return pad;
}

+ (double)_padSpecificInsets:(SBFDashBoardPadPageInsets *)insets leading:(BOOL)leading
{
  leadingCopy = leading;
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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
    p_var2 = &insets->var2;
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
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
    p_var2 = &insets->var1;
    v17 = 56;
    v18 = 48;
    v19 = 40;
    goto LABEL_30;
  }

LABEL_29:
  v17 = 24;
  v18 = 16;
  v19 = 8;
  p_var2 = insets;
LABEL_30:
  var0 = p_var2->var0.var0;
  v28 = *(&insets->var0.var0 + v19);
  v29 = *(&insets->var0.var0 + v18);
  v30 = *(&insets->var0.var0 + v17);

  [self _padSpecificValueForDevice:leadingCopy leading:{var0, v28, v29, v30}];
  return result;
}

+ (double)_padSpecificValueForDevice:(SBFDashBoardOrientationLeadingInsets)device leading:(BOOL)leading
{
  leadingCopy = leading;
  var2 = device.var2;
  var1 = device.var1;
  var0 = device.var0;
  _isPortrait = [self _isPortrait];
  if (leadingCopy)
  {
    result = var0;
  }

  else
  {
    result = var2;
  }

  if (!_isPortrait)
  {
    return var1;
  }

  return result;
}

+ (double)listInsetXForPage:(unint64_t)page
{
  v4 = [self listLayoutForPage:page] - 3;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
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
    _isPortrait = [self _isPortrait];
    if (v7 == 1)
    {
      result = 69.0;
      if (_isPortrait)
      {
        return 56.0;
      }
    }

    else
    {
      result = 8.0;
      if ((_isPortrait & 1) == 0)
      {

        [self _phoneSpecificValueN56:79.0 n61:69.0 n69:54.0];
      }
    }
  }

  return result;
}

+ (double)listInsetXForPage:(unint64_t)page leading:(BOOL)leading
{
  leadingCopy = leading;
  v6 = [self listLayoutForPage:page] - 3;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v9 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
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
    [self _padSpecificInsets:v12 leading:leadingCopy];
  }

  else
  {
    _isPortrait = [self _isPortrait];
    result = 8.0;
    if ((_isPortrait & 1) == 0)
    {

      [self _phoneSpecificValueN56:79.0 n61:69.0 n69:54.0];
    }
  }

  return result;
}

+ (double)listWidthForPage:(unint64_t)page
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    result = 0.0;
    if (page <= 1)
    {
      v8 = _os_feature_enabled_impl();
      result = 556.0;
      if (v8)
      {
        return 425.0;
      }
    }
  }

  else if ([self _isPortrait] || objc_msgSend(self, "_presentsListBelowDateTime"))
  {

    [self searchBarWidth];
  }

  else
  {
    return 320.0;
  }

  return result;
}

+ (CGRect)suggestedFrameForStatusView:(id)view inView:(id)inView withInsets:(UIEdgeInsets)insets
{
  if (view && inView)
  {
    right = insets.right;
    left = insets.left;
    viewCopy = view;
    [inView bounds];
    if (left >= right)
    {
      v10 = left;
    }

    else
    {
      v10 = right;
    }

    [viewCopy sizeThatFits:{v9 + fmax(v10, 25.0) * -2.0}];

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

+ (CGRect)_reducedPageBoundsFromBounds:(CGRect)bounds forPage:(unint64_t)page
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_10;
  }

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v12 = CGRectGetWidth(v23);
  [self listInsetXForPage:page];
  v14 = v12 + v13 * -2.0;
  [self listWidthForPage:page];
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [self listLayoutForPage:page];
  if (![self layoutUsesMargin:v17])
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
    if ([self layoutCentersContent:v17])
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

+ (double)scaledFontSize:(double)size withMaximumFontSizeCategory:(id)category
{
  categoryCopy = category;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, categoryCopy);

  v8 = MEMORY[0x1E69DB878];
  v9 = *MEMORY[0x1E69DDCF8];
  if (v7 == NSOrderedAscending)
  {
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  else
  {
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:categoryCopy];
    v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v10];
  }

  [v11 _scaledValueForValue:size];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v14 = v13;

  return v14;
}

@end