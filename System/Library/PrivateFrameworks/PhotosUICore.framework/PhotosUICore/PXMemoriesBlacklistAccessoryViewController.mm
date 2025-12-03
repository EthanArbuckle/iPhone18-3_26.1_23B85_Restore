@interface PXMemoriesBlacklistAccessoryViewController
- (CGSize)preferredContentSize;
- (PXMemoriesBlacklistAccessoryViewController)initWithAccessoryView:(id)view viewSpec:(id)spec;
- (PXMemoriesBlacklistAccessoryViewController)initWithCoder:(id)coder;
- (PXMemoriesBlacklistAccessoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_setConstraints:(id)constraints;
- (void)didReceiveMemoryWarning;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation PXMemoriesBlacklistAccessoryViewController

- (void)updateViewConstraints
{
  v12[1] = *MEMORY[0x1E69E9840];
  constraints = [(PXMemoriesBlacklistAccessoryViewController *)self constraints];
  if (constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:constraints];
  }

  accessoryView = self->_accessoryView;
  v11 = @"accessoryView";
  v12[0] = accessoryView;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  array = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-leftMargin-[accessoryView(>=width)]-rightMargin-|" options:0 metrics:&unk_1F190E7C0 views:v5];
  [array addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-topMargin-[accessoryView]|" options:0 metrics:&unk_1F190E7C0 views:v5];
  [array addObjectsFromArray:v8];

  if ([(PXMemoriesBlacklistAccessoryViewSpec *)self->_viewSpec type]!= 1)
  {
    v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_accessoryView attribute:7 relatedBy:0 toItem:self->_accessoryView attribute:8 multiplier:1.0 constant:0.0];
    [array addObject:v9];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [(PXMemoriesBlacklistAccessoryViewController *)self _setConstraints:array];
  v10.receiver = self;
  v10.super_class = PXMemoriesBlacklistAccessoryViewController;
  [(PXMemoriesBlacklistAccessoryViewController *)&v10 updateViewConstraints];
}

- (void)_setConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v5 = constraintsCopy;
  if (self->_constraints != constraintsCopy)
  {
    v9 = constraintsCopy;
    v6 = [(NSArray *)constraintsCopy isEqual:?];
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
  view = [(PXMemoriesBlacklistAccessoryViewController *)self view];
  [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_accessoryView];
  [view setNeedsUpdateConstraints];
}

- (PXMemoriesBlacklistAccessoryViewController)initWithAccessoryView:(id)view viewSpec:(id)spec
{
  viewCopy = view;
  specCopy = spec;
  v12.receiver = self;
  v12.super_class = PXMemoriesBlacklistAccessoryViewController;
  v9 = [(PXMemoriesBlacklistAccessoryViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryView, view);
    objc_storeStrong(&v10->_viewSpec, spec);
  }

  return v10;
}

- (PXMemoriesBlacklistAccessoryViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesBlacklistAccessoryViewController.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXMemoriesBlacklistAccessoryViewController initWithCoder:]"}];

  abort();
}

- (PXMemoriesBlacklistAccessoryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesBlacklistAccessoryViewController.m" lineNumber:31 description:{@"%s is not available as initializer", "-[PXMemoriesBlacklistAccessoryViewController initWithNibName:bundle:]"}];

  abort();
}

@end