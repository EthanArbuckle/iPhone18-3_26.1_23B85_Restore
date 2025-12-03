@interface SCLCustomDayViewController
- (SCLCustomDayViewController)initWithViewModel:(id)model title:(id)title;
- (SCLCustomDayViewControllerDelegate)delegate;
- (void)loadSpecifierSource;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SCLCustomDayViewController

- (SCLCustomDayViewController)initWithViewModel:(id)model title:(id)title
{
  modelCopy = model;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = SCLCustomDayViewController;
  v9 = [(SCLListViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    [(SCLListViewController *)v10 setWantsEditingMode:1];
    [(SCLCustomDayViewController *)v10 setTitle:titleCopy];
  }

  return v10;
}

- (void)loadSpecifierSource
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  viewModel = [(SCLCustomDayViewController *)self viewModel];
  [viewModel repeatSchedule];
  SCLEnumerateDaysInRepeatSchedule();

  v4 = [SCLCustomDayEditorSource alloc];
  viewModel2 = [(SCLCustomDayViewController *)self viewModel];
  v6 = v10[3];
  title = [(SCLCustomDayViewController *)self title];
  v8 = [(SCLCustomDayEditorSource *)v4 initWithListController:self viewModel:viewModel2 day:v6 title:title];

  [(SCLSpecifierDataSource *)v8 setActive:1];
  [(SCLListViewController *)self setSpecifierSource:v8];

  _Block_object_dispose(&v9, 8);
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = SCLCustomDayViewController;
  [(SCLCustomDayViewController *)&v6 willMoveToParentViewController:?];
  if (!controller)
  {
    delegate = [(SCLCustomDayViewController *)self delegate];
    [delegate customDayViewControllerWillDismiss:self];
  }
}

- (SCLCustomDayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end