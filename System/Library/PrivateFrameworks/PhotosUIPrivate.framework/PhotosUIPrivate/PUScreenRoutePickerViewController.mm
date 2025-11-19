@interface PUScreenRoutePickerViewController
- (PUScreenRoutePickerViewController)initWithCompletionBlock:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PUScreenRoutePickerViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PUScreenRoutePickerViewController;
  [(PUScreenRoutePickerViewController *)&v6 viewDidDisappear:a3];
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
    v5 = self->_completionBlock;
    self->_completionBlock = 0;
  }
}

- (PUScreenRoutePickerViewController)initWithCompletionBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUScreenRoutePickerViewController;
  v5 = [(_UIScreenRoutePickerViewController *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    completionBlock = v5->_completionBlock;
    v5->_completionBlock = v6;
  }

  return v5;
}

@end