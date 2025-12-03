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
  datePicker = [(WFInputDateDialogViewController *)self datePicker];
  v3 = [datePicker preferredDatePickerStyle] == 3;

  return v3;
}

- (void)loadView
{
  v45[4] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = WFInputDateDialogViewController;
  [(WFCompactDialogViewController *)&v43 loadView];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  request = [(WFCompactDialogViewController *)self request];
  message = [request message];
  [platterView setSecondaryText:message];

  configuration = [request configuration];
  datePickerMode = [configuration datePickerMode];
  v4 = WFDatePickerModeFromString();

  v33 = objc_opt_new();
  view = [v33 view];
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
  defaultDate = [configuration defaultDate];
  if (defaultDate)
  {
    [v6 setDate:defaultDate];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v6 setDate:date];
  }

  minimumDate = [configuration minimumDate];
  [v6 setMinimumDate:minimumDate];

  maximumDate = [configuration maximumDate];
  [v6 setMaximumDate:maximumDate];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v6];
  [(WFInputDateDialogViewController *)self setDatePicker:v6];
  LODWORD(maximumDate) = [v6 preferredDatePickerStyle] == 1;
  v27 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v6 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v45[0] = v29;
  widthAnchor = [v6 widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v13 = -108.0;
  if (!maximumDate)
  {
    v13 = -28.0;
  }

  v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v13];
  v45[1] = v14;
  topAnchor = [v6 topAnchor];
  topAnchor2 = [view topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[2] = v17;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [v27 activateConstraints:v21];

  objc_initWeak(&location, self);
  cancelButton = [request cancelButton];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __43__WFInputDateDialogViewController_loadView__block_invoke;
  v40[3] = &unk_279EE8908;
  objc_copyWeak(&v41, &location);
  v23 = [WFCompactDialogAction actionForButton:cancelButton handler:v40];

  doneButton = [request doneButton];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__WFInputDateDialogViewController_loadView__block_invoke_2;
  v38[3] = &unk_279EE8908;
  objc_copyWeak(&v39, &location);
  v25 = [WFCompactDialogAction actionForButton:doneButton handler:v38];

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