@interface SCLCustomDayViewController
- (SCLCustomDayViewController)initWithViewModel:(id)a3 title:(id)a4;
- (SCLCustomDayViewControllerDelegate)delegate;
- (void)loadSpecifierSource;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SCLCustomDayViewController

- (SCLCustomDayViewController)initWithViewModel:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCLCustomDayViewController;
  v9 = [(SCLListViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    [(SCLListViewController *)v10 setWantsEditingMode:1];
    [(SCLCustomDayViewController *)v10 setTitle:v8];
  }

  return v10;
}

- (void)loadSpecifierSource
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v3 = [(SCLCustomDayViewController *)self viewModel];
  [v3 repeatSchedule];
  SCLEnumerateDaysInRepeatSchedule();

  v4 = [SCLCustomDayEditorSource alloc];
  v5 = [(SCLCustomDayViewController *)self viewModel];
  v6 = v10[3];
  v7 = [(SCLCustomDayViewController *)self title];
  v8 = [(SCLCustomDayEditorSource *)v4 initWithListController:self viewModel:v5 day:v6 title:v7];

  [(SCLSpecifierDataSource *)v8 setActive:1];
  [(SCLListViewController *)self setSpecifierSource:v8];

  _Block_object_dispose(&v9, 8);
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCLCustomDayViewController;
  [(SCLCustomDayViewController *)&v6 willMoveToParentViewController:?];
  if (!a3)
  {
    v5 = [(SCLCustomDayViewController *)self delegate];
    [v5 customDayViewControllerWillDismiss:self];
  }
}

- (SCLCustomDayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end