@interface NCCarPlayBannerContentView
- (BOOL)_hasSubtitle;
- (BOOL)_shouldShowOKButton;
- (CGSize)sizeThatFits:(CGSize)result;
- (NCCarPlayBannerContentView)init;
- (NCCarPlayBannerContentViewDelegate)delegate;
- (UIEdgeInsets)_iconImageInsets;
- (id)_boundedTraitCollectionForLabelFont;
- (id)_defaultRelevanceDateFont;
- (id)_primaryFont;
- (id)_subtitleFont;
- (void)_layoutForButton:(id)button contentFrame:(CGRect)frame;
- (void)_reloadDisplayPropertiesIfNecessary;
- (void)_setRelevanceDate:(id)date allDay:(BOOL)day timeZone:(id)zone style:(int64_t)style;
- (void)_updateButtonStates;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBadgedIconDescription:(id)description;
- (void)setDate:(id)date;
- (void)setDateAllDay:(BOOL)day;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setPrimarySubtitleText:(id)text;
- (void)setPrimarySubtitleTextMaximumNumberOfLines:(unint64_t)lines;
- (void)setPrimaryText:(id)text;
- (void)setPrimaryTextMaximumNumberOfLines:(unint64_t)lines;
- (void)setScreenCaptureProhibited:(BOOL)prohibited;
- (void)setTimeZone:(id)zone;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCCarPlayBannerContentView

- (void)_updateButtonStates
{
  traitCollection = [(NCCarPlayBannerContentView *)self traitCollection];
  v3 = ([traitCollection interactionModel] & 2) != 0 || objc_msgSend(traitCollection, "primaryInteractionModel") == 8;
  [(CPUIBannerViewButton *)self->_okButton setSelected:v3];
  [(CPUIBannerViewButton *)self->_actionButton setSelected:v3];
}

- (void)layoutSubviews
{
  [(NCCarPlayBannerContentView *)self _reloadDisplayPropertiesIfNecessary];
  [(NCCarPlayBannerContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldShowOKButton = [(NCCarPlayBannerContentView *)self _shouldShowOKButton];
  actionButton = self->_actionButton;
  if (_shouldShowOKButton)
  {
    [(CPUIBannerViewButton *)actionButton setHidden:1];
    [(CPUIBannerViewButton *)self->_okButton setHidden:0];
    [(NCCarPlayBannerContentView *)self _layoutForButton:self->_okButton contentFrame:v4, v6, v8, v10];
    [(CPUIBannerViewButton *)self->_okButton bounds];
    Width = CGRectGetWidth(v66);
    if ([(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection])
    {
      [(CPUIBannerViewButton *)self->_okButton frame];
      MinX = CGRectGetMinX(v67);
      [(CPUIBannerViewButton *)self->_okButton bounds];
      v4 = v4 + MinX + CGRectGetWidth(v68);
    }
  }

  else
  {
    [(CPUIBannerViewButton *)actionButton setHidden:0];
    [(NCCarPlayBannerContentView *)self _layoutForButton:self->_actionButton contentFrame:v4, v6, v8, v10];
    [(CPUIBannerViewButton *)self->_actionButton bounds];
    Width = CGRectGetWidth(v69);
    if ([(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection])
    {
      [(CPUIBannerViewButton *)self->_actionButton frame];
      v15 = CGRectGetMinX(v70);
      [(CPUIBannerViewButton *)self->_actionButton bounds];
      v4 = v4 + v15 + CGRectGetWidth(v71);
    }

    [(CPUIBannerViewButton *)self->_okButton setHidden:1];
  }

  v16 = v8 - (Width + 12.0 + 12.0);
  [(NCCarPlayBannerContentView *)self _iconImageInsets];
  v19 = v18;
  if (self->_badgedIconView)
  {
    v20 = v6 + v17;
    _shouldReverseLayoutDirection = [(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection];
    v22 = v4;
    v23 = v6;
    v24 = v16;
    v25 = v10;
    if (_shouldReverseLayoutDirection)
    {
      v26 = CGRectGetMaxX(*&v22) - v19 + -40.0;
    }

    else
    {
      v26 = v19 + CGRectGetMinX(*&v22);
    }

    v19 = v19 + 48.0;
    badgedIconView = self->_badgedIconView;
    v28 = 0x4044000000000000;
    v29 = v20;
    v30 = 0x4044000000000000;
    v72 = CGRectIntegral(*&v26);
    [(NCBadgedIconView *)badgedIconView setFrame:v72.origin.x, v72.origin.y, v72.size.width, v72.size.height];
  }

  if (![(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection])
  {
    v4 = v4 + v19;
  }

  v31 = v16 - v19;
  attributedText = [(BSUIDateLabel *)self->_relevanceDateLabel attributedText];
  [attributedText size];
  v34 = v33;
  v64 = v35;

  v36 = v34 + 8.0;
  if (!self->_relevanceDateLabel)
  {
    v36 = 0.0;
  }

  v37 = v31 - v36;
  p_primaryTextLabel = &self->_primaryTextLabel;
  [(UILabel *)self->_primaryTextLabel sizeThatFits:v31 - v36, v10];
  if (v37 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v37;
  }

  if (v10 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v10;
  }

  v43 = v4;
  if ([(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection])
  {
    v73.origin.x = v4;
    v73.origin.y = v6;
    v73.size.width = v31;
    v73.size.height = v10;
    v43 = CGRectGetMaxX(v73) - v41;
  }

  if ([(NCCarPlayBannerContentView *)self _hasSubtitle])
  {
    v74.origin.y = v6 + 24.0 - self->_primaryAscender;
    v44 = *p_primaryTextLabel;
    v74.origin.x = v43;
    v74.size.width = v41;
    v74.size.height = v42;
    v75 = CGRectIntegral(v74);
    [v44 setFrame:{v75.origin.x, v75.origin.y, v75.size.width, v75.size.height}];
    p_primarySubtitleTextLabel = &self->_primarySubtitleTextLabel;
    [(UILabel *)self->_primarySubtitleTextLabel sizeThatFits:v31, v10];
    if (v31 >= v46)
    {
      v41 = v46;
    }

    else
    {
      v41 = v31;
    }

    if (v10 >= v47)
    {
      v42 = v47;
    }

    else
    {
      v42 = v10;
    }

    if ([(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection])
    {
      v43 = v31 + v4 - v41;
    }

    else
    {
      v43 = v4;
    }

    v48 = v6 + 41.0 - self->_subTitleAscender;
  }

  else
  {
    v48 = v6 + floor((v10 - v42) * 0.5);
    p_primarySubtitleTextLabel = &self->_primaryTextLabel;
  }

  v49 = *p_primarySubtitleTextLabel;
  v50 = v43;
  v51 = v41;
  v52 = v42;
  v76 = CGRectIntegral(*(&v48 - 1));
  [(UILabel *)v49 setFrame:v76.origin.x, v76.origin.y, v76.size.width, v76.size.height];
  if (self->_relevanceDateLabel)
  {
    [*p_primaryTextLabel frame];
    v54 = v53;
    v56 = v55 + 2.0;
    if (([(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      [*p_primaryTextLabel frame];
      v57 = CGRectGetMinX(v77);
      v78.origin.x = v54;
      v78.origin.y = v56;
      v78.size.width = v34;
      v58 = v64;
      v78.size.height = v64;
      v59 = v57 - CGRectGetWidth(v78) + -8.0;
    }

    else
    {
      [*p_primaryTextLabel frame];
      v59 = CGRectGetMaxX(v79) + 8.0;
      v58 = v64;
    }

    relevanceDateLabel = self->_relevanceDateLabel;
    v61 = v56;
    v62 = v34;
    v63 = v58;
    v80 = CGRectIntegral(*&v59);

    [(BSUIDateLabel *)relevanceDateLabel setFrame:v80.origin.x, v80.origin.y, v80.size.width, v80.size.height];
  }
}

- (void)_reloadDisplayPropertiesIfNecessary
{
  if (!self->_displayPropertiesValid)
  {
    self->_displayPropertiesValid = 1;
    date = [(NCCarPlayBannerContentView *)self date];
    isDateAllDay = [(NCCarPlayBannerContentView *)self isDateAllDay];
    timeZone = [(NCCarPlayBannerContentView *)self timeZone];
    [(NCCarPlayBannerContentView *)self _setRelevanceDate:date allDay:isDateAllDay timeZone:timeZone style:[(NCCarPlayBannerContentView *)self dateFormatStyle]];
  }
}

- (BOOL)_shouldShowOKButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained bannerContentViewShouldShowOKButton:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (UIEdgeInsets)_iconImageInsets
{
  [(NCCarPlayBannerContentView *)self bounds];
  traitCollection = [(NCCarPlayBannerContentView *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v5 = v4;

  v6 = 10.0;
  v7 = 10.0;
  v8 = v5;
  v9 = v5;
  result.right = v7;
  result.bottom = v9;
  result.left = v6;
  result.top = v8;
  return result;
}

- (BOOL)_hasSubtitle
{
  text = [(UILabel *)self->_primarySubtitleTextLabel text];
  v3 = [text length] != 0;

  return v3;
}

- (void)dealloc
{
  [(NCCarPlayBannerContentView *)self _setRelevanceDate:0 allDay:0 timeZone:0 style:0];
  v3.receiver = self;
  v3.super_class = NCCarPlayBannerContentView;
  [(NCCarPlayBannerContentView *)&v3 dealloc];
}

- (NCCarPlayBannerContentView)init
{
  v19.receiver = self;
  v19.super_class = NCCarPlayBannerContentView;
  v2 = [(NCCarPlayBannerContentView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NCCarPlayBannerContentView *)v2 setBackgroundColor:clearColor];

    _primaryFont = [(NCCarPlayBannerContentView *)v2 _primaryFont];
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    primaryTextLabel = v2->_primaryTextLabel;
    v2->_primaryTextLabel = v5;

    [(UILabel *)v2->_primaryTextLabel setFont:_primaryFont];
    v7 = v2->_primaryTextLabel;
    _textColor = [objc_opt_class() _textColor];
    [(UILabel *)v7 setTextColor:_textColor];

    _subtitleFont = [(NCCarPlayBannerContentView *)v2 _subtitleFont];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    primarySubtitleTextLabel = v2->_primarySubtitleTextLabel;
    v2->_primarySubtitleTextLabel = v10;

    [(UILabel *)v2->_primarySubtitleTextLabel setFont:_subtitleFont];
    v12 = v2->_primarySubtitleTextLabel;
    _textColor2 = [objc_opt_class() _textColor];
    [(UILabel *)v12 setTextColor:_textColor2];

    buttonWithOK = [MEMORY[0x277CF90D0] buttonWithOK];
    okButton = v2->_okButton;
    v2->_okButton = buttonWithOK;

    buttonWithChevronImage = [MEMORY[0x277CF90D0] buttonWithChevronImage];
    actionButton = v2->_actionButton;
    v2->_actionButton = buttonWithChevronImage;

    [(NCCarPlayBannerContentView *)v2 _updateButtonStates];
    [(NCCarPlayBannerContentView *)v2 addSubview:v2->_primaryTextLabel];
    [(NCCarPlayBannerContentView *)v2 addSubview:v2->_primarySubtitleTextLabel];
    [(NCCarPlayBannerContentView *)v2 addSubview:v2->_okButton];
    [(NCCarPlayBannerContentView *)v2 addSubview:v2->_actionButton];
  }

  return v2;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 60.0;
  result.height = v3;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = NCCarPlayBannerContentView;
  changeCopy = change;
  [(NCCarPlayBannerContentView *)&v14 traitCollectionDidChange:changeCopy];
  [(NCCarPlayBannerContentView *)self invalidateDisplayProperties:v14.receiver];
  [(NCCarPlayBannerContentView *)self _updateButtonStates];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(NCCarPlayBannerContentView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    primaryTextLabel = self->_primaryTextLabel;
    _primaryFont = [(NCCarPlayBannerContentView *)self _primaryFont];
    [(UILabel *)primaryTextLabel setFont:_primaryFont];

    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    _subtitleFont = [(NCCarPlayBannerContentView *)self _subtitleFont];
    [(UILabel *)primarySubtitleTextLabel setFont:_subtitleFont];

    relevanceDateLabel = self->_relevanceDateLabel;
    _defaultRelevanceDateFont = [(NCCarPlayBannerContentView *)self _defaultRelevanceDateFont];
    [(BSUIDateLabel *)relevanceDateLabel setFont:_defaultRelevanceDateFont];

    [(NCCarPlayBannerContentView *)self setNeedsLayout];
  }
}

- (void)_layoutForButton:(id)button contentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  buttonCopy = button;
  [buttonCopy bounds];
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(NCCarPlayBannerContentView *)self _shouldReverseLayoutDirection];
  v12 = width - v8 + -12.0;
  if (_shouldReverseLayoutDirection)
  {
    v12 = 12.0;
  }

  v13 = round((height - v10) * 0.5);
  v14 = v8;
  v15 = v10;
  v18 = CGRectIntegral(*&v12);
  [buttonCopy setFrame:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
  [buttonCopy setHidden:0];
}

- (id)_primaryFont
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D74310];
  v4 = *MEMORY[0x277D769D0];
  _boundedTraitCollectionForLabelFont = [(NCCarPlayBannerContentView *)self _boundedTraitCollectionForLabelFont];
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:_boundedTraitCollectionForLabelFont];

  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v10 = [v6 fontDescriptorByAddingAttributes:v9];

  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  [v11 ascender];
  self->_primaryAscender = v12;

  return v11;
}

- (id)_subtitleFont
{
  v3 = MEMORY[0x277D74310];
  v4 = *MEMORY[0x277D769D0];
  _boundedTraitCollectionForLabelFont = [(NCCarPlayBannerContentView *)self _boundedTraitCollectionForLabelFont];
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:_boundedTraitCollectionForLabelFont];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
  [v7 ascender];
  self->_subTitleAscender = v8;

  return v7;
}

- (id)_defaultRelevanceDateFont
{
  v2 = MEMORY[0x277D74310];
  v3 = *MEMORY[0x277D76938];
  _boundedTraitCollectionForLabelFont = [(NCCarPlayBannerContentView *)self _boundedTraitCollectionForLabelFont];
  v5 = [v2 preferredFontDescriptorWithTextStyle:v3 compatibleWithTraitCollection:_boundedTraitCollectionForLabelFont];

  v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)_boundedTraitCollectionForLabelFont
{
  v18[7] = *MEMORY[0x277D85DE8];
  traitCollection = [(NCCarPlayBannerContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v4 = preferredContentSizeCategory;
  v5 = *MEMORY[0x277D76818];
  v18[0] = *MEMORY[0x277D76820];
  v18[1] = v5;
  v6 = *MEMORY[0x277D76800];
  v18[2] = *MEMORY[0x277D76808];
  v18[3] = v6;
  v7 = *MEMORY[0x277D767F0];
  v18[4] = *MEMORY[0x277D767F8];
  v18[5] = v7;
  v18[6] = *MEMORY[0x277D767E8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = MEMORY[0x277D76828];
  }

  else
  {
    v11 = *MEMORY[0x277D76830];
    v17[0] = *MEMORY[0x277D76858];
    v17[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v13 = [v12 containsObject:v4];

    v14 = v4;
    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = MEMORY[0x277D76840];
  }

  v14 = *v10;

LABEL_6:
  v15 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v14];

  return v15;
}

- (void)_setRelevanceDate:(id)date allDay:(BOOL)day timeZone:(id)zone style:(int64_t)style
{
  dayCopy = day;
  dateCopy = date;
  zoneCopy = zone;
  v11 = dateCopy;
  v12 = zoneCopy;
  if (dateCopy)
  {
    if (!zoneCopy)
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
      v11 = dateCopy;
      v12 = defaultTimeZone;
    }

    relevanceDateLabel = self->_relevanceDateLabel;
    if (relevanceDateLabel)
    {
      [(BSUIDateLabel *)relevanceDateLabel setStartDate:v11 withTimeZone:v12];
      [(BSUIDateLabel *)self->_relevanceDateLabel setEndDate:dateCopy withTimeZone:v12];
      [(BSUIDateLabel *)self->_relevanceDateLabel setDelegate:self];
    }

    else
    {
      mEMORY[0x277CF0D50] = [MEMORY[0x277CF0D50] sharedInstance];
      v19 = [mEMORY[0x277CF0D50] startLabelWithStartDate:dateCopy endDate:0 timeZone:v12 allDay:dayCopy forStyle:style];
      v20 = self->_relevanceDateLabel;
      self->_relevanceDateLabel = v19;

      v21 = self->_relevanceDateLabel;
      _defaultRelevanceDateFont = [(NCCarPlayBannerContentView *)self _defaultRelevanceDateFont];
      [(BSUIDateLabel *)v21 setFont:_defaultRelevanceDateFont];

      v23 = self->_relevanceDateLabel;
      _textColor = [objc_opt_class() _textColor];
      [(BSUIDateLabel *)v23 setTextColor:_textColor];

      [(BSUIDateLabel *)self->_relevanceDateLabel setDelegate:self];
      [(NCCarPlayBannerContentView *)self addSubview:self->_relevanceDateLabel];
      [(BSUIDateLabel *)self->_relevanceDateLabel updateTraitsIfNeeded];
    }
  }

  else
  {
    v15 = self->_relevanceDateLabel;
    if (v15)
    {
      [(BSUIDateLabel *)v15 setDelegate:0];
      mEMORY[0x277CF0D50]2 = [MEMORY[0x277CF0D50] sharedInstance];
      [mEMORY[0x277CF0D50]2 recycleLabel:self->_relevanceDateLabel];

      v17 = self->_relevanceDateLabel;
      self->_relevanceDateLabel = 0;
    }
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = [(NCCarPlayBannerContentView *)self primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_primaryTextLabel setText:textCopy];
    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setPrimarySubtitleText:(id)text
{
  textCopy = text;
  primarySubtitleText = [(NCCarPlayBannerContentView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_primarySubtitleTextLabel setText:textCopy];
    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [dateCopy copy];
    date = self->_date;
    self->_date = v4;

    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setDateAllDay:(BOOL)day
{
  if (self->_dateAllDay != day)
  {
    self->_dateAllDay = day;
    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [zoneCopy copy];
    timeZone = self->_timeZone;
    self->_timeZone = v4;

    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if (self->_dateFormatStyle != style)
  {
    self->_dateFormatStyle = style;
    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setPrimaryTextMaximumNumberOfLines:(unint64_t)lines
{
  if ([(NCCarPlayBannerContentView *)self primaryTextMaximumNumberOfLines]!= lines)
  {
    [(UILabel *)self->_primaryTextLabel setNumberOfLines:lines];

    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setPrimarySubtitleTextMaximumNumberOfLines:(unint64_t)lines
{
  if ([(NCCarPlayBannerContentView *)self primarySubtitleTextMaximumNumberOfLines]!= lines)
  {
    [(UILabel *)self->_primarySubtitleTextLabel setNumberOfLines:lines];

    [(NCCarPlayBannerContentView *)self invalidateDisplayProperties];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)prohibited
{
  if (self->_screenCaptureProhibited != prohibited)
  {
    self->_screenCaptureProhibited = prohibited;
    [(NCCarPlayBannerContentView *)self nc_setScreenCaptureProhibited:?];
  }
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider != providerCopy)
  {
    v9 = providerCopy;
    v8 = strokeVisualStylingProvider;
    objc_storeStrong(&self->_strokeVisualStylingProvider, provider);
    if (self->_badgedIconView)
    {
      [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:?];
      [(MTVisualStylingProvider *)v9 automaticallyUpdateView:self->_badgedIconView withStyle:0];
    }

    providerCopy = v9;
  }
}

- (void)setBadgedIconDescription:(id)description
{
  descriptionCopy = description;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_badgedIconDescription, description);
    [(NCBadgedIconView *)self->_badgedIconView removeFromSuperview];
    badgedIconView = self->_badgedIconView;
    self->_badgedIconView = 0;

    if (self->_badgedIconDescription)
    {
      v6 = [[NCBadgedIconView alloc] initWithBadgedIconDescription:descriptionCopy pointSize:40.0];
      v7 = self->_badgedIconView;
      self->_badgedIconView = v6;

      [(NCCarPlayBannerContentView *)self addSubview:self->_badgedIconView];
      [(NCBadgedIconView *)self->_badgedIconView setOverrideUserInterfaceStyle:1];
      traitCollection = [(NCCarPlayBannerContentView *)self traitCollection];
      v9 = [traitCollection objectForTrait:objc_opt_class()];

      if (v9)
      {
        sbh_iconImageStyleConfiguration = [v9 sbh_iconImageStyleConfiguration];
        traitOverrides = [(NCBadgedIconView *)self->_badgedIconView traitOverrides];
        v12 = objc_opt_self();
        [traitOverrides setObject:sbh_iconImageStyleConfiguration forTrait:v12];
      }

      else
      {
        sbh_iconImageStyleConfiguration = [(NCBadgedIconView *)self->_badgedIconView traitOverrides];
        traitOverrides = objc_opt_self();
        [sbh_iconImageStyleConfiguration removeTrait:traitOverrides];
      }
    }

    [(NCCarPlayBannerContentView *)self setNeedsLayout];
  }
}

- (NCCarPlayBannerContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end