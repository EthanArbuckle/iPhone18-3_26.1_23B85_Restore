@interface PRXActivityStatusView
- (PRXActivityStatusView)initWithFrame:(CGRect)frame;
- (double)activityIndicatorVerticalShift;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PRXActivityStatusView

- (PRXActivityStatusView)initWithFrame:(CGRect)frame
{
  v35[7] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = PRXActivityStatusView;
  v3 = [(PRXActivityStatusView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicator = v3->_activityIndicator;
    v3->_activityIndicator = v4;

    [(UIActivityIndicatorView *)v3->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXActivityStatusView *)v3 addSubview:v3->_activityIndicator];
    v6 = [PRXLabel labelWithStyle:2];
    statusLabel = v3->_statusLabel;
    v3->_statusLabel = v6;

    [(PRXLabel *)v3->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXActivityStatusView *)v3 addSubview:v3->_statusLabel];
    bottomAnchor = [(UIActivityIndicatorView *)v3->_activityIndicator bottomAnchor];
    firstBaselineAnchor = [(PRXLabel *)v3->_statusLabel firstBaselineAnchor];
    [(PRXActivityStatusView *)v3 activityIndicatorVerticalShift];
    v10 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor constant:?];
    activityIndicatorVerticalConstraint = v3->_activityIndicatorVerticalConstraint;
    v3->_activityIndicatorVerticalConstraint = v10;

    v26 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIActivityIndicatorView *)v3->_activityIndicator leadingAnchor];
    leadingAnchor2 = [(PRXActivityStatusView *)v3 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v31;
    leadingAnchor3 = [(PRXLabel *)v3->_statusLabel leadingAnchor];
    trailingAnchor = [(UIActivityIndicatorView *)v3->_activityIndicator trailingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:7.0];
    v35[1] = v28;
    trailingAnchor2 = [(PRXLabel *)v3->_statusLabel trailingAnchor];
    trailingAnchor3 = [(PRXActivityStatusView *)v3 trailingAnchor];
    v24 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v35[2] = v24;
    v35[3] = v3->_activityIndicatorVerticalConstraint;
    topAnchor = [(PRXLabel *)v3->_statusLabel topAnchor];
    topAnchor2 = [(PRXActivityStatusView *)v3 topAnchor];
    v13 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v35[4] = v13;
    bottomAnchor2 = [(PRXLabel *)v3->_statusLabel bottomAnchor];
    bottomAnchor3 = [(PRXActivityStatusView *)v3 bottomAnchor];
    v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v35[5] = v16;
    heightAnchor = [(PRXActivityStatusView *)v3 heightAnchor];
    heightAnchor2 = [(UIActivityIndicatorView *)v3->_activityIndicator heightAnchor];
    v19 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    v35[6] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:7];
    [v26 activateConstraints:v20];

    v21 = v3;
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PRXActivityStatusView;
  [(PRXActivityStatusView *)&v7 traitCollectionDidChange:change];
  [(PRXActivityStatusView *)self activityIndicatorVerticalShift];
  v5 = v4;
  activityIndicatorVerticalConstraint = [(PRXActivityStatusView *)self activityIndicatorVerticalConstraint];
  [activityIndicatorVerticalConstraint setConstant:v5];
}

- (double)activityIndicatorVerticalShift
{
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  statusLabel = [(PRXActivityStatusView *)self statusLabel];
  font = [statusLabel font];
  [font lineHeight];
  v7 = v6;
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  [v3 scaledValueForValue:currentTraitCollection compatibleWithTraitCollection:v7];
  v10 = v9;

  v11 = 4.0;
  if (v10 > 20.0)
  {
    v11 = 4.0 - (floor(v10 / 10.0) + -1.0);
  }

  return v11;
}

@end