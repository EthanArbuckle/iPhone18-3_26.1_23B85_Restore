@interface WLQRCodeViewController
- (void)initQRCode;
@end

@implementation WLQRCodeViewController

- (void)initQRCode
{
  v38[3] = *MEMORY[0x277D85DE8];
  if (self->_qrcode && !self->_initialized)
  {
    self->_initialized = 1;
    view = [(WLQRCodeViewController *)self view];
    [view directionalLayoutMargins];
    v5 = v4;
    view2 = [(WLQRCodeViewController *)self view];
    [view2 directionalLayoutMargins];
    v8 = v5 + v7;

    view3 = [(WLQRCodeViewController *)self view];
    [view3 frame];
    v11 = v10;

    view4 = [(WLQRCodeViewController *)self view];
    [view4 frame];
    v14 = v13;

    if (v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15 - v8;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      v18 = 3.0;
    }

    else
    {
      v18 = 1.70000005;
    }

    v19 = floor(floor((v16 - floor(v16 / v18)) * 0.5) * 0.5);
    v37 = [(WLQRCode *)self->_qrcode createQRCodeImage:?];
    v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v37];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WLQRCodeViewController *)self contentView];
    [contentView addSubview:v20];

    v32 = MEMORY[0x277CCAAD0];
    topAnchor = [v20 topAnchor];
    contentView2 = [(WLQRCodeViewController *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v19];
    v38[0] = v33;
    bottomAnchor = [v20 bottomAnchor];
    contentView3 = [(WLQRCodeViewController *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v19];
    v38[1] = v25;
    centerXAnchor = [v20 centerXAnchor];
    contentView4 = [(WLQRCodeViewController *)self contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[2] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    [v32 activateConstraints:v30];
  }

  v31 = *MEMORY[0x277D85DE8];
}

@end