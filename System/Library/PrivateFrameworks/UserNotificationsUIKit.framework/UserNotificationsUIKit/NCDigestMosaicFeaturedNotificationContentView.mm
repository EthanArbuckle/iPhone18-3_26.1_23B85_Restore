@interface NCDigestMosaicFeaturedNotificationContentView
- (BOOL)_isAXSize;
- (CGRect)_labelSizingBoundsForRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_imageHeightForBounds:(CGRect)bounds;
- (double)imageAttachmentSizeRatio;
- (unint64_t)_maximumNumberOfLinesForFooterText;
- (unint64_t)_maximumNumberOfLinesForPrimarySubtitleText;
- (unint64_t)_maximumNumberOfLinesForPrimaryText;
- (unint64_t)_maximumNumberOfLinesForSecondaryText;
- (unint64_t)_numberOfLinesForFooterTextInFrame:(CGRect)frame;
- (unint64_t)_numberOfLinesForPrimarySubtitleTextInFrame:(CGRect)frame;
- (unint64_t)_numberOfLinesForPrimaryTextInFrame:(CGRect)frame;
- (unint64_t)_numberOfLinesForSecondaryTextInFrame:(CGRect)frame;
- (void)_configureBackgroundColorViewIfNecessary;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureClippingViewIfNecessary;
- (void)_configureCrossfadingContentViewIfNecessary;
- (void)_configureImageBoundingViewIfNecessary;
- (void)_layoutBackgroundView;
- (void)_layoutFooterTextLabel;
- (void)_layoutIconImageView;
- (void)_layoutImageBoundingView;
- (void)_layoutPrimarySubtitleTextLabel;
- (void)_layoutPrimaryTextLabel;
- (void)_layoutSecondaryTextLabel;
- (void)_layoutSubviews;
- (void)_layoutThumbnailImageView;
- (void)_updateBackgroundColorForIconImageDominantColor:(id)color;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForFooterTextLabel;
- (void)_updateTextAttributesForPrimarySubtitleTextLabel;
- (void)_updateTextAttributesForPrimaryTextLabel;
- (void)_updateTextAttributesForSecondaryTextElement;
- (void)_updateVisualStylingProviderForBackgroundColorView;
- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider;
- (void)layoutSubviews;
- (void)setBadgedIconDescription:(id)description;
- (void)setContentViewStyle:(unint64_t)style;
- (void)setFooterText:(id)text;
- (void)setPrimarySubtitleText:(id)text;
- (void)setPrimaryText:(id)text;
- (void)setScreenCaptureProhibited:(BOOL)prohibited;
- (void)setSecondaryText:(id)text;
- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)lines;
- (void)setThumbnail:(id)thumbnail;
@end

@implementation NCDigestMosaicFeaturedNotificationContentView

- (void)setContentViewStyle:(unint64_t)style
{
  if (self->_contentViewStyle != style)
  {
    self->_contentViewStyle = style;
    self->_hasUpdatedContent = 1;
    [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }
}

- (double)imageAttachmentSizeRatio
{
  if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
  {
    return 0.6;
  }

  _isContentViewStyleMedium = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
  result = 0.666666667;
  if (!_isContentViewStyleMedium)
  {
    return 1.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCDigestMosaicFeaturedNotificationContentView;
  [(NCDigestMosaicFeaturedNotificationContentView *)&v3 layoutSubviews];
  [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
  if (CGRectGetWidth(v4) > 0.0)
  {
    [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutSubviews];
    if (self->_hasUpdatedContent)
    {
      [(UIView *)self->_crossfadingContentView pl_performCrossFadeIfNecessary];
      self->_hasUpdatedContent = 0;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  thumbnailImageView = self->_thumbnailImageView;
  if (self->_imageBoundingView)
  {
    if (thumbnailImageView)
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _imageHeightForBounds:0.0, 0.0, fits.width, fits.height];
      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }
    }

    else
    {
      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }

      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }

      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }
    }
  }

  [(NCDigestMosaicFeaturedNotificationContentView *)self _labelSizingBoundsForRect:0.0, 0.0, width, height];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  _isAXSize = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]|| [(NCDigestMosaicFeaturedNotificationContentView *)self _isAXSize];
  if (self->_primaryTextLabel && (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]|| !thumbnailImageView))
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:self->_primaryTextLabel withNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForPrimaryTextInFrame:v8, v10, v12, v14]];
  }

  primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
  if (primarySubtitleTextLabel != 0 && !_isAXSize)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:primarySubtitleTextLabel withNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForPrimarySubtitleTextInFrame:v8, v10, v12, v14]];
  }

  secondaryTextLabel = self->_secondaryTextLabel;
  if (secondaryTextLabel != 0 && !_isAXSize)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:secondaryTextLabel withNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForSecondaryTextInFrame:v8, v10, v12, v14]];
    if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
    }
  }

  footerTextLabel = self->_footerTextLabel;
  if (footerTextLabel != 0 && !_isAXSize)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:footerTextLabel withNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForFooterTextInFrame:v8, v10, v12, v14]];
  }

  if ((![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]|| !thumbnailImageView) && ![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
  {
    [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
  }

  UISizeRoundToScale();
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)setBadgedIconDescription:(id)description
{
  descriptionCopy = description;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(NCBadgedIconView *)self->_badgedIconView removeFromSuperview];
    badgedIconView = self->_badgedIconView;
    self->_badgedIconView = 0;

    objc_storeStrong(&self->_badgedIconDescription, description);
    if (self->_badgedIconDescription)
    {
      v6 = [NCBadgedIconView alloc];
      _isContentViewStyleLarge = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
      v8 = 30.0;
      if (!_isContentViewStyleLarge)
      {
        _isContentViewStyleMedium = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
        v8 = 16.0;
        if (_isContentViewStyleMedium)
        {
          v8 = 26.0;
        }
      }

      v10 = [(NCBadgedIconView *)v6 initWithBadgedIconDescription:descriptionCopy pointSize:v8];
      v11 = self->_badgedIconView;
      self->_badgedIconView = v10;

      [(NCDigestMosaicFeaturedNotificationContentView *)self _configureImageBoundingViewIfNecessary];
      [(UIView *)self->_imageBoundingView addSubview:self->_badgedIconView];
    }

    dominantColor = [(NCBadgedIconView *)self->_badgedIconView dominantColor];
    [(NCDigestMosaicFeaturedNotificationContentView *)self _updateBackgroundColorForIconImageDominantColor:dominantColor];

    if ([(NCBadgedIconView *)self->_badgedIconView isFeaturingSymbol])
    {
      v13 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
    }

    else
    {
      v13 = 0;
    }

    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_badgedIconView style:0 visualStylingProvider:v13 outgoingProvider:v13];
    [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = [(NCDigestMosaicFeaturedNotificationContentView *)self primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    primaryTextLabel = self->_primaryTextLabel;
    if (textCopy)
    {
      if (!primaryTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_primaryTextLabel;
        self->_primaryTextLabel = v8;

        [(UILabel *)self->_primaryTextLabel setLineBreakMode:4];
        if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall])
        {
          [(UILabel *)self->_primaryTextLabel setAdjustsFontSizeToFitWidth:1];
        }

        [(NCDigestMosaicFeaturedNotificationContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_primaryTextLabel];
        v10 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_primaryTextLabel style:[(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]^ 1 visualStylingProvider:v10 outgoingProvider:0];
      }

      [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForPrimaryTextLabel];
      [(UILabel *)self->_primaryTextLabel setText:textCopy];
    }

    else
    {
      [(UILabel *)primaryTextLabel removeFromSuperview];
      v11 = self->_primaryTextLabel;
      self->_primaryTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    setNeedsLayout = [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](setNeedsLayout);
}

- (void)setPrimarySubtitleText:(id)text
{
  textCopy = text;
  primarySubtitleText = [(NCDigestMosaicFeaturedNotificationContentView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    if (textCopy)
    {
      if (!primarySubtitleTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_primarySubtitleTextLabel;
        self->_primarySubtitleTextLabel = v8;

        [(UILabel *)self->_primarySubtitleTextLabel setLineBreakMode:4];
        [(NCDigestMosaicFeaturedNotificationContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_primarySubtitleTextLabel];
        v10 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_primarySubtitleTextLabel style:1 visualStylingProvider:v10 outgoingProvider:0];
      }

      [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForPrimarySubtitleTextLabel];
      [(UILabel *)self->_primarySubtitleTextLabel setText:textCopy];
    }

    else
    {
      [(UILabel *)primarySubtitleTextLabel removeFromSuperview];
      v11 = self->_primarySubtitleTextLabel;
      self->_primarySubtitleTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    setNeedsLayout = [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](setNeedsLayout);
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = [(NCDigestMosaicFeaturedNotificationContentView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    secondaryTextLabel = self->_secondaryTextLabel;
    if (textCopy)
    {
      if (!secondaryTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_secondaryTextLabel;
        self->_secondaryTextLabel = v8;

        [(UILabel *)self->_secondaryTextLabel _setTextAlignmentFollowsWritingDirection:1];
        [(UILabel *)self->_secondaryTextLabel setLineBreakMode:4];
        [(NCDigestMosaicFeaturedNotificationContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_secondaryTextLabel];
        v10 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_secondaryTextLabel style:0 visualStylingProvider:v10 outgoingProvider:0];

        secondaryTextLabel = self->_secondaryTextLabel;
      }

      textColor = [(UILabel *)secondaryTextLabel textColor];
      [(UILabel *)self->_secondaryTextLabel setAttributedText:textCopy];
      [(UILabel *)self->_secondaryTextLabel setTextColor:textColor];
      [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForSecondaryTextElement];
    }

    else
    {
      [(UILabel *)secondaryTextLabel removeFromSuperview];
      textColor = self->_secondaryTextLabel;
      self->_secondaryTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    setNeedsLayout = [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](setNeedsLayout);
}

- (void)setFooterText:(id)text
{
  textCopy = text;
  footerText = [(NCDigestMosaicFeaturedNotificationContentView *)self footerText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    footerTextLabel = self->_footerTextLabel;
    if (textCopy)
    {
      if (!footerTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_footerTextLabel;
        self->_footerTextLabel = v8;

        [(UILabel *)self->_footerTextLabel setLineBreakMode:4];
        [(NCDigestMosaicFeaturedNotificationContentView *)self addSubview:self->_footerTextLabel];
        v10 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_footerTextLabel style:1 visualStylingProvider:v10 outgoingProvider:0];
      }

      [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForFooterTextLabel];
      [(UILabel *)self->_footerTextLabel setAttributedText:textCopy];
    }

    else
    {
      [(UILabel *)footerTextLabel removeFromSuperview];
      v11 = self->_footerTextLabel;
      self->_footerTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    setNeedsLayout = [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](setNeedsLayout);
}

- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)lines
{
  if (self->_secondaryTextMaximumNumberOfLines != lines)
  {
    self->_secondaryTextMaximumNumberOfLines = lines;
    secondaryText = [(NCDigestMosaicFeaturedNotificationContentView *)self secondaryText];
    v5 = [secondaryText length];

    if (v5)
    {
      self->_hasUpdatedContent = 1;

      [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
    }
  }
}

- (void)setScreenCaptureProhibited:(BOOL)prohibited
{
  if (self->_screenCaptureProhibited != prohibited)
  {
    self->_screenCaptureProhibited = prohibited;
    [(NCDigestMosaicFeaturedNotificationContentView *)self nc_setScreenCaptureProhibited:?];
  }
}

- (void)setThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  thumbnail = [(NCDigestMosaicFeaturedNotificationContentView *)self thumbnail];
  v5 = BSEqualObjects();

  v6 = thumbnailCopy;
  if ((v5 & 1) == 0)
  {
    thumbnailImageView = self->_thumbnailImageView;
    if (thumbnailCopy)
    {
      if (!thumbnailImageView)
      {
        v8 = objc_alloc_init(MEMORY[0x277D755E8]);
        v9 = self->_thumbnailImageView;
        self->_thumbnailImageView = v8;

        [(UIImageView *)self->_thumbnailImageView setContentMode:2];
        [(NCDigestMosaicFeaturedNotificationContentView *)self _configureImageBoundingViewIfNecessary];
        [(UIView *)self->_imageBoundingView addSubview:self->_thumbnailImageView];
        v6 = thumbnailCopy;
        thumbnailImageView = self->_thumbnailImageView;
      }

      [(UIImageView *)thumbnailImageView setImage:v6];
      v10 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
      [(NCNotificationListBaseContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:0 visualStylingProvider:v10 outgoingProvider:v10];
    }

    else
    {
      [(UIImageView *)thumbnailImageView removeFromSuperview];
      v10 = self->_thumbnailImageView;
      self->_thumbnailImageView = 0;
    }

    [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributes];
    self->_hasUpdatedContent = 1;
    [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)_layoutSubviews
{
  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutImageBoundingView];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutThumbnailImageView];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutIconImageView];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutBackgroundView];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutPrimaryTextLabel];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutPrimarySubtitleTextLabel];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutSecondaryTextLabel];

  [(NCDigestMosaicFeaturedNotificationContentView *)self _layoutFooterTextLabel];
}

- (void)_layoutImageBoundingView
{
  imageBoundingView = self->_imageBoundingView;
  if (imageBoundingView)
  {
    [(UIView *)imageBoundingView frame];
    [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (self->_thumbnailImageView)
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _imageHeightForBounds:v4, v5, v6, v7];
    }

    else
    {
      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }

      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }

      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }
    }

    v14.origin.x = v8;
    v14.origin.y = v9;
    v14.size.width = v10;
    v14.size.height = v11;
    CGRectGetWidth(v14);
    UIRectIntegralWithScale();
    v12 = self->_imageBoundingView;

    [(UIView *)v12 setFrame:?];
  }
}

- (void)_layoutThumbnailImageView
{
  thumbnailImageView = self->_thumbnailImageView;
  if (thumbnailImageView)
  {
    [(UIImageView *)thumbnailImageView frame];
    [(UIView *)self->_imageBoundingView bounds];
    v4 = self->_thumbnailImageView;

    [(UIImageView *)v4 setFrame:?];
  }
}

- (void)_layoutIconImageView
{
  if (self->_badgedIconView)
  {
    [(UIView *)self->_imageBoundingView bringSubviewToFront:?];
    [(NCBadgedIconView *)self->_badgedIconView frame];
    if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
    }

    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _shouldReverseLayoutDirection])
    {
      [(UIView *)self->_imageBoundingView bounds];
      CGRectGetWidth(v5);
      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      }
    }

    if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
    }

    if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
    }

    UIRectIntegralWithScale();
    badgedIconView = self->_badgedIconView;

    [(NCBadgedIconView *)badgedIconView setFrame:?];
  }
}

- (void)_layoutBackgroundView
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView frame];
    [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (self->_thumbnailImageView)
    {
      [(UIView *)self->_imageBoundingView frame];
      CGRectGetMaxY(v15);
    }

    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    CGRectGetWidth(v16);
    thumbnailImageView = self->_thumbnailImageView;
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    CGRectGetHeight(v17);
    if (thumbnailImageView)
    {
      [(UIView *)self->_imageBoundingView frame];
      CGRectGetMaxY(v18);
    }

    UIRectIntegralWithScale();
    v13 = self->_backgroundView;

    [(UIView *)v13 setFrame:?];
  }
}

- (void)_layoutPrimaryTextLabel
{
  primaryTextLabel = self->_primaryTextLabel;
  if (primaryTextLabel)
  {
    [(UILabel *)primaryTextLabel frame];
    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]&& (self->_thumbnailImageView || [(NCDigestMosaicFeaturedNotificationContentView *)self _isAXSize]))
    {
      v4 = *MEMORY[0x277CBF3A0];
      v5 = *(MEMORY[0x277CBF3A0] + 8);
      v6 = *(MEMORY[0x277CBF3A0] + 16);
      v7 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
      v9 = v8;
      v39 = v11;
      v40 = v10;
      rect = v12;
      [(NCDigestMosaicFeaturedNotificationContentView *)self _labelSizingBoundsForRect:?];
      x = v42.origin.x;
      y = v42.origin.y;
      width = v42.size.width;
      height = v42.size.height;
      v17 = CGRectGetWidth(v42);
      v35 = height;
      [(UILabel *)self->_primaryTextLabel unui_measuringHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForPrimaryTextInFrame:x, y, width, height]];
      v36 = v18;
      [(UIView *)self->_imageBoundingView frame];
      MaxY = CGRectGetMaxY(v43);
      if (self->_thumbnailImageView)
      {
        v20 = 8.0;
        if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
        {
          if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium])
          {
            v20 = 6.0;
          }

          else
          {
            v20 = 4.0;
          }
        }
      }

      else
      {
        v20 = 0.0;
      }

      v37 = v9;
      if ([(NCDigestMosaicFeaturedNotificationContentView *)self _shouldReverseLayoutDirection])
      {
        v44.origin.x = v9;
        v44.size.width = v39;
        v44.origin.y = v40;
        v44.size.height = rect;
        v21 = CGRectGetMaxX(v44) - v17;
        _isContentViewStyleLarge = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
        v23 = 12.0;
        if (!_isContentViewStyleLarge)
        {
          [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
          v23 = 10.0;
        }

        v24 = v21 - v23;
      }

      else
      {
        v24 = 12.0;
        if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
        {
          [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
          v24 = 10.0;
        }
      }

      v25 = MaxY + v20;
      superview = [(NCBadgedIconView *)self->_badgedIconView superview];
      if (superview == self)
      {
        [(NCBadgedIconView *)self->_badgedIconView frame];
        UIRectCenteredYInRect();
        v24 = v30;
        v27 = v31;
        v28 = v32;
        v29 = v33;
      }

      else
      {
        v27 = v25;
        v28 = v17;
        v29 = v36;
      }

      [(UILabel *)self->_primaryTextLabel unui_drawingHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForPrimaryTextInFrame:x, y, width, v35]];
      v45.origin.x = v37;
      v45.size.height = rect;
      v45.size.width = v39;
      v45.origin.y = v40;
      CGRectGetHeight(v45);
      v46.origin.x = v24;
      v46.origin.y = v27;
      v46.size.width = v28;
      v46.size.height = v29;
      CGRectGetWidth(v46);
      BSRectWithSize();
      UIRectCenteredIntegralRectScale();
    }

    v34 = self->_primaryTextLabel;

    [(UILabel *)v34 setFrame:v4, v5, v6, v7];
  }
}

- (void)_layoutPrimarySubtitleTextLabel
{
  primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
  if (primarySubtitleTextLabel)
  {
    [(UILabel *)primarySubtitleTextLabel frame];
    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]|| [(NCDigestMosaicFeaturedNotificationContentView *)self _isAXSize])
    {
      v4 = *MEMORY[0x277CBF3A0];
      v5 = *(MEMORY[0x277CBF3A0] + 8);
      v6 = *(MEMORY[0x277CBF3A0] + 16);
      v7 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
      v9 = v8;
      v11 = v10;
      v32 = v13;
      v33 = v12;
      [(NCDigestMosaicFeaturedNotificationContentView *)self _labelSizingBoundsForRect:?];
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      v18 = CGRectGetWidth(v36);
      [(UILabel *)self->_primarySubtitleTextLabel unui_measuringHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForPrimarySubtitleTextInFrame:x, y, width, height]];
      v34 = v19;
      primaryTextLabel = self->_primaryTextLabel;
      if (primaryTextLabel)
      {
        [(UILabel *)primaryTextLabel frame];
        v21 = CGRectGetMaxY(v37) + 1.0;
      }

      else
      {
        imageBoundingView = self->_imageBoundingView;
        if (imageBoundingView)
        {
          [(UIView *)imageBoundingView frame];
          MaxY = CGRectGetMaxY(v38);
          if (self->_thumbnailImageView)
          {
            _isContentViewStyleLarge = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
            v25 = 8.0;
            if (!_isContentViewStyleLarge)
            {
              _isContentViewStyleMedium = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
              v25 = 4.0;
              if (_isContentViewStyleMedium)
              {
                v25 = 6.0;
              }
            }
          }

          else
          {
            v25 = 0.0;
          }

          v21 = MaxY + v25;
        }

        else
        {
          v21 = 0.0;
        }
      }

      if ([(NCDigestMosaicFeaturedNotificationContentView *)self _shouldReverseLayoutDirection])
      {
        v39.origin.x = v9;
        v39.origin.y = v11;
        v39.size.height = v32;
        v39.size.width = v33;
        v27 = CGRectGetMaxX(v39) - v18;
        _isContentViewStyleLarge2 = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
        v29 = 12.0;
        if (!_isContentViewStyleLarge2)
        {
          [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
          v29 = 10.0;
        }

        v30 = v27 - v29;
      }

      else
      {
        v30 = 12.0;
        if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
        {
          [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
          v30 = 10.0;
        }
      }

      [(UILabel *)self->_primarySubtitleTextLabel unui_drawingHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForPrimarySubtitleTextInFrame:x, y, width, height]];
      v40.origin.x = v30;
      v40.origin.y = v21;
      v40.size.width = v18;
      v40.size.height = v34;
      CGRectGetWidth(v40);
      BSRectWithSize();
      UIRectCenteredIntegralRectScale();
    }

    v31 = self->_primarySubtitleTextLabel;

    [(UILabel *)v31 setFrame:v4, v5, v6, v7];
  }
}

- (void)_layoutSecondaryTextLabel
{
  secondaryTextLabel = self->_secondaryTextLabel;
  if (!secondaryTextLabel)
  {
    return;
  }

  [(UILabel *)secondaryTextLabel frame];
  if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]&& ![(NCDigestMosaicFeaturedNotificationContentView *)self _isAXSize])
  {
    [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
    v9 = v8;
    v11 = v10;
    v34 = v13;
    v35 = v12;
    [(NCDigestMosaicFeaturedNotificationContentView *)self _labelSizingBoundsForRect:?];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    v18 = CGRectGetWidth(v38);
    [(UILabel *)self->_secondaryTextLabel unui_measuringHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForSecondaryTextInFrame:x, y, width, height]];
    v36 = v19;
    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    if (primarySubtitleTextLabel || (primarySubtitleTextLabel = self->_primaryTextLabel) != 0)
    {
      [(UILabel *)primarySubtitleTextLabel frame];
      MaxY = CGRectGetMaxY(v39);
      _isContentViewStyleLarge = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
      v23 = 6.0;
      if (!_isContentViewStyleLarge)
      {
        v24 = ![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
        v23 = 1.0;
        v25 = 2.0;
        goto LABEL_10;
      }
    }

    else
    {
      imageBoundingView = self->_imageBoundingView;
      if (!imageBoundingView)
      {
        v26 = 0.0;
        goto LABEL_13;
      }

      [(UIView *)imageBoundingView frame];
      MaxY = CGRectGetMaxY(v42);
      if (self->_thumbnailImageView)
      {
        _isContentViewStyleLarge2 = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
        v23 = 8.0;
        if (!_isContentViewStyleLarge2)
        {
          v24 = ![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
          v23 = 4.0;
          v25 = 6.0;
LABEL_10:
          if (!v24)
          {
            v23 = v25;
          }
        }
      }

      else
      {
        v23 = 0.0;
      }
    }

    v26 = MaxY + v23;
LABEL_13:
    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _shouldReverseLayoutDirection])
    {
      v40.origin.x = v9;
      v40.origin.y = v11;
      v40.size.height = v34;
      v40.size.width = v35;
      v27 = CGRectGetMaxX(v40) - v18;
      _isContentViewStyleLarge3 = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
      v29 = 12.0;
      if (!_isContentViewStyleLarge3)
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
        v29 = 10.0;
      }

      v30 = v27 - v29;
    }

    else
    {
      v30 = 12.0;
      if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
      {
        [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
        v30 = 10.0;
      }
    }

    [(UILabel *)self->_secondaryTextLabel unui_drawingHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForSecondaryTextInFrame:x, y, width, height]];
    v41.origin.x = v30;
    v41.origin.y = v26;
    v41.size.width = v18;
    v41.size.height = v36;
    CGRectGetWidth(v41);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    goto LABEL_20;
  }

  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
LABEL_20:
  v31 = self->_secondaryTextLabel;

  [(UILabel *)v31 setFrame:v4, v5, v6, v7];
}

- (void)_layoutFooterTextLabel
{
  footerTextLabel = self->_footerTextLabel;
  if (footerTextLabel)
  {
    [(UILabel *)footerTextLabel frame];
    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]|| [(NCDigestMosaicFeaturedNotificationContentView *)self _isAXSize])
    {
      v4 = *MEMORY[0x277CBF3A0];
      v5 = *(MEMORY[0x277CBF3A0] + 8);
      v6 = *(MEMORY[0x277CBF3A0] + 16);
      v7 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      rect = v14;
      [(NCDigestMosaicFeaturedNotificationContentView *)self _labelSizingBoundsForRect:?];
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      v19 = CGRectGetWidth(v31);
      [(UILabel *)self->_footerTextLabel unui_measuringHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForFooterTextInFrame:x, y, width, height]];
      v29 = v20;
      [(UILabel *)self->_secondaryTextLabel frame];
      MaxY = CGRectGetMaxY(v32);
      if ([(NCDigestMosaicFeaturedNotificationContentView *)self _shouldReverseLayoutDirection])
      {
        v33.origin.x = v9;
        v33.origin.y = rect;
        v33.size.width = v11;
        v33.size.height = v13;
        v21 = CGRectGetMaxX(v33) - v19;
        _isContentViewStyleLarge = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
        v23 = 12.0;
        v24 = v19;
        if (!_isContentViewStyleLarge)
        {
          [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
          v23 = 10.0;
        }

        v25 = v21 - v23;
      }

      else
      {
        v25 = 12.0;
        v24 = v19;
        if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
        {
          [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
          v25 = 10.0;
        }
      }

      [(UILabel *)self->_footerTextLabel unui_drawingHeightWithNumberOfLines:[(NCDigestMosaicFeaturedNotificationContentView *)self _numberOfLinesForFooterTextInFrame:x, y, width, height]];
      v34.origin.x = v25;
      v34.origin.y = MaxY;
      v34.size.width = v24;
      v34.size.height = v29;
      CGRectGetWidth(v34);
      BSRectWithSize();
      UIRectCenteredIntegralRectScale();
    }

    v26 = self->_footerTextLabel;

    [(UILabel *)v26 setFrame:v4, v5, v6, v7];
  }
}

- (void)_configureClippingViewIfNecessary
{
  if (!self->_clippingView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
    v4 = [v3 initWithFrame:?];
    clippingView = self->_clippingView;
    self->_clippingView = v4;

    [(UIView *)self->_clippingView setAutoresizingMask:18];
    [(UIView *)self->_clippingView setClipsToBounds:1];
    v6 = self->_clippingView;
    _isContentViewStyleLarge = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
    v8 = 18.0;
    if (!_isContentViewStyleLarge)
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      v8 = 15.0;
    }

    [(UIView *)v6 _setContinuousCornerRadius:v8];
    [(NCDigestMosaicFeaturedNotificationContentView *)self addSubview:self->_clippingView];
    v9 = self->_clippingView;

    [(NCDigestMosaicFeaturedNotificationContentView *)self sendSubviewToBack:v9];
  }
}

- (void)_configureImageBoundingViewIfNecessary
{
  if (!self->_imageBoundingView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    imageBoundingView = self->_imageBoundingView;
    self->_imageBoundingView = v4;

    [(UIView *)self->_imageBoundingView setClipsToBounds:1];
    [(NCDigestMosaicFeaturedNotificationContentView *)self _configureCrossfadingContentViewIfNecessary];
    crossfadingContentView = self->_crossfadingContentView;
    v7 = self->_imageBoundingView;

    [(UIView *)crossfadingContentView addSubview:v7];
  }
}

- (void)_configureCrossfadingContentViewIfNecessary
{
  if (!self->_crossfadingContentView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
    v4 = [v3 initWithFrame:?];
    crossfadingContentView = self->_crossfadingContentView;
    self->_crossfadingContentView = v4;

    [(NCDigestMosaicFeaturedNotificationContentView *)self _configureClippingViewIfNecessary];
    [(UIView *)self->_clippingView addSubview:self->_crossfadingContentView];
    v6 = self->_crossfadingContentView;

    [(UIView *)v6 setAutoresizingMask:18];
  }
}

- (void)_configureBackgroundViewIfNecessary
{
  if (!self->_backgroundView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    [(NCDigestMosaicFeaturedNotificationContentView *)self _configureCrossfadingContentViewIfNecessary];
    [(UIView *)self->_crossfadingContentView addSubview:self->_backgroundView];
    crossfadingContentView = self->_crossfadingContentView;
    v7 = self->_backgroundView;

    [(UIView *)crossfadingContentView sendSubviewToBack:v7];
  }
}

- (void)_configureBackgroundColorViewIfNecessary
{
  if (!self->_backgroundColorView)
  {
    v3 = objc_alloc(MEMORY[0x277D26738]);
    [(NCDigestMosaicFeaturedNotificationContentView *)self bounds];
    v4 = [v3 initWithFrame:?];
    backgroundColorView = self->_backgroundColorView;
    self->_backgroundColorView = v4;

    [(NCDigestMosaicFeaturedNotificationContentView *)self _configureClippingViewIfNecessary];
    [(UIView *)self->_clippingView addSubview:self->_backgroundColorView];
    [(UIView *)self->_clippingView sendSubviewToBack:self->_backgroundColorView];
    v6 = self->_backgroundColorView;

    [(MTStylingProvidingSolidColorView *)v6 setAutoresizingMask:18];
  }
}

- (BOOL)_isAXSize
{
  preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (double)_imageHeightForBounds:(CGRect)bounds
{
  CGRectGetWidth(bounds);
  if (![(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
  {
    [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
  }

  UICeilToScale();
  return result;
}

- (CGRect)_labelSizingBoundsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = CGRectGetWidth(rect);
  _isContentViewStyleLarge = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge];
  v10 = 12.0;
  if (!_isContentViewStyleLarge)
  {
    [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
    v10 = 10.0;
  }

  v11 = v8 + v10 * -2.0;
  [(NCDigestMosaicFeaturedNotificationContentView *)self horizontalMarginForContentOverlap];
  v13 = v11 - v12;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v14 = CGRectGetHeight(v18);
  v15 = 0.0;
  v16 = 0.0;
  v17 = v13;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_updateBackgroundColorForIconImageDominantColor:(id)color
{
  colorCopy = color;
  [(NCDigestMosaicFeaturedNotificationContentView *)self _configureBackgroundViewIfNecessary];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _configureBackgroundColorViewIfNecessary];
  sectionIdentifier = [(NCDigestMosaicFeaturedNotificationContentView *)self sectionIdentifier];
  v5 = _NCNotificationBackgroundColorForSectionIdentifier(sectionIdentifier);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = colorCopy;
  }

  systemBackgroundColor = v6;

  if (!systemBackgroundColor)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  [(MTStylingProvidingSolidColorView *)self->_backgroundColorView setBackgroundColor:systemBackgroundColor];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = systemBackgroundColor;

  [(NCDigestMosaicFeaturedNotificationContentView *)self _updateVisualStylingProviderForBackgroundColorView];
}

- (void)_updateVisualStylingProviderForBackgroundColorView
{
  backgroundColorView = self->_backgroundColorView;
  if (backgroundColorView)
  {
    v4 = [(MTStylingProvidingSolidColorView *)backgroundColorView visualStylingProviderForCategory:1];
    [(NCNotificationListBaseContentView *)self setVisualStylingProvider:v4 forCategory:1];
  }
}

- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider
{
  badgedIconView = self->_badgedIconView;
  providerCopy = provider;
  changeCopy = change;
  if ([(NCBadgedIconView *)badgedIconView isFeaturingSymbol])
  {
    v9 = changeCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = self->_badgedIconView;
  v11 = v9;
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v10 style:0 visualStylingProvider:v11 outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_primaryTextLabel style:[(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleSmall]^ 1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_primarySubtitleTextLabel style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_secondaryTextLabel style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_footerTextLabel style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
}

- (unint64_t)_maximumNumberOfLinesForPrimaryText
{
  preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (unint64_t)_numberOfLinesForPrimaryTextInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  primaryTextLabel = self->_primaryTextLabel;
  _maximumNumberOfLinesForPrimaryText = [(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForPrimaryText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:primaryTextLabel maximumNumberOfLines:_maximumNumberOfLinesForPrimaryText inFrame:x, y, width, height];
}

- (unint64_t)_maximumNumberOfLinesForPrimarySubtitleText
{
  preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  v3 = !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return v3;
}

- (unint64_t)_numberOfLinesForPrimarySubtitleTextInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
  _maximumNumberOfLinesForPrimarySubtitleText = [(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForPrimarySubtitleText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:primarySubtitleTextLabel maximumNumberOfLines:_maximumNumberOfLinesForPrimarySubtitleText inFrame:x, y, width, height];
}

- (unint64_t)_maximumNumberOfLinesForSecondaryText
{
  preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v4 = 0;
  }

  else if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
  {
    if (self->_thumbnailImageView)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }
  }

  else if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium])
  {
    v4 = 5;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)_numberOfLinesForSecondaryTextInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  secondaryTextLabel = self->_secondaryTextLabel;
  _maximumNumberOfLinesForSecondaryText = [(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForSecondaryText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:secondaryTextLabel maximumNumberOfLines:_maximumNumberOfLinesForSecondaryText inFrame:x, y, width, height];
}

- (unint64_t)_maximumNumberOfLinesForFooterText
{
  preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  v3 = !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return v3;
}

- (unint64_t)_numberOfLinesForFooterTextInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  footerTextLabel = self->_footerTextLabel;
  _maximumNumberOfLinesForFooterText = [(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForFooterText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:footerTextLabel maximumNumberOfLines:_maximumNumberOfLinesForFooterText inFrame:x, y, width, height];
}

- (void)_updateTextAttributes
{
  v3.receiver = self;
  v3.super_class = NCDigestMosaicFeaturedNotificationContentView;
  [(NCNotificationListBaseContentView *)&v3 _updateTextAttributes];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForPrimaryTextLabel];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForPrimarySubtitleTextLabel];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForSecondaryTextElement];
  [(NCDigestMosaicFeaturedNotificationContentView *)self _updateTextAttributesForFooterTextLabel];
}

- (void)_updateTextAttributesForPrimaryTextLabel
{
  if (self->_primaryTextLabel)
  {
    preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      v4 = MEMORY[0x277D76918];
    }

    else if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      v4 = MEMORY[0x277D76940];
    }

    else
    {
      _isContentViewStyleMedium = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      v4 = MEMORY[0x277D76940];
      if (!_isContentViewStyleMedium)
      {
        v4 = MEMORY[0x277D76938];
      }
    }

    v6 = *v4;

    primaryTextLabel = self->_primaryTextLabel;
    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      v8 = MEMORY[0x277D74420];
    }

    else
    {
      _isContentViewStyleMedium2 = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      v8 = MEMORY[0x277D74420];
      if (!_isContentViewStyleMedium2)
      {
        v8 = MEMORY[0x277D74418];
      }
    }

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:primaryTextLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForPrimaryText] maximumNumberOfLines:*v8];

    self->_hasUpdatedContent = 1;

    [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForPrimarySubtitleTextLabel
{
  if (self->_primarySubtitleTextLabel)
  {
    preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      v4 = MEMORY[0x277D76918];
    }

    else if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      v4 = MEMORY[0x277D76940];
    }

    else
    {
      _isContentViewStyleMedium = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      v4 = MEMORY[0x277D76940];
      if (!_isContentViewStyleMedium)
      {
        v4 = MEMORY[0x277D76938];
      }
    }

    v6 = *v4;

    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      v8 = MEMORY[0x277D74420];
    }

    else
    {
      _isContentViewStyleMedium2 = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      v8 = MEMORY[0x277D74420];
      if (!_isContentViewStyleMedium2)
      {
        v8 = MEMORY[0x277D74418];
      }
    }

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:primarySubtitleTextLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForPrimarySubtitleText] maximumNumberOfLines:*v8];

    self->_hasUpdatedContent = 1;

    [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSecondaryTextElement
{
  if (self->_secondaryTextLabel)
  {
    preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      v4 = MEMORY[0x277D76918];
    }

    else if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      v4 = MEMORY[0x277D76920];
    }

    else
    {
      [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      v4 = MEMORY[0x277D76938];
    }

    v5 = *v4;

    secondaryTextLabel = self->_secondaryTextLabel;
    if ([(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleLarge])
    {
      v7 = MEMORY[0x277D74420];
    }

    else
    {
      _isContentViewStyleMedium = [(NCDigestMosaicFeaturedNotificationContentView *)self _isContentViewStyleMedium];
      v7 = MEMORY[0x277D74420];
      if (!_isContentViewStyleMedium)
      {
        v7 = MEMORY[0x277D74418];
      }
    }

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:secondaryTextLabel withTextStyle:v5 fontWeight:0 additionalTraits:[(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForSecondaryText] maximumNumberOfLines:*v7];

    self->_hasUpdatedContent = 1;

    [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForFooterTextLabel
{
  if (self->_footerTextLabel)
  {
    preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D76968];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_footerTextLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCDigestMosaicFeaturedNotificationContentView *)self _maximumNumberOfLinesForFooterText] maximumNumberOfLines:*MEMORY[0x277D74418]];
    self->_hasUpdatedContent = 1;

    [(NCDigestMosaicFeaturedNotificationContentView *)self setNeedsLayout];
  }
}

@end