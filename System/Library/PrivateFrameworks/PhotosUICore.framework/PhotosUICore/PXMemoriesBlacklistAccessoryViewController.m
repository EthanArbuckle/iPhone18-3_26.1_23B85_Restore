@interface PXMemoriesBlacklistAccessoryViewController
- (CGSize)preferredContentSize;
- (PXMemoriesBlacklistAccessoryViewController)initWithAccessoryView:(id)a3 viewSpec:(id)a4;
- (PXMemoriesBlacklistAccessoryViewController)initWithCoder:(id)a3;
- (PXMemoriesBlacklistAccessoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_setConstraints:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation PXMemoriesBlacklistAccessoryViewController

- (void)updateViewConstraints
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXMemoriesBlacklistAccessoryViewController *)self constraints];
  if (v3)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v3];
  }

  accessoryView = self->_accessoryView;
  v11 = @"accessoryView";
  v12[0] = accessoryView;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-leftMargin-[accessoryView(>=width)]-rightMargin-|" options:0 metrics:&unk_1F190E7C0 views:v5];
  [v6 addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-topMargin-[accessoryView]|" options:0 metrics:&unk_1F190E7C0 views:v5];
  [v6 addObjectsFromArray:v8];

  if ([(PXMemoriesBlacklistAccessoryViewSpec *)self->_viewSpec type]!= 1)
  {
    v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_accessoryView attribute:7 relatedBy:0 toItem:self->_accessoryView attribute:8 multiplier:1.0 constant:0.0];
    [v6 addObject:v9];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v6];
  [(PXMemoriesBlacklistAccessoryViewController *)self _setConstraints:v6];
  v10.receiver = self;
  v10.super_class = PXMemoriesBlacklistAccessoryViewController;
  [(PXMemoriesBlacklistAccessoryViewController *)&v10 updateViewConstraints];
}

- (void)_setConstraints:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_constraints != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      if (self->_constraints)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:?];
        v5 = v9;
      }

      v7 = [(NSArray *)v5 copy];
      constraints = self->_constraints;
      self->_constraints = v7;

      v5 = v9;
      if (self->_constraints)
      {
        [MEMORY[0x1E696ACD8] activateConstraints:?];
        v5 = v9;
      }
    }
  }
}

- (CGSize)preferredContentSize
{
  [(PXMemoriesBlacklistAccessoryViewSpec *)self->_viewSpec accessoryViewFrame];
  v3 = v2 + 16.0;
  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PXMemoriesBlacklistAccessoryViewController;
  [(PXMemoriesBlacklistAccessoryViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PXMemoriesBlacklistAccessoryViewController;
  [(PXMemoriesBlacklistAccessoryViewController *)&v4 viewDidLoad];
  v3 = [(PXMemoriesBlacklistAccessoryViewController *)self view];
  [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_accessoryView];
  [v3 setNeedsUpdateConstraints];
}

- (PXMemoriesBlacklistAccessoryViewController)initWithAccessoryView:(id)a3 viewSpec:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXMemoriesBlacklistAccessoryViewController;
  v9 = [(PXMemoriesBlacklistAccessoryViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryView, a3);
    objc_storeStrong(&v10->_viewSpec, a4);
  }

  return v10;
}

- (PXMemoriesBlacklistAccessoryViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXMemoriesBlacklistAccessoryViewController.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXMemoriesBlacklistAccessoryViewController initWithCoder:]"}];

  abort();
}

- (PXMemoriesBlacklistAccessoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXMemoriesBlacklistAccessoryViewController.m" lineNumber:31 description:{@"%s is not available as initializer", "-[PXMemoriesBlacklistAccessoryViewController initWithNibName:bundle:]"}];

  abort();
}

@end