@interface PXPeopleNamePickerViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (PXPeopleNamePickerViewController)init;
- (PXPeopleNamePickerViewController)initWithCoder:(id)coder;
- (PXPeopleNamePickerViewController)initWithFace:(id)face;
- (PXPeopleNamePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXPeopleNamePickerViewController)initWithPerson:(id)person;
- (PXPeopleNamePickerViewController)initWithPerson:(id)person orFace:(id)face;
- (PXPeopleNamePickerViewControllerDelegate)delegate;
- (double)_titleViewMaxWidthForEditing:(BOOL)editing;
- (void)_changePlaceholderTextOfTextField:(id)field toColor:(id)color;
- (void)_hideResultsView;
- (void)_keyboardDidShow:(id)show;
- (void)_keyboardWillHide:(id)hide;
- (void)_showResultsView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXPeopleNamePickerViewController

- (PXPeopleNamePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  resultsController = [(PXPeopleNamePickerViewController *)self resultsController];
  v6 = [resultsController personAtIndexPath:pathCopy];
  if (v6)
  {
    delegate = [(PXPeopleNamePickerViewController *)self delegate];
    [delegate namePickerController:self didPickPerson:v6];
  }

  else
  {
    delegate = [resultsController contactAtIndexPath:pathCopy];
    if (delegate)
    {
      delegate2 = [(PXPeopleNamePickerViewController *)self delegate];
      [delegate2 namePickerController:self didPickContact:delegate];
    }
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  titleView = [(PXPeopleNamePickerViewController *)self titleView];
  tintColor = [titleView tintColor];
  [(PXPeopleNamePickerViewController *)self _changePlaceholderTextOfTextField:editingCopy toColor:tintColor];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = MEMORY[0x1E69DC888];
  editingCopy = editing;
  placeholderTextColor = [v4 placeholderTextColor];
  [(PXPeopleNamePickerViewController *)self _changePlaceholderTextOfTextField:editingCopy toColor:placeholderTextColor];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  resultsController = [(PXPeopleNamePickerViewController *)self resultsController];
  [resultsController updateItemsForSearchString:v11];
  if ([resultsController hasResults])
  {
    [(PXPeopleNamePickerViewController *)self _showResultsView];
  }

  else
  {
    [(PXPeopleNamePickerViewController *)self _hideResultsView];
  }

  delegate = [(PXPeopleNamePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate namePickerControllerWillChangeText:self];
  }

  return 1;
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  [editing resignFirstResponder];
  delegate = [(PXPeopleNamePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate namePickerControllerDidEndEditing:self];
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  delegate = [(PXPeopleNamePickerViewController *)self delegate];
  [delegate namePickerController:self didPickString:v6];

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  resultsController = [(PXPeopleNamePickerViewController *)self resultsController];
  [resultsController updateItemsForSearchString:&stru_1F1741150];
  if ([resultsController hasResults])
  {
    [(PXPeopleNamePickerViewController *)self _showResultsView];
  }

  else
  {
    [(PXPeopleNamePickerViewController *)self _hideResultsView];
  }

  delegate = [(PXPeopleNamePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate namePickerControllerDidStartEditing:self];
  }

  return 1;
}

- (void)_changePlaceholderTextOfTextField:(id)field toColor:(id)color
{
  colorCopy = color;
  fieldCopy = field;
  attributedPlaceholder = [fieldCopy attributedPlaceholder];
  v8 = [attributedPlaceholder mutableCopy];

  [v8 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{0, objc_msgSend(v8, "length")}];
  [fieldCopy setAttributedPlaceholder:v8];
}

- (void)_hideResultsView
{
  resultsController = [(PXPeopleNamePickerViewController *)self resultsController];
  presentedViewController = [(PXPeopleNamePickerViewController *)self presentedViewController];

  if (presentedViewController == resultsController)
  {
    [resultsController dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    resultsController2 = [(PXPeopleNamePickerViewController *)self resultsController];
    view = [resultsController2 view];

    [view setHidden:1];
  }
}

- (void)_showResultsView
{
  v22[4] = *MEMORY[0x1E69E9840];
  resultsController = [(PXPeopleNamePickerViewController *)self resultsController];
  view = [resultsController view];
  [view setHidden:0];
  view2 = [(PXPeopleNamePickerViewController *)self view];
  superview = [view superview];

  if (superview != view2)
  {
    [view2 addSubview:view];
  }

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  [(PXPeopleNamePickerViewController *)self yOffset];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v22[0] = v17;
  leadingAnchor = [view leadingAnchor];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[1] = v7;
  trailingAnchor = [view trailingAnchor];
  safeAreaLayoutGuide3 = [view2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[2] = v11;
  resultsViewBottomConstraint = [(PXPeopleNamePickerViewController *)self resultsViewBottomConstraint];
  v22[3] = resultsViewBottomConstraint;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v13];
}

- (double)_titleViewMaxWidthForEditing:(BOOL)editing
{
  navigationController = [(PXPeopleNamePickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [navigationBar frame];
  v7 = v6;
  if (!editing)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      currentRightView = [navigationBar currentRightView];
      [navigationBar currentLeftView];
    }

    else
    {
      currentRightView = [navigationBar currentLeftView];
      [navigationBar currentRightView];
    }
    v11 = ;
    v12 = 0.0;
    MaxX = 0.0;
    if (currentRightView)
    {
      [currentRightView frame];
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

- (void)_keyboardDidShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view = [(PXPeopleNamePickerViewController *)self view];
  [view convertRect:0 fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [view frame];
  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  v33 = CGRectIntersection(v32, v34);
  height = v33.size.height;
  v23 = [(PXPeopleNamePickerViewController *)self tabBarController:v33.origin.x];
  tabBar = [v23 tabBar];
  [tabBar frame];
  v26 = v25;

  [view safeAreaInsets];
  v28 = v26 - height + v27;
  resultsViewBottomConstraint = [(PXPeopleNamePickerViewController *)self resultsViewBottomConstraint];
  [resultsViewBottomConstraint setConstant:v28];
}

- (void)_keyboardWillHide:(id)hide
{
  resultsViewBottomConstraint = [(PXPeopleNamePickerViewController *)self resultsViewBottomConstraint];
  [resultsViewBottomConstraint setConstant:0.0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXPeopleNamePickerViewController;
  [(PXPeopleNamePickerViewController *)&v5 viewDidLayoutSubviews];
  titleView = [(PXPeopleNamePickerViewController *)self titleView];
  nameField = [titleView nameField];
  [nameField invalidateIntrinsicContentSize];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PXPeopleNamePickerViewController;
  [(PXPeopleNamePickerViewController *)&v10 viewDidLoad];
  resultsController = [(PXPeopleNamePickerViewController *)self resultsController];
  view = [resultsController view];
  bottomAnchor = [view bottomAnchor];
  view2 = [(PXPeopleNamePickerViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [(PXPeopleNamePickerViewController *)self setResultsViewBottomConstraint:v9];
}

- (PXPeopleNamePickerViewController)initWithPerson:(id)person orFace:(id)face
{
  v36[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  faceCopy = face;
  if (!(personCopy | faceCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:61 description:@"Both person and face are nil"];
  }

  v32.receiver = self;
  v32.super_class = PXPeopleNamePickerViewController;
  v9 = [(PXPeopleNamePickerViewController *)&v32 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [PXPeopleNamePickerTitleView alloc];
    if (personCopy)
    {
      v11 = [(PXPeopleNamePickerTitleView *)v10 initWithFrame:personCopy person:0.0, 0.0, 0.0, 35.0];
    }

    else
    {
      v11 = [(PXPeopleNamePickerTitleView *)v10 initWithFrame:faceCopy face:0.0, 0.0, 0.0, 35.0];
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
    tintColor = [(PXPeopleNamePickerTitleView *)v9->_titleView tintColor];
    v34[1] = tintColor;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    v23 = PXLocalizedStringFromTable(@"PXPeopleAddNameNoPlus", @"PhotosUICore");
    v24 = [v22 initWithString:v23 attributes:v21];

    nameField = [(PXPeopleNamePickerTitleView *)v9->_titleView nameField];
    [nameField setAttributedPlaceholder:v24];
    [nameField setDelegate:v9];
    v26 = [[PXPeopleNamePickerResultsTableViewController alloc] initWithStyle:0 person:personCopy face:faceCopy];
    resultsController = v9->_resultsController;
    v9->_resultsController = v26;

    tableView = [(PXPeopleNamePickerResultsTableViewController *)v9->_resultsController tableView];
    [tableView setDelegate:v9];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v9 selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
    [defaultCenter addObserver:v9 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  }

  return v9;
}

- (PXPeopleNamePickerViewController)initWithFace:(id)face
{
  faceCopy = face;
  if (!faceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"face"}];
  }

  v6 = [(PXPeopleNamePickerViewController *)self initWithPerson:0 orFace:faceCopy];

  return v6;
}

- (PXPeopleNamePickerViewController)initWithPerson:(id)person
{
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = [(PXPeopleNamePickerViewController *)self initWithPerson:personCopy orFace:0];

  return v6;
}

- (PXPeopleNamePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:45 description:@"invalid initializer"];

  return 0;
}

- (PXPeopleNamePickerViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:39 description:@"invalid initializer"];

  return 0;
}

- (PXPeopleNamePickerViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleNamePickerViewController.m" lineNumber:33 description:@"invalid initializer"];

  return 0;
}

@end