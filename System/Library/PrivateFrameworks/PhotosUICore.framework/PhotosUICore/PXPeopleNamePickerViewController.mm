@interface PXPeopleNamePickerViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (PXPeopleNamePickerViewController)init;
- (PXPeopleNamePickerViewController)initWithCoder:(id)a3;
- (PXPeopleNamePickerViewController)initWithFace:(id)a3;
- (PXPeopleNamePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXPeopleNamePickerViewController)initWithPerson:(id)a3;
- (PXPeopleNamePickerViewController)initWithPerson:(id)a3 orFace:(id)a4;
- (PXPeopleNamePickerViewControllerDelegate)delegate;
- (double)_titleViewMaxWidthForEditing:(BOOL)a3;
- (void)_changePlaceholderTextOfTextField:(id)a3 toColor:(id)a4;
- (void)_hideResultsView;
- (void)_keyboardDidShow:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_showResultsView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXPeopleNamePickerViewController

- (PXPeopleNamePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [(PXPeopleNamePickerViewController *)self resultsController];
  v6 = [v5 personAtIndexPath:v9];
  if (v6)
  {
    v7 = [(PXPeopleNamePickerViewController *)self delegate];
    [v7 namePickerController:self didPickPerson:v6];
  }

  else
  {
    v7 = [v5 contactAtIndexPath:v9];
    if (v7)
    {
      v8 = [(PXPeopleNamePickerViewController *)self delegate];
      [v8 namePickerController:self didPickContact:v7];
    }
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v6 = [(PXPeopleNamePickerViewController *)self titleView];
  v5 = [v6 tintColor];
  [(PXPeopleNamePickerViewController *)self _changePlaceholderTextOfTextField:v4 toColor:v5];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 placeholderTextColor];
  [(PXPeopleNamePickerViewController *)self _changePlaceholderTextOfTextField:v5 toColor:v6];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  v12 = [(PXPeopleNamePickerViewController *)self resultsController];
  [v12 updateItemsForSearchString:v11];
  if ([v12 hasResults])
  {
    [(PXPeopleNamePickerViewController *)self _showResultsView];
  }

  else
  {
    [(PXPeopleNamePickerViewController *)self _hideResultsView];
  }

  v13 = [(PXPeopleNamePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 namePickerControllerWillChangeText:self];
  }

  return 1;
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  [a3 resignFirstResponder];
  v4 = [(PXPeopleNamePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 namePickerControllerDidEndEditing:self];
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [a3 text];
  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [(PXPeopleNamePickerViewController *)self delegate];
  [v7 namePickerController:self didPickString:v6];

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(PXPeopleNamePickerViewController *)self resultsController];
  [v4 updateItemsForSearchString:&stru_1F1741150];
  if ([v4 hasResults])
  {
    [(PXPeopleNamePickerViewController *)self _showResultsView];
  }

  else
  {
    [(PXPeopleNamePickerViewController *)self _hideResultsView];
  }

  v5 = [(PXPeopleNamePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 namePickerControllerDidStartEditing:self];
  }

  return 1;
}

- (void)_changePlaceholderTextOfTextField:(id)a3 toColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 attributedPlaceholder];
  v8 = [v7 mutableCopy];

  [v8 addAttribute:*MEMORY[0x1E69DB650] value:v5 range:{0, objc_msgSend(v8, "length")}];
  [v6 setAttributedPlaceholder:v8];
}

- (void)_hideResultsView
{
  v6 = [(PXPeopleNamePickerViewController *)self resultsController];
  v3 = [(PXPeopleNamePickerViewController *)self presentedViewController];

  if (v3 == v6)
  {
    [v6 dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    v4 = [(PXPeopleNamePickerViewController *)self resultsController];
    v5 = [v4 view];

    [v5 setHidden:1];
  }
}

- (void)_showResultsView
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21 = [(PXPeopleNamePickerViewController *)self resultsController];
  v3 = [v21 view];
  [v3 setHidden:0];
  v4 = [(PXPeopleNamePickerViewController *)self view];
  v5 = [v3 superview];

  if (v5 != v4)
  {
    [v4 addSubview:v3];
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = MEMORY[0x1E696ACD8];
  v19 = [v3 topAnchor];
  v20 = [v4 safeAreaLayoutGuide];
  v18 = [v20 topAnchor];
  [(PXPeopleNamePickerViewController *)self yOffset];
  v17 = [v19 constraintEqualToAnchor:v18 constant:?];
  v22[0] = v17;
  v14 = [v3 leadingAnchor];
  v15 = [v4 safeAreaLayoutGuide];
  v6 = [v15 leadingAnchor];
  v7 = [v14 constraintEqualToAnchor:v6];
  v22[1] = v7;
  v8 = [v3 trailingAnchor];
  v9 = [v4 safeAreaLayoutGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v22[2] = v11;
  v12 = [(PXPeopleNamePickerViewController *)self resultsViewBottomConstraint];
  v22[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v13];
}

- (double)_titleViewMaxWidthForEditing:(BOOL)a3
{
  v4 = [(PXPeopleNamePickerViewController *)self navigationController];
  v5 = [v4 navigationBar];

  [v5 frame];
  v7 = v6;
  if (!a3)
  {
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 userInterfaceLayoutDirection];

    if (v9 == 1)
    {
      v10 = [v5 currentRightView];
      [v5 currentLeftView];
    }

    else
    {
      v10 = [v5 currentLeftView];
      [v5 currentRightView];
    }
    v11 = ;
    v12 = 0.0;
    MaxX = 0.0;
    if (v10)
    {
      [v10 frame];
      MaxX = CGRectGetMaxX(v16);
    }

    if (v11)
    {
      [v11 frame];
      v12 = v7 - CGRectGetMinX(v17);
    }

    if (MaxX >= v12)
    {
      v14 = MaxX;
    }

    else
    {
      v14 = v12;
    }

    v7 = v7 + v14 * -2.0;
  }

  return v7;
}

- (void)_keyboardDidShow:(id)a3
{
  v30 = [a3 userInfo];
  v4 = [v30 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(PXPeopleNamePickerViewController *)self view];
  [v13 convertRect:0 fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v13 frame];
  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  v33 = CGRectIntersection(v32, v34);
  height = v33.size.height;
  v23 = [(PXPeopleNamePickerViewController *)self tabBarController:v33.origin.x];
  v24 = [v23 tabBar];
  [v24 frame];
  v26 = v25;

  [v13 safeAreaInsets];
  v28 = v26 - height + v27;
  v29 = [(PXPeopleNamePickerViewController *)self resultsViewBottomConstraint];
  [v29 setConstant:v28];
}

- (void)_keyboardWillHide:(id)a3
{
  v3 = [(PXPeopleNamePickerViewController *)self resultsViewBottomConstraint];
  [v3 setConstant:0.0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXPeopleNamePickerViewController;
  [(PXPeopleNamePickerViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(PXPeopleNamePickerViewController *)self titleView];
  v4 = [v3 nameField];
  [v4 invalidateIntrinsicContentSize];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PXPeopleNamePickerViewController;
  [(PXPeopleNamePickerViewController *)&v10 viewDidLoad];
  v3 = [(PXPeopleNamePickerViewController *)self resultsController];
  v4 = [v3 view];
  v5 = [v4 bottomAnchor];
  v6 = [(PXPeopleNamePickerViewController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 bottomAnchor];
  v9 = [v5 constraintEqualToAnchor:v8 constant:0.0];
  [(PXPeopleNamePickerViewController *)self setResultsViewBottomConstraint:v9];
}

- (PXPeopleNamePickerViewController)initWithPerson:(id)a3 orFace:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!(v7 | v8))
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:61 description:@"Both person and face are nil"];
  }

  v32.receiver = self;
  v32.super_class = PXPeopleNamePickerViewController;
  v9 = [(PXPeopleNamePickerViewController *)&v32 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [PXPeopleNamePickerTitleView alloc];
    if (v7)
    {
      v11 = [(PXPeopleNamePickerTitleView *)v10 initWithFrame:v7 person:0.0, 0.0, 0.0, 35.0];
    }

    else
    {
      v11 = [(PXPeopleNamePickerTitleView *)v10 initWithFrame:v8 face:0.0, 0.0, 0.0, 35.0];
    }

    titleView = v9->_titleView;
    v9->_titleView = v11;

    [(PXPeopleNamePickerTitleView *)v9->_titleView setAutoresizingMask:2];
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    v14 = MEMORY[0x1E69DB880];
    v35 = *MEMORY[0x1E69DB8E8];
    v36[0] = *MEMORY[0x1E69DDCF8];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v16 = [v14 fontDescriptorWithFontAttributes:v15];

    v17 = MEMORY[0x1E69DB878];
    [v13 pointSize];
    v18 = [v17 fontWithDescriptor:v16 size:?];
    [(PXPeopleNamePickerTitleView *)v9->_titleView setNameFont:v13];
    v19 = *MEMORY[0x1E69DB650];
    v33[0] = *MEMORY[0x1E69DB648];
    v33[1] = v19;
    v34[0] = v18;
    v20 = [(PXPeopleNamePickerTitleView *)v9->_titleView tintColor];
    v34[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    v23 = PXLocalizedStringFromTable(@"PXPeopleAddNameNoPlus", @"PhotosUICore");
    v24 = [v22 initWithString:v23 attributes:v21];

    v25 = [(PXPeopleNamePickerTitleView *)v9->_titleView nameField];
    [v25 setAttributedPlaceholder:v24];
    [v25 setDelegate:v9];
    v26 = [[PXPeopleNamePickerResultsTableViewController alloc] initWithStyle:0 person:v7 face:v8];
    resultsController = v9->_resultsController;
    v9->_resultsController = v26;

    v28 = [(PXPeopleNamePickerResultsTableViewController *)v9->_resultsController tableView];
    [v28 setDelegate:v9];

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v9 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
    [v29 addObserver:v9 selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
    [v29 addObserver:v9 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  }

  return v9;
}

- (PXPeopleNamePickerViewController)initWithFace:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  v6 = [(PXPeopleNamePickerViewController *)self initWithPerson:0 orFace:v5];

  return v6;
}

- (PXPeopleNamePickerViewController)initWithPerson:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = [(PXPeopleNamePickerViewController *)self initWithPerson:v5 orFace:0];

  return v6;
}

- (PXPeopleNamePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:45 description:@"invalid initializer"];

  return 0;
}

- (PXPeopleNamePickerViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:39 description:@"invalid initializer"];

  return 0;
}

- (PXPeopleNamePickerViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:33 description:@"invalid initializer"];

  return 0;
}

@end