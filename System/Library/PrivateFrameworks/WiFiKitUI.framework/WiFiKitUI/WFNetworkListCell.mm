@interface WFNetworkListCell
- (NSLayoutConstraint)signalImageViewCenterConstraint;
- (NSLayoutConstraint)stackViewBottomConstraint;
- (NSLayoutConstraint)stackViewTopConstraint;
- (UIImageView)lockImageView;
- (UIImageView)signalImageView;
- (UILabel)nameLabel;
- (UILabel)subtitleLabel;
- (UIStackView)stackView;
- (WFAssociationStateView)associationStateView;
- (double)_paddingDefaultByDevice;
- (double)_verticalPadding;
- (id)imageFromSignalBars:(unint64_t)bars;
- (void)_adjustStackViewPadding;
- (void)_updateSignalImage;
- (void)_updateTextColorForLabel:(id)label;
- (void)_updateTintColorForImageView:(id)view;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)setBars:(unint64_t)bars;
- (void)setConnectionError:(BOOL)error;
- (void)setPersonalHotspot:(BOOL)hotspot;
- (void)setSecure:(BOOL)secure;
- (void)setState:(int64_t)state;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFNetworkListCell

- (void)awakeFromNib
{
  v20.receiver = self;
  v20.super_class = WFNetworkListCell;
  [(WFNetworkListCell *)&v20 awakeFromNib];
  nameLabel = [(WFNetworkListCell *)self nameLabel];
  [nameLabel setNumberOfLines:0];

  nameLabel2 = [(WFNetworkListCell *)self nameLabel];
  [(WFNetworkListCell *)self _updateTextColorForLabel:nameLabel2];

  subtitleLabel = [(WFNetworkListCell *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:0];

  v6 = [MEMORY[0x277D74300] preferredFontForStyle:*MEMORY[0x277D76938] weight:*MEMORY[0x277D74418]];
  subtitleLabel2 = [(WFNetworkListCell *)self subtitleLabel];
  [subtitleLabel2 setFont:v6];

  subtitleLabel3 = [(WFNetworkListCell *)self subtitleLabel];
  [(WFNetworkListCell *)self _updateTextColorForLabel:subtitleLabel3];

  [(WFNetworkListCell *)self setState:0];
  lockImageView = [(WFNetworkListCell *)self lockImageView];
  [lockImageView setHidden:1];

  v10 = +[WFImageCache sharedImageCache];
  v11 = [v10 imageNamed:@"Lock"];
  v12 = [v11 imageWithRenderingMode:2];
  lockImageView2 = [(WFNetworkListCell *)self lockImageView];
  [lockImageView2 setImage:v12];

  lockImageView3 = [(WFNetworkListCell *)self lockImageView];
  [(WFNetworkListCell *)self _updateTintColorForImageView:lockImageView3];

  signalImageView = [(WFNetworkListCell *)self signalImageView];
  [signalImageView setHidden:1];

  v16 = [(WFNetworkListCell *)self imageFromSignalBars:3];
  v17 = [v16 imageWithRenderingMode:2];
  signalImageView2 = [(WFNetworkListCell *)self signalImageView];
  [signalImageView2 setImage:v17];

  signalImageView3 = [(WFNetworkListCell *)self signalImageView];
  [(WFNetworkListCell *)self _updateTintColorForImageView:signalImageView3];

  [(WFNetworkListCell *)self _adjustStackViewPadding];
}

- (void)_adjustStackViewPadding
{
  if (_os_feature_enabled_impl())
  {
    [(WFNetworkListCell *)self _paddingDefaultByDevice];
    v4 = v3;
    [(WFNetworkListCell *)self _verticalPadding];
    v6 = v4 + v5;
  }

  else
  {
    [(WFNetworkListCell *)self _verticalPadding];
    v6 = v7 + -8.0;
  }

  stackViewTopConstraint = [(WFNetworkListCell *)self stackViewTopConstraint];
  [stackViewTopConstraint setConstant:v6];

  stackViewBottomConstraint = [(WFNetworkListCell *)self stackViewBottomConstraint];
  [stackViewBottomConstraint setConstant:v6];
}

- (double)_paddingDefaultByDevice
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8 <= 440.0;
  result = -10.0;
  if (!v9)
  {
    return -14.0;
  }

  return result;
}

- (double)_verticalPadding
{
  nameLabel = [(WFNetworkListCell *)self nameLabel];
  font = [nameLabel font];
  [font _bodyLeading];
  v6 = v5 * 0.5;

  subtitleLabel = [(WFNetworkListCell *)self subtitleLabel];
  LOBYTE(font) = [subtitleLabel isHidden];

  if ((font & 1) == 0)
  {
    subtitleLabel2 = [(WFNetworkListCell *)self subtitleLabel];
    font2 = [subtitleLabel2 font];
    [font2 _bodyLeading];
    v6 = v6 + v10 * -0.5;

    if (v6 < 0.0)
    {
      return 0.0;
    }
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(WFNetworkListCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
    [(WFNetworkListCell *)self _adjustStackViewPadding];
    subtitleLabel = [(WFNetworkListCell *)self subtitleLabel];
    LODWORD(v8) = 1.0;
    [subtitleLabel _setHyphenationFactor:v8];
  }
}

- (void)setState:(int64_t)state
{
  associationStateView = [(WFNetworkListCell *)self associationStateView];
  [associationStateView setState:state];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFNetworkListCell;
  [(WFNetworkListCell *)&v4 prepareForReuse];
  [(WFNetworkListCell *)self setTitle:0];
  [(WFNetworkListCell *)self setSubtitle:0];
  lockImageView = [(WFNetworkListCell *)self lockImageView];
  [lockImageView setHidden:1];

  [(WFNetworkListCell *)self setState:0];
  [(WFNetworkListCell *)self setAccessoryType:0];
  self->_bars = -1;
  [(WFNetworkListCell *)self setConnectionError:0];
  [(WFNetworkListCell *)self setPersonalHotspot:0];
  [(WFNetworkListCell *)self setSecure:0];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);
  [WeakRetained setText:titleCopy];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  objc_storeStrong(&self->_subtitle, subtitle);
  subtitleLabel = [(WFNetworkListCell *)self subtitleLabel];
  if (subtitleCopy)
  {
    [subtitleLabel setHidden:0];

    subtitleLabel2 = [(WFNetworkListCell *)self subtitleLabel];
    [subtitleLabel2 setText:subtitleCopy];

    if ([(WFNetworkListCell *)self connectionError])
    {
      systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
      subtitleLabel3 = [(WFNetworkListCell *)self subtitleLabel];
      [subtitleLabel3 setTextColor:systemOrangeColor];

      v9 = MEMORY[0x277D74300];
      v10 = *MEMORY[0x277D76938];
      v11 = MEMORY[0x277D74410];
    }

    else
    {
      subtitleLabel4 = [(WFNetworkListCell *)self subtitleLabel];
      [(WFNetworkListCell *)self _updateTextColorForLabel:subtitleLabel4];

      v9 = MEMORY[0x277D74300];
      v10 = *MEMORY[0x277D76938];
      v11 = MEMORY[0x277D74418];
    }

    subtitleLabel = [v9 preferredFontForStyle:v10 weight:*v11];
    subtitleLabel5 = [(WFNetworkListCell *)self subtitleLabel];
    [subtitleLabel5 setFont:subtitleLabel];
  }

  else
  {
    [subtitleLabel setHidden:1];
  }

  [(WFNetworkListCell *)self _adjustStackViewPadding];
}

- (void)setConnectionError:(BOOL)error
{
  if (self->_connectionError != error)
  {
    self->_connectionError = error;
    [(WFNetworkListCell *)self _updateSignalImage];
  }
}

- (void)setPersonalHotspot:(BOOL)hotspot
{
  if (self->_personalHotspot != hotspot)
  {
    self->_personalHotspot = hotspot;
    [(WFNetworkListCell *)self _updateSignalImage];
  }
}

- (void)setBars:(unint64_t)bars
{
  if (self->_bars != bars)
  {
    self->_bars = bars;
    [(WFNetworkListCell *)self _updateSignalImage];
  }
}

- (void)setSecure:(BOOL)secure
{
  if (self->_secure != secure)
  {
    secureCopy = secure;
    self->_secure = secure;
    lockImageView = [(WFNetworkListCell *)self lockImageView];
    v10 = lockImageView;
    if (secureCopy)
    {
      [lockImageView setHidden:0];

      v10 = +[WFImageCache sharedImageCache];
      v7 = [v10 imageNamed:@"Lock"];
      v8 = [v7 imageWithRenderingMode:2];
      lockImageView2 = [(WFNetworkListCell *)self lockImageView];
      [lockImageView2 setImage:v8];
    }

    else
    {
      [lockImageView setHidden:1];
    }
  }
}

- (void)_updateSignalImage
{
  signalImageView = [(WFNetworkListCell *)self signalImageView];
  [signalImageView setHidden:0];

  if ([(WFNetworkListCell *)self connectionError])
  {
    v4 = +[WFImageCache sharedImageCache];
    v5 = [v4 imageNamed:@"WiFiBarsError"];
    v6 = [v5 imageWithRenderingMode:2];
    signalImageView2 = [(WFNetworkListCell *)self signalImageView];
    [signalImageView2 setImage:v6];

    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    subtitleLabel = [(WFNetworkListCell *)self subtitleLabel];
    [subtitleLabel setTextColor:systemOrangeColor];

    v10 = MEMORY[0x277D74410];
  }

  else
  {
    if ([(WFNetworkListCell *)self personalHotspot])
    {
      signalImageView5 = +[WFImageCache sharedImageCache];
      v12 = [signalImageView5 imageNamed:@"Personal_Hotspot"];
      v13 = [v12 imageWithRenderingMode:2];
      signalImageView3 = [(WFNetworkListCell *)self signalImageView];
      [signalImageView3 setImage:v13];

      v15 = 1.0;
    }

    else
    {
      v16 = [(WFNetworkListCell *)self imageFromSignalBars:self->_bars];
      v17 = [v16 imageWithRenderingMode:2];
      signalImageView4 = [(WFNetworkListCell *)self signalImageView];
      [signalImageView4 setImage:v17];

      signalImageView5 = [(WFNetworkListCell *)self signalImageView];
      [(WFNetworkListCell *)self _updateTintColorForImageView:signalImageView5];
      v15 = 0.0;
    }

    signalImageViewCenterConstraint = [(WFNetworkListCell *)self signalImageViewCenterConstraint];
    [signalImageViewCenterConstraint setConstant:v15];

    systemOrangeColor = [(WFNetworkListCell *)self subtitleLabel];
    [(WFNetworkListCell *)self _updateTextColorForLabel:systemOrangeColor];
    v10 = MEMORY[0x277D74418];
  }

  v21 = [MEMORY[0x277D74300] preferredFontForStyle:*MEMORY[0x277D76938] weight:*v10];
  subtitleLabel2 = [(WFNetworkListCell *)self subtitleLabel];
  [subtitleLabel2 setFont:v21];
}

- (void)_updateTextColorForLabel:(id)label
{
  v3 = MEMORY[0x277D75348];
  labelCopy = label;
  defaultTextColor = [v3 defaultTextColor];
  [labelCopy setTextColor:defaultTextColor];
}

- (void)_updateTintColorForImageView:(id)view
{
  v3 = MEMORY[0x277D75348];
  viewCopy = view;
  defaultTextColor = [v3 defaultTextColor];
  [viewCopy setTintColor:defaultTextColor];
}

- (id)imageFromSignalBars:(unint64_t)bars
{
  if (bars / 3.0 <= 3.0)
  {
    v3 = bars / 3.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = +[WFImageCache sharedImageCache];
  v5 = [v4 imageNamed:@"wifi" variableValue:v3];

  return v5;
}

- (UIImageView)signalImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_signalImageView);

  return WeakRetained;
}

- (UIImageView)lockImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_lockImageView);

  return WeakRetained;
}

- (UILabel)nameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);

  return WeakRetained;
}

- (UILabel)subtitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabel);

  return WeakRetained;
}

- (UIStackView)stackView
{
  WeakRetained = objc_loadWeakRetained(&self->_stackView);

  return WeakRetained;
}

- (NSLayoutConstraint)stackViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_stackViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)stackViewBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_stackViewBottomConstraint);

  return WeakRetained;
}

- (WFAssociationStateView)associationStateView
{
  WeakRetained = objc_loadWeakRetained(&self->_associationStateView);

  return WeakRetained;
}

- (NSLayoutConstraint)signalImageViewCenterConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_signalImageViewCenterConstraint);

  return WeakRetained;
}

@end