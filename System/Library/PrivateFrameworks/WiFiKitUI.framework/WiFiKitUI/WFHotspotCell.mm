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
- (void)setHotspotDetails:(id)details;
- (void)setState:(int64_t)state;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFHotspotCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = WFHotspotCell;
  [(WFHotspotCell *)&v3 awakeFromNib];
  [(WFHotspotCell *)self _adjustStackViewPadding];
}

- (void)traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(WFHotspotCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {

    [(WFHotspotCell *)self _adjustStackViewPadding];
  }
}

- (void)_adjustStackViewPadding
{
  [(WFHotspotCell *)self _verticalPadding];
  v4 = v3;
  stackViewTopConstraint = [(WFHotspotCell *)self stackViewTopConstraint];
  [stackViewTopConstraint setConstant:v4];

  [(WFHotspotCell *)self _verticalPadding];
  v7 = v6;
  stackViewBottomConstraint = [(WFHotspotCell *)self stackViewBottomConstraint];
  [stackViewBottomConstraint setConstant:v7];
}

- (double)_verticalPadding
{
  nameLabel = [(WFHotspotCell *)self nameLabel];
  font = [nameLabel font];
  [font _bodyLeading];
  v5 = v4 * 0.5;

  v6 = _os_feature_enabled_impl();
  result = v5 + 5.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (void)setState:(int64_t)state
{
  associationStateView = [(WFHotspotCell *)self associationStateView];
  [associationStateView setState:state];
}

- (int64_t)state
{
  associationStateView = [(WFHotspotCell *)self associationStateView];
  state = [associationStateView state];

  return state;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WFHotspotCell;
  [(WFHotspotCell *)&v3 prepareForReuse];
  [(WFHotspotCell *)self setState:0];
  [(WFHotspotCell *)self setHotspotDetails:0];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);
  [WeakRetained setText:titleCopy];

  v8 = objc_loadWeakRetained(&self->_nameLabel);
  defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];

  [v8 setTextColor:defaultTextColor];
}

- (void)setHotspotDetails:(id)details
{
  detailsCopy = details;
  if (![(WFHotspotDetails *)self->_hotspotDetails isEqual:?])
  {
    objc_storeStrong(&self->_hotspotDetails, details);
    cellularProtocolString = [(WFHotspotDetails *)self->_hotspotDetails cellularProtocolString];
    hotspotDetailsView = [(WFHotspotCell *)self hotspotDetailsView];
    [hotspotDetailsView setCellularProtocolString:cellularProtocolString];

    signalStrength = [(WFHotspotDetails *)self->_hotspotDetails signalStrength];
    unsignedIntegerValue = [signalStrength unsignedIntegerValue];
    hotspotDetailsView2 = [(WFHotspotCell *)self hotspotDetailsView];
    [hotspotDetailsView2 setSignalBars:unsignedIntegerValue];

    batteryLife = [(WFHotspotDetails *)self->_hotspotDetails batteryLife];
    unsignedIntegerValue2 = [batteryLife unsignedIntegerValue];
    hotspotDetailsView3 = [(WFHotspotCell *)self hotspotDetailsView];
    [hotspotDetailsView3 setBatteryCharge:unsignedIntegerValue2];

    stackView = [(WFHotspotCell *)self stackView];
    hotspotDetailsView4 = [(WFHotspotCell *)self hotspotDetailsView];
    [stackView addArrangedSubview:hotspotDetailsView4];

    stackView2 = [(WFHotspotCell *)self stackView];
    [stackView2 setLayoutMarginsRelativeArrangement:1];

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