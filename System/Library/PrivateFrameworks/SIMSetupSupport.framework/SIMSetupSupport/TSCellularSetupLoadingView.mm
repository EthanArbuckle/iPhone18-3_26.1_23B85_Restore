@interface TSCellularSetupLoadingView
- (TSCellularSetupLoadingView)initWithCarrierName:(id)name;
- (TSCellularSetupLoadingView)initWithFrame:(CGRect)frame;
- (void)_setupActivityIndicator;
- (void)_setupLabels;
- (void)layoutSubviews;
- (void)spinnerStartAnimating;
- (void)spinnerStopAnimating;
@end

@implementation TSCellularSetupLoadingView

- (TSCellularSetupLoadingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TSCellularSetupLoadingView;
  v3 = [(TSCellularSetupLoadingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TSCellularSetupLoadingView *)v3 _setupLabels];
    [(TSCellularSetupLoadingView *)v4 _setupActivityIndicator];
  }

  return v4;
}

- (TSCellularSetupLoadingView)initWithCarrierName:(id)name
{
  objc_storeStrong(&self->_carrierName, name);
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
  text = [v39 text];
  [v39 setAccessibilityLabel:text];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [v39 topAnchor];
  topAnchor2 = [(TSCellularSetupLoadingView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:130.0];
  [v10 setActive:1];

  centerXAnchor = [v39 centerXAnchor];
  centerXAnchor2 = [(TSCellularSetupLoadingView *)self centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v13 setActive:1];

  heightAnchor = [v39 heightAnchor];
  heightAnchor2 = [(TSCellularSetupLoadingView *)self heightAnchor];
  v16 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 multiplier:1.0];
  [v16 setActive:1];

  widthAnchor = [v39 widthAnchor];
  widthAnchor2 = [(TSCellularSetupLoadingView *)self widthAnchor];
  v19 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:1.0 constant:-20.0];
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
  text2 = [v20 text];
  [v20 setAccessibilityLabel:text2];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor3 = [v20 topAnchor];
  bottomAnchor = [v39 bottomAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:15.0];
  [v29 setActive:1];

  centerXAnchor3 = [v20 centerXAnchor];
  centerXAnchor4 = [(TSCellularSetupLoadingView *)self centerXAnchor];
  v32 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v32 setActive:1];

  heightAnchor3 = [v20 heightAnchor];
  heightAnchor4 = [(TSCellularSetupLoadingView *)self heightAnchor];
  v35 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4 multiplier:1.0];
  [v35 setActive:1];

  widthAnchor3 = [v20 widthAnchor];
  widthAnchor4 = [(TSCellularSetupLoadingView *)self widthAnchor];
  v38 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 multiplier:1.0 constant:-20.0];
  [v38 setActive:1];
}

- (void)_setupActivityIndicator
{
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(TSCellularSetupLoadingView *)self setSpinner:v3];

  spinner = [(TSCellularSetupLoadingView *)self spinner];
  [spinner setHidesWhenStopped:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  spinner2 = [(TSCellularSetupLoadingView *)self spinner];
  [spinner2 setBackgroundColor:clearColor];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  spinner3 = [(TSCellularSetupLoadingView *)self spinner];
  [spinner3 setColor:systemGrayColor];

  spinner4 = [(TSCellularSetupLoadingView *)self spinner];
  [spinner4 setClipsToBounds:1];

  spinner5 = [(TSCellularSetupLoadingView *)self spinner];
  [(TSCellularSetupLoadingView *)self addSubview:spinner5];

  spinner6 = [(TSCellularSetupLoadingView *)self spinner];
  [spinner6 setIsAccessibilityElement:1];

  spinner7 = [(TSCellularSetupLoadingView *)self spinner];
  [spinner7 setTranslatesAutoresizingMaskIntoConstraints:0];

  spinner8 = [(TSCellularSetupLoadingView *)self spinner];
  topAnchor = [spinner8 topAnchor];
  secondLabel = [(TSCellularSetupLoadingView *)self secondLabel];
  bottomAnchor = [secondLabel bottomAnchor];
  v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:30.0];
  [v17 setActive:1];

  spinner9 = [(TSCellularSetupLoadingView *)self spinner];
  centerXAnchor = [spinner9 centerXAnchor];
  centerXAnchor2 = [(TSCellularSetupLoadingView *)self centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
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
  firstLabel = [(TSCellularSetupLoadingView *)self firstLabel];
  [firstLabel setTextColor:v4];

  secondLabel = [(TSCellularSetupLoadingView *)self secondLabel];
  [secondLabel setTextColor:v4];
}

- (void)spinnerStartAnimating
{
  spinner = [(TSCellularSetupLoadingView *)self spinner];
  isAnimating = [spinner isAnimating];

  if ((isAnimating & 1) == 0)
  {
    spinner2 = [(TSCellularSetupLoadingView *)self spinner];
    [spinner2 startAnimating];
  }
}

- (void)spinnerStopAnimating
{
  spinner = [(TSCellularSetupLoadingView *)self spinner];
  isAnimating = [spinner isAnimating];

  if (isAnimating)
  {
    spinner2 = [(TSCellularSetupLoadingView *)self spinner];
    [spinner2 stopAnimating];
  }
}

@end