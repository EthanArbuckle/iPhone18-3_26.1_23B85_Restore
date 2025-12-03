@interface NCNotificationContentView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (BSUIFontProvider)fontProvider;
- (CGRect)_frameForThumbnailInRect:(CGRect)rect withContentViewInsets:(UIEdgeInsets)insets;
- (CGRect)_primaryLabelBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines;
- (CGRect)_primarySubtitleLabelBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines;
- (CGRect)_secondaryTextViewBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines;
- (CGRect)_summaryLabelBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines;
- (CGSize)_sizeThatFits:(CGSize)fits withContentInsets:(UIEdgeInsets)insets;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationContentView)initWithStyle:(int64_t)style;
- (NCNotificationContentViewDelegate)delegate;
- (NSAttributedString)secondaryText;
- (NSString)preferredContentSizeCategory;
- (UIEdgeInsets)_contentInsets;
- (UIEdgeInsets)_contentInsetsForLongLook;
- (UIEdgeInsets)_contentInsetsForShortLook;
- (UIEdgeInsets)_contentInsetsForStyle:(int64_t)style;
- (double)_primarySubtitleTextBaselineOffsetForCurrentStyle;
- (double)_primaryTextBaselineOffsetForCurrentStyle;
- (double)_primaryTextBaselineOffsetWithBaseValue:(double)value;
- (double)_secondaryTextBaselineOffsetForCurrentStyle;
- (double)_secondaryTextBaselineOffsetFromBottomWithBaseValue:(double)value;
- (double)_secondaryTextBaselineOffsetWithBaseValue:(double)value;
- (double)_summaryTextBaselineOffsetForCurrentStyle;
- (double)_summaryTextBaselineOffsetWithBaseValue:(double)value;
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
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)textView:(id)view writingToolsIgnoredRangesInEnclosingRange:(_NSRange)range;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (unint64_t)_cachedNumberOfMeasuredLinesForText:(id)text withFont:(id)font forWidth:(double)width scale:(double)scale;
- (unint64_t)_numberOfMeasuredLinesForText:(id)text withFont:(id)font forSize:(CGSize)size;
- (unint64_t)_primarySubtitleTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale;
- (unint64_t)_primarySubtitleTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines;
- (unint64_t)_primaryTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale;
- (unint64_t)_primaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines;
- (unint64_t)_secondaryTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale;
- (unint64_t)_secondaryTextNumberOfLines;
- (unint64_t)_secondaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines;
- (unint64_t)_summaryTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale;
- (unint64_t)_summaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines;
- (void)_clearCacheForFont:(id)font;
- (void)_configureTextSupportingView:(id)view;
- (void)_configureThumbnailAsContactImage:(BOOL)image;
- (void)_layoutSubviews;
- (void)_updateContentInsets;
- (void)_updateContentModeForThumbnailImage:(id)image;
- (void)_updateStyleForPrimaryLabel:(id)label withStyle:(int64_t)style;
- (void)_updateStyleForSecondaryTextSupportingView:(id)view withStyle:(int64_t)style;
- (void)_updateStyleForSummaryLabel:(id)label withStyle:(int64_t)style;
- (void)_updateStyleForThumbnailImage:(id)image withStyle:(int64_t)style;
- (void)_updateTextAttributesForPrimaryLabel:(id)label withStyle:(int64_t)style;
- (void)_updateTextAttributesForSecondaryTextSupportingView:(id)view withStyle:(int64_t)style;
- (void)_updateTextAttributesForSummaryLabel:(id)label withStyle:(int64_t)style;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)view;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setFontProvider:(id)provider;
- (void)setMaximumNumberOfPrimaryLargeTextLines:(unint64_t)lines;
- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)lines;
- (void)setMaximumNumberOfSecondaryLargeTextLines:(unint64_t)lines;
- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)lines;
- (void)setPrimarySubtitleText:(id)text;
- (void)setPrimaryText:(id)text;
- (void)setScreenCaptureProhibited:(BOOL)prohibited;
- (void)setSecondaryText:(id)text;
- (void)setSummaryText:(id)text;
- (void)setThumbnail:(id)thumbnail;
- (void)setThumbnailIsContactImage:(BOOL)image;
- (void)setUseSmallTopMargin:(BOOL)margin;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCNotificationContentView

- (NCNotificationContentView)initWithStyle:(int64_t)style
{
  v16.receiver = self;
  v16.super_class = NCNotificationContentView;
  v4 = [(NCNotificationContentView *)&v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_lookStyle = style;
    p_contentInsets = &v4->_contentInsets;
    [(NCNotificationContentView *)v4 _contentInsetsForStyle:style];
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

- (double)_primaryTextBaselineOffsetWithBaseValue:(double)value
{
  _lazyPrimaryLabel = [(NCNotificationContentView *)self _lazyPrimaryLabel];
  font = [_lazyPrimaryLabel font];

  primaryText = [(NCNotificationContentView *)self primaryText];
  [font unui_effectiveScaledValueForValue:objc_msgSend(font hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", primaryText), value}];
  v9 = v8;

  return v9;
}

- (double)_secondaryTextBaselineOffsetWithBaseValue:(double)value
{
  _lazySecondaryTextSupportingView = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
  font = [_lazySecondaryTextSupportingView font];

  secondaryText = [(NCNotificationContentView *)self secondaryText];
  string = [secondaryText string];
  [font unui_effectiveScaledValueForValue:objc_msgSend(font hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", string), value}];
  v10 = v9;

  return v10;
}

- (double)_secondaryTextBaselineOffsetFromBottomWithBaseValue:(double)value
{
  _lazyPrimaryLabel = [(NCNotificationContentView *)self _lazyPrimaryLabel];
  font = [_lazyPrimaryLabel font];

  primaryText = [(NCNotificationContentView *)self primaryText];
  [font unui_effectiveScaledValueForValue:objc_msgSend(font hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", primaryText), value}];
  v9 = v8;

  return v9;
}

- (double)_summaryTextBaselineOffsetWithBaseValue:(double)value
{
  _lazySummaryLabel = [(NCNotificationContentView *)self _lazySummaryLabel];
  font = [_lazySummaryLabel font];

  summaryText = [(NCNotificationContentView *)self summaryText];
  [font unui_effectiveScaledValueForValue:objc_msgSend(font hasExuberatedLineHeight:{"unui_hasExuberatedLineHeightForText:", summaryText), value}];
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

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

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

- (UIEdgeInsets)_contentInsetsForStyle:(int64_t)style
{
  if (style == 1)
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
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(preferredContentSizeCategory))
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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

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
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(preferredContentSizeCategory))
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

- (unint64_t)_primaryTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale
{
  primaryText = [(NCNotificationContentView *)self primaryText];
  v8 = [primaryText length] != 0;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(preferredContentSizeCategory))
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v12 = maximumNumberOfPrimaryLargeTextLines;

  if (v12 == 1)
  {
    return v8;
  }

  _lazyPrimaryLabel = [(NCNotificationContentView *)self _lazyPrimaryLabel];
  text = [_lazyPrimaryLabel text];
  font = [_lazyPrimaryLabel font];
  v17 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:text withFont:font forWidth:width scale:scale];

  return v17;
}

- (unint64_t)_primaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(preferredContentSizeCategory))
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

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory2 = [mEMORY[0x277D75128]2 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(preferredContentSizeCategory2))
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v10 = maximumNumberOfPrimaryLargeTextLines;

  if (lines >= v10)
  {
    lines = v10;
  }

LABEL_10:

  return lines;
}

- (CGRect)_primaryLabelBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines
{
  primaryText = [(NCNotificationContentView *)self primaryText];
  v7 = [primaryText length];

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

- (unint64_t)_primarySubtitleTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale
{
  primarySubtitleText = [(NCNotificationContentView *)self primarySubtitleText];
  v8 = [primarySubtitleText length] != 0;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(preferredContentSizeCategory))
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v12 = maximumNumberOfPrimaryLargeTextLines;

  if (v12 == 1)
  {
    return v8;
  }

  _lazyPrimarySubtitleLabel = [(NCNotificationContentView *)self _lazyPrimarySubtitleLabel];
  text = [_lazyPrimarySubtitleLabel text];
  font = [_lazyPrimarySubtitleLabel font];
  v17 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:text withFont:font forWidth:width scale:scale];

  return v17;
}

- (unint64_t)_primarySubtitleTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(preferredContentSizeCategory))
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

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory2 = [mEMORY[0x277D75128]2 preferredContentSizeCategory];
  if (_NCSizeCategoryIsAX(preferredContentSizeCategory2))
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
  }

  else
  {
    maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
  }

  v10 = maximumNumberOfPrimaryLargeTextLines;

  if (lines >= v10)
  {
    lines = v10;
  }

LABEL_10:

  return lines;
}

- (CGRect)_primarySubtitleLabelBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines
{
  primarySubtitleText = [(NCNotificationContentView *)self primarySubtitleText];
  v7 = [primarySubtitleText length];

  if (v7)
  {
    [(NCNotificationContentView *)self _primarySubtitleTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _primaryTextBaselineOffsetWithBaseValue:?];
    primaryText = [(NCNotificationContentView *)self primaryText];
    v9 = [primaryText length];

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

- (unint64_t)_secondaryTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale
{
  _lazySecondaryTextSupportingView = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
  secondaryText = [(NCNotificationContentView *)self secondaryText];
  v9 = [secondaryText length];

  if (width <= 0.0 || v9 == 0)
  {
    v14 = 0;
  }

  else
  {
    secondaryText2 = [(NCNotificationContentView *)self secondaryText];
    string = [secondaryText2 string];
    font = [_lazySecondaryTextSupportingView font];
    v14 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:string withFont:font forWidth:width scale:scale];
  }

  return v14;
}

- (unint64_t)_secondaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines
{
  _lazySecondaryTextSupportingView = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
  _secondaryTextNumberOfLines = [(NCNotificationContentView *)self _secondaryTextNumberOfLines];
  if (lines >= _secondaryTextNumberOfLines)
  {
    linesCopy = _secondaryTextNumberOfLines;
  }

  else
  {
    linesCopy = lines;
  }

  if (_secondaryTextNumberOfLines <= 0)
  {
    return lines;
  }

  else
  {
    return linesCopy;
  }
}

- (CGRect)_secondaryTextViewBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines
{
  bottom = insets.bottom;
  secondaryText = [(NCNotificationContentView *)self secondaryText];
  v8 = [secondaryText length];

  if (v8)
  {
    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _secondaryTextBaselineOffsetWithBaseValue:?];
    _lazySecondaryTextSupportingView = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
    font = [_lazySecondaryTextSupportingView font];
    secondaryText2 = [(NCNotificationContentView *)self secondaryText];
    string = [secondaryText2 string];
    [font unui_effectiveLineHeightForText:string];

    primaryText = [(NCNotificationContentView *)self primaryText];
    v14 = [primaryText length];

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

- (unint64_t)_summaryTextMeasuredNumberOfLinesForWidth:(double)width scale:(double)scale
{
  _lazySummaryLabel = [(NCNotificationContentView *)self _lazySummaryLabel];
  text = [_lazySummaryLabel text];
  v9 = [text length];

  if (width <= 0.0 || v9 == 0)
  {
    v13 = 0;
  }

  else
  {
    text2 = [_lazySummaryLabel text];
    font = [_lazySummaryLabel font];
    v13 = [(NCNotificationContentView *)self _cachedNumberOfMeasuredLinesForText:text2 withFont:font forWidth:width scale:scale];
  }

  return v13;
}

- (unint64_t)_summaryTextNumberOfLinesWithMeasuredNumberOfLines:(unint64_t)lines
{
  if (lines >= 2)
  {
    return 2;
  }

  else
  {
    return lines;
  }
}

- (CGRect)_summaryLabelBoundsForSize:(CGSize)size withContentInsets:(UIEdgeInsets)insets andNumberOfLines:(unint64_t)lines
{
  summaryText = [(NCNotificationContentView *)self summaryText];
  v7 = [summaryText length];

  if (v7)
  {
    [(NCNotificationContentView *)self _summaryTextBaselineOffsetForCurrentStyle];
    [(NCNotificationContentView *)self _summaryTextBaselineOffsetWithBaseValue:?];
    _lazySummaryLabel = [(NCNotificationContentView *)self _lazySummaryLabel];
    font = [_lazySummaryLabel font];
    summaryText2 = [(NCNotificationContentView *)self summaryText];
    [font unui_effectiveLineHeightForText:summaryText2];

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

- (void)_clearCacheForFont:(id)font
{
  fontCopy = font;
  allKeys = [(NSMutableDictionary *)self->_widthToFontToStringToMeasuredNumLines allKeys];
  firstObject = [allKeys firstObject];

  if (fontCopy && firstObject)
  {
    v6 = [(NSMutableDictionary *)self->_widthToFontToStringToMeasuredNumLines objectForKey:firstObject];
    v7 = [v6 objectForKey:fontCopy];
    [v7 removeAllObjects];
  }
}

- (unint64_t)_cachedNumberOfMeasuredLinesForText:(id)text withFont:(id)font forWidth:(double)width scale:(double)scale
{
  textCopy = text;
  fontCopy = font;
  v11 = [textCopy length];
  unsignedIntegerValue = v11 != 0;
  if (width > 0.0 && v11 != 0)
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

    v18 = [v17 objectForKey:fontCopy];
    if (!v18)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v17 setObject:v18 forKey:fontCopy];
    }

    v19 = [v18 objectForKey:textCopy];
    v20 = v19;
    if (v19)
    {
      unsignedIntegerValue = [v19 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = [(NCNotificationContentView *)self _numberOfMeasuredLinesForText:textCopy withFont:fontCopy forSize:v15, 1.79769313e308];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      [v18 setObject:v21 forKey:textCopy];
    }
  }

  return unsignedIntegerValue;
}

- (unint64_t)_numberOfMeasuredLinesForText:(id)text withFont:(id)font forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v17[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  fontCopy = font;
  if (!self->_drawingContext)
  {
    v11 = objc_alloc_init(MEMORY[0x277D74260]);
    drawingContext = self->_drawingContext;
    self->_drawingContext = v11;

    [(NSStringDrawingContext *)self->_drawingContext setWantsNumberOfLineFragments:1];
  }

  v16 = *MEMORY[0x277D740A8];
  v17[0] = fontCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [textCopy boundingRectWithSize:1 options:v13 attributes:self->_drawingContext context:{width, height}];

  numberOfLineFragments = [(NSStringDrawingContext *)self->_drawingContext numberOfLineFragments];
  return numberOfLineFragments;
}

- (CGSize)_sizeThatFits:(CGSize)fits withContentInsets:(UIEdgeInsets)insets
{
  if (fits.width <= 0.0)
  {
    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_23;
  }

  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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
  width = fits.width;
  v15 = NCSizeApplyInsets(fits.width, fits.height, v9, v10, v12, v11);
  v17 = NCSizeApplyInsets(v15, v16, top, left, bottom, right);
  thumbnail = [(NCNotificationContentView *)self thumbnail];
  if (thumbnail)
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

    _shouldReverseLayoutDirection = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
    v22 = 15.0;
    if (_shouldReverseLayoutDirection)
    {
      v22 = 0.0;
    }

    v17 = v17 - (v20 + v22);
    goto LABEL_15;
  }

  accessoryView = [(NCNotificationContentView *)self accessoryView];

  if (accessoryView)
  {
    goto LABEL_9;
  }

LABEL_15:
  window = [(NCNotificationContentView *)self window];
  v39 = v12;
  if (window)
  {
    window2 = [(NCNotificationContentView *)self window];
    screen = [window2 screen];
    [screen scale];
    v27 = v26;
  }

  else
  {
    window2 = [MEMORY[0x277D759A0] mainScreen];
    [window2 scale];
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

  thumbnail2 = [(NCNotificationContentView *)self thumbnail];
  if (!thumbnail2)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NCNotificationContentView *)self _sizeThatFits:fits.width withContentInsets:fits.height, self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right];
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

- (void)_updateTextAttributesForPrimaryLabel:(id)label withStyle:(int64_t)style
{
  labelCopy = label;
  if (labelCopy)
  {
    v18 = labelCopy;
    if (style == 1)
    {
      v7 = *MEMORY[0x277D76988];
      v8 = 8;
    }

    else
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
      IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);
      v12 = MEMORY[0x277D76918];
      if (!IsAX)
      {
        v12 = MEMORY[0x277D769D0];
      }

      v7 = *v12;

      v8 = 12;
    }

    fontProvider = [(NCNotificationContentView *)self fontProvider];
    v14 = [fontProvider preferredFontForTextStyle:v7 hiFontStyle:v8];
    [v18 setFont:v14];

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x277D75128]2 preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(preferredContentSizeCategory2))
    {
      maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryLargeTextLines];
    }

    else
    {
      maximumNumberOfPrimaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfPrimaryTextLines];
    }

    [v18 setNumberOfLines:maximumNumberOfPrimaryLargeTextLines];

    labelCopy = v18;
  }
}

- (void)_updateStyleForPrimaryLabel:(id)label withStyle:(int64_t)style
{
  labelCopy = label;
  [labelCopy mt_removeAllVisualStyling];
  if (style == 1)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [labelCopy setTextColor:labelColor];
  }

  else
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:labelCopy withStyle:0];
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
    _newPrimaryLabel = [(NCNotificationContentView *)self _newPrimaryLabel];
    v5 = self->_primaryLabel;
    self->_primaryLabel = _newPrimaryLabel;

    [(UIView *)self->_contentView addSubview:self->_primaryLabel];
    [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
    primaryLabel = self->_primaryLabel;
  }

  return primaryLabel;
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = [(NCNotificationContentView *)self primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    _lazyPrimaryLabel = [(NCNotificationContentView *)self _lazyPrimaryLabel];
    font = [_lazyPrimaryLabel font];
    [(NCNotificationContentView *)self _clearCacheForFont:font];

    [_lazyPrimaryLabel setText:textCopy];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (id)_lazyPrimarySubtitleLabel
{
  primarySubtitleLabel = self->_primarySubtitleLabel;
  if (!primarySubtitleLabel)
  {
    _newPrimaryLabel = [(NCNotificationContentView *)self _newPrimaryLabel];
    v5 = self->_primarySubtitleLabel;
    self->_primarySubtitleLabel = _newPrimaryLabel;

    [(UIView *)self->_contentView addSubview:self->_primarySubtitleLabel];
    [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
    primarySubtitleLabel = self->_primarySubtitleLabel;
  }

  return primarySubtitleLabel;
}

- (void)setPrimarySubtitleText:(id)text
{
  textCopy = text;
  primarySubtitleText = [(NCNotificationContentView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    _lazyPrimarySubtitleLabel = [(NCNotificationContentView *)self _lazyPrimarySubtitleLabel];
    font = [_lazyPrimarySubtitleLabel font];
    [(NCNotificationContentView *)self _clearCacheForFont:font];

    [_lazyPrimarySubtitleLabel setText:textCopy];
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

- (void)_updateTextAttributesForSecondaryTextSupportingView:(id)view withStyle:(int64_t)style
{
  viewCopy = view;
  if (viewCopy)
  {
    v16 = viewCopy;
    if (self->_lookStyle == 1)
    {
      v6 = *MEMORY[0x277D76918];
    }

    else
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
      IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);
      v10 = MEMORY[0x277D76918];
      if (!IsAX)
      {
        v10 = MEMORY[0x277D769D0];
      }

      v6 = *v10;
    }

    fontProvider = [(NCNotificationContentView *)self fontProvider];
    v12 = [fontProvider preferredFontForTextStyle:v6 hiFontStyle:8];
    [v16 setFont:v12];

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x277D75128]2 preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(preferredContentSizeCategory2))
    {
      maximumNumberOfSecondaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfSecondaryLargeTextLines];
    }

    else
    {
      maximumNumberOfSecondaryLargeTextLines = [(NCNotificationContentView *)self maximumNumberOfSecondaryTextLines];
    }

    [v16 nc_setNumberOfLines:maximumNumberOfSecondaryLargeTextLines];

    viewCopy = v16;
  }
}

- (unint64_t)_secondaryTextNumberOfLines
{
  if (self->_lookStyle == 1)
  {
    textContainer = [(UITextView *)self->_secondaryTextView textContainer];
    maximumNumberOfLines = [textContainer maximumNumberOfLines];

    return maximumNumberOfLines;
  }

  else
  {
    secondaryLabel = self->_secondaryLabel;

    return [(UILabel *)secondaryLabel numberOfLines];
  }
}

- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)lines
{
  if (self->_maximumNumberOfPrimaryTextLines != lines)
  {
    self->_maximumNumberOfPrimaryTextLines = lines;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

    if (!IsAX)
    {
      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
      primarySubtitleLabel = self->_primarySubtitleLabel;
      lookStyle = self->_lookStyle;

      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:primarySubtitleLabel withStyle:lookStyle];
    }
  }
}

- (void)setMaximumNumberOfPrimaryLargeTextLines:(unint64_t)lines
{
  if (self->_maximumNumberOfPrimaryLargeTextLines != lines)
  {
    self->_maximumNumberOfPrimaryLargeTextLines = lines;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

    if (IsAX)
    {
      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
      primarySubtitleLabel = self->_primarySubtitleLabel;
      lookStyle = self->_lookStyle;

      [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:primarySubtitleLabel withStyle:lookStyle];
    }
  }
}

- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)lines
{
  if (self->_maximumNumberOfSecondaryTextLines != lines)
  {
    self->_maximumNumberOfSecondaryTextLines = lines;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

    if (!IsAX)
    {
      _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:_secondaryTextSupportingView withStyle:self->_lookStyle];
    }
  }
}

- (void)setMaximumNumberOfSecondaryLargeTextLines:(unint64_t)lines
{
  if (self->_maximumNumberOfSecondaryLargeTextLines != lines)
  {
    self->_maximumNumberOfSecondaryLargeTextLines = lines;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

    if (IsAX)
    {
      _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:_secondaryTextSupportingView withStyle:self->_lookStyle];
    }
  }
}

- (void)_updateStyleForSecondaryTextSupportingView:(id)view withStyle:(int64_t)style
{
  viewCopy = view;
  if (viewCopy)
  {
    v7 = viewCopy;
    [viewCopy mt_removeAllVisualStyling];
    if (self->_lookStyle == 1)
    {
      labelColor = [MEMORY[0x277D75348] labelColor];
      [v7 setTextColor:labelColor];
    }

    else
    {
      [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:v7 withStyle:0];
    }

    viewCopy = v7;
  }
}

- (void)_configureTextSupportingView:(id)view
{
  viewCopy = view;
  [viewCopy setContentMode:4];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [viewCopy setBackgroundColor:clearColor];
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
  textContainer = [v3 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  textContainer2 = [v3 textContainer];
  [textContainer2 setLineBreakMode:4];

  [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:v3 withStyle:self->_lookStyle];
  textLayoutManager = [v3 textLayoutManager];
  [textLayoutManager setLimitsLayoutForSuspiciousContents:1];

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
      _newSecondaryLabel = [(NCNotificationContentView *)self _newSecondaryLabel];
      v5 = self->_secondaryLabel;
      self->_secondaryLabel = _newSecondaryLabel;

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
      _newSecondaryTextView = [(NCNotificationContentView *)self _newSecondaryTextView];
      v5 = self->_secondaryTextView;
      self->_secondaryTextView = _newSecondaryTextView;

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
  _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
  if (!_secondaryTextSupportingView)
  {
    if (self->_lookStyle == 1)
    {
      [(NCNotificationContentView *)self _lazySecondaryTextView];
    }

    else
    {
      [(NCNotificationContentView *)self _lazySecondaryLabel];
    }
    _secondaryTextSupportingView = ;
  }

  return _secondaryTextSupportingView;
}

- (NSAttributedString)secondaryText
{
  _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
  attributedText = [_secondaryTextSupportingView attributedText];

  return attributedText;
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = [(NCNotificationContentView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    _lazySecondaryTextSupportingView = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
    font = [_lazySecondaryTextSupportingView font];
    [(NCNotificationContentView *)self _clearCacheForFont:font];

    _lazySecondaryTextSupportingView2 = [(NCNotificationContentView *)self _lazySecondaryTextSupportingView];
    textColor = [_lazySecondaryTextSupportingView2 textColor];
    [_lazySecondaryTextSupportingView2 setAttributedText:textCopy];
    [_lazySecondaryTextSupportingView2 setTextColor:textColor];
    [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:_lazySecondaryTextSupportingView2 withStyle:self->_lookStyle];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSummaryLabel:(id)label withStyle:(int64_t)style
{
  if (label)
  {
    labelCopy = label;
    fontProvider = [(NCNotificationContentView *)self fontProvider];
    v6 = [fontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8];
    [labelCopy setFont:v6];

    [labelCopy setNumberOfLines:2];
  }
}

- (void)_updateStyleForSummaryLabel:(id)label withStyle:(int64_t)style
{
  labelCopy = label;
  [labelCopy mt_removeAllVisualStyling];
  [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:labelCopy withStyle:1];
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
    _newSummaryLabel = [(NCNotificationContentView *)self _newSummaryLabel];
    v5 = self->_summaryLabel;
    self->_summaryLabel = _newSummaryLabel;

    [(NCNotificationContentView *)self _updateStyleForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
    [(UIView *)self->_contentView addSubview:self->_summaryLabel];
    [(BSUIEmojiLabelView *)self->_summaryLabel setAccessibilityIdentifier:@"summary-label"];
    summaryLabel = self->_summaryLabel;
  }

  return summaryLabel;
}

- (void)setSummaryText:(id)text
{
  textCopy = text;
  summaryText = [(NCNotificationContentView *)self summaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    _lazySummaryLabel = [(NCNotificationContentView *)self _lazySummaryLabel];
    font = [_lazySummaryLabel font];
    [(NCNotificationContentView *)self _clearCacheForFont:font];

    [_lazySummaryLabel setText:textCopy];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (void)setThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  thumbnail = [(NCNotificationContentView *)self thumbnail];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    _lazyThumbnailImageView = [(NCNotificationContentView *)self _lazyThumbnailImageView];
    [_lazyThumbnailImageView setImage:thumbnailCopy];
    [(NCNotificationContentView *)self _updateContentModeForThumbnailImage:self->_thumbnailImageView];
    [(NCNotificationContentView *)self _updateStyleForThumbnailImage:self->_thumbnailImageView withStyle:self->_lookStyle];
    self->_hasUpdatedContent = 1;
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (void)setThumbnailIsContactImage:(BOOL)image
{
  if (self->_thumbnailIsContactImage != image)
  {
    self->_thumbnailIsContactImage = image;
    [(NCNotificationContentView *)self _configureThumbnailAsContactImage:?];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)prohibited
{
  if (self->_screenCaptureProhibited != prohibited)
  {
    self->_screenCaptureProhibited = prohibited;
    [(NCNotificationContentView *)self nc_setScreenCaptureProhibited:?];
  }
}

- (void)_updateContentModeForThumbnailImage:(id)image
{
  thumbnailImageView = self->_thumbnailImageView;
  image = [image image];
  if ([image isSymbolImage])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [(UIImageView *)thumbnailImageView setContentMode:v4];
}

- (void)_updateStyleForThumbnailImage:(id)image withStyle:(int64_t)style
{
  imageCopy = image;
  [imageCopy mt_removeAllVisualStyling];
  image = [imageCopy image];
  isSymbolImage = [image isSymbolImage];

  if (style != 1 && isSymbolImage)
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:imageCopy withStyle:0];
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  if (accessoryView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    accessoryView = [(UIView *)self->_contentView addSubview:v7];
  }

  MEMORY[0x2821F96F8](accessoryView);
}

- (void)setUseSmallTopMargin:(BOOL)margin
{
  if (self->_useSmallTopMargin != margin)
  {
    self->_useSmallTopMargin = margin;
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

- (void)setFontProvider:(id)provider
{
  providerCopy = provider;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fontProvider, provider);
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
    _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
    [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:_secondaryTextSupportingView withStyle:self->_lookStyle];

    [(NCNotificationContentView *)self _updateTextAttributesForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
    [(NCNotificationContentView *)self setNeedsLayout];
  }
}

- (CGRect)_frameForThumbnailInRect:(CGRect)rect withContentViewInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection:rect.origin.x])
  {
    _shouldReverseLayoutDirection = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
    v12 = 0.0;
    if (_shouldReverseLayoutDirection)
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

- (void)_configureThumbnailAsContactImage:(BOOL)image
{
  imageCopy = image;
  layer = [(UIImageView *)self->_thumbnailImageView layer];
  v6 = layer;
  v7 = 17.5;
  if (imageCopy)
  {
    v8 = MEMORY[0x277CDA130];
  }

  else
  {
    v7 = 3.0;
    v8 = MEMORY[0x277CDA138];
  }

  [layer setCornerRadius:v7];

  layer2 = [(UIImageView *)self->_thumbnailImageView layer];
  [layer2 setCornerCurve:*v8];
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
  window = [(NCNotificationContentView *)self window];
  if (window)
  {
    window2 = [(NCNotificationContentView *)self window];
    screen = [window2 screen];
    [screen scale];
    v159 = v14;
  }

  else
  {
    window2 = [MEMORY[0x277D759A0] mainScreen];
    [window2 scale];
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
  thumbnail = [(NCNotificationContentView *)self thumbnail];
  if (thumbnail)
  {
  }

  else
  {
    accessoryView = [(NCNotificationContentView *)self accessoryView];

    if (!accessoryView)
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
  _shouldReverseLayoutDirection = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
  if ([(NCNotificationContentView *)self _shouldReverseLayoutDirection])
  {
    v37 = 50.0;
  }

  else
  {
    v37 = 35.0;
  }

  _shouldReverseLayoutDirection2 = [(NCNotificationContentView *)self _shouldReverseLayoutDirection];
  v39 = 15.0;
  if (_shouldReverseLayoutDirection2)
  {
    v39 = 0.0;
  }

  v40 = v37 + v39;
  v136 = v27;
  v149 = v31;
  v155 = v33;
  rect = v29;
  if (_shouldReverseLayoutDirection)
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
    font = [(UILabel *)self->_primaryLabel font];
    [font capHeight];
    UICeilToScale();
    rect = v59;

LABEL_26:
    v60 = v154;
    font2 = [(UILabel *)self->_primaryLabel font];
    primaryText = [(NCNotificationContentView *)self primaryText];
    [font2 unui_effectiveLineHeightForText:primaryText];

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
    font3 = [(UILabel *)self->_primarySubtitleLabel font];
    [font3 capHeight];
    UICeilToScale();
    rect = v78;

    v56 = 1;
    v79 = v154;
  }

  font4 = [(UILabel *)self->_primarySubtitleLabel font];
  primarySubtitleText = [(NCNotificationContentView *)self primarySubtitleText];
  [font4 unui_effectiveLineHeightForText:primarySubtitleText];

LABEL_37:
  v82 = [(NCNotificationContentView *)self _secondaryTextNumberOfLinesWithMeasuredNumberOfLines:[(NCNotificationContentView *)self _secondaryTextMeasuredNumberOfLinesForWidth:Width scale:v159]];
  [(NCNotificationContentView *)self _secondaryTextViewBoundsForSize:v82 withContentInsets:v162 andNumberOfLines:v161, top, v160, bottom, v79];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
  [_secondaryTextSupportingView setBounds:{v84, v86, v88, v90}];
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
    secondaryText = [(NCNotificationContentView *)self secondaryText];
    v103 = [secondaryText length];

    v99 = v136;
    v100 = v149;
    v101 = v155;
    if (v103)
    {
      font5 = [_secondaryTextSupportingView font];
      [font5 capHeight];
      UICeilToScale();
      rect = v105;
    }
  }

  if (v82)
  {
    font6 = [_secondaryTextSupportingView font];
    secondaryText2 = [(NCNotificationContentView *)self secondaryText];
    string = [secondaryText2 string];
    [font6 unui_effectiveLineHeightForText:string];
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
  [_secondaryTextSupportingView setFrame:{v140, v139, v138, v137}];
  [(BSUIEmojiLabelView *)self->_summaryLabel setFrame:v128, v130, v132, v134];
  [(UIImageView *)self->_thumbnailImageView setFrame:v114, rect, v115, v101];
  [(UIView *)self->_accessoryView setFrame:v114, rect, v115, v101];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  if (category == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  visualStylingProvider = provider;
  v8 = visualStylingProvider;
  if (category == 1)
  {
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider != v8)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_primaryLabel];
      [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_primarySubtitleLabel];
      v9 = self->_visualStylingProvider;
      _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:_secondaryTextSupportingView];

      [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_summaryLabel];
      [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_thumbnailImageView];
      objc_storeStrong(&self->_visualStylingProvider, provider);
      [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
      [(NCNotificationContentView *)self _updateStyleForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
      _secondaryTextSupportingView2 = [(NCNotificationContentView *)self _secondaryTextSupportingView];
      [(NCNotificationContentView *)self _updateStyleForSecondaryTextSupportingView:_secondaryTextSupportingView2 withStyle:self->_lookStyle];

      [(NCNotificationContentView *)self _updateStyleForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
      [(NCNotificationContentView *)self _updateStyleForThumbnailImage:self->_thumbnailImageView withStyle:self->_lookStyle];
      visualStylingProvider = [(NCNotificationContentView *)self setNeedsDisplay];
    }
  }

  MEMORY[0x2821F96F8](visualStylingProvider);
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    if (category)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
      [(NCNotificationContentView *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  preferredContentSizeCategory2 = [(NCNotificationContentView *)self preferredContentSizeCategory];
  v6 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v6 & 1) == 0)
  {
    [(NCNotificationContentView *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(NCNotificationContentView *)self _updateContentInsets];
    [(NCNotificationContentView *)self _invalidateNumberOfLinesCache];
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primaryLabel withStyle:self->_lookStyle];
    [(NCNotificationContentView *)self _updateTextAttributesForPrimaryLabel:self->_primarySubtitleLabel withStyle:self->_lookStyle];
    _secondaryTextSupportingView = [(NCNotificationContentView *)self _secondaryTextSupportingView];
    [(NCNotificationContentView *)self _updateTextAttributesForSecondaryTextSupportingView:_secondaryTextSupportingView withStyle:self->_lookStyle];

    [(NCNotificationContentView *)self _updateTextAttributesForSummaryLabel:self->_summaryLabel withStyle:self->_lookStyle];
  }

  return v6 ^ 1;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NCNotificationContentView;
  [(NCNotificationContentView *)&v4 traitCollectionDidChange:change];
  if ([(NCNotificationContentView *)self adjustsFontForContentSizeCategory])
  {
    [(NCNotificationContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  if (!interaction && self->_secondaryTextView == view)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained notificationContentView:self willInteractWithURL:lCopy];
    }

    v11 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__NCNotificationContentView_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
    block[3] = &unk_27836F6A8;
    v14 = lCopy;
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

- (id)textView:(id)view writingToolsIgnoredRangesInEnclosingRange:(_NSRange)range
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAE60] valueWithRange:{range.location, range.length}];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationContentView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__NCNotificationContentView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_27836F560;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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