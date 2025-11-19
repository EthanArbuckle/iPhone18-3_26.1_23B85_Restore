@interface WFHotspotCell
- (NSLayoutConstraint)stackViewBottomConstraint;
- (NSLayoutConstraint)stackViewLeadingConstraint;
- (NSLayoutConstraint)stackViewTopConstraint;
- (UILabel)nameLabel;
- (UIStackView)stackView;
- (WFAssociationStateView)associationStateView;
- (WFHotspotDetailsView)hotspotDetailsView;
- (double)_verticalPadding;
- (int64_t)state;
- (void)_adjustStackViewPadding;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)setHotspotDetails:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFHotspotCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = WFHotspotCell;
  [(WFHotspotCell *)&v3 awakeFromNib];
  [(WFHotspotCell *)self _adjustStackViewPadding];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [(WFHotspotCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {

    [(WFHotspotCell *)self _adjustStackViewPadding];
  }
}

- (void)_adjustStackViewPadding
{
  [(WFHotspotCell *)self _verticalPadding];
  v4 = v3;
  v5 = [(WFHotspotCell *)self stackViewTopConstraint];
  [v5 setConstant:v4];

  [(WFHotspotCell *)self _verticalPadding];
  v7 = v6;
  v8 = [(WFHotspotCell *)self stackViewBottomConstraint];
  [v8 setConstant:v7];
}

- (double)_verticalPadding
{
  v2 = [(WFHotspotCell *)self nameLabel];
  v3 = [v2 font];
  [v3 _bodyLeading];
  v5 = v4 * 0.5;

  v6 = _os_feature_enabled_impl();
  result = v5 + 5.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (void)setState:(int64_t)a3
{
  v4 = [(WFHotspotCell *)self associationStateView];
  [v4 setState:a3];
}

- (int64_t)state
{
  v2 = [(WFHotspotCell *)self associationStateView];
  v3 = [v2 state];

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WFHotspotCell;
  [(WFHotspotCell *)&v3 prepareForReuse];
  [(WFHotspotCell *)self setState:0];
  [(WFHotspotCell *)self setHotspotDetails:0];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);
  [WeakRetained setText:v5];

  v8 = objc_loadWeakRetained(&self->_nameLabel);
  v7 = [MEMORY[0x277D75348] defaultTextColor];

  [v8 setTextColor:v7];
}

- (void)setHotspotDetails:(id)a3
{
  v16 = a3;
  if (![(WFHotspotDetails *)self->_hotspotDetails isEqual:?])
  {
    objc_storeStrong(&self->_hotspotDetails, a3);
    v5 = [(WFHotspotDetails *)self->_hotspotDetails cellularProtocolString];
    v6 = [(WFHotspotCell *)self hotspotDetailsView];
    [v6 setCellularProtocolString:v5];

    v7 = [(WFHotspotDetails *)self->_hotspotDetails signalStrength];
    v8 = [v7 unsignedIntegerValue];
    v9 = [(WFHotspotCell *)self hotspotDetailsView];
    [v9 setSignalBars:v8];

    v10 = [(WFHotspotDetails *)self->_hotspotDetails batteryLife];
    v11 = [v10 unsignedIntegerValue];
    v12 = [(WFHotspotCell *)self hotspotDetailsView];
    [v12 setBatteryCharge:v11];

    v13 = [(WFHotspotCell *)self stackView];
    v14 = [(WFHotspotCell *)self hotspotDetailsView];
    [v13 addArrangedSubview:v14];

    v15 = [(WFHotspotCell *)self stackView];
    [v15 setLayoutMarginsRelativeArrangement:1];

    [(WFHotspotCell *)self setNeedsLayout];
  }
}

- (UIStackView)stackView
{
  WeakRetained = objc_loadWeakRetained(&self->_stackView);

  return WeakRetained;
}

- (UILabel)nameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);

  return WeakRetained;
}

- (WFHotspotDetailsView)hotspotDetailsView
{
  WeakRetained = objc_loadWeakRetained(&self->_hotspotDetailsView);

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

- (NSLayoutConstraint)stackViewLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_stackViewLeadingConstraint);

  return WeakRetained;
}

@end