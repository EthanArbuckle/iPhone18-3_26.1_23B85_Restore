@interface PXUIPeopleBootstrapNamingViewController
- (PHPerson)person;
- (PXPeopleFlowViewControllerActionDelegate)actionDelegate;
- (PXUIPeopleBootstrapNamingViewController)initWithContext:(id)context;
- (id)_localizedTitleString;
- (unint64_t)type;
- (void)_captureStringSelectionIfNeeded;
- (void)_updateNavigationBarForCurrentTraitCollection;
- (void)namePickerController:(id)controller didPickContact:(id)contact;
- (void)namePickerController:(id)controller didPickPerson:(id)person;
- (void)namePickerController:(id)controller didPickString:(id)string;
- (void)namePickerControllerWillChangeText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willTransitionToNextInFlow;
@end

@implementation PXUIPeopleBootstrapNamingViewController

- (PXPeopleFlowViewControllerActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->actionDelegate);

  return WeakRetained;
}

- (void)namePickerControllerWillChangeText:(id)text
{
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:0];

  [(PXUIPeopleBootstrapNamingViewController *)self setTextDidChange:1];
}

- (void)namePickerController:(id)controller didPickString:(id)string
{
  stringCopy = string;
  v6 = [[PXPeopleNameSelection alloc] initWithName:stringCopy];
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v6];

  namePicker = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  titleView = [namePicker titleView];

  [titleView setLocalizedName:stringCopy];
  [titleView finishEditing];
}

- (void)namePickerController:(id)controller didPickContact:(id)contact
{
  contactCopy = contact;
  v5 = [[PXPeopleNameSelection alloc] initWithContact:contactCopy];
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v5];

  identifier = [contactCopy identifier];
  if (identifier)
  {
    namePicker = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
    titleView = [namePicker titleView];

    v9 = [MEMORY[0x1E6978980] px_localizedNameFromContact:contactCopy];
    [titleView setLocalizedName:v9];
    [titleView finishEditing];
  }

  actionDelegate = [(PXUIPeopleBootstrapNamingViewController *)self actionDelegate];
  [actionDelegate requestAdvanceToNextInFlow];
}

- (void)namePickerController:(id)controller didPickPerson:(id)person
{
  personCopy = person;
  v5 = [[PXPeopleNameSelection alloc] initWithSelectedPerson:personCopy];
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v5];

  if (personCopy)
  {
    namePicker = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
    titleView = [namePicker titleView];

    px_localizedName = [personCopy px_localizedName];
    [titleView setLocalizedName:px_localizedName];

    [titleView finishEditing];
  }

  actionDelegate = [(PXUIPeopleBootstrapNamingViewController *)self actionDelegate];
  [actionDelegate requestAdvanceToNextInFlow];
}

- (void)willTransitionToNextInFlow
{
  namePicker = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  titleView = [namePicker titleView];
  nameField = [titleView nameField];
  [nameField resignFirstResponder];

  [namePicker endNamingSession];
  [(PXUIPeopleBootstrapNamingViewController *)self _captureStringSelectionIfNeeded];
  selection = [(PXUIPeopleBootstrapNamingViewController *)self selection];
  bootstrapContext = [(PXUIPeopleBootstrapNamingViewController *)self bootstrapContext];
  [bootstrapContext setNameSelection:selection];
}

- (void)_captureStringSelectionIfNeeded
{
  if ([(PXUIPeopleBootstrapNamingViewController *)self textDidChange])
  {
    selection = [(PXUIPeopleBootstrapNamingViewController *)self selection];

    if (!selection)
    {
      namePicker = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
      titleView = [namePicker titleView];
      nameField = [titleView nameField];
      text = [nameField text];

      v7 = [[PXPeopleNameSelection alloc] initWithName:text];
      [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v7];
    }
  }
}

- (id)_localizedTitleString
{
  type = [(PXUIPeopleBootstrapNamingViewController *)self type];
  if (type > 2)
  {
    v3 = @"PXPeopleAddNameNoPlus";
  }

  else
  {
    v3 = off_1E772DBF0[type];
  }

  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");

  return v4;
}

- (void)_updateNavigationBarForCurrentTraitCollection
{
  _localizedTitleString = [(PXUIPeopleBootstrapNamingViewController *)self _localizedTitleString];
  [(PXUIPeopleBootstrapNamingViewController *)self setTitle:_localizedTitleString];
}

- (unint64_t)type
{
  bootstrapContext = [(PXUIPeopleBootstrapNamingViewController *)self bootstrapContext];
  bootstrapType = [bootstrapContext bootstrapType];

  return bootstrapType;
}

- (PHPerson)person
{
  bootstrapContext = [(PXUIPeopleBootstrapNamingViewController *)self bootstrapContext];
  sourcePerson = [bootstrapContext sourcePerson];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sourcePerson;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PXUIPeopleBootstrapNamingViewController;
  [(PXUIPeopleBootstrapNamingViewController *)&v4 traitCollectionDidChange:change];
  [(PXUIPeopleBootstrapNamingViewController *)self _updateNavigationBarForCurrentTraitCollection];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PXUIPeopleBootstrapNamingViewController;
  [(PXUIPeopleBootstrapNamingViewController *)&v7 viewDidAppear:appear];
  namePicker = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  titleView = [namePicker titleView];
  nameField = [titleView nameField];
  [nameField becomeFirstResponder];
}

- (void)viewDidLoad
{
  v63[11] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = PXUIPeopleBootstrapNamingViewController;
  [(PXUIPeopleBootstrapNamingViewController *)&v62 viewDidLoad];
  namePicker = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  [(PXUIPeopleBootstrapNamingViewController *)self addChildViewController:namePicker];
  [namePicker didMoveToParentViewController:self];
  titleView = [namePicker titleView];
  view = [(PXUIPeopleBootstrapNamingViewController *)self view];
  view2 = [namePicker view];
  [view addSubview:view2];
  [namePicker adjustForAccessoryViewYOffset:80.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = namePicker;
  resultsController = [namePicker resultsController];
  tableView = [resultsController tableView];
  backgroundColor = [tableView backgroundColor];
  [v6 setBackgroundColor:backgroundColor];

  [view addSubview:v6];
  selfCopy = self;
  [(PXUIPeopleBootstrapNamingViewController *)self setPickerBackgroundView:v6];
  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [view addSubview:v10];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  resultsController2 = [namePicker resultsController];
  tableView2 = [resultsController2 tableView];
  separatorColor = [tableView2 separatorColor];
  [v10 setBackgroundColor:separatorColor];

  [v6 addSubview:titleView];
  [titleView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [view leadingAnchor];
  trailingAnchor = [view trailingAnchor];
  px_screen = [(PXUIPeopleBootstrapNamingViewController *)self px_screen];
  [px_screen scale];
  v18 = 1.0 / v17;

  heightAnchor = [v6 heightAnchor];
  v57 = [heightAnchor constraintEqualToConstant:80.0];
  v63[0] = v57;
  centerYAnchor = [titleView centerYAnchor];
  centerYAnchor2 = [v6 centerYAnchor];
  v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v63[1] = v52;
  topAnchor = [v6 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v63[2] = v47;
  v56 = titleView;
  leadingAnchor2 = [titleView leadingAnchor];
  v48 = view;
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  leadingAnchor3 = [safeAreaLayoutGuide2 leadingAnchor];
  v41 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v63[3] = v41;
  v46 = v10;
  leadingAnchor4 = [v10 leadingAnchor];
  v53 = leadingAnchor;
  v39 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor];
  v63[4] = v39;
  leadingAnchor5 = [v6 leadingAnchor];
  v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor];
  v63[5] = v37;
  trailingAnchor2 = [titleView trailingAnchor];
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  trailingAnchor3 = [safeAreaLayoutGuide3 trailingAnchor];
  v32 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v63[6] = v32;
  trailingAnchor4 = [v10 trailingAnchor];
  v20 = trailingAnchor;
  v42 = trailingAnchor;
  v21 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor];
  v63[7] = v21;
  bottomAnchor = [v10 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v63[8] = v24;
  heightAnchor2 = [v10 heightAnchor];
  v26 = [heightAnchor2 constraintEqualToConstant:v18];
  v63[9] = v26;
  trailingAnchor5 = [v6 trailingAnchor];
  v28 = [trailingAnchor5 constraintEqualToAnchor:v20];
  v63[10] = v28;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:11];

  [MEMORY[0x1E696ACD8] activateConstraints:v36];
  resultsController3 = [v60 resultsController];
  tableView3 = [resultsController3 tableView];
  backgroundColor2 = [tableView3 backgroundColor];
  [v48 setBackgroundColor:backgroundColor2];

  [(PXUIPeopleBootstrapNamingViewController *)selfCopy _updateNavigationBarForCurrentTraitCollection];
}

- (PXUIPeopleBootstrapNamingViewController)initWithContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = PXUIPeopleBootstrapNamingViewController;
  v6 = [(PXUIPeopleBootstrapNamingViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bootstrapContext, context);
    face = [contextCopy face];
    v9 = [PXPeopleNamePickerViewController alloc];
    v10 = v9;
    if (face)
    {
      v11 = [(PXPeopleNamePickerViewController *)v9 initWithFace:face];
      namePicker = v7->_namePicker;
      v7->_namePicker = v11;
    }

    else
    {
      namePicker = [(PXUIPeopleBootstrapNamingViewController *)v7 person];
      v13 = [(PXPeopleNamePickerViewController *)v10 initWithPerson:namePicker];
      v14 = v7->_namePicker;
      v7->_namePicker = v13;
    }

    [(PXPeopleNamePickerViewController *)v7->_namePicker setDelegate:v7];
  }

  return v7;
}

@end