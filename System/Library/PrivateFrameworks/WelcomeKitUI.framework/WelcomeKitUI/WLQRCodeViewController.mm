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
    v3 = [(WLQRCodeViewController *)self view];
    [v3 directionalLayoutMargins];
    v5 = v4;
    v6 = [(WLQRCodeViewController *)self view];
    [v6 directionalLayoutMargins];
    v8 = v5 + v7;

    v9 = [(WLQRCodeViewController *)self view];
    [v9 frame];
    v11 = v10;

    v12 = [(WLQRCodeViewController *)self view];
    [v12 frame];
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
    v17 = [MEMORY[0x277D75418] currentDevice];
    if ([v17 userInterfaceIdiom])
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
    v21 = [(WLQRCodeViewController *)self contentView];
    [v21 addSubview:v20];

    v32 = MEMORY[0x277CCAAD0];
    v35 = [v20 topAnchor];
    v36 = [(WLQRCodeViewController *)self contentView];
    v34 = [v36 topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:v19];
    v38[0] = v33;
    v22 = [v20 bottomAnchor];
    v23 = [(WLQRCodeViewController *)self contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-v19];
    v38[1] = v25;
    v26 = [v20 centerXAnchor];
    v27 = [(WLQRCodeViewController *)self contentView];
    v28 = [v27 centerXAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v38[2] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    [v32 activateConstraints:v30];
  }

  v31 = *MEMORY[0x277D85DE8];
}

@end