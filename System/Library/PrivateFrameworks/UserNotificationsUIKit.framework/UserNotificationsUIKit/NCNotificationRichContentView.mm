@interface NCNotificationRichContentView
- (BOOL)_isAXSize;
- (BOOL)_isDateLabelContainsUIMultiLayer;
- (CGRect)_labelSizingBoundsForRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationRichContentView)initWithFrame:(CGRect)a3;
- (double)_featuredImageHeightForBounds:(CGRect)a3;
- (double)_labelLayoutHorizontalMargin;
- (int64_t)_dateFormatStyleForDate:(id)a3;
- (unint64_t)_maximumNumberOfLinesForFooterText;
- (unint64_t)_maximumNumberOfLinesForPrimarySubtitleText;
- (unint64_t)_maximumNumberOfLinesForPrimaryText;
- (unint64_t)_maximumNumberOfLinesForSecondaryText;
- (unint64_t)_numberOfLinesForFooterTextInFrame:(CGRect)a3;
- (unint64_t)_numberOfLinesForPrimarySubtitleTextInFrame:(CGRect)a3;
- (unint64_t)_numberOfLinesForPrimaryTextInFrame:(CGRect)a3;
- (unint64_t)_numberOfLinesForSecondaryTextInFrame:(CGRect)a3;
- (void)_configureCrossfadingContentViewIfNecessary;
- (void)_configureDateLabel;
- (void)_configureDateLabelIfNecessary;
- (void)_layoutBadgedIconView;
- (void)_layoutDateLabel;
- (void)_layoutFooterTextLabel;
- (void)_layoutImageBoundingView;
- (void)_layoutPrimarySubtitleTextLabel;
- (void)_layoutPrimaryTextLabel;
- (void)_layoutSecondaryTextLabel;
- (void)_layoutSubviews;
- (void)_layoutThumbnailImageView;
- (void)_recycleDateLabel;
- (void)_tearDownDateLabel;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForDateLabel;
- (void)_updateTextAttributesForFooterTextLabel;
- (void)_updateTextAttributesForPrimarySubtitleTextLabel;
- (void)_updateTextAttributesForPrimaryTextLabel;
- (void)_updateTextAttributesForSecondaryTextElement;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)dateLabelDidChange:(id)a3;
- (void)layoutSubviews;
- (void)setAttachmentImageFeatured:(BOOL)a3;
- (void)setBadgedIconDescription:(id)a3;
- (void)setDate:(id)a3;
- (void)setDateAllDay:(BOOL)a3;
- (void)setDateAlpha:(double)a3;
- (void)setDateFormatStyle:(int64_t)a3;
- (void)setFooterText:(id)a3;
- (void)setHideDate:(BOOL)a3;
- (void)setPrimarySubtitleText:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setScreenCaptureProhibited:(BOOL)a3;
- (void)setSecondaryText:(id)a3;
- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)a3;
- (void)setThumbnail:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation NCNotificationRichContentView

- (NCNotificationRichContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationRichContentView;
  v3 = [(NCNotificationListBaseContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_attachmentImageFeatured = 0;
    v3->_dateAlpha = 1.0;
    [(NCNotificationRichContentView *)v3 _setContinuousCornerRadius:23.5];
  }

  return v4;
}

- (void)setAttachmentImageFeatured:(BOOL)a3
{
  if (self->_attachmentImageFeatured != a3)
  {
    self->_attachmentImageFeatured = a3;
    [(NCNotificationRichContentView *)self setClipsToBounds:?];

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationRichContentView;
  [(NCNotificationRichContentView *)&v3 layoutSubviews];
  [(NCNotificationRichContentView *)self bounds];
  if (CGRectGetWidth(v4) > 0.0)
  {
    [(NCNotificationRichContentView *)self _layoutSubviews];
    if (self->_hasUpdatedContent)
    {
      [(UIView *)self->_crossfadingContentView pl_performCrossFadeIfNecessary];
      self->_hasUpdatedContent = 0;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NCNotificationRichContentView *)self _labelSizingBoundsForRect:0.0, 0.0, a3.width, a3.height];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  primaryTextLabel = self->_primaryTextLabel;
  if (primaryTextLabel)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:primaryTextLabel withNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForPrimaryTextInFrame:v6, v7, v8, v9]];
  }

  primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
  if (primarySubtitleTextLabel)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:primarySubtitleTextLabel withNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForPrimarySubtitleTextInFrame:v10, v11, v12, v13]];
  }

  secondaryTextLabel = self->_secondaryTextLabel;
  if (secondaryTextLabel)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:secondaryTextLabel withNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForSecondaryTextInFrame:v10, v11, v12, v13]];
  }

  footerTextLabel = self->_footerTextLabel;
  if (footerTextLabel)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:footerTextLabel withNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForFooterTextInFrame:v10, v11, v12, v13]];
  }

  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:dateLabel withNumberOfLines:1, 0.0];
    [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
  }

  if (self->_badgedIconView && ![(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
  }

  if ([(NCNotificationRichContentView *)self isAttachmentImageFeatured]&& self->_imageBoundingView && self->_thumbnailImageView)
  {
    [(NCNotificationRichContentView *)self _featuredImageHeightForBounds:0.0, 0.0, width, height];
  }

  UISizeRoundToScale();
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)setPrimaryText:(id)a3
{
  v13 = a3;
  v4 = [(NCNotificationRichContentView *)self primaryText];
  v5 = BSEqualStrings();

  v6 = v13;
  if ((v5 & 1) == 0)
  {
    primaryTextLabel = self->_primaryTextLabel;
    if (v13)
    {
      if (!primaryTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_primaryTextLabel;
        self->_primaryTextLabel = v8;

        [(UILabel *)self->_primaryTextLabel setLineBreakMode:4];
        [(NCNotificationRichContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_primaryTextLabel];
        [(NCNotificationRichContentView *)self _updateTextAttributesForPrimaryTextLabel];
        v10 = self->_primaryTextLabel;
        v11 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v10 style:-1 visualStylingProvider:v11 outgoingProvider:0];

        v6 = v13;
        primaryTextLabel = self->_primaryTextLabel;
      }

      [(UILabel *)primaryTextLabel setText:v6];
    }

    else
    {
      [(UILabel *)primaryTextLabel removeFromSuperview];
      v12 = self->_primaryTextLabel;
      self->_primaryTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationRichContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setPrimarySubtitleText:(id)a3
{
  v13 = a3;
  v4 = [(NCNotificationRichContentView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  v6 = v13;
  if ((v5 & 1) == 0)
  {
    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    if (v13)
    {
      if (!primarySubtitleTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_primarySubtitleTextLabel;
        self->_primarySubtitleTextLabel = v8;

        [(UILabel *)self->_primarySubtitleTextLabel setLineBreakMode:4];
        [(NCNotificationRichContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_primarySubtitleTextLabel];
        [(NCNotificationRichContentView *)self _updateTextAttributesForPrimarySubtitleTextLabel];
        v10 = self->_primarySubtitleTextLabel;
        v11 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v10 style:-1 visualStylingProvider:v11 outgoingProvider:0];

        v6 = v13;
        primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
      }

      [(UILabel *)primarySubtitleTextLabel setText:v6];
    }

    else
    {
      [(UILabel *)primarySubtitleTextLabel removeFromSuperview];
      v12 = self->_primarySubtitleTextLabel;
      self->_primarySubtitleTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationRichContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setSecondaryText:(id)a3
{
  v12 = a3;
  v4 = [(NCNotificationRichContentView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    secondaryTextLabel = self->_secondaryTextLabel;
    if (v12)
    {
      if (!secondaryTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_secondaryTextLabel;
        self->_secondaryTextLabel = v8;

        [(UILabel *)self->_secondaryTextLabel _setTextAlignmentFollowsWritingDirection:1];
        [(UILabel *)self->_secondaryTextLabel setLineBreakMode:4];
        [(NCNotificationRichContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_secondaryTextLabel];
        v10 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_secondaryTextLabel style:-1 visualStylingProvider:v10 outgoingProvider:0];
        if (v10)
        {
          [v10 automaticallyUpdateView:self->_secondaryTextLabel withStyle:-1];
        }

        secondaryTextLabel = self->_secondaryTextLabel;
      }

      v11 = [(UILabel *)secondaryTextLabel textColor];
      [(UILabel *)self->_secondaryTextLabel setAttributedText:v12];
      [(UILabel *)self->_secondaryTextLabel setTextColor:v11];
      [(NCNotificationRichContentView *)self _updateTextAttributesForSecondaryTextElement];
    }

    else
    {
      [(UILabel *)secondaryTextLabel removeFromSuperview];
      v11 = self->_secondaryTextLabel;
      self->_secondaryTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    v6 = [(NCNotificationRichContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](v6);
}

- (void)setFooterText:(id)a3
{
  v13 = a3;
  v4 = [(NCNotificationRichContentView *)self footerText];
  v5 = BSEqualObjects();

  v6 = v13;
  if ((v5 & 1) == 0)
  {
    footerTextLabel = self->_footerTextLabel;
    if (v13)
    {
      if (!footerTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_footerTextLabel;
        self->_footerTextLabel = v8;

        [(UILabel *)self->_footerTextLabel setLineBreakMode:4];
        [(UIView *)self->_crossfadingContentView addSubview:self->_footerTextLabel];
        [(NCNotificationRichContentView *)self _updateTextAttributesForFooterTextLabel];
        v10 = self->_footerTextLabel;
        v11 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v10 style:-1 visualStylingProvider:v11 outgoingProvider:0];

        v6 = v13;
        footerTextLabel = self->_footerTextLabel;
      }

      [(UILabel *)footerTextLabel setAttributedText:v6];
    }

    else
    {
      [(UILabel *)footerTextLabel removeFromSuperview];
      v12 = self->_footerTextLabel;
      self->_footerTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationRichContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)a3
{
  if (self->_secondaryTextMaximumNumberOfLines != a3)
  {
    self->_secondaryTextMaximumNumberOfLines = a3;
    v4 = [(NCNotificationRichContentView *)self secondaryText];
    v5 = [v4 length];

    if (v5)
    {
      self->_hasUpdatedContent = 1;

      [(NCNotificationRichContentView *)self setNeedsLayout];
    }
  }
}

- (void)setScreenCaptureProhibited:(BOOL)a3
{
  if (self->_screenCaptureProhibited != a3)
  {
    self->_screenCaptureProhibited = a3;
    [(NCNotificationRichContentView *)self nc_setScreenCaptureProhibited:?];
  }
}

- (void)setThumbnail:(id)a3
{
  v19 = a3;
  v4 = [(NCNotificationRichContentView *)self thumbnail];
  v5 = BSEqualObjects();

  v6 = v19;
  if ((v5 & 1) == 0)
  {
    thumbnailImageView = self->_thumbnailImageView;
    if (v19)
    {
      if (!thumbnailImageView)
      {
        v8 = objc_alloc_init(MEMORY[0x277D755E8]);
        v9 = self->_thumbnailImageView;
        self->_thumbnailImageView = v8;

        [(UIImageView *)self->_thumbnailImageView setContentMode:2];
        v10 = self->_thumbnailImageView;
        v11 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
        v12 = 14.0;
        if (v11)
        {
          v12 = 0.0;
        }

        [(UIImageView *)v10 _setContinuousCornerRadius:v12];
        [(UIImageView *)self->_thumbnailImageView setClipsToBounds:1];
        imageBoundingView = self->_imageBoundingView;
        if (!imageBoundingView)
        {
          v14 = objc_alloc(MEMORY[0x277D75D18]);
          v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
          v16 = self->_imageBoundingView;
          self->_imageBoundingView = v15;

          [(NCNotificationRichContentView *)self _configureCrossfadingContentViewIfNecessary];
          [(UIView *)self->_crossfadingContentView addSubview:self->_imageBoundingView];
          imageBoundingView = self->_imageBoundingView;
        }

        [(UIView *)imageBoundingView addSubview:self->_thumbnailImageView];
        thumbnailImageView = self->_thumbnailImageView;
        v6 = v19;
      }

      [(UIImageView *)thumbnailImageView setImage:v6];
      v17 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
      [(NCNotificationListBaseContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:-1 visualStylingProvider:v17 outgoingProvider:v17];
    }

    else
    {
      [(UIImageView *)thumbnailImageView removeFromSuperview];
      v18 = self->_thumbnailImageView;
      self->_thumbnailImageView = 0;

      [(UIView *)self->_imageBoundingView removeFromSuperview];
      v17 = self->_imageBoundingView;
      self->_imageBoundingView = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationRichContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setBadgedIconDescription:(id)a3
{
  v9 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_badgedIconDescription, a3);
    [(NCBadgedIconView *)self->_badgedIconView removeFromSuperview];
    badgedIconView = self->_badgedIconView;
    self->_badgedIconView = 0;

    if (self->_badgedIconDescription)
    {
      v6 = [[NCBadgedIconView alloc] initWithBadgedIconDescription:v9 pointSize:38.0];
      v7 = self->_badgedIconView;
      self->_badgedIconView = v6;

      [(NCNotificationRichContentView *)self addSubview:self->_badgedIconView];
      v8 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
      [(NCBadgedIconView *)self->_badgedIconView updateVisualStylingOfProminentImageViewIfSymbolImageWithStyle:-1 visualStylingProvider:v8 outgoingProvider:v8];
    }

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)setDate:(id)a3
{
  v6 = a3;
  if (!BSEqualObjects() || ![(NCNotificationRichContentView *)self _isDateLabelContainsUIMultiLayer])
  {
    v4 = [v6 copy];
    date = self->_date;
    self->_date = v4;

    [(NCNotificationRichContentView *)self _tearDownDateLabel];
    [(NCNotificationRichContentView *)self _configureDateLabelIfNecessary];
    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)a3
{
  if (self->_dateAllDay != a3 || ![(NCNotificationRichContentView *)self _isDateLabelContainsUIMultiLayer])
  {
    self->_dateAllDay = a3;
    [(NCNotificationRichContentView *)self _tearDownDateLabel];
    [(NCNotificationRichContentView *)self _configureDateLabelIfNecessary];

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)a3
{
  if (self->_dateFormatStyle != a3 || ![(NCNotificationRichContentView *)self _isDateLabelContainsUIMultiLayer])
  {
    self->_dateFormatStyle = a3;
    [(NCNotificationRichContentView *)self _tearDownDateLabel];
    [(NCNotificationRichContentView *)self _configureDateLabelIfNecessary];

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)setHideDate:(BOOL)a3
{
  if (self->_hideDate != a3)
  {
    self->_hideDate = a3;
    [(NCNotificationRichContentView *)self _tearDownDateLabel];
    [(NCNotificationRichContentView *)self _configureDateLabelIfNecessary];

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)setDateAlpha:(double)a3
{
  if (self->_dateAlpha != a3)
  {
    self->_dateAlpha = a3;
    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    timeZone = self->_timeZone;
    self->_timeZone = v4;

    [(NCNotificationRichContentView *)self _tearDownDateLabel];
    [(NCNotificationRichContentView *)self _configureDateLabelIfNecessary];
    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)_layoutSubviews
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__NCNotificationRichContentView__layoutSubviews__block_invoke;
  v2[3] = &unk_27836F6A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

uint64_t __48__NCNotificationRichContentView__layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutImageBoundingView];
  [*(a1 + 32) _layoutThumbnailImageView];
  [*(a1 + 32) _layoutBadgedIconView];
  [*(a1 + 32) _layoutPrimaryTextLabel];
  [*(a1 + 32) _layoutPrimarySubtitleTextLabel];
  [*(a1 + 32) _layoutSecondaryTextLabel];
  [*(a1 + 32) _layoutFooterTextLabel];
  v2 = *(a1 + 32);

  return [v2 _layoutDateLabel];
}

- (void)_layoutImageBoundingView
{
  imageBoundingView = self->_imageBoundingView;
  if (!imageBoundingView)
  {
    return;
  }

  [(UIView *)imageBoundingView frame];
  [(NCNotificationRichContentView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    CGRectGetWidth(v15);
    if (self->_thumbnailImageView)
    {
      [(NCNotificationRichContentView *)self _featuredImageHeightForBounds:v5, v7, v9, v11];
    }

    if (![(NCNotificationRichContentView *)self _shouldReverseLayoutDirection])
    {
      goto LABEL_12;
    }
  }

  else if (([(NCNotificationRichContentView *)self _shouldReverseLayoutDirection]& 1) != 0)
  {
    goto LABEL_12;
  }

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  CGRectGetMaxX(v16);
LABEL_12:
  UIRectIntegralWithScale();
  [(UIView *)self->_imageBoundingView setFrame:?];
  v12 = self->_imageBoundingView;
  v13 = 1.0;
  if (!self->_thumbnailImageView)
  {
    v13 = 0.0;
  }

  [(UIView *)v12 setAlpha:v13];
}

- (void)_layoutThumbnailImageView
{
  thumbnailImageView = self->_thumbnailImageView;
  if (thumbnailImageView)
  {
    [(UIImageView *)thumbnailImageView frame];
    [(UIView *)self->_imageBoundingView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = self->_thumbnailImageView;
    v13 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    v14 = 14.0;
    if (v13)
    {
      v14 = 0.0;
    }

    [(UIImageView *)v12 _setContinuousCornerRadius:v14];
    v15 = self->_thumbnailImageView;

    [(UIImageView *)v15 setFrame:v5, v7, v9, v11];
  }
}

- (void)_layoutBadgedIconView
{
  badgedIconView = self->_badgedIconView;
  if (badgedIconView)
  {
    [(NCBadgedIconView *)badgedIconView frame];
    [(NCNotificationRichContentView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    if ([(NCNotificationRichContentView *)self _shouldReverseLayoutDirection])
    {
      v14.origin.x = v5;
      v14.origin.y = v7;
      v14.size.width = v9;
      v14.size.height = v11;
      CGRectGetWidth(v14);
    }

    [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    UIRectIntegralWithScale();
    [(NCBadgedIconView *)self->_badgedIconView setFrame:?];
    v12 = self->_badgedIconView;

    [(NCNotificationRichContentView *)self bringSubviewToFront:v12];
  }
}

- (void)_layoutPrimaryTextLabel
{
  primaryTextLabel = self->_primaryTextLabel;
  if (primaryTextLabel)
  {
    [(UILabel *)primaryTextLabel frame];
    [(NCNotificationRichContentView *)self bounds];
    [(NCNotificationRichContentView *)self _labelSizingBoundsForRect:?];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v8 = CGRectGetWidth(v18);
    [(UILabel *)self->_primaryTextLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForPrimaryTextInFrame:x, y, width, height]];
    v10 = v9;
    v11 = 13.0;
    if (self->_thumbnailImageView && [(NCNotificationRichContentView *)self isAttachmentImageFeatured])
    {
      [(UIView *)self->_imageBoundingView frame];
      v11 = CGRectGetMaxY(v19) + 8.0;
    }

    if ([(NCNotificationRichContentView *)self _shouldReverseLayoutDirection])
    {
      [(NCNotificationRichContentView *)self bounds];
      v12 = CGRectGetMaxX(v20) - v8;
      [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
      v14 = v12 - v13;
    }

    else
    {
      [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
      v14 = v15;
    }

    [(UILabel *)self->_primaryTextLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForPrimaryTextInFrame:x, y, width, height]];
    v21.origin.x = v14;
    v21.origin.y = v11;
    v21.size.width = v8;
    v21.size.height = v10;
    CGRectGetWidth(v21);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v16 = self->_primaryTextLabel;

    [(UILabel *)v16 setFrame:?];
  }
}

- (void)_layoutPrimarySubtitleTextLabel
{
  primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
  if (!primarySubtitleTextLabel)
  {
    return;
  }

  [(UILabel *)primarySubtitleTextLabel frame];
  [(NCNotificationRichContentView *)self bounds];
  [(NCNotificationRichContentView *)self _labelSizingBoundsForRect:?];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v8 = CGRectGetWidth(v24);
  [(UILabel *)self->_primarySubtitleTextLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForPrimarySubtitleTextInFrame:x, y, width, height]];
  v10 = v9;
  primaryTextLabel = self->_primaryTextLabel;
  if (primaryTextLabel)
  {
    [(UILabel *)primaryTextLabel frame];
    v16 = 1.0;
LABEL_4:
    v17 = CGRectGetMaxY(*&v12) + v16;
    goto LABEL_5;
  }

  v17 = 13.0;
  if (self->_thumbnailImageView && [(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    [(UIView *)self->_imageBoundingView frame];
    v16 = 8.0;
    goto LABEL_4;
  }

LABEL_5:
  if ([(NCNotificationRichContentView *)self _shouldReverseLayoutDirection])
  {
    [(NCNotificationRichContentView *)self bounds];
    v18 = CGRectGetMaxX(v25) - v8;
    [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
    v20 = v18 - v19;
  }

  else
  {
    [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
    v20 = v21;
  }

  [(UILabel *)self->_primarySubtitleTextLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForPrimarySubtitleTextInFrame:x, y, width, height]];
  v26.origin.x = v20;
  v26.origin.y = v17;
  v26.size.width = v8;
  v26.size.height = v10;
  CGRectGetWidth(v26);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v22 = self->_primarySubtitleTextLabel;

  [(UILabel *)v22 setFrame:?];
}

- (void)_layoutSecondaryTextLabel
{
  secondaryTextLabel = self->_secondaryTextLabel;
  if (!secondaryTextLabel)
  {
    return;
  }

  [(UILabel *)secondaryTextLabel frame];
  [(NCNotificationRichContentView *)self bounds];
  [(NCNotificationRichContentView *)self _labelSizingBoundsForRect:?];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v8 = CGRectGetWidth(v24);
  [(UILabel *)self->_secondaryTextLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForSecondaryTextInFrame:x, y, width, height]];
  v10 = v9;
  primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
  if (primarySubtitleTextLabel || (primarySubtitleTextLabel = self->_primaryTextLabel) != 0)
  {
    [(UILabel *)primarySubtitleTextLabel frame];
    v16 = 1.0;
LABEL_5:
    v17 = CGRectGetMaxY(*&v12) + v16;
    goto LABEL_6;
  }

  v17 = 13.0;
  if (self->_thumbnailImageView && [(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    [(UIView *)self->_imageBoundingView frame];
    v16 = 8.0;
    goto LABEL_5;
  }

LABEL_6:
  if ([(NCNotificationRichContentView *)self _shouldReverseLayoutDirection])
  {
    [(NCNotificationRichContentView *)self bounds];
    v18 = CGRectGetMaxX(v25) - v8;
    [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
    v20 = v18 - v19;
  }

  else
  {
    [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
    v20 = v21;
  }

  [(UILabel *)self->_secondaryTextLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForSecondaryTextInFrame:x, y, width, height]];
  v26.origin.x = v20;
  v26.origin.y = v17;
  v26.size.width = v8;
  v26.size.height = v10;
  CGRectGetWidth(v26);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v22 = self->_secondaryTextLabel;

  [(UILabel *)v22 setFrame:?];
}

- (void)_layoutFooterTextLabel
{
  footerTextLabel = self->_footerTextLabel;
  if (footerTextLabel)
  {
    [(UILabel *)footerTextLabel frame];
    [(NCNotificationRichContentView *)self bounds];
    [(NCNotificationRichContentView *)self _labelSizingBoundsForRect:?];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v8 = CGRectGetWidth(v18);
    [(UILabel *)self->_footerTextLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForFooterTextInFrame:x, y, width, height]];
    v10 = v9;
    [(UILabel *)self->_secondaryTextLabel frame];
    MaxY = CGRectGetMaxY(v19);
    if ([(NCNotificationRichContentView *)self _shouldReverseLayoutDirection])
    {
      [(NCNotificationRichContentView *)self bounds];
      v12 = CGRectGetMaxX(v20) - v8;
      [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
      v14 = v12 - v13;
    }

    else
    {
      [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
      v14 = v15;
    }

    [(UILabel *)self->_footerTextLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationRichContentView *)self _numberOfLinesForFooterTextInFrame:x, y, width, height]];
    v21.origin.x = v14;
    v21.origin.y = MaxY;
    v21.size.width = v8;
    v21.size.height = v10;
    CGRectGetWidth(v21);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v16 = self->_footerTextLabel;

    [(UILabel *)v16 setFrame:?];
  }
}

- (void)_layoutDateLabel
{
  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    [(BSUIDateLabel *)dateLabel frame];
    [(NCNotificationRichContentView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if ([(NCNotificationRichContentView *)self isAttachmentImageFeatured])
    {
      v12 = 12.0;
    }

    else
    {
      v12 = 14.0;
    }

    v38.origin.x = v5;
    v38.origin.y = v7;
    v38.size.width = v9;
    v38.size.height = v11;
    v39 = CGRectInset(v38, v12, 0.0);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v17 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    v18 = height;
    v19 = width;
    v20 = y;
    v21 = x;
    if (!v17)
    {
      [(NCNotificationRichContentView *)self _labelSizingBoundsForRect:x, y, width, height];
    }

    v22 = CGRectGetWidth(*&v21);
    [(BSUIDateLabel *)self->_dateLabel unui_measuringHeightWithNumberOfLines:1];
    v24 = v23;
    footerTextLabel = self->_footerTextLabel;
    if (!footerTextLabel)
    {
      footerTextLabel = self->_secondaryTextLabel;
    }

    [(UILabel *)footerTextLabel frame];
    MaxY = CGRectGetMaxY(v40);
    v27 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    v28 = 1.0;
    if (v27)
    {
      v28 = 2.0;
    }

    v29 = MaxY + v28;
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v30 = CGRectGetMaxY(v41) - v24 + -12.0;
    if (v29 >= v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    if ([(NCNotificationRichContentView *)self _shouldReverseLayoutDirection])
    {
      [(NCNotificationRichContentView *)self bounds];
      v32 = CGRectGetMaxX(v42) - v22;
      [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
      v34 = v32 - v33;
    }

    else
    {
      [(NCNotificationRichContentView *)self _labelLayoutHorizontalMargin];
      v34 = v35;
    }

    [(BSUIDateLabel *)self->_dateLabel unui_drawingHeightWithNumberOfLines:1];
    v43.origin.x = v34;
    v43.origin.y = v31;
    v43.size.width = v22;
    v43.size.height = v24;
    CGRectGetWidth(v43);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    [(BSUIDateLabel *)self->_dateLabel setFrame:0];
    v36 = self->_dateLabel;
    [(NCNotificationRichContentView *)self dateAlpha];

    [(BSUIDateLabel *)v36 setAlpha:?];
  }
}

- (void)dateLabelDidChange:(id)a3
{
  [(BSUIDateLabel *)self->_dateLabel sizeToFit];

  [(NCNotificationRichContentView *)self setNeedsLayout];
}

- (BOOL)_isAXSize
{
  v2 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  return IsAccessibilityCategory;
}

- (void)_configureCrossfadingContentViewIfNecessary
{
  if (!self->_crossfadingContentView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NCNotificationRichContentView *)self bounds];
    v4 = [v3 initWithFrame:?];
    crossfadingContentView = self->_crossfadingContentView;
    self->_crossfadingContentView = v4;

    [(NCNotificationRichContentView *)self addSubview:self->_crossfadingContentView];
    v6 = self->_crossfadingContentView;

    [(UIView *)v6 setAutoresizingMask:18];
  }
}

- (double)_featuredImageHeightForBounds:(CGRect)a3
{
  CGRectGetWidth(a3);
  v4 = [(NCNotificationRichContentView *)self traitCollection];
  [v4 displayScale];
  UICeilToScale();
  v6 = v5;

  return v6;
}

- (CGRect)_labelSizingBoundsForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  if (self->_thumbnailImageView && ![(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    v9 = 98.0;
  }

  else if ([(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    v9 = 12.0;
  }

  else
  {
    v9 = 14.0;
  }

  if (self->_badgedIconView && ![(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    v12 = 20.0;
    if (![(NCNotificationRichContentView *)self isAttachmentImageFeatured])
    {
      if (self->_badgedIconView)
      {
        v12 = 38.0;
      }

      else
      {
        v12 = 56.0;
      }
    }

    v13 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    v14 = 10.0;
    if (!v13)
    {
      v14 = 12.0;
    }

    v11 = v12 + v14 + 12.0;
  }

  else
  {
    v10 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    v11 = 14.0;
    if (v10)
    {
      v11 = 12.0;
    }
  }

  v15 = v8 - v9 - v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v16 = CGRectGetHeight(v20);
  v17 = 0.0;
  v18 = 0.0;
  v19 = v15;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)_labelLayoutHorizontalMargin
{
  if (self->_badgedIconView && ![(NCNotificationRichContentView *)self isAttachmentImageFeatured])
  {
    if ([(NCNotificationRichContentView *)self isAttachmentImageFeatured])
    {
      v5 = 22.0;
    }

    else
    {
      v5 = 24.0;
    }

    v6 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    v7 = 20.0;
    if (!v6)
    {
      v7 = 38.0;
      if (!self->_badgedIconView)
      {
        v7 = 56.0;
      }
    }

    return v5 + v7;
  }

  else
  {
    v3 = [(NCNotificationRichContentView *)self isAttachmentImageFeatured];
    result = 14.0;
    if (v3)
    {
      return 12.0;
    }
  }

  return result;
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v10.receiver = self;
  v10.super_class = NCNotificationRichContentView;
  v8 = a5;
  v9 = a3;
  [(NCNotificationListBaseContentView *)&v10 _visualStylingProviderDidChange:v9 forCategory:a4 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_primaryTextLabel style:-1 visualStylingProvider:v9 outgoingProvider:v8, v10.receiver, v10.super_class];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_primarySubtitleTextLabel style:-1 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_secondaryTextLabel style:-1 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_footerTextLabel style:-1 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:-1 visualStylingProvider:v9 outgoingProvider:v8];
}

- (unint64_t)_maximumNumberOfLinesForPrimaryText
{
  v2 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (unint64_t)_numberOfLinesForPrimaryTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  primaryTextLabel = self->_primaryTextLabel;
  v9 = [(NCNotificationRichContentView *)self _maximumNumberOfLinesForPrimaryText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:primaryTextLabel maximumNumberOfLines:v9 inFrame:x, y, width, height];
}

- (unint64_t)_maximumNumberOfLinesForPrimarySubtitleText
{
  v2 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  v3 = !UIContentSizeCategoryIsAccessibilityCategory(v2);

  return v3;
}

- (unint64_t)_numberOfLinesForPrimarySubtitleTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
  v9 = [(NCNotificationRichContentView *)self _maximumNumberOfLinesForPrimarySubtitleText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:primarySubtitleTextLabel maximumNumberOfLines:v9 inFrame:x, y, width, height];
}

- (unint64_t)_maximumNumberOfLinesForSecondaryText
{
  v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    secondaryTextMaximumNumberOfLines = 0;
  }

  else
  {
    secondaryTextMaximumNumberOfLines = self->_secondaryTextMaximumNumberOfLines;
  }

  return secondaryTextMaximumNumberOfLines;
}

- (unint64_t)_numberOfLinesForSecondaryTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  secondaryTextLabel = self->_secondaryTextLabel;
  v9 = [(NCNotificationRichContentView *)self _maximumNumberOfLinesForSecondaryText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:secondaryTextLabel maximumNumberOfLines:v9 inFrame:x, y, width, height];
}

- (unint64_t)_maximumNumberOfLinesForFooterText
{
  v2 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  v3 = !UIContentSizeCategoryIsAccessibilityCategory(v2);

  return v3;
}

- (unint64_t)_numberOfLinesForFooterTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  footerTextLabel = self->_footerTextLabel;
  v9 = [(NCNotificationRichContentView *)self _maximumNumberOfLinesForFooterText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:footerTextLabel maximumNumberOfLines:v9 inFrame:x, y, width, height];
}

- (void)_updateTextAttributes
{
  v3.receiver = self;
  v3.super_class = NCNotificationRichContentView;
  [(NCNotificationListBaseContentView *)&v3 _updateTextAttributes];
  [(NCNotificationRichContentView *)self _updateTextAttributesForPrimaryTextLabel];
  [(NCNotificationRichContentView *)self _updateTextAttributesForPrimarySubtitleTextLabel];
  [(NCNotificationRichContentView *)self _updateTextAttributesForSecondaryTextElement];
  [(NCNotificationRichContentView *)self _updateTextAttributesForFooterTextLabel];
  [(NCNotificationRichContentView *)self _updateTextAttributesForDateLabel];
}

- (void)_updateTextAttributesForPrimaryTextLabel
{
  if (self->_primaryTextLabel)
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D769D0];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_primaryTextLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCNotificationRichContentView *)self _maximumNumberOfLinesForPrimaryText] maximumNumberOfLines:*MEMORY[0x277D74420]];
    self->_hasUpdatedContent = 1;

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForPrimarySubtitleTextLabel
{
  if (self->_primarySubtitleTextLabel)
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D769D0];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_primarySubtitleTextLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCNotificationRichContentView *)self _maximumNumberOfLinesForPrimarySubtitleText] maximumNumberOfLines:*MEMORY[0x277D74420]];
    self->_hasUpdatedContent = 1;

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSecondaryTextElement
{
  if (self->_secondaryTextLabel)
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D76968];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_secondaryTextLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCNotificationRichContentView *)self _maximumNumberOfLinesForSecondaryText] maximumNumberOfLines:*MEMORY[0x277D74418]];
    self->_hasUpdatedContent = 1;

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForFooterTextLabel
{
  if (self->_footerTextLabel)
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D76940];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_footerTextLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCNotificationRichContentView *)self _maximumNumberOfLinesForFooterText] maximumNumberOfLines:*MEMORY[0x277D74418]];
    self->_hasUpdatedContent = 1;

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForDateLabel
{
  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    v4 = [(NCNotificationRichContentView *)self _dateLabelPreferredFont];
    [(BSUIDateLabel *)dateLabel setFont:v4];

    [(BSUIDateLabel *)self->_dateLabel setNumberOfLines:1];
    [(BSUIDateLabel *)self->_dateLabel setLineBreakMode:3];

    [(NCNotificationRichContentView *)self setNeedsLayout];
  }
}

- (void)_configureDateLabelIfNecessary
{
  if (!self->_dateLabel && self->_date)
  {
    [(NCNotificationRichContentView *)self _configureDateLabel];
  }

  [(NCNotificationRichContentView *)self _updateTextAttributesForDateLabel];
  v3 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
  [v3 stopAutomaticallyUpdatingView:self->_dateLabel];
}

- (void)_configureDateLabel
{
  v3 = [MEMORY[0x277CF0D50] sharedInstance];
  v4 = [v3 startLabelWithStartDate:self->_date endDate:0 timeZone:self->_timeZone allDay:self->_dateAllDay forStyle:self->_dateFormatStyle];
  dateLabel = self->_dateLabel;
  self->_dateLabel = v4;

  [(BSUIDateLabel *)self->_dateLabel setDelegate:self];
  [(BSUIDateLabel *)self->_dateLabel setPreferredVibrancy:1];
  v6 = [(BSUIDateLabel *)self->_dateLabel layer];
  [v6 setFilters:MEMORY[0x277CBEBF8]];

  v7 = self->_dateLabel;
  v8 = [MEMORY[0x277D75348] labelColor];
  [(BSUIDateLabel *)v7 setTextColor:v8];

  [(BSUIDateLabel *)self->_dateLabel setHidden:self->_hideDate];
  v9 = self->_dateLabel;

  [(NCNotificationRichContentView *)self addSubview:v9];
}

- (void)_recycleDateLabel
{
  [(BSUIDateLabel *)self->_dateLabel setDelegate:0];
  [(BSUIDateLabel *)self->_dateLabel setHidden:0];
  [(BSUIDateLabel *)self->_dateLabel setPreferredVibrancy:0];
  v3 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
  [v3 stopAutomaticallyUpdatingView:self->_dateLabel];

  v4 = [MEMORY[0x277CF0D50] sharedInstance];
  [v4 recycleLabel:self->_dateLabel];
}

- (void)_tearDownDateLabel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__NCNotificationRichContentView__tearDownDateLabel__block_invoke;
  v2[3] = &unk_27836F6A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __51__NCNotificationRichContentView__tearDownDateLabel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 496);
  if (v2)
  {
    [v2 removeFromSuperview];
    [*(a1 + 32) _recycleDateLabel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 496);
    *(v3 + 496) = 0;
  }
}

- (int64_t)_dateFormatStyleForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 isDateInToday:v4];

  return v6;
}

- (BOOL)_isDateLabelContainsUIMultiLayer
{
  v2 = self;
  v3 = [(BSUIDateLabel *)self->_dateLabel _outermostLayer];
  v4 = [(BSUIDateLabel *)v2->_dateLabel layer];
  LOBYTE(v2) = v3 != v4;

  return v2;
}

@end