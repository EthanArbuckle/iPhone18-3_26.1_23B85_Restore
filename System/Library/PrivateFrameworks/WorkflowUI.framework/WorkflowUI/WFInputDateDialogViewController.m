@interface WFInputDateDialogViewController
- (BOOL)shouldHideSashView;
- (UIDatePicker)datePicker;
- (void)loadView;
@end

@implementation WFInputDateDialogViewController

- (UIDatePicker)datePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_datePicker);

  return WeakRetained;
}

- (BOOL)shouldHideSashView
{
  v2 = [(WFInputDateDialogViewController *)self datePicker];
  v3 = [v2 preferredDatePickerStyle] == 3;

  return v3;
}

- (void)loadView
{
  v45[4] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = WFInputDateDialogViewController;
  [(WFCompactDialogViewController *)&v43 loadView];
  v32 = [(WFCompactPlatterViewController *)self platterView];
  v34 = [(WFCompactDialogViewController *)self request];
  v2 = [v34 message];
  [v32 setSecondaryText:v2];

  v35 = [v34 configuration];
  v3 = [v35 datePickerMode];
  v4 = WFDatePickerModeFromString();

  v33 = objc_opt_new();
  v36 = [v33 view];
  [(WFCompactPlatterViewController *)self setContentViewController:v33];
  v5 = objc_alloc_init(MEMORY[0x277D753E8]);
  v6 = v5;
  if (v4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  [v5 setPreferredDatePickerStyle:v7];
  [v6 setDatePickerMode:v4];
  v8 = [v35 defaultDate];
  if (v8)
  {
    [v6 setDate:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [v6 setDate:v9];
  }

  v10 = [v35 minimumDate];
  [v6 setMinimumDate:v10];

  v11 = [v35 maximumDate];
  [v6 setMaximumDate:v11];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 addSubview:v6];
  [(WFInputDateDialogViewController *)self setDatePicker:v6];
  LODWORD(v11) = [v6 preferredDatePickerStyle] == 1;
  v27 = MEMORY[0x277CCAAD0];
  v31 = [v6 centerXAnchor];
  v30 = [v36 centerXAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v45[0] = v29;
  v28 = [v6 widthAnchor];
  v12 = [v36 widthAnchor];
  v13 = -108.0;
  if (!v11)
  {
    v13 = -28.0;
  }

  v14 = [v28 constraintEqualToAnchor:v12 constant:v13];
  v45[1] = v14;
  v15 = [v6 topAnchor];
  v16 = [v36 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v45[2] = v17;
  v18 = [v6 bottomAnchor];
  v19 = [v36 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v45[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [v27 activateConstraints:v21];

  objc_initWeak(&location, self);
  v22 = [v34 cancelButton];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __43__WFInputDateDialogViewController_loadView__block_invoke;
  v40[3] = &unk_279EE8908;
  objc_copyWeak(&v41, &location);
  v23 = [WFCompactDialogAction actionForButton:v22 handler:v40];

  v24 = [v34 doneButton];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__WFInputDateDialogViewController_loadView__block_invoke_2;
  v38[3] = &unk_279EE8908;
  objc_copyWeak(&v39, &location);
  v25 = [WFCompactDialogAction actionForButton:v24 handler:v38];

  v44[0] = v23;
  v44[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v26];

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __43__WFInputDateDialogViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D79FE0]) initWithInputtedDate:0 cancelled:1];
  [WeakRetained finishWithResponse:v1];
}

void __43__WFInputDateDialogViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc(MEMORY[0x277D79FE0]);
  v2 = [WeakRetained datePicker];
  v3 = [v2 date];
  v4 = [v1 initWithInputtedDate:v3 cancelled:0];
  [WeakRetained finishWithResponse:v4];
}

@end