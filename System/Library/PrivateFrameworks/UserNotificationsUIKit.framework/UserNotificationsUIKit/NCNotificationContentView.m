@interface NCNotificationContentView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (BSUIFontProvider)fontProvider;
- (CGRect)_frameForThumbnailInRect:(CGRect)a3 withContentViewInsets:(UIEdgeInsets)a4;
- (CGRect)_primaryLabelBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5;
- (CGRect)_primarySubtitleLabelBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5;
- (CGRect)_secondaryTextViewBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5;
- (CGRect)_summaryLabelBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5;
- (CGSize)_sizeThatFits:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationContentView)initWithStyle:(int64_t)a3;
- (NCNotificationContentViewDelegate)delegate;
- (NSAttributedString)secondaryText;
- (NSString)preferredContentSizeCategory;
- (UIEdgeInsets)_contentInsets;
- (UIEdgeInsets)_contentInsetsForLongLook;
- (UIEdgeInsets)_contentInsetsForShortLook;
- (UIEdgeInsets)_contentInsetsForStyle:(int64_t)a3;
- (double)_primarySubtitleTextBaselineOffsetForCurrentStyle;
- (double)_primaryTextBaselineOffsetForCurrentStyle;
- (double)_primaryTextBaselineOffsetWithBaseValue:(double)a3;
- (double)_secondaryTextBaselineOffsetForCurrentStyle;
- (double)_secondaryTextBaselineOffsetFromBottomWithBaseValue:(double)a3;
- (double)_secondaryTextBaselineOffsetWithBaseValue:(double)a3;
- (double)_summaryTextBaselineOffsetForCurrentStyle;
- (double)_summaryTextBaselineOffsetWithBaseValue:(double)a3;
- (double)topMarginToPrimaryLabelForCurrentStyle;
- (id)_lazyPrimaryLabel;
- (id)_lazyPrimarySubtitleLabel;
- (id)_lazySecondaryLabel;
- (id)_lazySecondaryTextSupportingView;
- (id)_lazySecondaryTextView;
- (id)_lazySummaryLabel;
- (id)_lazyThumbnailImageView;
- (id)_newPrimaryLabel;
- (id)_newSecondaryLabel;
- (id)_newSecondaryTextView;
- (id)_newSummaryLabel;
- (id)_secondaryTextSupportingView;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)textView:(id)a3 writingToolsIgnoredRangesInEnclosingRange:(_NSRange)a4;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (unint64_t)_cachedNumberOfMeasuredLinesForText:(id)a3 withFont:(id)a4 forWidth:(double)a5 scale:(double)a6;
- (unint64_t)_numberOfMeasuredLinesForText:(id)a3 withFont:(id)a4 forSize:(CGSize)a5;
- (unint64_t)_primarySubtitleTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4;
- (unint64_t)_primarySubtitleTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3;
- (unint64_t)_primaryTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4;
- (unint64_t)_primaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3;
- (unint64_t)_secondaryTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4;
- (unint64_t)_secondaryTextNumberOfLines;
- (unint64_t)_secondaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3;
- (unint64_t)_summaryTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4;
- (unint64_t)_summaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3;
- (void)_clearCacheForFont:(id)a3;
- (void)_configureTextSupportingView:(id)a3;
- (void)_configureThumbnailAsContactImage:(BOOL)a3;
- (void)_layoutSubviews;
- (void)_updateContentInsets;
- (void)_updateContentModeForThumbnailImage:(id)a3;
- (void)_updateStyleForPrimaryLabel:(id)a3 withStyle:(int64_t)a4;
- (void)_updateStyleForSecondaryTextSupportingView:(id)a3 withStyle:(int64_t)a4;
- (void)_updateStyleForSummaryLabel:(id)a3 withStyle:(int64_t)a4;
- (void)_updateStyleForThumbnailImage:(id)a3 withStyle:(int64_t)a4;
- (void)_updateTextAttributesForPrimaryLabel:(id)a3 withStyle:(int64_t)a4;
- (void)_updateTextAttributesForSecondaryTextSupportingView:(id)a3 withStyle:(int64_t)a4;
- (void)_updateTextAttributesForSummaryLabel:(id)a3 withStyle:(int64_t)a4;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setFontProvider:(id)a3;
- (void)setMaximumNumberOfPrimaryLargeTextLines:(unint64_t)a3;
- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)a3;
- (void)setMaximumNumberOfSecondaryLargeTextLines:(unint64_t)a3;
- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)a3;
- (void)setPrimarySubtitleText:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setScreenCaptureProhibited:(BOOL)a3;
- (void)setSecondaryText:(id)a3;
- (void)setSummaryText:(id)a3;
- (void)setThumbnail:(id)a3;
- (void)setThumbnailIsContactImage:(BOOL)a3;
- (void)setUseSmallTopMargin:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NCNotificationContentView

- (NCNotificationContentView)initWithStyle:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = NCNotificationContentView;
  v4 = [(NCNotificationContentView *)&v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_lookStyle = a3;
    p_contentInsets = &v4->_contentInsets;
    [(NCNotificationContentView *)v4 _contentInsetsForStyle:a3];
    *&p_contentInsets->top = v7;
    v5->_contentInsets.left = v8;
    v5->_contentInsets.bottom = v9;
    v5->_contentInsets.right = v10;
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v5->_contentView;
    v5->_contentView = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    widthToFontToStringToMeasuredNumLines = v5->_widthToFontToStringToMeasuredNumLines;
    v5->_widthToFontToStringToMeasuredNumLines = v13;

    [(NCNotificationContentView *)v5 addSubview:v5->_contentView];
  }

  return v5;
}

- (double)_primaryTextBaselineOffsetWithBaseValue:(double)a3
{
  v5 = [(NCNotificationContentView *)self _lazyPrimaryLabel];
  v6 = [v5 font];

  v7 = [(NCNotificationContentView *)self primaryText];
  [v6 unui_effectiveScaledValueForValue:objc_msgSend(v6 hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", v7), a3}];
  v9 = v8;

  return v9;
}

- (double)_secondaryTextBaselineOffsetWithBaseValue:(double)a3
{
  v5 = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
  v6 = [v5 font];

  v7 = [(NCNotificationContentView *)self secondaryText];
  v8 = [v7 string];
  [v6 unui_effectiveScaledValueForValue:objc_msgSend(v6 hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", v8), a3}];
  v10 = v9;

  return v10;
}

- (double)_secondaryTextBaselineOffsetFromBottomWithBaseValue:(double)a3
{
  v5 = [(NCNotificationContentView *)self _lazyPrimaryLabel];
  v6 = [v5 font];

  v7 = [(NCNotificationContentView *)self primaryText];
  [v6 unui_effectiveScaledValueForValue:objc_msgSend(v6 hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", v7), a3}];
  v9 = v8;

  return v9;
}

- (double)_summaryTextBaselineOffsetWithBaseValue:(double)a3
{
  v5 = [(NCNotificationContentView *)self _lazySummaryLabel];
  v6 = [v5 font];

  v7 = [(NCNotificationContentView *)self summaryText];
  [v6 unui_effectiveScaledValueForValue:objc_msgSend(v6 hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", v7), a3}];
  v9 = v8;

  return v9;
}

- (UIEdgeInsets)_contentInsets
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

- (UIEdgeInsets)_contentInsetsForShortLook
{
  v3 = 5.0;
  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 2.0;
  }

  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 5.0;
  }

  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v7);

  v9 = 0.0;
  if (IsAX)
  {
    if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
    {
      v4 = 5.0;
    }

    else
    {
      v4 = 2.0;
    }

    if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
    {
      v5 = 2.0;
    }

    else
    {
      v5 = 5.0;
    }

    v9 = 28.0;
    v3 = 6.0;
  }

  v10 = v4;
  v11 = v3;
  v12 = v5;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)_contentInsetsForLongLook
{
  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
  {
    v3 = 15.0;
  }

  else
  {
    v3 = 17.0;
  }

  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
  {
    v4 = 17.0;
  }

  else
  {
    v4 = 15.0;
  }

  v5 = 0.0;
  v6 = 16.0;
  v7 = v3;
  result.right = v4;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

- (UIEdgeInsets)_contentInsetsForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(NCNotificationContentView *)self _contentInsetsForLongLook];
  }

  else
  {
    [(NCNotificationContentView *)self _contentInsetsForShortLook];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)topMarginToPrimaryLabelForCurrentStyle
{
  result = 0.0;
  if (self->_lookStyle == 1)
  {
    v5 = [(NCNotificationContentView *)self useSmallTopMargin:0.0];
    result = 8.0;
    if (v5)
    {
      return -6.0;
    }
  }

  return result;
}

- (double)_primaryTextBaselineOffsetForCurrentStyle
{
  v2 = 23.0;
  if (self->_lookStyle == 1)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(v4))
    {
      v2 = 22.0;
    }

    else
    {
      v2 = 20.0;
    }
  }

  return v2;
}

- (double)_primarySubtitleTextBaselineOffsetForCurrentStyle
{
  lookStyle = self->_lookStyle;
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v4);

  result = 19.0;
  if (IsAX)
  {
    result = 21.0;
  }

  v7 = 20.0;
  if (IsAX)
  {
    v7 = 22.0;
  }

  if (lookStyle == 1)
  {
    return v7;
  }

  return result;
}

- (double)_secondaryTextBaselineOffsetForCurrentStyle
{
  lookStyle = self->_lookStyle;
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v4);

  result = 19.0;
  if (IsAX)
  {
    result = 21.0;
  }

  v7 = 20.0;
  if (IsAX)
  {
    v7 = 22.0;
  }

  if (lookStyle == 1)
  {
    return v7;
  }

  return result;
}

- (double)_summaryTextBaselineOffsetForCurrentStyle
{
  v2 = 0.0;
  if (self->_lookStyle != 1)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(v4))
    {
      v2 = 20.0;
    }

    else
    {
      v2 = 24.0;
    }
  }

  return v2;
}

- (unint64_t)_primaryTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4
{
  v7 = [(NCNotificationContentView *)self primaryText];
  v8 = [v7 length] != 0;

  v9 = [MEMORY[0x277D75128] sharedApplication];
  v10 = [v9 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(v10))
  {
    v11 = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    v11 = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v12 = v11;

  if (v12 == 1)
  {
    return v8;
  }

  v14 = [(NCNotificationContentView *)self _lazyPrimaryLabel];
  v15 = [v14 text];
  v16 = [v14 font];
  v17 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:v15 withFont:v16 forWidth:a3 scale:a4];

  return v17;
}

- (unint64_t)_primaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3
{
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(v6))
  {
    if (![(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines])
    {
      goto LABEL_10;
    }
  }

  else if (![(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines])
  {
    goto LABEL_10;
  }

  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(v8))
  {
    v9 = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    v9 = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v10 = v9;

  if (a3 >= v10)
  {
    a3 = v10;
  }

LABEL_10:

  return a3;
}

- (CGRect)_primaryLabelBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5
{
  v6 = [(NCNotificationContentView *)self primaryText];
  v7 = [v6 length];

  if (v7)
  {
    [(NCNotificationContentView *)self _primaryTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
    v8 = NCRectWithSize();
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (unint64_t)_primarySubtitleTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4
{
  v7 = [(NCNotificationContentView *)self primarySubtitleText];
  v8 = [v7 length] != 0;

  v9 = [MEMORY[0x277D75128] sharedApplication];
  v10 = [v9 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(v10))
  {
    v11 = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    v11 = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v12 = v11;

  if (v12 == 1)
  {
    return v8;
  }

  v14 = [(NCNotificationContentView *)self _lazyPrimarySubtitleLabel];
  v15 = [v14 text];
  v16 = [v14 font];
  v17 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:v15 withFont:v16 forWidth:a3 scale:a4];

  return v17;
}

- (unint64_t)_primarySubtitleTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3
{
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(v6))
  {
    if (![(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines])
    {
      goto LABEL_10;
    }
  }

  else if (![(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines])
  {
    goto LABEL_10;
  }

  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(v8))
  {
    v9 = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    v9 = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v10 = v9;

  if (a3 >= v10)
  {
    a3 = v10;
  }

LABEL_10:

  return a3;
}

- (CGRect)_primarySubtitleLabelBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5
{
  v6 = [(NCNotificationContentView *)self primarySubtitleText];
  v7 = [v6 length];

  if (v7)
  {
    [(NCNotificationContentView *)self _primarySubtitleTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
    v8 = [(NCNotificationContentView *)self primaryText];
    v9 = [v8 length];

    if (!v9)
    {
      [(NCNotificationContentView *)self _primaryTextBaselineOffsetForCurrentStyle];
      [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
    }

    v10 = NCRectWithSize();
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (unint64_t)_secondaryTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4
{
  v7 = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
  v8 = [(NCNotificationContentView *)self secondaryText];
  v9 = [v8 length];

  if (a3 <= 0.0 || v9 == 0)
  {
    v14 = 0;
  }

  else
  {
    v11 = [(NCNotificationContentView *)self secondaryText];
    v12 = [v11 string];
    v13 = [v7 font];
    v14 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:v12 withFont:v13 forWidth:a3 scale:a4];
  }

  return v14;
}

- (unint64_t)_secondaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3
{
  v5 = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
  v6 = [(NCNotificationContentView *)self _secondaryTextNumberOfLines];
  if (a3 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= 0)
  {
    return a3;
  }

  else
  {
    return v7;
  }
}

- (CGRect)_secondaryTextViewBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5
{
  bottom = a4.bottom;
  v7 = [(NCNotificationContentView *)self secondaryText];
  v8 = [v7 length];

  if (v8)
  {
    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetWithBaseValue:?];
    v9 = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
    v10 = [v9 font];
    v11 = [(NCNotificationContentView *)self secondaryText];
    v12 = [v11 string];
    [v10 unui_effectiveLineHeightForText:v12];

    v13 = [(NCNotificationContentView *)self primaryText];
    v14 = [v13 length];

    if (!v14)
    {
      [(NCNotificationContentView *)self _primaryTextBaselineOffsetForCurrentStyle];
      [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
    }

    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetFromBottomWithBaseValue:bottom];
    v15 = NCRectWithSize();
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (unint64_t)_summaryTextMeasuredNumberOfLinesForWidth:(double)a3 scale:(double)a4
{
  v7 = [(NCNotificationContentView *)self _lazySummaryLabel];
  v8 = [v7 text];
  v9 = [v8 length];

  if (a3 <= 0.0 || v9 == 0)
  {
    v13 = 0;
  }

  else
  {
    v11 = [v7 text];
    v12 = [v7 font];
    v13 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:v11 withFont:v12 forWidth:a3 scale:a4];
  }

  return v13;
}

- (unint64_t)_summaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)a3
{
  if (a3 >= 2)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

- (CGRect)_summaryLabelBoundsForSize:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4 andNumberOfLines:(unint64_t)a5
{
  v6 = [(NCNotificationContentView *)self summaryText];
  v7 = [v6 length];

  if (v7)
  {
    [(NCNotificationContentView *)self _summaryTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _summaryTextBaselineOffsetWithBaseValue:?];
    v8 = [(NCNotificationContentView *)self _lazySummaryLabel];
    v9 = [v8 font];
    v10 = [(NCNotificationContentView *)self summaryText];
    [v9 unui_effectiveLineHeightForText:v10];

    v11 = NCRectWithSize();
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_clearCacheForFont:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableDictionary *)self->_widthToFontToStringToMeasuredNumLines allKeys];
  v5 = [v4 firstObject];

  if (v8 && v5)
  {
    v6 = [(NSMutableDictionary *)self->_widthToFontToStringToMeasuredNumLines objectForKey:v5];
    v7 = [v6 objectForKey:v8];
    [v7 removeAllObjects];
  }
}

- (unint64_t)_cachedNumberOfMeasuredLinesForText:(id)a3 withFont:(id)a4 forWidth:(double)a5 scale:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 length];
  v12 = v11 != 0;
  if (a5 > 0.0 && v11 != 0)
  {
    UIFloorToScale();
    v15 = v14;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v17 = [(NSMutableDictionary *)self->_widthToFontToStringToMeasuredNumLines objectForKey:v16];
    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NCNotificationContentView *)self _invalidateNumberOfLinesCache];
      [(NSMutableDictionary *)self->_widthToFontToStringToMeasuredNumLines setObject:v17 forKey:v16];
    }

    v18 = [v17 objectForKey:v10];
    if (!v18)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v17 setObject:v18 forKey:v10];
    }

    v19 = [v18 objectForKey:v9];
    v20 = v19;
    if (v19)
    {
      v12 = [v19 unsignedIntegerValue];
    }

    else
    {
      v12 = [(NCNotificationContentView *)self _numberOfMeasuredLinesForText:v9 withFont:v10 forSize:v15, 1.79769313e308];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
      [v18 setObject:v21 forKey:v9];
    }
  }

  return v12;
}

- (unint64_t)_numberOfMeasuredLinesForText:(id)a3 withFont:(id)a4 forSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!self->_drawingContext)
  {
    v11 = objc_alloc_init(MEMORY[0x277D74260]);
    drawingContext = self->_drawingContext;
    self->_drawingContext = v11;

    [(NSStringDrawingContext *)self->_drawingContext setWantsNumberOfLineFragments:1];
  }

  v16 = *MEMORY[0x277D740A8];
  v17[0] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [v9 boundingRectWithSize:1 options:v13 attributes:self->_drawingContext context:{width, height}];

  v14 = [(NSStringDrawingContext *)self->_drawingContext numberOfLineFragments];
  return v14;
}

- (CGSize)_sizeThatFits:(CGSize)a3 withContentInsets:(UIEdgeInsets)a4
{
  if (a3.width <= 0.0)
  {
    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_23;
  }

  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  if (self->_lookStyle)
  {
    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v11 = *MEMORY[0x277D3D340];
    v9 = 0.0;
    v12 = *MEMORY[0x277D3D340];
    v10 = *MEMORY[0x277D3D340];
  }

  v40 = v9;
  width = a3.width;
  v15 = NCSizeApplyInsets(a3.width, a3.height, v9, v10, v12, v11);
  v17 = NCSizeApplyInsets(v15, v16, top, left, bottom, right);
  v18 = [(NCNotificationContentView *)self thumbnail];
  if (v18)
  {

LABEL_9:
    if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
    {
      v20 = 50.0;
    }

    else
    {
      v20 = 35.0;
    }

    v21 = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
    v22 = 15.0;
    if (v21)
    {
      v22 = 0.0;
    }

    v17 = v17 - (v20 + v22);
    goto LABEL_15;
  }

  v19 = [(NCNotificationContentView *)self accessoryView];

  if (v19)
  {
    goto LABEL_9;
  }

LABEL_15:
  v23 = [(NCNotificationContentView *)self window];
  v39 = v12;
  if (v23)
  {
    v24 = [(NCNotificationContentView *)self window];
    v25 = [v24 screen];
    [v25 scale];
    v27 = v26;
  }

  else
  {
    v24 = [MEMORY[0x277D759A0] mainScreen];
    [v24 scale];
    v27 = v28;
  }

  v29 = [(NCNotificationContentView *)self _primaryTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _primaryTextMeasuredNumberOfLinesForWidth:v17 scale:v27]];
  v30 = [(NCNotificationContentView *)self _primarySubtitleTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _primarySubtitleTextMeasuredNumberOfLinesForWidth:v17 scale:v27]];
  v31 = [(NCNotificationContentView *)self _secondaryTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _secondaryTextMeasuredNumberOfLinesForWidth:v17 scale:v27]];
  v32 = [(NCNotificationContentView *)self _summaryTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _summaryTextMeasuredNumberOfLinesForWidth:v17 scale:v27]];
  [(NCNotificationContentView *)self topMarginToPrimaryLabelForCurrentStyle];
  [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
  [(NCNotificationContentView *)self _primaryLabelBoundsForSize:v29 withContentInsets:v17 andNumberOfLines:1.79769313e308, top, left, bottom, right];
  CGRectGetHeight(v43);
  [(NCNotificationContentView *)self _primarySubtitleLabelBoundsForSize:v30 withContentInsets:v17 andNumberOfLines:1.79769313e308, top, left, bottom, right];
  CGRectGetHeight(v44);
  [(NCNotificationContentView *)self _secondaryTextViewBoundsForSize:v31 withContentInsets:v17 andNumberOfLines:1.79769313e308, top, left, bottom, right];
  Height = CGRectGetHeight(v45);
  v34 = right;
  v35 = bottom;
  v36 = Height;
  [(NCNotificationContentView *)self _summaryLabelBoundsForSize:v32 withContentInsets:v17 andNumberOfLines:1.79769313e308, top, left, v35, v34];
  CGRectGetHeight(v46);
  if (fabs(v36) < 2.22044605e-16)
  {
    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetFromBottomWithBaseValue:v35];
  }

  v37 = [(NCNotificationContentView *)self thumbnail];
  if (!v37)
  {
    [(NCNotificationContentView *)self accessoryView];
  }

  UIRoundToViewScale();
  v14 = v39 + v40 + v38;
  v13 = width;
LABEL_23:
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NCNotificationContentView *)self _sizeThatFits:a3.width withContentInsets:a3.height, self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateContentInsets
{
  p_contentInsets = &self->_contentInsets;
  [(NCNotificationContentView *)self _contentInsetsForStyle:self->_lookStyle];
  p_contentInsets->top = v3;
  p_contentInsets->left = v4;
  p_contentInsets->bottom = v5;
  p_contentInsets->right = v6;
}

- (void)_updateTextAttributesForPrimaryLabel:(id)a3 withStyle:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v18 = v6;
    if (a4 == 1)
    {
      v7 = *MEMORY[0x277D76988];
      v8 = 8;
    }

    else
    {
      v9 = [MEMORY[0x277D75128] sharedApplication];
      v10 = [v9 preferredContentSizeCategory];
      IsAX = _NCSizeCategoryIsAX(v10);
      v12 = MEMORY[0x277D76918];
      if (!IsAX)
      {
        v12 = MEMORY[0x277D769D0];
      }

      v7 = *v12;

      v8 = 12;
    }

    v13 = [(NCNotificationContentView *)self fontProvider];
    v14 = [v13 preferredFontForTextStyle:v7 hiFontStyle:v8];
    [v18 setFont:v14];

    v15 = [MEMORY[0x277D75128] sharedApplication];
    v16 = [v15 preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(v16))
    {
      v17 = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
    }

    else
    {
      v17 = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
    }

    [v18 setNumberOfLines:v17];

    v6 = v18;
  }
}

- (void)_updateStyleForPrimaryLabel:(id)a3 withStyle:(int64_t)a4
{
  v7 = a3;
  [v7 mt_removeAllVisualStyling];
  if (a4 == 1)
  {
    v6 = [MEMORY[0x277D75348] labelColor];
    [v7 setTextColor:v6];
  }

  else
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:v7 withStyle:0];
  }
}

- (id)_newPrimaryLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:v3 withStyle:self->_lookStyle];
  return v3;
}

- (id)_lazyPrimaryLabel
{
  primaryLabel = self->_primaryLabel;
  if (!primaryLabel)
  {
    v4 = [(NCNotificationContentView *)self _newPrimaryLabel];
    v5 = self->_primaryLabel;
    self->_primaryLabel = v4;

    [(UIView *)self->_contentView addSubview:self->_primaryLabel];
    [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
    primaryLabel = self->_primaryLabel;
  }

  return primaryLabel;
}

- (void)setPrimaryText:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationContentView *)self primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    v6 = [(NCNotificationContentView *)self _lazyPrimaryLabel];
    v7 = [v6 font];
    [(NCNotificationContentView *)self _clearCacheForFont:v7];

    [v6 setText:v8];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (id)_lazyPrimarySubtitleLabel
{
  primarySubtitleLabel = self->_primarySubtitleLabel;
  if (!primarySubtitleLabel)
  {
    v4 = [(NCNotificationContentView *)self _newPrimaryLabel];
    v5 = self->_primarySubtitleLabel;
    self->_primarySubtitleLabel = v4;

    [(UIView *)self->_contentView addSubview:self->_primarySubtitleLabel];
    [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
    primarySubtitleLabel = self->_primarySubtitleLabel;
  }

  return primarySubtitleLabel;
}

- (void)setPrimarySubtitleText:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationContentView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    v6 = [(NCNotificationContentView *)self _lazyPrimarySubtitleLabel];
    v7 = [v6 font];
    [(NCNotificationContentView *)self _clearCacheForFont:v7];

    [v6 setText:v8];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (id)_lazyThumbnailImageView
{
  thumbnailImageView = self->_thumbnailImageView;
  if (!thumbnailImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    v5 = self->_thumbnailImageView;
    self->_thumbnailImageView = v4;

    [(UIImageView *)self->_thumbnailImageView setClipsToBounds:1];
    [(NCNotificationContentView *)self _configureThumbnailAsContactImage:[(NCNotificationContentView *)self isThumbnailContactImage]];
    [(UIView *)self->_contentView addSubview:self->_thumbnailImageView];
    [(NCNotificationContentView *)self _updateContentModeForThumbnailImage:self->_thumbnailImageView];
    [(NCNotificationContentView *)self _updateStyleForThumbnailImage:self->_thumbnailImageView withStyle:self->_lookStyle];
    thumbnailImageView = self->_thumbnailImageView;
  }

  return thumbnailImageView;
}

- (void)_updateTextAttributesForSecondaryTextSupportingView:(id)a3 withStyle:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v16 = v5;
    if (self->_lookStyle == 1)
    {
      v6 = *MEMORY[0x277D76918];
    }

    else
    {
      v7 = [MEMORY[0x277D75128] sharedApplication];
      v8 = [v7 preferredContentSizeCategory];
      IsAX = _NCSizeCategoryIsAX(v8);
      v10 = MEMORY[0x277D76918];
      if (!IsAX)
      {
        v10 = MEMORY[0x277D769D0];
      }

      v6 = *v10;
    }

    v11 = [(NCNotificationContentView *)self fontProvider];
    v12 = [v11 preferredFontForTextStyle:v6 hiFontStyle:8];
    [v16 setFont:v12];

    v13 = [MEMORY[0x277D75128] sharedApplication];
    v14 = [v13 preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(v14))
    {
      v15 = [(NCNotificationContentView *)self maximumNumberOfSecondaryLargeTextLines];
    }

    else
    {
      v15 = [(NCNotificationContentView *)self maximumNumberOfSecondaryTextLines];
    }

    [v16 nc_setNumberOfLines:v15];

    v5 = v16;
  }
}

- (unint64_t)_secondaryTextNumberOfLines
{
  if (self->_lookStyle == 1)
  {
    v3 = [(UITextView *)self->_secondaryTextView textContainer];
    v4 = [v3 maximumNumberOfLines];

    return v4;
  }

  else
  {
    secondaryLabel = self->_secondaryLabel;

    return [(UILabel *)secondaryLabel numberOfLines];
  }
}

- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)a3
{
  if (self->_maximumNumberOfPrimaryTextLines != a3)
  {
    self->_maximumNumberOfPrimaryTextLines = a3;
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(v5);

    if (!IsAX)
    {
      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
      primarySubtitleLabel = self->_primarySubtitleLabel;
      lookStyle = self->_lookStyle;

      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:primarySubtitleLabel withStyle:lookStyle];
    }
  }
}

- (void)setMaximumNumberOfPrimaryLargeTextLines:(unint64_t)a3
{
  if (self->_maximumNumberOfPrimaryLargeTextLines != a3)
  {
    self->_maximumNumberOfPrimaryLargeTextLines = a3;
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(v5);

    if (IsAX)
    {
      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
      primarySubtitleLabel = self->_primarySubtitleLabel;
      lookStyle = self->_lookStyle;

      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:primarySubtitleLabel withStyle:lookStyle];
    }
  }
}

- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)a3
{
  if (self->_maximumNumberOfSecondaryTextLines != a3)
  {
    self->_maximumNumberOfSecondaryTextLines = a3;
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(v5);

    if (!IsAX)
    {
      v7 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v7 withStyle:self->_lookStyle];
    }
  }
}

- (void)setMaximumNumberOfSecondaryLargeTextLines:(unint64_t)a3
{
  if (self->_maximumNumberOfSecondaryLargeTextLines != a3)
  {
    self->_maximumNumberOfSecondaryLargeTextLines = a3;
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(v5);

    if (IsAX)
    {
      v7 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v7 withStyle:self->_lookStyle];
    }
  }
}

- (void)_updateStyleForSecondaryTextSupportingView:(id)a3 withStyle:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    [v5 mt_removeAllVisualStyling];
    if (self->_lookStyle == 1)
    {
      v6 = [MEMORY[0x277D75348] labelColor];
      [v7 setTextColor:v6];
    }

    else
    {
      [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:v7 withStyle:0];
    }

    v5 = v7;
  }
}

- (void)_configureTextSupportingView:(id)a3
{
  v3 = a3;
  [v3 setContentMode:4];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];
}

- (id)_newSecondaryLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setLineBreakMode:4];
  [v3 _setTextAlignmentFollowsWritingDirection:1];
  [(NCNotificationContentView *)self _configureTextSupportingView:v3];
  [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v3 withStyle:self->_lookStyle];
  return v3;
}

- (id)_newSecondaryTextView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setEditable:0];
  [v3 setSelectable:self->_lookStyle == 1];
  [v3 setDataDetectorTypes:3];
  [v3 _setInteractiveTextSelectionDisabled:1];
  [v3 setScrollEnabled:0];
  [(NCNotificationContentView *)self _configureTextSupportingView:v3];
  v4 = [v3 textContainer];
  [v4 setLineFragmentPadding:0.0];

  v5 = [v3 textContainer];
  [v5 setLineBreakMode:4];

  [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v3 withStyle:self->_lookStyle];
  v6 = [v3 textLayoutManager];
  [v6 setLimitsLayoutForSuspiciousContents:1];

  if (self->_lookStyle == 1)
  {
    [v3 setDelegate:self];
  }

  return v3;
}

- (id)_secondaryTextSupportingView
{
  if (self->_lookStyle == 1)
  {
    v2 = &OBJC_IVAR___NCNotificationContentView__secondaryTextView;
  }

  else
  {
    v2 = &OBJC_IVAR___NCNotificationContentView__secondaryLabel;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (id)_lazySecondaryLabel
{
  secondaryLabel = self->_secondaryLabel;
  if (!secondaryLabel)
  {
    if (self->_lookStyle == 1)
    {
      secondaryLabel = 0;
    }

    else
    {
      v4 = [(NCNotificationContentView *)self _newSecondaryLabel];
      v5 = self->_secondaryLabel;
      self->_secondaryLabel = v4;

      [(UIView *)self->_contentView addSubview:self->_secondaryLabel];
      [(NCNotificationContentView *)self _updateStyleForSecondaryTextSupportingView:self->_secondaryLabel withStyle:self->_lookStyle];
      secondaryLabel = self->_secondaryLabel;
    }
  }

  return secondaryLabel;
}

- (id)_lazySecondaryTextView
{
  secondaryTextView = self->_secondaryTextView;
  if (!secondaryTextView)
  {
    if (self->_lookStyle == 1)
    {
      v4 = [(NCNotificationContentView *)self _newSecondaryTextView];
      v5 = self->_secondaryTextView;
      self->_secondaryTextView = v4;

      [(UIView *)self->_contentView addSubview:self->_secondaryTextView];
      [(NCNotificationContentView *)self _updateStyleForSecondaryTextSupportingView:self->_secondaryTextView withStyle:self->_lookStyle];
      secondaryTextView = self->_secondaryTextView;
    }

    else
    {
      secondaryTextView = 0;
    }
  }

  return secondaryTextView;
}

- (id)_lazySecondaryTextSupportingView
{
  v3 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
  if (!v3)
  {
    if (self->_lookStyle == 1)
    {
      [(NCNotificationContentView *)self _lazySecondaryTextView];
    }

    else
    {
      [(NCNotificationContentView *)self _lazySecondaryLabel];
    }
    v3 = ;
  }

  return v3;
}

- (NSAttributedString)secondaryText
{
  v2 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setSecondaryText:(id)a3
{
  v10 = a3;
  v4 = [(NCNotificationContentView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
    v7 = [v6 font];
    [(NCNotificationContentView *)self _clearCacheForFont:v7];

    v8 = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
    v9 = [v8 textColor];
    [v8 setAttributedText:v10];
    [v8 setTextColor:v9];
    [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v8 withStyle:self->_lookStyle];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSummaryLabel:(id)a3 withStyle:(int64_t)a4
{
  if (a3)
  {
    v7 = a3;
    v5 = [(NCNotificationContentView *)self fontProvider];
    v6 = [v5 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8];
    [v7 setFont:v6];

    [v7 setNumberOfLines:2];
  }
}

- (void)_updateStyleForSummaryLabel:(id)a3 withStyle:(int64_t)a4
{
  v5 = a3;
  [v5 mt_removeAllVisualStyling];
  [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:v5 withStyle:1];
}

- (id)_newSummaryLabel
{
  v3 = objc_alloc_init(MEMORY[0x277CF0D58]);
  [(NCNotificationContentView *)self _updateTextAttributesForSummaryLabel:v3 withStyle:self->_lookStyle];
  return v3;
}

- (id)_lazySummaryLabel
{
  summaryLabel = self->_summaryLabel;
  if (!summaryLabel)
  {
    v4 = [(NCNotificationContentView *)self _newSummaryLabel];
    v5 = self->_summaryLabel;
    self->_summaryLabel = v4;

    [(NCNotificationContentView *)self _updateStyleForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
    [(UIView *)self->_contentView addSubview:self->_summaryLabel];
    [(BSUIEmojiLabelView *)self->_summaryLabel setAccessibilityIdentifier:@"summary-label"];
    summaryLabel = self->_summaryLabel;
  }

  return summaryLabel;
}

- (void)setSummaryText:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationContentView *)self summaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    v6 = [(NCNotificationContentView *)self _lazySummaryLabel];
    v7 = [v6 font];
    [(NCNotificationContentView *)self _clearCacheForFont:v7];

    [v6 setText:v8];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (void)setThumbnail:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationContentView *)self thumbnail];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = [(NCNotificationContentView *)self _lazyThumbnailImageView];
    [v6 setImage:v7];
    [(NCNotificationContentView *)self _updateContentModeForThumbnailImage:self->_thumbnailImageView];
    [(NCNotificationContentView *)self _updateStyleForThumbnailImage:self->_thumbnailImageView withStyle:self->_lookStyle];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (void)setThumbnailIsContactImage:(BOOL)a3
{
  if (self->_thumbnailIsContactImage != a3)
  {
    self->_thumbnailIsContactImage = a3;
    [(NCNotificationContentView *)self _configureThumbnailAsContactImage:?];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)a3
{
  if (self->_screenCaptureProhibited != a3)
  {
    self->_screenCaptureProhibited = a3;
    [(NCNotificationContentView *)self nc_setScreenCaptureProhibited:?];
  }
}

- (void)_updateContentModeForThumbnailImage:(id)a3
{
  thumbnailImageView = self->_thumbnailImageView;
  v5 = [a3 image];
  if ([v5 isSymbolImage])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [(UIImageView *)thumbnailImageView setContentMode:v4];
}

- (void)_updateStyleForThumbnailImage:(id)a3 withStyle:(int64_t)a4
{
  v8 = a3;
  [v8 mt_removeAllVisualStyling];
  v6 = [v8 image];
  v7 = [v6 isSymbolImage];

  if (a4 != 1 && v7)
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:v8 withStyle:0];
  }
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  accessoryView = self->_accessoryView;
  if (accessoryView != v5)
  {
    v7 = v5;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, a3);
    accessoryView = [(UIView *)self->_contentView addSubview:v7];
  }

  MEMORY[0x2821F96F8](accessoryView);
}

- (void)setUseSmallTopMargin:(BOOL)a3
{
  if (self->_useSmallTopMargin != a3)
  {
    self->_useSmallTopMargin = a3;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (BSUIFontProvider)fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(NCNotificationContentView *)self adjustsFontForContentSizeCategory])
    {
      [MEMORY[0x277CF0D60] preferredFontProvider];
    }

    else
    {
      [MEMORY[0x277CF0D60] defaultFontProvider];
    }
    v3 = ;
    fontProvider = self->_fontProvider;
    self->_fontProvider = v3;
  }

  v5 = self->_fontProvider;

  return v5;
}

- (void)setFontProvider:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fontProvider, a3);
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
    v5 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
    [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v5 withStyle:self->_lookStyle];

    [(NCNotificationContentView *)self _updateTextAttributesForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (CGRect)_frameForThumbnailInRect:(CGRect)a3 withContentViewInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  left = a4.left;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection:a3.origin.x])
  {
    v11 = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
    v12 = 0.0;
    if (v11)
    {
      v12 = 15.0;
    }

    v13 = v12 - left;
  }

  else
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = CGRectGetWidth(v21);
    if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
    {
      v15 = 15.0;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = v14 - v15 + -35.0;
    if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 15.0;
    }

    v13 = v16 - v17 - right;
  }

  v18 = 35.0;
  v19 = 0.0;
  v20 = 35.0;
  result.size.height = v20;
  result.size.width = v18;
  result.origin.y = v19;
  result.origin.x = v13;
  return result;
}

- (void)_configureThumbnailAsContactImage:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIImageView *)self->_thumbnailImageView layer];
  v6 = v5;
  v7 = 17.5;
  if (v3)
  {
    v8 = MEMORY[0x277CDA130];
  }

  else
  {
    v7 = 3.0;
    v8 = MEMORY[0x277CDA138];
  }

  [v5 setCornerRadius:v7];

  v9 = [(UIImageView *)self->_thumbnailImageView layer];
  [v9 setCornerCurve:*v8];
}

- (void)layoutSubviews
{
  [(NCNotificationContentView *)self bounds];
  if (CGRectGetWidth(v4) > 0.0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __43__NCNotificationContentView_layoutSubviews__block_invoke;
    v3[3] = &unk_27836F6A8;
    v3[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v3];
    if (self->_hasUpdatedContent)
    {
      [(NCNotificationContentView *)self pl_performCrossFadeIfNecessary];
      self->_hasUpdatedContent = 0;
    }
  }
}

- (void)_layoutSubviews
{
  [(NCNotificationContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NCNotificationContentView *)self window];
  if (v11)
  {
    v12 = [(NCNotificationContentView *)self window];
    v13 = [v12 screen];
    [v13 scale];
    v159 = v14;
  }

  else
  {
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    v159 = v15;
  }

  if (self->_lookStyle)
  {
    v17 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v19 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
    v18 = *MEMORY[0x277D3D340];
    v17 = 0.0;
    v19 = *MEMORY[0x277D3D340];
    v16 = *MEMORY[0x277D3D340];
  }

  NCRectApplyInsets();
  v150 = v21;
  v151 = v20;
  v161 = v23;
  v162 = v22;
  v24 = [(NCNotificationContentView *)self thumbnail];
  if (v24)
  {
  }

  else
  {
    v25 = [(NCNotificationContentView *)self accessoryView];

    if (!v25)
    {
      v41 = 0;
      v136 = *MEMORY[0x277CBF3A0];
      rect = *(MEMORY[0x277CBF3A0] + 8);
      v149 = *(MEMORY[0x277CBF3A0] + 16);
      v155 = *(MEMORY[0x277CBF3A0] + 24);
      left = self->_contentInsets.left;
      top = self->_contentInsets.top;
      right = self->_contentInsets.right;
      bottom = self->_contentInsets.bottom;
      goto LABEL_19;
    }
  }

  [(NCNotificationContentView *)self _frameForThumbnailInRect:v4 withContentViewInsets:v6, v8, v10, v17, v16, v19, v18];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  left = self->_contentInsets.left;
  top = self->_contentInsets.top;
  right = self->_contentInsets.right;
  bottom = self->_contentInsets.bottom;
  v36 = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
  {
    v37 = 50.0;
  }

  else
  {
    v37 = 35.0;
  }

  v38 = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
  v39 = 15.0;
  if (v38)
  {
    v39 = 0.0;
  }

  v40 = v37 + v39;
  v136 = v27;
  v149 = v31;
  v155 = v33;
  rect = v29;
  if (v36)
  {
    left = left + v40;
  }

  else
  {
    right = right + v40;
  }

  v41 = 1;
LABEL_19:
  v160 = left;
  NCRectApplyInsets();
  Width = CGRectGetWidth(v164);
  v42 = [(NCNotificationContentView *)self _primaryTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _primaryTextMeasuredNumberOfLinesForWidth:Width scale:v159]];
  v154 = right;
  [(NCNotificationContentView *)self _primaryLabelBoundsForSize:v42 withContentInsets:v162 andNumberOfLines:v161, top, left, bottom, right];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  [(UILabel *)self->_primaryLabel setBounds:?];
  [(NCNotificationContentView *)self topMarginToPrimaryLabelForCurrentStyle];
  [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
  [(NCNotificationContentView *)self _primaryTextBaselineOffsetForCurrentStyle];
  [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
  [(UILabel *)self->_primaryLabel _firstLineBaselineOffsetFromBoundsTop];
  v165.origin.x = v44;
  v165.origin.y = v46;
  v165.size.width = v48;
  v165.size.height = v50;
  CGRectGetWidth(v165);
  v166.origin.x = v44;
  v166.origin.y = v46;
  v166.size.width = v48;
  v51 = v160;
  v166.size.height = v50;
  CGRectGetHeight(v166);
  UIRectIntegralWithScale();
  v147 = v53;
  v148 = v52;
  v145 = v55;
  v146 = v54;
  if (v42)
  {
    v56 = v41;
  }

  else
  {
    v56 = 0;
  }

  if (v56 == 1)
  {
    v57 = v160;
    v58 = [(UILabel *)self->_primaryLabel font];
    [v58 capHeight];
    UICeilToScale();
    rect = v59;

LABEL_26:
    v60 = v154;
    v61 = [(UILabel *)self->_primaryLabel font];
    v62 = [(NCNotificationContentView *)self primaryText];
    [v61 unui_effectiveLineHeightForText:v62];

    v51 = v57;
    goto LABEL_27;
  }

  if (v42)
  {
    v57 = v160;
    goto LABEL_26;
  }

  v60 = right;
LABEL_27:
  v63 = [(NCNotificationContentView *)self _primarySubtitleTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _primarySubtitleTextMeasuredNumberOfLinesForWidth:Width scale:v159]];
  [(NCNotificationContentView *)self _primarySubtitleLabelBoundsForSize:v63 withContentInsets:v162 andNumberOfLines:v161, top, v51, bottom, v60];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  [(UILabel *)self->_primarySubtitleLabel setBounds:?];
  if (v42)
  {
    [(NCNotificationContentView *)self _primarySubtitleTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
  }

  [(UILabel *)self->_primarySubtitleLabel _firstLineBaselineOffsetFromBoundsTop];
  v167.origin.x = v65;
  v167.origin.y = v67;
  v167.size.width = v69;
  v167.size.height = v71;
  CGRectGetWidth(v167);
  v168.origin.x = v65;
  v168.origin.y = v67;
  v168.size.width = v69;
  v168.size.height = v71;
  CGRectGetHeight(v168);
  UIRectIntegralWithScale();
  v143 = v73;
  v144 = v72;
  v141 = v75;
  v142 = v74;
  if (v42)
  {
    v76 = 1;
  }

  else
  {
    v76 = v41 ^ 1;
  }

  if ((v76 & 1) != 0 || !v63)
  {
    v79 = v154;
    if (!v63)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v77 = [(UILabel *)self->_primarySubtitleLabel font];
    [v77 capHeight];
    UICeilToScale();
    rect = v78;

    v56 = 1;
    v79 = v154;
  }

  v80 = [(UILabel *)self->_primarySubtitleLabel font];
  v81 = [(NCNotificationContentView *)self primarySubtitleText];
  [v80 unui_effectiveLineHeightForText:v81];

LABEL_37:
  v82 = [(NCNotificationContentView *)self _secondaryTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _secondaryTextMeasuredNumberOfLinesForWidth:Width scale:v159]];
  [(NCNotificationContentView *)self _secondaryTextViewBoundsForSize:v82 withContentInsets:v162 andNumberOfLines:v161, top, v160, bottom, v79];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v152 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
  [v152 setBounds:{v84, v86, v88, v90}];
  if (v42 | v63)
  {
    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetWithBaseValue:?];
  }

  secondaryTextView = self->_secondaryTextView;
  if (secondaryTextView && ([(UITextView *)secondaryTextView textContainerInset], (v92 = self->_secondaryTextView) != 0))
  {
    [(UITextView *)v92 unui_baselineOffsetForFirstGlyph];
  }

  else
  {
    [(UILabel *)self->_secondaryLabel _firstLineBaselineOffsetFromBoundsTop];
  }

  v169.origin.x = v84;
  v169.origin.y = v86;
  v169.size.width = v88;
  v169.size.height = v90;
  CGRectGetWidth(v169);
  v170.origin.x = v84;
  v170.origin.y = v86;
  v170.size.width = v88;
  v170.size.height = v90;
  CGRectGetHeight(v170);
  v93 = v159;
  v94 = v160;
  UIRectIntegralWithScale();
  v139 = v96;
  v140 = v95;
  v137 = v98;
  v138 = v97;
  if ((v56 | v41 ^ 1))
  {
    v99 = v136;
    v100 = v149;
    v101 = v155;
  }

  else
  {
    v102 = [(NCNotificationContentView *)self secondaryText];
    v103 = [v102 length];

    v99 = v136;
    v100 = v149;
    v101 = v155;
    if (v103)
    {
      v104 = [v152 font];
      [v104 capHeight];
      UICeilToScale();
      rect = v105;
    }
  }

  if (v82)
  {
    v106 = [v152 font];
    v107 = [(NCNotificationContentView *)self secondaryText];
    v108 = [v107 string];
    [v106 unui_effectiveLineHeightForText:v108];
  }

  v109 = v63 + v42 + v82;
  if (v41)
  {
    if (v109 == 1)
    {
      v135 = _NCMainScreenScale();
      UIRectCenteredYInRectScale();
      v101 = v113;
      v94 = v160;
      v93 = v159;
    }

    else
    {
      UIRectIntegralWithScale();
      v101 = v116;
    }

    v114 = v110;
    v115 = v112;
    v117 = v101;
    MinY = CGRectGetMinY(*&v110);
    rect = (MinY & ~(MinY >> 31));
  }

  else
  {
    v114 = v99;
    v115 = v100;
  }

  [(NCNotificationContentView *)self _summaryLabelBoundsForSize:[(NCNotificationContentView *)self _summaryTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _summaryTextMeasuredNumberOfLinesForWidth:Width scale:v93 withContentInsets:*&v135]] andNumberOfLines:v162, v161, top, v94, bottom, v154];
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  [(BSUIEmojiLabelView *)self->_summaryLabel setBounds:?];
  if (v109 <= 1)
  {
    v171.origin.x = v114;
    v171.origin.y = rect;
    v171.size.width = v115;
    v171.size.height = v101;
    CGRectGetMaxY(v171);
  }

  [(NCNotificationContentView *)self _summaryTextBaselineOffsetForCurrentStyle];
  [(NCNotificationContentView *)self _summaryTextBaselineOffsetWithBaseValue:?];
  [(BSUIEmojiLabelView *)self->_summaryLabel _firstLineBaselineOffsetFromBoundsTop];
  v172.origin.x = v120;
  v172.origin.y = v122;
  v172.size.width = v124;
  v172.size.height = v126;
  CGRectGetWidth(v172);
  v173.origin.x = v120;
  v173.origin.y = v122;
  v173.size.width = v124;
  v173.size.height = v126;
  CGRectGetHeight(v173);
  UIRectIntegralWithScale();
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v134 = v133;
  [(UIView *)self->_contentView setFrame:v151, v150, v162, v161];
  [(UILabel *)self->_primaryLabel setFrame:v148, v147, v146, v145];
  [(UILabel *)self->_primarySubtitleLabel setFrame:v144, v143, v142, v141];
  [v152 setFrame:{v140, v139, v138, v137}];
  [(BSUIEmojiLabelView *)self->_summaryLabel setFrame:v128, v130, v132, v134];
  [(UIImageView *)self->_thumbnailImageView setFrame:v114, rect, v115, v101];
  [(UIView *)self->_accessoryView setFrame:v114, rect, v115, v101];
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  if (a3 == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  visualStylingProvider = a3;
  v8 = visualStylingProvider;
  if (a4 == 1)
  {
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider != v8)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_primaryLabel];
      [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_primarySubtitleLabel];
      v9 = self->_visualStylingProvider;
      v10 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:v10];

      [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_summaryLabel];
      [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_thumbnailImageView];
      objc_storeStrong(&self->_visualStylingProvider, a3);
      [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
      [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
      v11 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(NCNotificationContentView *)self _updateStyleForSecondaryTextSupportingView:v11 withStyle:self->_lookStyle];

      [(NCNotificationContentView *)self _updateStyleForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
      [(NCNotificationContentView *)self _updateStyleForThumbnailImage:self->_thumbnailImageView withStyle:self->_lookStyle];
      visualStylingProvider = [(NCNotificationContentView *)self setNeedsDisplay];
    }
  }

  MEMORY[0x2821F96F8](visualStylingProvider);
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    if (a3)
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      v6 = [v5 preferredContentSizeCategory];
      [(NCNotificationContentView *)self setPreferredContentSizeCategory:v6];
    }

    [(NCNotificationContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (NSString)preferredContentSizeCategory
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (!preferredContentSizeCategory)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    preferredContentSizeCategory = self->_preferredContentSizeCategory;
  }

  return preferredContentSizeCategory;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [(NCNotificationContentView *)self preferredContentSizeCategory];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(NCNotificationContentView *)self setPreferredContentSizeCategory:v4];
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(NCNotificationContentView *)self _updateContentInsets];
    [(NCNotificationContentView *)self _invalidateNumberOfLinesCache];
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
    v8 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
    [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v8 withStyle:self->_lookStyle];

    [(NCNotificationContentView *)self _updateTextAttributesForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
  }

  return v6 ^ 1;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationContentView;
  [(NCNotificationContentView *)&v4 traitCollectionDidChange:a3];
  if ([(NCNotificationContentView *)self adjustsFontForContentSizeCategory])
  {
    [(NCNotificationContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v9 = a4;
  if (!a6 && self->_secondaryTextView == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained notificationContentView:self willInteractWithURL:v9];
    }

    v11 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__NCNotificationContentView_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
    block[3] = &unk_27836F6A8;
    v14 = v9;
    dispatch_async(v11, block);
  }

  return 0;
}

void __80__NCNotificationContentView_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:*(a1 + 32)];
  if ([v3 isValid])
  {
    [v3 setShowUIPrompt:1];
    v4 = [v3 URL];

    v2 = v4;
  }

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = *MEMORY[0x277D0AC70];
  v8[0] = *MEMORY[0x277D0AC58];
  v8[1] = v6;
  v9[0] = MEMORY[0x277CBEC38];
  v9[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v5 openSensitiveURL:v2 withOptions:v7 error:0];
}

- (id)textView:(id)a3 writingToolsIgnoredRangesInEnclosingRange:(_NSRange)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAE60] valueWithRange:{a4.location, a4.length}];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationContentView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__NCNotificationContentView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_27836F560;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __67__NCNotificationContentView_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) primaryText];
  [v2 appendString:v3 withName:@"primaryText" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) primarySubtitleText];
  [v4 appendString:v5 withName:@"primarySubtitleText" skipIfEmpty:1];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) secondaryText];
  v8 = [v6 appendObject:v7 withName:@"secondaryText" skipIfNil:1];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) thumbnail];
  v11 = [v9 appendObject:v10 withName:@"thumbnail" skipIfNil:1];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) accessoryView];
  v14 = [v12 appendObject:v13 withName:@"accessoryView" skipIfNil:1];

  v15 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maximumNumberOfPrimaryTextLines"), @"maximumNumberOfPrimaryTextLines"}];
  v16 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maximumNumberOfPrimaryLargeTextLines"), @"maximumNumberOfPrimaryLargeTextLines"}];
  v17 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maximumNumberOfSecondaryTextLines"), @"maximumNumberOfSecondaryTextLines"}];
  return [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"maximumNumberOfSecondaryLargeTextLines"), @"maximumNumberOfSecondaryLargeTextLines"}];
}

- (NCNotificationContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end