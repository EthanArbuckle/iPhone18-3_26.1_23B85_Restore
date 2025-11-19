@interface PXUIPeopleBootstrapNamingViewController
- (PHPerson)person;
- (PXPeopleFlowViewControllerActionDelegate)actionDelegate;
- (PXUIPeopleBootstrapNamingViewController)initWithContext:(id)a3;
- (id)_localizedTitleString;
- (unint64_t)type;
- (void)_captureStringSelectionIfNeeded;
- (void)_updateNavigationBarForCurrentTraitCollection;
- (void)namePickerController:(id)a3 didPickContact:(id)a4;
- (void)namePickerController:(id)a3 didPickPerson:(id)a4;
- (void)namePickerController:(id)a3 didPickString:(id)a4;
- (void)namePickerControllerWillChangeText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willTransitionToNextInFlow;
@end

@implementation PXUIPeopleBootstrapNamingViewController

- (PXPeopleFlowViewControllerActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->actionDelegate);

  return WeakRetained;
}

- (void)namePickerControllerWillChangeText:(id)a3
{
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:0];

  [(PXUIPeopleBootstrapNamingViewController *)self setTextDidChange:1];
}

- (void)namePickerController:(id)a3 didPickString:(id)a4
{
  v5 = a4;
  v6 = [[PXPeopleNameSelection alloc] initWithName:v5];
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v6];

  v7 = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  v8 = [v7 titleView];

  [v8 setLocalizedName:v5];
  [v8 finishEditing];
}

- (void)namePickerController:(id)a3 didPickContact:(id)a4
{
  v11 = a4;
  v5 = [[PXPeopleNameSelection alloc] initWithContact:v11];
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v5];

  v6 = [v11 identifier];
  if (v6)
  {
    v7 = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
    v8 = [v7 titleView];

    v9 = [MEMORY[0x1E6978980] px_localizedNameFromContact:v11];
    [v8 setLocalizedName:v9];
    [v8 finishEditing];
  }

  v10 = [(PXUIPeopleBootstrapNamingViewController *)self actionDelegate];
  [v10 requestAdvanceToNextInFlow];
}

- (void)namePickerController:(id)a3 didPickPerson:(id)a4
{
  v10 = a4;
  v5 = [[PXPeopleNameSelection alloc] initWithSelectedPerson:v10];
  [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v5];

  if (v10)
  {
    v6 = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
    v7 = [v6 titleView];

    v8 = [v10 px_localizedName];
    [v7 setLocalizedName:v8];

    [v7 finishEditing];
  }

  v9 = [(PXUIPeopleBootstrapNamingViewController *)self actionDelegate];
  [v9 requestAdvanceToNextInFlow];
}

- (void)willTransitionToNextInFlow
{
  v7 = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  v3 = [v7 titleView];
  v4 = [v3 nameField];
  [v4 resignFirstResponder];

  [v7 endNamingSession];
  [(PXUIPeopleBootstrapNamingViewController *)self _captureStringSelectionIfNeeded];
  v5 = [(PXUIPeopleBootstrapNamingViewController *)self selection];
  v6 = [(PXUIPeopleBootstrapNamingViewController *)self bootstrapContext];
  [v6 setNameSelection:v5];
}

- (void)_captureStringSelectionIfNeeded
{
  if ([(PXUIPeopleBootstrapNamingViewController *)self textDidChange])
  {
    v3 = [(PXUIPeopleBootstrapNamingViewController *)self selection];

    if (!v3)
    {
      v8 = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
      v4 = [v8 titleView];
      v5 = [v4 nameField];
      v6 = [v5 text];

      v7 = [[PXPeopleNameSelection alloc] initWithName:v6];
      [(PXUIPeopleBootstrapNamingViewController *)self setSelection:v7];
    }
  }
}

- (id)_localizedTitleString
{
  v2 = [(PXUIPeopleBootstrapNamingViewController *)self type];
  if (v2 > 2)
  {
    v3 = @"PXPeopleAddNameNoPlus";
  }

  else
  {
    v3 = off_1E772DBF0[v2];
  }

  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");

  return v4;
}

- (void)_updateNavigationBarForCurrentTraitCollection
{
  v3 = [(PXUIPeopleBootstrapNamingViewController *)self _localizedTitleString];
  [(PXUIPeopleBootstrapNamingViewController *)self setTitle:v3];
}

- (unint64_t)type
{
  v2 = [(PXUIPeopleBootstrapNamingViewController *)self bootstrapContext];
  v3 = [v2 bootstrapType];

  return v3;
}

- (PHPerson)person
{
  v2 = [(PXUIPeopleBootstrapNamingViewController *)self bootstrapContext];
  v3 = [v2 sourcePerson];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXUIPeopleBootstrapNamingViewController;
  [(PXUIPeopleBootstrapNamingViewController *)&v4 traitCollectionDidChange:a3];
  [(PXUIPeopleBootstrapNamingViewController *)self _updateNavigationBarForCurrentTraitCollection];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PXUIPeopleBootstrapNamingViewController;
  [(PXUIPeopleBootstrapNamingViewController *)&v7 viewDidAppear:a3];
  v4 = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  v5 = [v4 titleView];
  v6 = [v5 nameField];
  [v6 becomeFirstResponder];
}

- (void)viewDidLoad
{
  v63[11] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = PXUIPeopleBootstrapNamingViewController;
  [(PXUIPeopleBootstrapNamingViewController *)&v62 viewDidLoad];
  v3 = [(PXUIPeopleBootstrapNamingViewController *)self namePicker];
  [(PXUIPeopleBootstrapNamingViewController *)self addChildViewController:v3];
  [v3 didMoveToParentViewController:self];
  v4 = [v3 titleView];
  v5 = [(PXUIPeopleBootstrapNamingViewController *)self view];
  v61 = [v3 view];
  [v5 addSubview:v61];
  [v3 adjustForAccessoryViewYOffset:80.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = v3;
  v7 = [v3 resultsController];
  v8 = [v7 tableView];
  v9 = [v8 backgroundColor];
  [v6 setBackgroundColor:v9];

  [v5 addSubview:v6];
  v59 = self;
  [(PXUIPeopleBootstrapNamingViewController *)self setPickerBackgroundView:v6];
  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v5 addSubview:v10];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v3 resultsController];
  v12 = [v11 tableView];
  v13 = [v12 separatorColor];
  [v10 setBackgroundColor:v13];

  [v6 addSubview:v4];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v5 leadingAnchor];
  v15 = [v5 trailingAnchor];
  v16 = [(PXUIPeopleBootstrapNamingViewController *)self px_screen];
  [v16 scale];
  v18 = 1.0 / v17;

  v58 = [v6 heightAnchor];
  v57 = [v58 constraintEqualToConstant:80.0];
  v63[0] = v57;
  v55 = [v4 centerYAnchor];
  v54 = [v6 centerYAnchor];
  v52 = [v55 constraintEqualToAnchor:v54];
  v63[1] = v52;
  v50 = [v6 topAnchor];
  v51 = [v5 safeAreaLayoutGuide];
  v49 = [v51 topAnchor];
  v47 = [v50 constraintEqualToAnchor:v49];
  v63[2] = v47;
  v56 = v4;
  v44 = [v4 leadingAnchor];
  v48 = v5;
  v45 = [v5 safeAreaLayoutGuide];
  v43 = [v45 leadingAnchor];
  v41 = [v44 constraintEqualToAnchor:v43];
  v63[3] = v41;
  v46 = v10;
  v40 = [v10 leadingAnchor];
  v53 = v14;
  v39 = [v40 constraintEqualToAnchor:v14];
  v63[4] = v39;
  v38 = [v6 leadingAnchor];
  v37 = [v38 constraintEqualToAnchor:v14];
  v63[5] = v37;
  v34 = [v4 trailingAnchor];
  v35 = [v5 safeAreaLayoutGuide];
  v33 = [v35 trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v63[6] = v32;
  v19 = [v10 trailingAnchor];
  v20 = v15;
  v42 = v15;
  v21 = [v19 constraintEqualToAnchor:v15];
  v63[7] = v21;
  v22 = [v10 bottomAnchor];
  v23 = [v6 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v63[8] = v24;
  v25 = [v10 heightAnchor];
  v26 = [v25 constraintEqualToConstant:v18];
  v63[9] = v26;
  v27 = [v6 trailingAnchor];
  v28 = [v27 constraintEqualToAnchor:v20];
  v63[10] = v28;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:11];

  [MEMORY[0x1E696ACD8] activateConstraints:v36];
  v29 = [v60 resultsController];
  v30 = [v29 tableView];
  v31 = [v30 backgroundColor];
  [v48 setBackgroundColor:v31];

  [(PXUIPeopleBootstrapNamingViewController *)v59 _updateNavigationBarForCurrentTraitCollection];
}

- (PXUIPeopleBootstrapNamingViewController)initWithContext:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PXUIPeopleBootstrapNamingViewController;
  v6 = [(PXUIPeopleBootstrapNamingViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bootstrapContext, a3);
    v8 = [v5 face];
    v9 = [PXPeopleNamePickerViewController alloc];
    v10 = v9;
    if (v8)
    {
      v11 = [(PXPeopleNamePickerViewController *)v9 initWithFace:v8];
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