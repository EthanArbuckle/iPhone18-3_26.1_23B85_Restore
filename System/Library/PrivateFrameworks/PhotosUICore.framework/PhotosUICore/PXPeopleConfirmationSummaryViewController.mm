@interface PXPeopleConfirmationSummaryViewController
- (PXPeopleConfirmationSummaryViewController)initWithDelegate:(id)a3;
- (PXPeopleSummaryDelegate)delegate;
- (void)_updateDynamicTypeSpacing;
- (void)dealloc;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXPeopleConfirmationSummaryViewController

- (PXPeopleSummaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDynamicTypeSpacing
{
  v3 = [(PXPeopleConfirmationSummaryViewController *)self summaryLabel];
  v7 = [v3 font];

  [v7 _scaledValueForValue:28.0];
  *&v4 = v4;
  v5 = ceilf(*&v4);
  v6 = [(PXPeopleConfirmationSummaryViewController *)self labelSpacingConstraint];
  [v6 setConstant:v5];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 displayScale];
    v9 = v8;
  }

  else
  {
    v10 = [(PXPeopleConfirmationSummaryViewController *)self px_screen];
    [v10 scale];
    v9 = v11;
  }

  v12 = [(PXPeopleConfirmationSummaryViewController *)self traitCollection];
  [v12 displayScale];
  v14 = v13;

  if (v14 != v9)
  {
    [(PXPeopleConfirmationSummaryViewController *)self _updateDynamicTypeSpacing];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXPeopleConfirmationSummaryViewController;
  [(PXPeopleConfirmationSummaryViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(PXPeopleConfirmationSummaryViewController *)self person];
  v4 = [(PXPeopleConfirmationSummaryViewController *)self avatarView];
  [v4 setPerson:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PXPeopleConfirmationSummaryViewController;
  [(PXPeopleConfirmationSummaryViewController *)&v8 viewWillAppear:a3];
  v4 = [(PXPeopleConfirmationSummaryViewController *)self delegate];
  [v4 personForSummaryViewController:self];
  v5 = [objc_claimAutoreleasedReturnValue() px_longStyleLocalizedName];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  [v4 userConfirmedCountForSummaryViewController:self];
  [v4 autoConfirmedCountForSummaryViewController:self];
  v7 = [v6 length];
  [(PXPeopleConfirmationSummaryViewController *)self summaryLabel];
  objc_claimAutoreleasedReturnValue();
  if (v7)
  {
    PXLocalizedStringFromTable(@"PXPeopleConfirmSummaryTotalNamedMessage", @"PhotosUICore");
  }

  else
  {
    PXLocalizedStringFromTable(@"PXPeopleConfirmSummaryTotalUnnamedMessage", @"PhotosUICore");
  }

  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = PXPeopleConfirmationSummaryViewController;
  [(PXPeopleConfirmationSummaryViewController *)&v27 viewDidLoad];
  v3 = [(PXPeopleConfirmationSummaryViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v6 = [[PXPeopleScalableAvatarView alloc] initWithFrame:0.0, 0.0, 500.0, 500.0];
  avatarView = self->_avatarView;
  self->_avatarView = v6;
  v8 = v6;

  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(UILabel *)v9 setNumberOfLines:2];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)v9 setFont:v10];

  [(UILabel *)v9 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v9 setTextAlignment:1];
  summaryLabel = self->_summaryLabel;
  self->_summaryLabel = v9;
  v12 = v9;

  [v5 addSubview:v8];
  [v5 addSubview:v12];
  [v3 addSubview:v5];
  [(PXPeopleScalableAvatarView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = _NSDictionaryOfVariableBindings(&cfstr_AvatarSummaryl.isa, v8, v12, v5, 0);
  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[summaryLabel]-|" options:512 metrics:0 views:v13];
  [v5 addConstraints:v14];

  v15 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[summaryLabel]-|" options:1024 metrics:0 views:v13];
  [v5 addConstraints:v15];

  v16 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[containerView]|" options:1024 metrics:0 views:v13];
  [v3 addConstraints:v16];

  v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:7 relatedBy:0 toItem:v8 attribute:8 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v17];

  v18 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:8 relatedBy:0 toItem:v3 attribute:8 multiplier:0.25 constant:0.0];
  [v3 addConstraint:v18];

  v19 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v19];

  v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:1.0 constant:0.0];
  [v5 addConstraint:v20];

  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v12 attribute:11 relatedBy:0 toItem:v8 attribute:4 multiplier:1.0 constant:28.0];
  [v5 addConstraint:v21];
  labelSpacingConstraint = self->_labelSpacingConstraint;
  self->_labelSpacingConstraint = v21;
  v23 = v21;

  v24 = [(PXPeopleConfirmationSummaryViewController *)self delegate];
  v25 = [v24 personForSummaryViewController:self];

  [(PXPeopleScalableAvatarView *)v8 setPerson:v25];
  person = self->_person;
  self->_person = v25;

  [(PXPeopleConfirmationSummaryViewController *)self _updateDynamicTypeSpacing];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXPeopleConfirmationSummaryViewController;
  [(PXPeopleConfirmationSummaryViewController *)&v4 dealloc];
}

- (PXPeopleConfirmationSummaryViewController)initWithDelegate:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PXPeopleConfirmationSummaryViewController;
  v6 = [(PXPeopleConfirmationSummaryViewController *)&v12 init];
  if (v6)
  {
    if (!v5)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v6 file:@"PXPeopleConfirmationSummaryViewController.m" lineNumber:43 description:@"summary delegate must not be nil"];
    }

    objc_storeWeak(&v6->_delegate, v5);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v13[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9 = [(PXPeopleConfirmationSummaryViewController *)v6 registerForTraitChanges:v8 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v6;
}

@end