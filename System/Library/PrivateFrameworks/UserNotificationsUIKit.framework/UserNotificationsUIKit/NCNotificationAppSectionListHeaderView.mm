@interface NCNotificationAppSectionListHeaderView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationAppSectionListHeaderViewDelegate)delegate;
- (unint64_t)_maximumNumberOfLinesForTitleText;
- (unint64_t)_numberOfLinesForTitleTextInFrame:(CGRect)frame;
- (void)_configureOptionsButtonIfNecessary;
- (void)_layoutIconImageView;
- (void)_layoutOptionsButton;
- (void)_layoutTitleLabel;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForTitleTextLabel;
- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider;
- (void)didTapOptionsButton:(id)button;
- (void)layoutSubviews;
- (void)setIcons:(id)icons;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCNotificationAppSectionListHeaderView

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (!titleLabel)
    {
      v7 = objc_alloc_init(MEMORY[0x277D756B8]);
      v8 = self->_titleLabel;
      self->_titleLabel = v7;

      [(NCNotificationAppSectionListHeaderView *)self addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:titleCopy];
    [(NCNotificationAppSectionListHeaderView *)self _updateTextAttributesForTitleTextLabel];
    v9 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_titleLabel style:0 visualStylingProvider:v9 outgoingProvider:0];
    [(NCNotificationAppSectionListHeaderView *)self setNeedsLayout];
  }
}

- (void)setIcons:(id)icons
{
  iconsCopy = icons;
  firstObject = [iconsCopy firstObject];
  if (firstObject)
  {
    null = [MEMORY[0x277CBEB68] null];
    if (firstObject == null)
    {
      v6 = 0;
    }

    else
    {
      v6 = firstObject;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&self->_lightIcon, v6);
  if (firstObject)
  {
  }

  if ([iconsCopy count] <= 1)
  {

    v8 = 0;
    v9 = 0;
    v7 = 1;
  }

  else
  {
    v7 = 1;
    v8 = [iconsCopy objectAtIndexedSubscript:1];

    if (v8)
    {
      firstObject = [MEMORY[0x277CBEB68] null];
      v7 = 0;
      if (v8 == firstObject)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  objc_storeStrong(&self->_darkIcon, v9);
  if ((v7 & 1) == 0)
  {
  }

  traitCollection = [(NCNotificationAppSectionListHeaderView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] != 2 || (lightIcon = self->_darkIcon) == 0)
  {
    lightIcon = self->_lightIcon;
  }

  objc_storeStrong(&self->_icon, lightIcon);

  iconImageView = self->_iconImageView;
  if (!iconImageView)
  {
    v13 = objc_alloc_init(MEMORY[0x277D755E8]);
    v14 = self->_iconImageView;
    self->_iconImageView = v13;

    [(UIImageView *)self->_iconImageView setContentMode:1];
    [(NCNotificationAppSectionListHeaderView *)self addSubview:self->_iconImageView];
    iconImageView = self->_iconImageView;
  }

  [(UIImageView *)iconImageView setImage:self->_icon];
  v15 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfImageView:self->_iconImageView ifSymbolImageWithStyle:0 visualStylingProvider:v15 outgoingProvider:v15];
  [(NCNotificationAppSectionListHeaderView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton frame];
  v6 = CGRectGetWidth(v14);
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationAppSectionListHeaderView *)self _numberOfLinesForTitleTextInFrame:0.0, 0.0, width + -22.0 + -6.0 - v6 + -8.0 + -10.0, height]];
  }

  [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton frame];
  CGRectGetHeight(v15);
  traitCollection = [(NCNotificationAppSectionListHeaderView *)self traitCollection];
  [traitCollection displayScale];
  UICeilToScale();
  v10 = v9;

  v11 = width;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationAppSectionListHeaderView;
  [(NCNotificationAppSectionListHeaderView *)&v3 layoutSubviews];
  [(NCNotificationAppSectionListHeaderView *)self _configureOptionsButtonIfNecessary];
  [(NCNotificationAppSectionListHeaderView *)self _layoutIconImageView];
  [(NCNotificationAppSectionListHeaderView *)self _layoutOptionsButton];
  [(NCNotificationAppSectionListHeaderView *)self _layoutTitleLabel];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = NCNotificationAppSectionListHeaderView;
  [(NCNotificationAppSectionListHeaderView *)&v7 traitCollectionDidChange:change];
  traitCollection = [(NCNotificationAppSectionListHeaderView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (self->_userInterfaceStyle != userInterfaceStyle)
  {
    self->_userInterfaceStyle = userInterfaceStyle;
    if (userInterfaceStyle != 2 || (lightIcon = self->_darkIcon) == 0)
    {
      lightIcon = self->_lightIcon;
    }

    objc_storeStrong(&self->_icon, lightIcon);
    [(UIImageView *)self->_iconImageView setImage:self->_icon];
    [(NCNotificationAppSectionListHeaderView *)self setNeedsLayout];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v5.receiver = self;
  v5.super_class = NCNotificationAppSectionListHeaderView;
  [(NCNotificationListBaseContentView *)&v5 adjustForContentSizeCategoryChange];
  [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton removeFromSuperview];
  optionsButton = self->_optionsButton;
  self->_optionsButton = 0;

  [(NCNotificationAppSectionListHeaderView *)self _configureOptionsButtonIfNecessary];
  [(NCNotificationAppSectionListHeaderView *)self setNeedsLayout];
  return 1;
}

- (void)_layoutIconImageView
{
  iconImageView = self->_iconImageView;
  if (iconImageView)
  {
    [(UIImageView *)iconImageView frame];
    [(NCNotificationAppSectionListHeaderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if ([(NCNotificationAppSectionListHeaderView *)self _shouldReverseLayoutDirection])
    {
      v14.origin.x = v5;
      v14.origin.y = v7;
      v14.size.width = v9;
      v14.size.height = v11;
      CGRectGetMaxX(v14);
    }

    [(NCNotificationAppSectionListHeaderView *)self bounds];
    UIRectCenteredYInRectScale();
    UIRectIntegralWithScale();
    v12 = self->_iconImageView;

    [(UIImageView *)v12 setFrame:?];
  }
}

- (void)_layoutTitleLabel
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    [(NCNotificationAppSectionListHeaderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton frame];
    v12 = v9 - (CGRectGetWidth(v29) + 28.0 + 8.0 + 10.0);
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    Height = CGRectGetHeight(v30);
    [(UILabel *)self->_titleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationAppSectionListHeaderView *)self _numberOfLinesForTitleTextInFrame:0.0, 0.0, v12, Height]];
    _shouldReverseLayoutDirection = [(NCNotificationAppSectionListHeaderView *)self _shouldReverseLayoutDirection];
    [(UIImageView *)self->_iconImageView frame];
    if (_shouldReverseLayoutDirection)
    {
      CGRectGetMinX(*&v15);
    }

    else
    {
      CGRectGetMaxX(*&v15);
    }

    UIRectCenteredYInRectScale();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [(UILabel *)self->_titleLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationAppSectionListHeaderView *)self _numberOfLinesForTitleTextInFrame:0.0, 0.0, v12, Height, 0]];
    v31.origin.x = v20;
    v31.origin.y = v22;
    v31.size.width = v24;
    v31.size.height = v26;
    CGRectGetWidth(v31);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    UIRectIntegralWithScale();
    v27 = self->_titleLabel;

    [(UILabel *)v27 setFrame:?];
  }
}

- (void)_layoutOptionsButton
{
  optionsButton = self->_optionsButton;
  if (optionsButton)
  {
    [(NCNotificationAppSectionListHeaderOptionsButton *)optionsButton frame];
    [(NCNotificationAppSectionListHeaderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton sizeThatFits:v8, v10];
    [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton _setContinuousCornerRadius:v12 * 0.5];
    if (([(NCNotificationAppSectionListHeaderView *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      v15.origin.x = v5;
      v15.origin.y = v7;
      v15.size.width = v9;
      v15.size.height = v11;
      CGRectGetMaxX(v15);
    }

    [(NCNotificationAppSectionListHeaderView *)self bounds];
    UIRectCenteredYInRectScale();
    UIRectIntegralWithScale();
    v13 = self->_optionsButton;

    [(NCNotificationAppSectionListHeaderOptionsButton *)v13 setFrame:?];
  }
}

- (void)_configureOptionsButtonIfNecessary
{
  if (!self->_optionsButton)
  {
    v3 = MEMORY[0x277D755D0];
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    v11 = [v3 configurationWithFont:v4 scale:2];

    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis" withConfiguration:v11];
    v6 = [NCNotificationAppSectionListHeaderOptionsButton systemButtonWithImage:v5 target:self action:sel_didTapOptionsButton_];
    optionsButton = self->_optionsButton;
    self->_optionsButton = v6;

    v8 = self->_optionsButton;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(NCNotificationAppSectionListHeaderOptionsButton *)v8 setTintColor:blackColor];

    [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton setAlpha:1.0];
    [(NCNotificationAppSectionListHeaderOptionsButton *)self->_optionsButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    v10 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_optionsButton style:1 visualStylingProvider:v10 outgoingProvider:0];
    [(NCNotificationAppSectionListHeaderView *)self addSubview:self->_optionsButton];
  }
}

- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider
{
  iconImageView = self->_iconImageView;
  providerCopy = provider;
  changeCopy = change;
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfImageView:iconImageView ifSymbolImageWithStyle:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_titleLabel style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_optionsButton style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
}

- (unint64_t)_maximumNumberOfLinesForTitleText
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

- (unint64_t)_numberOfLinesForTitleTextInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleLabel = self->_titleLabel;
  _maximumNumberOfLinesForTitleText = [(NCNotificationAppSectionListHeaderView *)self _maximumNumberOfLinesForTitleText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:titleLabel maximumNumberOfLines:_maximumNumberOfLinesForTitleText inFrame:x, y, width, height];
}

- (void)_updateTextAttributes
{
  v3.receiver = self;
  v3.super_class = NCNotificationAppSectionListHeaderView;
  [(NCNotificationListBaseContentView *)&v3 _updateTextAttributes];
  [(NCNotificationAppSectionListHeaderView *)self _updateTextAttributesForTitleTextLabel];
}

- (void)_updateTextAttributesForTitleTextLabel
{
  if (self->_titleLabel)
  {
    preferredContentSizeCategory = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D76A28];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_titleLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCNotificationAppSectionListHeaderView *)self _maximumNumberOfLinesForTitleText] maximumNumberOfLines:*MEMORY[0x277D74420]];

    [(NCNotificationAppSectionListHeaderView *)self setNeedsLayout];
  }
}

- (void)didTapOptionsButton:(id)button
{
  buttonCopy = button;
  delegate = [(NCNotificationAppSectionListHeaderView *)self delegate];
  [delegate appSectionListHeaderView:self didRequestPresentingOptionsMenuFromView:buttonCopy];
}

- (NCNotificationAppSectionListHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end