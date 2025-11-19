@interface TSCellularSetupLoadingView
- (TSCellularSetupLoadingView)initWithCarrierName:(id)a3;
- (TSCellularSetupLoadingView)initWithFrame:(CGRect)a3;
- (void)_setupActivityIndicator;
- (void)_setupLabels;
- (void)layoutSubviews;
- (void)spinnerStartAnimating;
- (void)spinnerStopAnimating;
@end

@implementation TSCellularSetupLoadingView

- (TSCellularSetupLoadingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TSCellularSetupLoadingView;
  v3 = [(TSCellularSetupLoadingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TSCellularSetupLoadingView *)v3 _setupLabels];
    [(TSCellularSetupLoadingView *)v4 _setupActivityIndicator];
  }

  return v4;
}

- (TSCellularSetupLoadingView)initWithCarrierName:(id)a3
{
  objc_storeStrong(&self->_carrierName, a3);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);

  return [(TSCellularSetupLoadingView *)self initWithFrame:v4, v5, v6, v7];
}

- (void)_setupLabels
{
  v39 = objc_opt_new();
  [(TSCellularSetupLoadingView *)self setFirstLabel:v39];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Please wait while the page is loading..." value:&stru_28753DF48 table:@"Localizable"];
  [v39 setText:v4];

  [v39 setNumberOfLines:0];
  [v39 setAdjustsFontSizeToFitWidth:1];
  [v39 setLineBreakMode:0];
  [v39 setTextAlignment:1];
  v5 = *MEMORY[0x277D76918];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v39 setFont:v6];

  [v39 setFrame:{0.0, 0.0, 40.0, 20.0}];
  [(TSCellularSetupLoadingView *)self addSubview:v39];
  [v39 setIsAccessibilityElement:1];
  v7 = [v39 text];
  [v39 setAccessibilityLabel:v7];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v39 topAnchor];
  v9 = [(TSCellularSetupLoadingView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:130.0];
  [v10 setActive:1];

  v11 = [v39 centerXAnchor];
  v12 = [(TSCellularSetupLoadingView *)self centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v39 heightAnchor];
  v15 = [(TSCellularSetupLoadingView *)self heightAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15 multiplier:1.0];
  [v16 setActive:1];

  v17 = [v39 widthAnchor];
  v18 = [(TSCellularSetupLoadingView *)self widthAnchor];
  v19 = [v17 constraintLessThanOrEqualToAnchor:v18 multiplier:1.0 constant:-20.0];
  [v19 setActive:1];

  v20 = objc_opt_new();
  [(TSCellularSetupLoadingView *)self setSecondLabel:v20];
  if (self->_carrierName)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"TRANSFER_WEBSHEET_LOADING_MESSAGE_%@" value:&stru_28753DF48 table:@"Localizable"];
    v24 = [v21 stringWithFormat:v23, self->_carrierName];
    [v20 setText:v24];
  }

  else
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"This should only take a few seconds to complete." value:&stru_28753DF48 table:@"Localizable"];
    [v20 setText:v23];
  }

  [v20 setNumberOfLines:0];
  [v20 setAdjustsFontSizeToFitWidth:1];
  [v20 setLineBreakMode:0];
  [v20 setTextAlignment:1];
  v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:v5];
  [v20 setFont:v25];

  [v20 setFrame:{0.0, 0.0, 40.0, 20.0}];
  [(TSCellularSetupLoadingView *)self addSubview:v20];
  [v20 setIsAccessibilityElement:1];
  v26 = [v20 text];
  [v20 setAccessibilityLabel:v26];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v20 topAnchor];
  v28 = [v39 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:15.0];
  [v29 setActive:1];

  v30 = [v20 centerXAnchor];
  v31 = [(TSCellularSetupLoadingView *)self centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [v20 heightAnchor];
  v34 = [(TSCellularSetupLoadingView *)self heightAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34 multiplier:1.0];
  [v35 setActive:1];

  v36 = [v20 widthAnchor];
  v37 = [(TSCellularSetupLoadingView *)self widthAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37 multiplier:1.0 constant:-20.0];
  [v38 setActive:1];
}

- (void)_setupActivityIndicator
{
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(TSCellularSetupLoadingView *)self setSpinner:v3];

  v4 = [(TSCellularSetupLoadingView *)self spinner];
  [v4 setHidesWhenStopped:1];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(TSCellularSetupLoadingView *)self spinner];
  [v6 setBackgroundColor:v5];

  v7 = [MEMORY[0x277D75348] systemGrayColor];
  v8 = [(TSCellularSetupLoadingView *)self spinner];
  [v8 setColor:v7];

  v9 = [(TSCellularSetupLoadingView *)self spinner];
  [v9 setClipsToBounds:1];

  v10 = [(TSCellularSetupLoadingView *)self spinner];
  [(TSCellularSetupLoadingView *)self addSubview:v10];

  v11 = [(TSCellularSetupLoadingView *)self spinner];
  [v11 setIsAccessibilityElement:1];

  v12 = [(TSCellularSetupLoadingView *)self spinner];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(TSCellularSetupLoadingView *)self spinner];
  v14 = [v13 topAnchor];
  v15 = [(TSCellularSetupLoadingView *)self secondLabel];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:30.0];
  [v17 setActive:1];

  v18 = [(TSCellularSetupLoadingView *)self spinner];
  v19 = [v18 centerXAnchor];
  v20 = [(TSCellularSetupLoadingView *)self centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  [(TSCellularSetupLoadingView *)self spinnerStartAnimating];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = TSCellularSetupLoadingView;
  [(TSCellularSetupLoadingView *)&v7 layoutSubviews];
  v3 = [TSUtilities backgroundColorForRemotePlan:[(TSCellularSetupLoadingView *)self isRemotePlan]];
  [(TSCellularSetupLoadingView *)self setBackgroundColor:v3];

  v4 = [TSUtilities textColorForRemotePlan:[(TSCellularSetupLoadingView *)self isRemotePlan]];
  v5 = [(TSCellularSetupLoadingView *)self firstLabel];
  [v5 setTextColor:v4];

  v6 = [(TSCellularSetupLoadingView *)self secondLabel];
  [v6 setTextColor:v4];
}

- (void)spinnerStartAnimating
{
  v3 = [(TSCellularSetupLoadingView *)self spinner];
  v4 = [v3 isAnimating];

  if ((v4 & 1) == 0)
  {
    v5 = [(TSCellularSetupLoadingView *)self spinner];
    [v5 startAnimating];
  }
}

- (void)spinnerStopAnimating
{
  v3 = [(TSCellularSetupLoadingView *)self spinner];
  v4 = [v3 isAnimating];

  if (v4)
  {
    v5 = [(TSCellularSetupLoadingView *)self spinner];
    [v5 stopAnimating];
  }
}

@end