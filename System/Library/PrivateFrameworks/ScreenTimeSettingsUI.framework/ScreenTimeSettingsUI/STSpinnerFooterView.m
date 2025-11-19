@interface STSpinnerFooterView
- (PSSpecifier)specifier;
- (STSpinnerFooterView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
- (void)layoutSubviews;
- (void)reloadFromSpecifier;
- (void)startAnimatingSpinner;
- (void)stopAnimatingSpinner;
@end

@implementation STSpinnerFooterView

- (STSpinnerFooterView)initWithSpecifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = STSpinnerFooterView;
  v3 = a3;
  v4 = [(STSpinnerFooterView *)&v10 initWithReuseIdentifier:0];
  objc_storeWeak(&v4->_specifier, v3);

  v5 = objc_alloc(MEMORY[0x277D750E8]);
  v6 = [v5 initWithActivityIndicatorStyle:{100, v10.receiver, v10.super_class}];
  spinnerView = v4->_spinnerView;
  v4->_spinnerView = v6;

  [(UIActivityIndicatorView *)v4->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(STSpinnerFooterView *)v4 contentView];
  [v8 addSubview:v4->_spinnerView];

  return v4;
}

- (void)reloadFromSpecifier
{
  v3 = [(STSpinnerFooterView *)self specifier];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  v5 = [(STSpinnerFooterView *)self textLabel];
  [v5 setText:v4];

  [(STSpinnerFooterView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [(STSpinnerFooterView *)self textLabel];
  v4 = [(STSpinnerFooterView *)self specifier];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  [v3 setText:v5];

  v19.receiver = self;
  v19.super_class = STSpinnerFooterView;
  [(STSpinnerFooterView *)&v19 layoutSubviews];
  v6 = [v3 font];
  [v6 ascender];
  v8 = v7 * 0.5;

  v9 = [(STSpinnerFooterView *)self spinnerViewVerticalPositionConstraint];
  if (v9)
  {
    v10 = v9;
    [v9 setConstant:v8];
  }

  else
  {
    v11 = [(STSpinnerFooterView *)self spinnerView];
    v12 = [v3 firstBaselineAnchor];
    v13 = [v11 centerYAnchor];
    v10 = [v12 constraintEqualToAnchor:v13 constant:v8];

    [(STSpinnerFooterView *)self setSpinnerViewVerticalPositionConstraint:v10];
    v14 = MEMORY[0x277CCAAD0];
    v20[0] = v10;
    v15 = [v11 leadingAnchor];
    v16 = [v3 trailingAnchor];
    v17 = [v15 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];
    v20[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v14 activateConstraints:v18];
  }
}

- (double)preferredHeightForWidth:(double)a3
{
  [(STSpinnerFooterView *)self sizeThatFits:a3, 1.79769313e308];
  v6 = v5;
  v7 = [(STSpinnerFooterView *)self textLabel];
  [v7 sizeThatFits:{a3, 1.79769313e308}];
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
  v2 = [(STSpinnerFooterView *)self spinnerView];
  [v2 startAnimating];
}

- (void)stopAnimatingSpinner
{
  v2 = [(STSpinnerFooterView *)self spinnerView];
  [v2 stopAnimating];
}

- (PSSpecifier)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_specifier);

  return WeakRetained;
}

@end