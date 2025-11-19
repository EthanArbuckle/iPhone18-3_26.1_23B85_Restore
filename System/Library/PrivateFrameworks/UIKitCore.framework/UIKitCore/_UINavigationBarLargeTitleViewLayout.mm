@interface _UINavigationBarLargeTitleViewLayout
- (CGRect)_contentLayoutBounds;
- (CGRect)_contentLayoutBoundsUsingRestingTitleHeight:(BOOL)a3;
- (CGRect)textRectForTitleLabelInBounds:(CGRect)a3 limitedToNumberOfLines:(unint64_t)a4;
- (CGSize)_cachedTitleHeightSizeAndUpdateRestingSizeForWidth:(double)a3;
- (CGSize)_cachedTitleHeightSizeAndUpdateRestingSizeForWidthSupportingMultiLineShrinkToFit:(double)a3;
- (CGSize)_systemLayoutSizeForView:(id)a3 fittingMaximumWidth:(double)a4 flexibleHeight:(double)a5;
- (CGSize)sizeFittingSize:(CGSize)a3 titleType:(int64_t)a4;
- (NSDirectionalEdgeInsets)layoutMargins;
- (_UINavigationBarLargeTitleViewLayout)initWithContentView:(id)a3;
- (double)_baselineAlignView:(id)a3 withSize:(CGSize)a4 inBounds:(CGRect)a5 baselineOffsetFromBottom:(double)a6 distanceToBaseline:(double)a7 scale:(double)a8 displayScale:(double)a9 offset:(CGVector)a10;
- (double)_heightForSize:(CGSize)a3 titleType:(int64_t)a4;
- (double)restingHeightForSize:(CGSize)a3 type:(int64_t)a4;
- (id)description;
- (void)_enforceLayoutOrdering;
- (void)_invalidateTitleHeightCache;
- (void)_updateEffectiveSubtitleView;
- (void)_updateEffectiveTitleView;
- (void)layoutViewsWithOffset:(UIOffset)a3 useRestingTitleHeight:(BOOL)a4;
- (void)layoutViewsWithOffsetSupportingMultiLineShrinkToFit:(UIOffset)a3 useRestingTitleHeight:(BOOL)a4;
- (void)removeContent;
- (void)setAccessoryView:(id)a3;
- (void)setContentAlpha:(double)a3;
- (void)setContentHidden:(BOOL)a3;
- (void)setContentView:(id)a3;
- (void)setCustomTitleView:(id)a3;
- (void)setOverlaysContentView:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleView:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTwoLineMode:(unint64_t)a3;
- (void)updateLayoutData:(id)a3 layoutWidth:(double)a4;
- (void)updateRestingTitleHeight;
@end

@implementation _UINavigationBarLargeTitleViewLayout

- (void)_invalidateTitleHeightCache
{
  titleHeightCache = self->_titleHeightCache;
  self->_titleHeightCache = 0;

  restingHeightCache = self->_restingHeightCache;
  self->_restingHeightCache = 0;
}

- (void)_enforceLayoutOrdering
{
  v5[3] = *MEMORY[0x1E69E9840];
  customTitleView = self->_customTitleView;
  if (!customTitleView)
  {
    customTitleView = self->_titleLabel;
  }

  v5[0] = customTitleView;
  subtitleView = self->_subtitleView;
  if (!subtitleView)
  {
    subtitleView = self->_subtitleLabel;
  }

  accessoryView = self->_accessoryView;
  v5[1] = subtitleView;
  v5[2] = accessoryView;
  [(UIView *)self->_contentView _ensureViewsAreInstalledInRelativeOrder:v5 viewCount:3 insertionStartIndex:0];
}

- (void)_updateEffectiveSubtitleView
{
  if (self->_subtitleView)
  {
    subtitleLabel = self->_subtitleLabel;
LABEL_3:
    [(UIView *)subtitleLabel removeFromSuperview];
    v4 = self->_subtitleLabel;
    self->_subtitleLabel = 0;

    goto LABEL_8;
  }

  v5 = [(NSAttributedString *)self->_subtitle length];
  subtitleLabel = self->_subtitleLabel;
  if (!v5)
  {
    goto LABEL_3;
  }

  if (!subtitleLabel)
  {
    v6 = _UINavigationBarLargeTitleViewNewLabel();
    v7 = self->_subtitleLabel;
    self->_subtitleLabel = v6;

    subtitleLabel = self->_subtitleLabel;
  }

  [(UILabel *)subtitleLabel setAttributedText:self->_subtitle];
LABEL_8:

  [(_UINavigationBarLargeTitleViewLayout *)self _enforceLayoutOrdering];
}

- (void)_updateEffectiveTitleView
{
  if (self->_customTitleView)
  {
    [(UIView *)self->_titleLabel removeFromSuperview];
  }

  [(_UINavigationBarLargeTitleViewLayout *)self _enforceLayoutOrdering];
}

- (void)updateRestingTitleHeight
{
  [(UIView *)self->_contentView bounds];
  [(_UINavigationBarLargeTitleViewLayout *)self restingHeightForSize:self->_titleType type:v3, v4];
  self->_titleRestingHeight = v5;
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = _UINavigationBarLargeTitleViewLayout;
  v3 = [(_UINavigationBarLargeTitleViewLayout *)&v15 description];
  v4 = [v3 mutableCopy];

  if (self->_contentView)
  {
    titleLabel = self->_titleLabel;
    titleType = self->_titleType;
    twoLineMode = self->_twoLineMode;
    titleRestingHeight = self->_titleRestingHeight;
    if (self->_providesExtraSpaceForExcessiveLineHeights)
    {
      v9 = @" usingExtendedLineHeight";
    }

    else
    {
      v9 = &stru_1EFB14550;
    }

    v10 = NSStringFromDirectionalEdgeInsets(self->_layoutMargins);
    [v4 appendFormat:@" label=%p type=%li twoLineMode=%li restingHeight=%.1f%@ layoutMargins=%@", titleLabel, titleType, twoLineMode, *&titleRestingHeight, v9, v10];

    accessoryView = self->_accessoryView;
    if (accessoryView)
    {
      v12 = @"center";
      if (self->_alignAccessoryViewToTitleBaseline)
      {
        v12 = @"baseline";
      }

      if (self->_accessoryViewHorizontalAlignment)
      {
        v13 = @"title";
      }

      else
      {
        v13 = @"bar";
      }

      [v4 appendFormat:@" accessoryView=%p verticalAlignment=%@ horizontalAlignment=%@", accessoryView, v12, v13];
    }

    [v4 appendFormat:@" cachedRestingHeight=%.1f titleHeightCache=%p restingHeightCache=%p", *&self->_cachedRestingHeight, self->_titleHeightCache, self->_restingHeightCache];
  }

  else
  {
    [v4 appendString:@" invalid"];
  }

  return v4;
}

- (_UINavigationBarLargeTitleViewLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UINavigationBarLargeTitleViewLayout;
  v5 = [(_UINavigationBarLargeTitleViewLayout *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_contentView = v4;
    v7 = _UINavigationBarLargeTitleViewNewLabel();
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v7;

    v6->_titleType = 0;
    v6->_titleRestingHeight = 0.0;
  }

  return v6;
}

- (void)setContentView:(id)a3
{
  if (self->_contentView != a3)
  {
    v5 = a3;
    [(_UINavigationBarLargeTitleViewLayout *)self removeContent];
    self->_contentView = v5;
    [(UIView *)v5 setNeedsLayout];
  }
}

- (void)setTwoLineMode:(unint64_t)a3
{
  if (self->_twoLineMode != a3)
  {
    v13 = v3;
    self->_twoLineMode = a3;
    if (a3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [(UILabel *)self->_titleLabel setNumberOfLines:v10, v8, v7, v4, v13, v5];
    [(UILabel *)self->_subtitleLabel setNumberOfLines:[(UILabel *)self->_titleLabel numberOfLines]];
    v11 = self->_twoLineMode == 2;
    if (self->_twoLineMode == 2)
    {
      v12 = 0.475;
    }

    else
    {
      v12 = 1.0;
    }

    [(UILabel *)self->_titleLabel setMinimumScaleFactor:v12];
    [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:v11];
    [(UILabel *)self->_titleLabel _setSupportMultiLineShrinkToFit:v11];
    [(UILabel *)self->_subtitleLabel setMinimumScaleFactor:v12];
    [(UILabel *)self->_subtitleLabel setAdjustsFontSizeToFitWidth:v11];
    [(UILabel *)self->_subtitleLabel _setSupportMultiLineShrinkToFit:v11];

    [(_UINavigationBarLargeTitleViewLayout *)self _invalidateTitleHeightCache];
  }
}

- (CGRect)_contentLayoutBoundsUsingRestingTitleHeight:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_contentView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v3)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self titleRestingHeight];
    v5 = v12;
  }

  if (v11 <= 0.0 || v5 <= 0.0)
  {
    v14 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v15 = *(MEMORY[0x1E695F050] + 16);
    v5 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v13 = 152;
    if ((*(&self->_contentView->super._viewFlags + 18) & 0x40) == 0)
    {
      v13 = 136;
    }

    v14 = v7 + *(&self->super.isa + v13);
    v15 = v11 - (self->_layoutMargins.leading + self->_layoutMargins.trailing);
  }

  v16 = v9;
  result.size.height = v5;
  result.size.width = v15;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (CGRect)_contentLayoutBounds
{
  [(_UINavigationBarLargeTitleViewLayout *)self _contentLayoutBoundsUsingRestingTitleHeight:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)restingHeightForSize:(CGSize)a3 type:(int64_t)a4
{
  width = a3.width;
  result = 0.0;
  if (width >= 0.0)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self _heightForSize:self->_titleType titleType:width, a3.height];
    if (result <= 0.0)
    {
      result = _largeTitleRestingHeight();
    }
  }

  if (self->_overlaysContentView)
  {
    return result + 10.0;
  }

  return result;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_titleLabel attributedText];
  v8 = v4;
  v6 = v5;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_titleLabel setAttributedText:v8];
    [(_UINavigationBarLargeTitleViewLayout *)self _updateEffectiveTitleView];
  }

LABEL_9:
}

- (void)setCustomTitleView:(id)a3
{
  v5 = a3;
  customTitleView = self->_customTitleView;
  if (customTitleView != v5)
  {
    v7 = v5;
    [(UIView *)customTitleView removeFromSuperview];
    objc_storeStrong(&self->_customTitleView, a3);
    [(UIView *)self->_customTitleView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_UINavigationBarLargeTitleViewLayout *)self _updateEffectiveTitleView];
    v5 = v7;
  }
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  subtitle = self->_subtitle;
  v10 = v4;
  v6 = subtitle;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSAttributedString *)v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSAttributedString *)v10 copy];
    v9 = self->_subtitle;
    self->_subtitle = v8;

    [(_UINavigationBarLargeTitleViewLayout *)self _updateEffectiveSubtitleView];
  }

LABEL_9:
}

- (void)setSubtitleView:(id)a3
{
  v5 = a3;
  subtitleView = self->_subtitleView;
  if (subtitleView != v5)
  {
    v7 = v5;
    [(UIView *)subtitleView removeFromSuperview];
    objc_storeStrong(&self->_subtitleView, a3);
    [(UIView *)self->_subtitleView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_UINavigationBarLargeTitleViewLayout *)self _updateEffectiveSubtitleView];
    v5 = v7;
  }
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  p_accessoryView = &self->_accessoryView;
  accessoryView = self->_accessoryView;
  v9 = v5;
  if (accessoryView != v5)
  {
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, a3);
    [(UIView *)*p_accessoryView setTranslatesAutoresizingMaskIntoConstraints:1];
    accessoryView = *p_accessoryView;
  }

  if (accessoryView)
  {
    v8 = [(UIView *)accessoryView superview];

    if (!v8)
    {
      [(_UINavigationBarLargeTitleViewLayout *)self _enforceLayoutOrdering];
    }
  }
}

- (void)setOverlaysContentView:(BOOL)a3
{
  if (self->_overlaysContentView != a3)
  {
    self->_overlaysContentView = a3;
    [(_UINavigationBarLargeTitleViewLayout *)self updateRestingTitleHeight];
  }
}

- (void)layoutViewsWithOffsetSupportingMultiLineShrinkToFit:(UIOffset)a3 useRestingTitleHeight:(BOOL)a4
{
  v4 = a4;
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  [(_UINavigationBarLargeTitleViewLayout *)self _contentLayoutBoundsUsingRestingTitleHeight:?];
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  if (!CGRectIsNull(v94))
  {
    v12 = horizontal + x;
    rect = vertical + y;
    v13 = *(&self->_contentView->super._viewFlags + 2);
    v14 = MEMORY[0x1E695F058];
    v15 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    accessoryView = self->_accessoryView;
    v19 = MEMORY[0x1E695F060];
    v88 = *MEMORY[0x1E695F058];
    if (accessoryView)
    {
      [(UIView *)accessoryView sizeThatFits:width, height];
      v22 = v21;
      v23 = v20;
      if (v21 == *v19 && v20 == v19[1])
      {
        v90 = v12;
      }

      else
      {
        accessoryViewHorizontalAlignment = self->_accessoryViewHorizontalAlignment;
        if (!accessoryViewHorizontalAlignment)
        {
          v15 = v12;
        }

        if (!(accessoryViewHorizontalAlignment | v13 & 0x400000))
        {
          v95.origin.x = v12;
          v95.origin.y = rect;
          v95.size.width = width;
          v95.size.height = height;
          v15 = CGRectGetMaxX(v95) - v22;
        }

        if ((v13 & 0x400000) != 0)
        {
          v12 = v12 + v22;
        }

        v90 = v12;
        width = width - v22;
      }
    }

    else
    {
      v90 = v12;
      v23 = *(MEMORY[0x1E695F058] + 24);
      v22 = *(MEMORY[0x1E695F058] + 16);
    }

    v26 = [(UIView *)self->_contentView traitCollection];
    [v26 displayScale];
    v28 = v27;

    if (self->_titleType)
    {
      [(_UINavigationBarLargeTitleViewLayout *)self _cachedTitleHeightSizeAndUpdateRestingSizeForWidth:width];
      v16 = v30;
      if (self->_twoLineMode == 1)
      {
        v17 = width;
      }

      else
      {
        v17 = v29;
      }
    }

    v87 = *(v14 + 8);
    v31 = v16 == v19[1] && v17 == *v19;
    v91 = 1.0;
    if (!v31)
    {
      v85 = v23;
      v86 = v15;
      v32 = [objc_opt_self() mainScreen];
      [v32 bounds];
      v34 = height;
      v35 = v28;
      v36 = v28 * (v33 * 0.66);

      v37 = fmin((v34 - self->_titleRestingHeight) / v36 + 1.0, 1.1);
      if (v37 < 1.0)
      {
        v37 = 1.0;
      }

      v38 = v17 * v37 <= width || v17 <= 0.0;
      v39 = width / v17;
      if (v38)
      {
        v39 = v37;
      }

      v91 = v39;
      v40 = v17 * 0.5 * v39;
      if ((v13 & 0x400000) != 0)
      {
        v96.origin.y = rect;
        v96.origin.x = v90;
        v96.size.width = width;
        v41 = v34;
        v96.size.height = v34;
        v42 = CGRectGetMaxX(v96) - v40;
      }

      else
      {
        v41 = v34;
        v42 = v90 + v40;
      }

      UIRoundToScale(v42, v35);
      v44 = v43;
      v84 = v22;
      if (self->_twoLineMode == 2)
      {
        UIRoundToScale(v16 * 0.5 + v41 - self->_cachedRestingHeight, v35);
        v46 = v45;
        [(UILabel *)self->_titleLabel setBounds:v88, v87, v17, v16];
        v47 = v44;
        v28 = v35;
        height = v41;
        v23 = v85;
        [(UIView *)self->_titleLabel setCenter:v47, v46];
        v15 = v86;
        v48 = v91;
      }

      else
      {
        v83 = v43;
        if (os_variant_has_internal_diagnostics())
        {
          v72 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf.a) = 0;
            _os_log_fault_impl(&dword_188A29000, v72, OS_LOG_TYPE_FAULT, "Shouldn’t get here!", &buf, 2u);
          }

          v28 = v35;
          height = v41;
        }

        else
        {
          v49 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1012) + 8);
          v28 = v35;
          height = v41;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.a) = 0;
            _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_ERROR, "Shouldn’t get here!", &buf, 2u);
          }
        }

        [(UILabel *)self->_titleLabel setBounds:v88, v87, v17, v16];
        [(UILabel *)self->_titleLabel _lastLineBaseline];
        v48 = v91;
        UIRoundToScale(height + -16.0 - v91 * (v50 + v16 * -0.5), v28);
        [(UIView *)self->_titleLabel setCenter:v83, v51];
        [(UILabel *)self->_titleLabel setBounds:v88, v87, v17, v16];
        v23 = v85;
        v15 = v86;
      }

      CGAffineTransformMakeScale(&v93, v48, v48);
      titleLabel = self->_titleLabel;
      buf = v93;
      [(UIView *)titleLabel setTransform:&buf];
      v22 = v84;
    }

    if (self->_accessoryView)
    {
      if (self->_accessoryViewHorizontalAlignment != 1)
      {
        goto LABEL_53;
      }

      if (v31)
      {
        if ((v13 & 0x400000) != 0)
        {
          v97.origin.y = rect;
          v97.origin.x = v90;
          v97.size.width = width;
          v97.size.height = height;
          MaxX = CGRectGetMaxX(v97);
LABEL_49:
          v15 = MaxX - v22;
          goto LABEL_53;
        }

        v98.origin.y = rect;
        v98.origin.x = v90;
        v98.size.width = width;
        v98.size.height = height;
        MinX = CGRectGetMinX(v98);
      }

      else
      {
        [(UIView *)self->_titleLabel frame];
        if ((v13 & 0x400000) != 0)
        {
          MaxX = CGRectGetMinX(*&v54);
          goto LABEL_49;
        }

        MinX = CGRectGetMaxX(*&v54);
      }

      v15 = MinX;
LABEL_53:
      if (self->_twoLineMode == 2)
      {
        [(UIView *)self->_titleLabel center];
        v60 = v59 + v23 * -0.5;
        [(UIView *)self->_accessoryView contentScaleFactor];
        UIRoundToScale(v60, v61);
        v63 = v62;
LABEL_80:
        UIRoundToScale(v63, v28);
        [(UIView *)self->_accessoryView setFrame:v15, v82, v22, v23];
        return;
      }

      alignAccessoryViewToTitleBaseline = self->_alignAccessoryViewToTitleBaseline;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (alignAccessoryViewToTitleBaseline)
      {
        if (has_internal_diagnostics)
        {
          v73 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf.a) = 0;
            _os_log_fault_impl(&dword_188A29000, v73, OS_LOG_TYPE_FAULT, "Shouldn’t get here!", &buf, 2u);
          }

          if (v31)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v66 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C9E8) + 8);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.a) = 0;
            _os_log_impl(&dword_188A29000, v66, OS_LOG_TYPE_ERROR, "Shouldn’t get here!", &buf, 2u);
          }

          if (v31)
          {
LABEL_60:
            v99.origin.y = rect;
            v99.origin.x = v90;
            v99.size.width = width;
            v99.size.height = height;
            MaxY = CGRectGetMaxY(v99) - v23;
            v68 = -16.0;
LABEL_68:
            v63 = MaxY + v68;
            goto LABEL_80;
          }
        }

        [(UIView *)self->_titleLabel frame];
        v74 = v28;
        v75 = CGRectGetMaxY(v101) - v23;
        v102.origin.y = v87;
        v102.origin.x = v88;
        v102.size.width = v17;
        v102.size.height = v16;
        v76 = CGRectGetHeight(v102);
        [(UILabel *)self->_titleLabel _firstLineBaseline];
        v63 = v75 - v91 * (v76 - v77);
        v28 = v74;
        goto LABEL_80;
      }

      if (has_internal_diagnostics)
      {
        v78 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf.a) = 0;
          _os_log_fault_impl(&dword_188A29000, v78, OS_LOG_TYPE_FAULT, "Shouldn’t get here!", &buf, 2u);
        }

        v70 = v91;
        if (v31)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v69 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C9F0) + 8);
        v70 = v91;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.a) = 0;
          _os_log_impl(&dword_188A29000, v69, OS_LOG_TYPE_ERROR, "Shouldn’t get here!", &buf, 2u);
        }

        if (v31)
        {
LABEL_65:
          titleRestingHeight = height;
          if (v4)
          {
            titleRestingHeight = self->_titleRestingHeight;
          }

          v100.origin.y = rect;
          v100.origin.x = v90;
          v100.size.width = width;
          v100.size.height = height;
          MaxY = CGRectGetMaxY(v100);
          v68 = (v23 + titleRestingHeight) * -0.5;
          goto LABEL_68;
        }
      }

      [(UIView *)self->_titleLabel frame];
      MinY = CGRectGetMinY(v103);
      v80 = [(UILabel *)self->_titleLabel font];
      [v80 lineHeight];
      v63 = MinY + v70 * (v81 * 0.5) - v23 * 0.5;

      goto LABEL_80;
    }
  }
}

- (void)layoutViewsWithOffset:(UIOffset)a3 useRestingTitleHeight:(BOOL)a4
{
  v4 = a4;
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  [(_UINavigationBarLargeTitleViewLayout *)self _enforceLayoutOrdering];
  if (!self->_customTitleView && self->_twoLineMode == 2)
  {

    [(_UINavigationBarLargeTitleViewLayout *)self layoutViewsWithOffsetSupportingMultiLineShrinkToFit:v4 useRestingTitleHeight:horizontal, vertical];
    return;
  }

  [(_UINavigationBarLargeTitleViewLayout *)self _contentLayoutBoundsUsingRestingTitleHeight:v4];
  x = v103.origin.x;
  y = v103.origin.y;
  width = v103.size.width;
  height = v103.size.height;
  if (!CGRectIsNull(v103))
  {
    v101 = horizontal + x;
    v12 = vertical + y;
    v13 = *(&self->_contentView->super._viewFlags + 2);
    v14 = *MEMORY[0x1E695F058];
    accessoryView = self->_accessoryView;
    v16 = MEMORY[0x1E695F060];
    if (accessoryView)
    {
      [(UIView *)accessoryView sizeThatFits:width, height];
      v19 = v18;
      v20 = v17;
      v21 = v16[1];
      if (v18 != *v16 || v17 != v21)
      {
        accessoryViewHorizontalAlignment = self->_accessoryViewHorizontalAlignment;
        v24 = v101;
        if (!accessoryViewHorizontalAlignment)
        {
          v14 = v101;
        }

        if (!(accessoryViewHorizontalAlignment | v13 & 0x400000))
        {
          v104.origin.x = v101;
          v104.origin.y = v12;
          v104.size.width = width;
          v104.size.height = height;
          v14 = CGRectGetMaxX(v104) - v19;
        }

        if ((v13 & 0x400000) != 0)
        {
          v24 = v101 + v19;
        }

        v101 = v24;
        width = width - v19;
      }
    }

    else
    {
      v19 = *(MEMORY[0x1E695F058] + 16);
      v20 = *(MEMORY[0x1E695F058] + 24);
      v21 = *(MEMORY[0x1E695F060] + 8);
    }

    v25 = [(UIView *)self->_contentView traitCollection];
    [v25 displayScale];
    v100 = v26;

    v27 = [objc_opt_self() mainScreen];
    [v27 bounds];
    v29 = v28;

    if (self->_titleType)
    {
      v97 = v21;
      v30 = v12;
      v95 = v20;
      v31 = v29 * 0.66;
      customTitleView = self->_customTitleView;
      v93 = v14;
      v94 = v19;
      if (customTitleView)
      {
        v33 = customTitleView;
        [(_UINavigationBarLargeTitleViewLayout *)self _systemLayoutSizeForView:self->_customTitleView fittingMaximumWidth:width flexibleHeight:0.0];
      }

      else
      {
        v33 = self->_titleLabel;
        [(_UINavigationBarLargeTitleViewLayout *)self _cachedTitleHeightSizeAndUpdateRestingSizeForWidth:width];
      }

      v38 = v34;
      v39 = v35;
      v96 = v30;
      v40 = v100 * v31;
      v92 = fmod(v34 * 0.5, 1.0 / v100);
      v91 = fmod(v39 * 0.5, 1.0 / v100);
      subtitleView = self->_subtitleView;
      v99 = v39;
      if (subtitleView)
      {
        v42 = subtitleView;
        v90 = 0.0;
        [(_UINavigationBarLargeTitleViewLayout *)self _systemLayoutSizeForView:self->_subtitleView fittingMaximumWidth:width flexibleHeight:0.0];
        v44 = v43;
        v46 = v45;
      }

      else
      {
        v42 = self->_subtitleLabel;
        [(UILabel *)self->_subtitleLabel textRectForBounds:[(UILabel *)self->_subtitleLabel numberOfLines] limitedToNumberOfLines:0.0, 0.0, width, 1.79769313e308];
        v44 = v47;
        v46 = v48;
        [(UILabel *)self->_subtitleLabel _baselineOffsetFromBottom];
        v90 = v49;
      }

      v50 = v97;
      v51 = fmin((height - self->_titleRestingHeight) / v40 + 1.0, 1.1);
      if (v51 < 1.0)
      {
        v51 = 1.0;
      }

      if (v38 >= v44)
      {
        v52 = v38;
      }

      else
      {
        v52 = v44;
      }

      v53 = 0.0;
      v54 = v52 * v51 <= width || v52 * v51 <= 0.0;
      v55 = width / v52;
      if (!v54)
      {
        v51 = v55;
      }

      v98 = v51;
      v56 = *v16;
      v57 = v46 == v50 && v44 == *v16;
      if (!v57)
      {
        if (v42 == self->_subtitleLabel)
        {
          v58 = 16.0;
        }

        else
        {
          v58 = 8.0;
        }

        [(_UINavigationBarLargeTitleViewLayout *)self _baselineAlignView:v42 withSize:v44 inBounds:v46 baselineOffsetFromBottom:v101 distanceToBaseline:v96 scale:width displayScale:height offset:v90, v58, *&v51, *&v100, 0, 0];
        v53 = v59;
      }

      v60 = v38 == v56;
      if (v99 != v50)
      {
        v60 = 0;
      }

      titleLabel = self->_titleLabel;
      v36 = v33 != titleLabel || v60;
      v12 = v96;
      v37 = v101;
      if (!v60)
      {
        if (v33 == titleLabel)
        {
          v62 = 16.0;
        }

        else
        {
          v62 = 8.0;
        }

        v63 = 0.0;
        if (v33 == titleLabel)
        {
          [(UILabel *)titleLabel _baselineOffsetFromBottom];
          v63 = v64;
        }

        v65 = height;
        v66 = width;
        v67 = v96;
        v68 = v101;
        if (!v57)
        {
          v105.size.height = height - v53;
          v105.origin.x = v101;
          v105.origin.y = v96;
          v105.size.width = width;
          v106 = CGRectStandardize(v105);
          v68 = v106.origin.x;
          v67 = v106.origin.y;
          v66 = v106.size.width;
          v65 = v106.size.height;
          v62 = 6.0;
        }

        [(_UINavigationBarLargeTitleViewLayout *)self _baselineAlignView:v33 withSize:v38 inBounds:v99 baselineOffsetFromBottom:v68 distanceToBaseline:v67 scale:v66 displayScale:v65 offset:v63, v62, *&v98, *&v100, *&v92, *&v91];
      }

      v19 = v94;
      v20 = v95;
      v14 = v93;
    }

    else
    {
      v98 = 1.0;
      v99 = v21;
      v36 = 1;
      v37 = v101;
    }

    if (self->_accessoryView)
    {
      if (self->_accessoryViewHorizontalAlignment != 1)
      {
        goto LABEL_73;
      }

      if (v36)
      {
        v69 = v37;
        v70 = v12;
        v71 = width;
        v72 = height;
        if ((v13 & 0x400000) != 0)
        {
          MaxX = CGRectGetMaxX(*&v69);
LABEL_69:
          v14 = MaxX - v19;
          goto LABEL_73;
        }

        MinX = CGRectGetMinX(*&v69);
      }

      else
      {
        [(UIView *)self->_titleLabel frame];
        if ((v13 & 0x400000) != 0)
        {
          MaxX = CGRectGetMinX(*&v74);
          goto LABEL_69;
        }

        MinX = CGRectGetMaxX(*&v74);
      }

      v14 = MinX;
LABEL_73:
      if (self->_alignAccessoryViewToTitleBaseline)
      {
        if ((v36 & 1) == 0)
        {
          [(UIView *)self->_titleLabel frame];
          v83 = CGRectGetMaxY(v109) - v20;
          [(UILabel *)self->_titleLabel _firstLineBaseline];
          v82 = v83 - v98 * (v99 - v84);
          goto LABEL_83;
        }

        v107.origin.x = v37;
        v107.origin.y = v12;
        v107.size.width = width;
        v107.size.height = height;
        MaxY = CGRectGetMaxY(v107) - v20;
        v80 = -16.0;
      }

      else
      {
        if ((v36 & 1) == 0)
        {
          [(UIView *)self->_titleLabel frame];
          MinY = CGRectGetMinY(v110);
          v86 = [(UILabel *)self->_titleLabel font];
          [v86 lineHeight];
          v82 = MinY + v98 * (v87 * 0.5) - v20 * 0.5;

          goto LABEL_83;
        }

        titleRestingHeight = height;
        if (v4)
        {
          titleRestingHeight = self->_titleRestingHeight;
        }

        v108.origin.x = v37;
        v108.origin.y = v12;
        v108.size.width = width;
        v108.size.height = height;
        MaxY = CGRectGetMaxY(v108);
        v80 = (v20 + titleRestingHeight) * -0.5;
      }

      v82 = MaxY + v80;
LABEL_83:
      UIRoundToScale(v82, v100);
      v89 = self->_accessoryView;

      [(UIView *)v89 setFrame:v14, v88, v19, v20];
    }
  }
}

- (double)_baselineAlignView:(id)a3 withSize:(CGSize)a4 inBounds:(CGRect)a5 baselineOffsetFromBottom:(double)a6 distanceToBaseline:(double)a7 scale:(double)a8 displayScale:(double)a9 offset:(CGVector)a10
{
  width = a5.size.width;
  rect = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  height = a4.height;
  v14 = a4.width;
  v16 = a3;
  v25 = *MEMORY[0x1E695EFF8];
  v24 = *(MEMORY[0x1E695EFF8] + 8);
  v26 = v14;
  v17 = v14 * 0.5 * a8;
  if ((*(&self->_contentView->super._viewFlags + 18) & 0x40) != 0)
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = rect;
    v18 = CGRectGetMaxX(v34) - v17;
  }

  else
  {
    v18 = x + v17;
  }

  UIRoundToScale(v32 + v18, a9);
  v20 = v19 - v32;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = rect;
  MaxY = CGRectGetMaxY(v35);
  UIRoundToScale(v33 + a6 * a8 + MaxY - a7 + height * -0.5 * a8, a9);
  [v16 setCenter:{v20, v22 - v33}];
  [v16 setBounds:{v25, v24, v26, height}];
  CGAffineTransformMakeScale(&v31, a8, a8);
  v30 = v31;
  [v16 setTransform:&v30];

  return height + a7 - a6;
}

- (void)setContentAlpha:(double)a3
{
  [(UIView *)self->_titleLabel setAlpha:?];
  [(UIView *)self->_subtitleLabel setAlpha:a3];
  [(UIView *)self->_subtitleView setAlpha:a3];
  accessoryView = self->_accessoryView;

  [(UIView *)accessoryView setAlpha:a3];
}

- (void)setContentHidden:(BOOL)a3
{
  v3 = 1.0;
  if (a3)
  {
    v3 = 0.0;
  }

  [(_UINavigationBarLargeTitleViewLayout *)self setContentAlpha:v3];
}

- (double)_heightForSize:(CGSize)a3 titleType:(int64_t)a4
{
  if (!a4)
  {
    return 0.0;
  }

  height = a3.height;
  width = a3.width;
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    [(UIView *)accessoryView sizeThatFits:a3.width, a3.height];
    v10 = v9 == *(MEMORY[0x1E695F060] + 8) && v8 == *MEMORY[0x1E695F060];
    v11 = width - v8;
    if (!v10)
    {
      width = v11;
    }
  }

  v12 = self->_layoutMargins.leading + self->_layoutMargins.trailing;
  v13 = width - v12;
  if (self->_customTitleView)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self _systemLayoutSizeForView:width - v12 fittingMaximumWidth:height flexibleHeight:?];
    cachedRestingHeight = v14 + 0.0;
  }

  else
  {
    [(_UINavigationBarLargeTitleViewLayout *)self _cachedTitleHeightSizeAndUpdateRestingSizeForWidth:width - v12];
    cachedRestingHeight = self->_cachedRestingHeight;
  }

  if (self->_subtitleView)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self _systemLayoutSizeForView:v13 fittingMaximumWidth:height flexibleHeight:?];
  }

  else
  {
    v17 = [(UILabel *)self->_subtitleLabel text];
    v18 = [v17 length];

    if (!v18)
    {
      return cachedRestingHeight;
    }

    [(UILabel *)self->_subtitleLabel textRectForBounds:[(UILabel *)self->_subtitleLabel numberOfLines] limitedToNumberOfLines:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v13, height];
    v16 = v19;
  }

  v20 = cachedRestingHeight + v16;
  v21 = cachedRestingHeight + v16 + 6.0;
  if (self->_customTitleView)
  {
    return v20;
  }

  else
  {
    return v21;
  }
}

- (CGSize)_cachedTitleHeightSizeAndUpdateRestingSizeForWidthSupportingMultiLineShrinkToFit:(double)a3
{
  v5 = [(UILabel *)self->_titleLabel text];
  v6 = [v5 length];

  if (v6)
  {
    v7 = self->_titleLabel;
  }

  else
  {
    v8 = [(_UINavigationBarLargeTitleView *)self->_contentView effectiveTitleAttributes];
    v9 = self->_twoLineMode == 2;
    v10 = [(UIView *)self->_contentView window];
    v7 = _UINavigationBarLargeTitleViewLabelForMeasuring(v8, v9, v10);

    [(UILabel *)v7 setNumberOfLines:[(UILabel *)self->_titleLabel numberOfLines]];
  }

  v11 = a3 > 0.0 || [(UILabel *)v7 numberOfLines]== 1;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v13 = [(NSMutableDictionary *)self->_titleHeightCache objectForKey:v12];
  v14 = v13;
  if (v13)
  {
    [v13 CGSizeValue];
    v16 = v15;
    v18 = v17;
    goto LABEL_30;
  }

  v16 = *MEMORY[0x1E695F060];
  v18 = *(MEMORY[0x1E695F060] + 8);
  if (v11)
  {
    if (a3 <= 0.0)
    {
      a3 = 500.0;
    }

    twoLineMode = self->_twoLineMode;
    if (twoLineMode == 2)
    {
      v18 = 50.0;
      v16 = a3;
      goto LABEL_25;
    }

    if (twoLineMode == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v41 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v41, OS_LOG_TYPE_FAULT, "Shouldn’t get here", buf, 2u);
        }
      }

      else
      {
        v24 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CA00) + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Shouldn’t get here", buf, 2u);
        }
      }

      v21 = v7;
      v22 = a3;
      v23 = 2;
    }

    else
    {
      if (twoLineMode)
      {
LABEL_25:
        if (self->_providesExtraSpaceForExcessiveLineHeights)
        {
          v27 = [(UILabel *)v7 font];
          _UINavigationBarExcessiveLineHeightOutsetsForFontInView(v27, v7);
          v29 = v28;

          v18 = v18 + v29;
        }

        if (!self->_titleHeightCache)
        {
          v30 = objc_opt_new();
          titleHeightCache = self->_titleHeightCache;
          self->_titleHeightCache = v30;
        }

        *v43 = v16;
        *&v43[1] = v18;
        v32 = [MEMORY[0x1E696B098] valueWithBytes:v43 objCType:"{CGSize=dd}"];
        [(NSMutableDictionary *)self->_titleHeightCache setObject:v32 forKeyedSubscript:v12];

        goto LABEL_30;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v42 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v42, OS_LOG_TYPE_FAULT, "Shouldn’t get here", buf, 2u);
        }
      }

      else
      {
        v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C9F8) + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Shouldn’t get here", buf, 2u);
        }
      }

      v21 = v7;
      v22 = a3;
      v23 = 1;
    }

    [(UILabel *)v21 textRectForBounds:v23 limitedToNumberOfLines:0.0, 0.0, v22, 1.79769313e308];
    v16 = v25;
    v18 = v26;
    goto LABEL_25;
  }

LABEL_30:
  v33 = [(NSMutableDictionary *)self->_restingHeightCache objectForKey:v12];
  v34 = v33;
  if (v33)
  {
    [v33 doubleValue];
    self->_cachedRestingHeight = v35;
  }

  else
  {
    if (!self->_restingHeightCache)
    {
      v36 = objc_opt_new();
      restingHeightCache = self->_restingHeightCache;
      self->_restingHeightCache = v36;
    }

    self->_cachedRestingHeight = _UINavigationBarLargeTitleViewCalculateRestingHeight(v7, v18);
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(NSMutableDictionary *)self->_restingHeightCache setObject:v38 forKeyedSubscript:v12];
  }

  v39 = v16;
  v40 = v18;
  result.height = v40;
  result.width = v39;
  return result;
}

- (CGSize)_cachedTitleHeightSizeAndUpdateRestingSizeForWidth:(double)a3
{
  v3 = a3;
  if (self->_twoLineMode == 2)
  {
    [(_UINavigationBarLargeTitleViewLayout *)self _cachedTitleHeightSizeAndUpdateRestingSizeForWidthSupportingMultiLineShrinkToFit:a3];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(UILabel *)self->_titleLabel text];
    v10 = [v9 length];

    if (v10)
    {
      v11 = self->_titleLabel;
    }

    else
    {
      v12 = [(_UINavigationBarLargeTitleView *)self->_contentView effectiveTitleAttributes];
      v13 = self->_twoLineMode == 2;
      v14 = [(UIView *)self->_contentView window];
      v11 = _UINavigationBarLargeTitleViewLabelForMeasuring(v12, v13, v14);

      [(UILabel *)v11 setNumberOfLines:[(UILabel *)self->_titleLabel numberOfLines]];
    }

    v15 = v3 > 0.0 || [(UILabel *)v11 numberOfLines]== 1;
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
    v17 = [(NSMutableDictionary *)self->_titleHeightCache objectForKey:v16];
    v18 = v17;
    if (v17)
    {
      [v17 CGSizeValue];
      v6 = v19;
      v8 = v20;
    }

    else if (v15)
    {
      if (v3 <= 0.0)
      {
        v3 = 500.0;
      }

      if (self->_twoLineMode == 1)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      if (![(UILabel *)v11 lineBreakStrategy])
      {
        v22 = [(UILabel *)v11 _synthesizedAttributedText];
        v23 = [v22 length];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __91___UINavigationBarLargeTitleViewLayout__cachedTitleHeightSizeAndUpdateRestingSizeForWidth___block_invoke;
        v41[3] = &unk_1E70F8050;
        v41[4] = &v42;
        [v22 enumerateAttribute:@"kTUIAllCapsAttributeName" inRange:0 options:v23 usingBlock:{0, v41}];
      }

      if (*(v43 + 24) == 1)
      {
        [(UILabel *)v11 setLineBreakStrategy:0xFFFFLL];
      }

      [(UILabel *)v11 textRectForBounds:v21 limitedToNumberOfLines:0.0, 0.0, v3, 1.79769313e308];
      v6 = v24;
      v8 = v25;
      if (*(v43 + 24) == 1)
      {
        [(UILabel *)v11 setLineBreakStrategy:0];
      }

      if (self->_providesExtraSpaceForExcessiveLineHeights)
      {
        v26 = [(UILabel *)v11 font];
        _UINavigationBarExcessiveLineHeightOutsetsForFontInView(v26, v11);
        v28 = v27;

        v8 = v8 + v28;
      }

      if (!self->_titleHeightCache)
      {
        v29 = objc_opt_new();
        titleHeightCache = self->_titleHeightCache;
        self->_titleHeightCache = v29;
      }

      *v40 = v6;
      *&v40[1] = v8;
      v31 = [MEMORY[0x1E696B098] valueWithBytes:v40 objCType:"{CGSize=dd}"];
      [(NSMutableDictionary *)self->_titleHeightCache setObject:v31 forKeyedSubscript:v16];

      _Block_object_dispose(&v42, 8);
    }

    else
    {
      v6 = *MEMORY[0x1E695F060];
      v8 = *(MEMORY[0x1E695F060] + 8);
    }

    v32 = [(NSMutableDictionary *)self->_restingHeightCache objectForKey:v16];
    v33 = v32;
    if (v32)
    {
      [v32 doubleValue];
      self->_cachedRestingHeight = v34;
    }

    else
    {
      if (!self->_restingHeightCache)
      {
        v35 = objc_opt_new();
        restingHeightCache = self->_restingHeightCache;
        self->_restingHeightCache = v35;
      }

      self->_cachedRestingHeight = _UINavigationBarLargeTitleViewCalculateRestingHeight(v11, v8);
      v37 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [(NSMutableDictionary *)self->_restingHeightCache setObject:v37 forKeyedSubscript:v16];
    }
  }

  v38 = v6;
  v39 = v8;
  result.height = v39;
  result.width = v38;
  return result;
}

- (CGSize)sizeFittingSize:(CGSize)a3 titleType:(int64_t)a4
{
  width = a3.width;
  [(_UINavigationBarLargeTitleViewLayout *)self _heightForSize:a4 titleType:a3.width, a3.height];
  v6 = v5;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGRect)textRectForTitleLabelInBounds:(CGRect)a3 limitedToNumberOfLines:(unint64_t)a4
{
  [(UILabel *)self->_titleLabel textRectForBounds:a4 limitedToNumberOfLines:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)removeContent
{
  [(UIView *)self->_titleLabel removeFromSuperview];
  [(UIView *)self->_customTitleView removeFromSuperview];
  [(UIView *)self->_accessoryView removeFromSuperview];
  [(UIView *)self->_subtitleLabel removeFromSuperview];
  [(UIView *)self->_subtitleView removeFromSuperview];

  [(_UINavigationBarLargeTitleViewLayout *)self _invalidateTitleHeightCache];
}

- (void)updateLayoutData:(id)a3 layoutWidth:(double)a4
{
  v6 = a3;
  [(_UINavigationBarLargeTitleViewLayout *)self restingHeightForSize:1 type:a4, 10000.0];
  if (self->_overlaysContentView)
  {
    [v6 setPreferredHeight:?];
  }

  else
  {
    [v6 setFixedHeight:?];
  }
}

- (CGSize)_systemLayoutSizeForView:(id)a3 fittingMaximumWidth:(double)a4 flexibleHeight:(double)a5
{
  v7 = a3;
  LODWORD(v8) = 1112014848;
  LODWORD(v9) = 1112014848;
  [v7 systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:a5 verticalFittingPriority:{v8, v9}];
  if (v10 > a4)
  {
    LODWORD(v12) = 1148846080;
    LODWORD(v13) = 1112014848;
    [v7 systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:a5 verticalFittingPriority:{v12, v13}];
  }

  v14 = v11;
  if (v10 >= a4)
  {
    a4 = v10;
  }

  v15 = a4;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (NSDirectionalEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  leading = self->_layoutMargins.leading;
  bottom = self->_layoutMargins.bottom;
  trailing = self->_layoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end