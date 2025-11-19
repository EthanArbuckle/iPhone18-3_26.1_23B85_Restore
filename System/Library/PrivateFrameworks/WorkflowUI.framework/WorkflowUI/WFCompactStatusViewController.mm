@interface WFCompactStatusViewController
- (void)loadView;
- (void)setAttribution:(id)a3;
- (void)setProgress:(id)a3;
- (void)transitionToCompleted:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation WFCompactStatusViewController

- (void)transitionToCompleted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(WFCompactStatusViewController *)self loadViewIfNeeded];
  v7 = [(WFCompactStatusViewController *)self stopButton];
  [v7 transitionToCompleted:v5 animated:v4];
}

- (void)setAttribution:(id)a3
{
  v5 = a3;
  v6 = self->_attribution;
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

LABEL_9:
    v9 = v10;
    goto LABEL_10;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(WFDialogAttribution *)v6 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_attribution, a3);
    v6 = [(WFCompactPlatterViewController *)self platterView];
    [(WFDialogAttribution *)v6 setAttribution:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setProgress:(id)a3
{
  objc_storeStrong(&self->_progress, a3);
  v5 = a3;
  v6 = [(WFCompactStatusViewController *)self stopButton];
  [v6 setProgress:v5];
}

- (void)loadView
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = WFCompactStatusViewController;
  [(WFCompactPlatterViewController *)&v24 loadView];
  v23 = objc_opt_new();
  v3 = [v23 view];
  [(WFCompactPlatterViewController *)self setContentViewController:v23];
  v4 = [WFCompactStopButton buttonWithType:1];
  v5 = [(WFCompactStatusViewController *)self progress];
  [(WFCompactStopButton *)v4 setProgress:v5];

  [(WFCompactStopButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  stopButton = self->_stopButton;
  self->_stopButton = v4;
  v7 = v4;

  v17 = MEMORY[0x277CCAAD0];
  v22 = [(WFCompactStopButton *)v7 widthAnchor];
  v21 = [v22 constraintEqualToConstant:36.0];
  v25[0] = v21;
  v20 = [(WFCompactStopButton *)v7 heightAnchor];
  v19 = [v20 constraintEqualToConstant:36.0];
  v25[1] = v19;
  v18 = [(WFCompactStopButton *)v7 topAnchor];
  v16 = [v3 topAnchor];
  v8 = [v18 constraintEqualToAnchor:v16 constant:8.0];
  v25[2] = v8;
  v9 = [(WFCompactStopButton *)v7 bottomAnchor];
  v10 = [v3 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-18.0];
  v25[3] = v11;
  v12 = [(WFCompactStopButton *)v7 centerXAnchor];
  v13 = [v3 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v25[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  [v17 activateConstraints:v15];
}

@end