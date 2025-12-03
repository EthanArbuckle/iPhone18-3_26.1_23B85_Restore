@interface STSpinnerFooterView
- (PSSpecifier)specifier;
- (STSpinnerFooterView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (void)layoutSubviews;
- (void)reloadFromSpecifier;
- (void)startAnimatingSpinner;
- (void)stopAnimatingSpinner;
@end

@implementation STSpinnerFooterView

- (STSpinnerFooterView)initWithSpecifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = STSpinnerFooterView;
  specifierCopy = specifier;
  v4 = [(STSpinnerFooterView *)&v10 initWithReuseIdentifier:0];
  objc_storeWeak(&v4->_specifier, specifierCopy);

  v5 = objc_alloc(MEMORY[0x277D750E8]);
  v6 = [v5 initWithActivityIndicatorStyle:{100, v10.receiver, v10.super_class}];
  spinnerView = v4->_spinnerView;
  v4->_spinnerView = v6;

  [(UIActivityIndicatorView *)v4->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(STSpinnerFooterView *)v4 contentView];
  [contentView addSubview:v4->_spinnerView];

  return v4;
}

- (void)reloadFromSpecifier
{
  specifier = [(STSpinnerFooterView *)self specifier];
  v4 = [specifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  textLabel = [(STSpinnerFooterView *)self textLabel];
  [textLabel setText:v4];

  [(STSpinnerFooterView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v20[2] = *MEMORY[0x277D85DE8];
  textLabel = [(STSpinnerFooterView *)self textLabel];
  specifier = [(STSpinnerFooterView *)self specifier];
  v5 = [specifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  [textLabel setText:v5];

  v19.receiver = self;
  v19.super_class = STSpinnerFooterView;
  [(STSpinnerFooterView *)&v19 layoutSubviews];
  font = [textLabel font];
  [font ascender];
  v8 = v7 * 0.5;

  spinnerViewVerticalPositionConstraint = [(STSpinnerFooterView *)self spinnerViewVerticalPositionConstraint];
  if (spinnerViewVerticalPositionConstraint)
  {
    v10 = spinnerViewVerticalPositionConstraint;
    [spinnerViewVerticalPositionConstraint setConstant:v8];
  }

  else
  {
    spinnerView = [(STSpinnerFooterView *)self spinnerView];
    firstBaselineAnchor = [textLabel firstBaselineAnchor];
    centerYAnchor = [spinnerView centerYAnchor];
    v10 = [firstBaselineAnchor constraintEqualToAnchor:centerYAnchor constant:v8];

    [(STSpinnerFooterView *)self setSpinnerViewVerticalPositionConstraint:v10];
    v14 = MEMORY[0x277CCAAD0];
    v20[0] = v10;
    leadingAnchor = [spinnerView leadingAnchor];
    trailingAnchor = [textLabel trailingAnchor];
    v17 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v20[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v14 activateConstraints:v18];
  }
}

- (double)preferredHeightForWidth:(double)width
{
  [(STSpinnerFooterView *)self sizeThatFits:width, 1.79769313e308];
  v6 = v5;
  textLabel = [(STSpinnerFooterView *)self textLabel];
  [textLabel sizeThatFits:{width, 1.79769313e308}];
  v9 = v8 + 12.0;

  if (v6 >= v9)
  {
    return v6;
  }

  else
  {
    return v9;
  }
}

- (void)startAnimatingSpinner
{
  spinnerView = [(STSpinnerFooterView *)self spinnerView];
  [spinnerView startAnimating];
}

- (void)stopAnimatingSpinner
{
  spinnerView = [(STSpinnerFooterView *)self spinnerView];
  [spinnerView stopAnimating];
}

- (PSSpecifier)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_specifier);

  return WeakRetained;
}

@end