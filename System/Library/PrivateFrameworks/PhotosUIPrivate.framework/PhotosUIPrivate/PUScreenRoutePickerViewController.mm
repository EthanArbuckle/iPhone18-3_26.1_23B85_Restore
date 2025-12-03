@interface PUScreenRoutePickerViewController
- (PUScreenRoutePickerViewController)initWithCompletionBlock:(id)block;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PUScreenRoutePickerViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PUScreenRoutePickerViewController;
  [(PUScreenRoutePickerViewController *)&v6 viewDidDisappear:disappear];
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
    v5 = self->_completionBlock;
    self->_completionBlock = 0;
  }
}

- (PUScreenRoutePickerViewController)initWithCompletionBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = PUScreenRoutePickerViewController;
  v5 = [(_UIScreenRoutePickerViewController *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    completionBlock = v5->_completionBlock;
    v5->_completionBlock = v6;
  }

  return v5;
}

@end