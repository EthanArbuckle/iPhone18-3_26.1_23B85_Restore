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
- (id)imageFromSignalBars:(unint64_t)a3;
- (void)_adjustStackViewPadding;
- (void)_updateSignalImage;
- (void)_updateTextColorForLabel:(id)a3;
- (void)_updateTintColorForImageView:(id)a3;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)setBars:(unint64_t)a3;
- (void)setConnectionError:(BOOL)a3;
- (void)setPersonalHotspot:(BOOL)a3;
- (void)setSecure:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFNetworkListCell

- (void)awakeFromNib
{
  v20.receiver = self;
  v20.super_class = WFNetworkListCell;
  [(WFNetworkListCell *)&v20 awakeFromNib];
  v3 = [(WFNetworkListCell *)self nameLabel];
  [v3 setNumberOfLines:0];

  v4 = [(WFNetworkListCell *)self nameLabel];
  [(WFNetworkListCell *)self _updateTextColorForLabel:v4];

  v5 = [(WFNetworkListCell *)self subtitleLabel];
  [v5 setNumberOfLines:0];

  v6 = [MEMORY[0x277D74300] preferredFontForStyle:*MEMORY[0x277D76938] weight:*MEMORY[0x277D74418]];
  v7 = [(WFNetworkListCell *)self subtitleLabel];
  [v7 setFont:v6];

  v8 = [(WFNetworkListCell *)self subtitleLabel];
  [(WFNetworkListCell *)self _updateTextColorForLabel:v8];

  [(WFNetworkListCell *)self setState:0];
  v9 = [(WFNetworkListCell *)self lockImageView];
  [v9 setHidden:1];

  v10 = +[WFImageCache sharedImageCache];
  v11 = [v10 imageNamed:@"Lock"];
  v12 = [v11 imageWithRenderingMode:2];
  v13 = [(WFNetworkListCell *)self lockImageView];
  [v13 setImage:v12];

  v14 = [(WFNetworkListCell *)self lockImageView];
  [(WFNetworkListCell *)self _updateTintColorForImageView:v14];

  v15 = [(WFNetworkListCell *)self signalImageView];
  [v15 setHidden:1];

  v16 = [(WFNetworkListCell *)self imageFromSignalBars:3];
  v17 = [v16 imageWithRenderingMode:2];
  v18 = [(WFNetworkListCell *)self signalImageView];
  [v18 setImage:v17];

  v19 = [(WFNetworkListCell *)self signalImageView];
  [(WFNetworkListCell *)self _updateTintColorForImageView:v19];

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

  v8 = [(WFNetworkListCell *)self stackViewTopConstraint];
  [v8 setConstant:v6];

  v9 = [(WFNetworkListCell *)self stackViewBottomConstraint];
  [v9 setConstant:v6];
}

- (double)_paddingDefaultByDevice
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
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
  v3 = [(WFNetworkListCell *)self nameLabel];
  v4 = [v3 font];
  [v4 _bodyLeading];
  v6 = v5 * 0.5;

  v7 = [(WFNetworkListCell *)self subtitleLabel];
  LOBYTE(v4) = [v7 isHidden];

  if ((v4 & 1) == 0)
  {
    v8 = [(WFNetworkListCell *)self subtitleLabel];
    v9 = [v8 font];
    [v9 _bodyLeading];
    v6 = v6 + v10 * -0.5;

    if (v6 < 0.0)
    {
      return 0.0;
    }
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [(WFNetworkListCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    [(WFNetworkListCell *)self _adjustStackViewPadding];
    v9 = [(WFNetworkListCell *)self subtitleLabel];
    LODWORD(v8) = 1.0;
    [v9 _setHyphenationFactor:v8];
  }
}

- (void)setState:(int64_t)a3
{
  v4 = [(WFNetworkListCell *)self associationStateView];
  [v4 setState:a3];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFNetworkListCell;
  [(WFNetworkListCell *)&v4 prepareForReuse];
  [(WFNetworkListCell *)self setTitle:0];
  [(WFNetworkListCell *)self setSubtitle:0];
  v3 = [(WFNetworkListCell *)self lockImageView];
  [v3 setHidden:1];

  [(WFNetworkListCell *)self setState:0];
  [(WFNetworkListCell *)self setAccessoryType:0];
  self->_bars = -1;
  [(WFNetworkListCell *)self setConnectionError:0];
  [(WFNetworkListCell *)self setPersonalHotspot:0];
  [(WFNetworkListCell *)self setSecure:0];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);
  [WeakRetained setText:v5];
}

- (void)setSubtitle:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_subtitle, a3);
  v5 = [(WFNetworkListCell *)self subtitleLabel];
  if (v14)
  {
    [v5 setHidden:0];

    v6 = [(WFNetworkListCell *)self subtitleLabel];
    [v6 setText:v14];

    if ([(WFNetworkListCell *)self connectionError])
    {
      v7 = [MEMORY[0x277D75348] systemOrangeColor];
      v8 = [(WFNetworkListCell *)self subtitleLabel];
      [v8 setTextColor:v7];

      v9 = MEMORY[0x277D74300];
      v10 = *MEMORY[0x277D76938];
      v11 = MEMORY[0x277D74410];
    }

    else
    {
      v12 = [(WFNetworkListCell *)self subtitleLabel];
      [(WFNetworkListCell *)self _updateTextColorForLabel:v12];

      v9 = MEMORY[0x277D74300];
      v10 = *MEMORY[0x277D76938];
      v11 = MEMORY[0x277D74418];
    }

    v5 = [v9 preferredFontForStyle:v10 weight:*v11];
    v13 = [(WFNetworkListCell *)self subtitleLabel];
    [v13 setFont:v5];
  }

  else
  {
    [v5 setHidden:1];
  }

  [(WFNetworkListCell *)self _adjustStackViewPadding];
}

- (void)setConnectionError:(BOOL)a3
{
  if (self->_connectionError != a3)
  {
    self->_connectionError = a3;
    [(WFNetworkListCell *)self _updateSignalImage];
  }
}

- (void)setPersonalHotspot:(BOOL)a3
{
  if (self->_personalHotspot != a3)
  {
    self->_personalHotspot = a3;
    [(WFNetworkListCell *)self _updateSignalImage];
  }
}

- (void)setBars:(unint64_t)a3
{
  if (self->_bars != a3)
  {
    self->_bars = a3;
    [(WFNetworkListCell *)self _updateSignalImage];
  }
}

- (void)setSecure:(BOOL)a3
{
  if (self->_secure != a3)
  {
    v4 = a3;
    self->_secure = a3;
    v6 = [(WFNetworkListCell *)self lockImageView];
    v10 = v6;
    if (v4)
    {
      [v6 setHidden:0];

      v10 = +[WFImageCache sharedImageCache];
      v7 = [v10 imageNamed:@"Lock"];
      v8 = [v7 imageWithRenderingMode:2];
      v9 = [(WFNetworkListCell *)self lockImageView];
      [v9 setImage:v8];
    }

    else
    {
      [v6 setHidden:1];
    }
  }
}

- (void)_updateSignalImage
{
  v3 = [(WFNetworkListCell *)self signalImageView];
  [v3 setHidden:0];

  if ([(WFNetworkListCell *)self connectionError])
  {
    v4 = +[WFImageCache sharedImageCache];
    v5 = [v4 imageNamed:@"WiFiBarsError"];
    v6 = [v5 imageWithRenderingMode:2];
    v7 = [(WFNetworkListCell *)self signalImageView];
    [v7 setImage:v6];

    v8 = [MEMORY[0x277D75348] systemOrangeColor];
    v9 = [(WFNetworkListCell *)self subtitleLabel];
    [v9 setTextColor:v8];

    v10 = MEMORY[0x277D74410];
  }

  else
  {
    if ([(WFNetworkListCell *)self personalHotspot])
    {
      v11 = +[WFImageCache sharedImageCache];
      v12 = [v11 imageNamed:@"Personal_Hotspot"];
      v13 = [v12 imageWithRenderingMode:2];
      v14 = [(WFNetworkListCell *)self signalImageView];
      [v14 setImage:v13];

      v15 = 1.0;
    }

    else
    {
      v16 = [(WFNetworkListCell *)self imageFromSignalBars:self->_bars];
      v17 = [v16 imageWithRenderingMode:2];
      v18 = [(WFNetworkListCell *)self signalImageView];
      [v18 setImage:v17];

      v11 = [(WFNetworkListCell *)self signalImageView];
      [(WFNetworkListCell *)self _updateTintColorForImageView:v11];
      v15 = 0.0;
    }

    v19 = [(WFNetworkListCell *)self signalImageViewCenterConstraint];
    [v19 setConstant:v15];

    v8 = [(WFNetworkListCell *)self subtitleLabel];
    [(WFNetworkListCell *)self _updateTextColorForLabel:v8];
    v10 = MEMORY[0x277D74418];
  }

  v21 = [MEMORY[0x277D74300] preferredFontForStyle:*MEMORY[0x277D76938] weight:*v10];
  v20 = [(WFNetworkListCell *)self subtitleLabel];
  [v20 setFont:v21];
}

- (void)_updateTextColorForLabel:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 defaultTextColor];
  [v4 setTextColor:v5];
}

- (void)_updateTintColorForImageView:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 defaultTextColor];
  [v4 setTintColor:v5];
}

- (id)imageFromSignalBars:(unint64_t)a3
{
  if (a3 / 3.0 <= 3.0)
  {
    v3 = a3 / 3.0;
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