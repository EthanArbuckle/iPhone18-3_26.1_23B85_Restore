@interface PXPeopleBootstrapSummaryViewController
- (CGSize)preferredSize;
- (PXPeopleBootstrapSummaryViewController)initWithContext:(id)context;
- (UILabel)descriptionLabel;
- (UILabel)promptLabel;
- (id)_localizedDescriptionString;
- (id)_localizedTitleString;
- (void)_updateNavigationBarForCurrentTraitCollection;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUI;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXPeopleBootstrapSummaryViewController

- (UILabel)descriptionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionLabel);

  return WeakRetained;
}

- (UILabel)promptLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_promptLabel);

  return WeakRetained;
}

- (CGSize)preferredSize
{
  +[PXPeopleBootstrap preferredBootstrapSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_localizedTitleString
{
  bootstrapContext = [(PXPeopleBootstrapSummaryViewController *)self bootstrapContext];
  localizedName = [bootstrapContext localizedName];
  if ([localizedName length])
  {
    v6 = localizedName;
    goto LABEL_16;
  }

  bootstrapType = [bootstrapContext bootstrapType];
  sourcePerson = [bootstrapContext sourcePerson];
  if (sourcePerson)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [sourcePerson px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:247 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:247 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v14}];
  }

LABEL_5:
  v6 = &stru_1F1741150;
  if (bootstrapType > 1)
  {
    if (bootstrapType == 3)
    {
      photoLibrary = [sourcePerson photoLibrary];
      v6 = PXLocalizedStringForPeoplePetsHomeTitle([photoLibrary px_peoplePetsHomeVisibility]);

      goto LABEL_15;
    }

    if (bootstrapType == 2)
    {
      v9 = @"PXPeopleBootstrapTypeAddNamingTitle";
      goto LABEL_13;
    }
  }

  else
  {
    if (!bootstrapType)
    {
      v9 = @"PXPeopleBootstrapTypeFavoriteNamingTitle";
      goto LABEL_13;
    }

    if (bootstrapType == 1)
    {
      v9 = @"PXPeopleBootstrapTypeNameNamingTitle";
LABEL_13:
      v6 = PXLocalizedStringFromTable(v9, @"PhotosUICore");
    }
  }

LABEL_15:

LABEL_16:

  return v6;
}

- (id)_localizedDescriptionString
{
  bootstrapContext = [(PXPeopleBootstrapSummaryViewController *)self bootstrapContext];
  sourcePerson = [bootstrapContext sourcePerson];
  if (sourcePerson)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [sourcePerson px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:210 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"bootstrapContext.sourcePerson", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:210 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"bootstrapContext.sourcePerson", v15}];
  }

LABEL_3:
  bootstrapType = [bootstrapContext bootstrapType];
  v7 = &stru_1F1741150;
  if (bootstrapType <= 1)
  {
    if (bootstrapType)
    {
      if (bootstrapType != 1)
      {
        goto LABEL_19;
      }

      localizedName = [bootstrapContext localizedName];
      if ([localizedName length])
      {
        v9 = @"PXPeopleBootstrapNameWithNameFinalPrompt";
        goto LABEL_15;
      }

      v11 = @"PXPeopleBootstrapNoNameFinalPrompt";
      goto LABEL_18;
    }

    v10 = @"PXPeopleBootstrapFavoriteFinalPrompt";
LABEL_12:
    v7 = PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, v10);
    goto LABEL_19;
  }

  if (bootstrapType != 3)
  {
    if (bootstrapType != 2)
    {
      goto LABEL_19;
    }

    v10 = @"PXPeopleBootstrapAddFinalPrompt";
    goto LABEL_12;
  }

  localizedName = [bootstrapContext localizedName];
  if ([localizedName length])
  {
    v9 = @"PXPeopleBootstrapOtherWithNameFinalPrompt";
LABEL_15:
    PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, v9);
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v11 = @"PXPeopleBootstrapOtherWithoutNameFinalPrompt";
LABEL_18:
  v7 = PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, v11);

LABEL_19:

  return v7;
}

- (void)_updateNavigationBarForCurrentTraitCollection
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __87__PXPeopleBootstrapSummaryViewController__updateNavigationBarForCurrentTraitCollection__block_invoke;
  v2[3] = &unk_1E774C648;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void __87__PXPeopleBootstrapSummaryViewController__updateNavigationBarForCurrentTraitCollection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _localizedTitleString];
  [*(a1 + 32) setTitle:v2];
}

- (void)updateUI
{
  _localizedPromptString = [(PXPeopleBootstrapSummaryViewController *)self _localizedPromptString];
  promptLabel = [(PXPeopleBootstrapSummaryViewController *)self promptLabel];
  [promptLabel setText:_localizedPromptString];

  _localizedDescriptionString = [(PXPeopleBootstrapSummaryViewController *)self _localizedDescriptionString];
  descriptionLabel = [(PXPeopleBootstrapSummaryViewController *)self descriptionLabel];
  [descriptionLabel setText:_localizedDescriptionString];

  [(PXPeopleBootstrapSummaryViewController *)self _updateNavigationBarForCurrentTraitCollection];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapSummaryViewController;
  [(PXPeopleBootstrapSummaryViewController *)&v4 viewWillAppear:appear];
  [(PXPeopleBootstrapSummaryViewController *)self updateUI];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapSummaryViewController;
  [(PXPeopleBootstrapSummaryViewController *)&v4 traitCollectionDidChange:change];
  [(PXPeopleBootstrapSummaryViewController *)self _updateNavigationBarForCurrentTraitCollection];
}

- (void)viewDidLoad
{
  v50[9] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PXPeopleBootstrapSummaryViewController;
  [(PXPeopleBootstrapSummaryViewController *)&v49 viewDidLoad];
  view = [(PXPeopleBootstrapSummaryViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [[PXPeopleScalableAvatarView alloc] initWithFrame:0.0, 0.0, 500.0, 500.0];
  [(PXPeopleScalableAvatarView *)v5 setUseLowMemoryMode:[(PXPeopleBootstrapSummaryViewController *)self useLowMemoryMode]];
  bootstrapContext = [(PXPeopleBootstrapSummaryViewController *)self bootstrapContext];
  face = [bootstrapContext face];
  v47 = bootstrapContext;
  v48 = face;
  if (face)
  {
    [(PXPeopleScalableAvatarView *)v5 setFace:face];
  }

  else
  {
    sourcePerson = [bootstrapContext sourcePerson];
    [(PXPeopleScalableAvatarView *)v5 setPerson:sourcePerson];
  }

  [(PXPeopleScalableAvatarView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v5];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v9 setTextAlignment:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setNumberOfLines:0];
  [v9 setAdjustsFontForContentSizeCategory:1];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v9 setFont:v10];

  objc_storeWeak(&self->_descriptionLabel, v9);
  [view addSubview:v9];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  centerYAnchor = [(PXPeopleScalableAvatarView *)v5 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  LODWORD(v15) = 1132068864;
  v42 = v14;
  [v14 setPriority:v15];
  v35 = MEMORY[0x1E696ACD8];
  topAnchor = [(PXPeopleScalableAvatarView *)v5 topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v44 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v50[0] = v44;
  centerXAnchor = [(PXPeopleScalableAvatarView *)v5 centerXAnchor];
  v43 = view;
  centerXAnchor2 = [view centerXAnchor];
  v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v50[1] = v39;
  v50[2] = v14;
  heightAnchor = [(PXPeopleScalableAvatarView *)v5 heightAnchor];
  widthAnchor = [(PXPeopleScalableAvatarView *)v5 widthAnchor];
  v36 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  v50[3] = v36;
  heightAnchor2 = [(PXPeopleScalableAvatarView *)v5 heightAnchor];
  heightAnchor3 = [view heightAnchor];
  v31 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.35];
  v50[4] = v31;
  firstBaselineAnchor = [v9 firstBaselineAnchor];
  bottomAnchor = [(PXPeopleScalableAvatarView *)v5 bottomAnchor];
  v27 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:95.0];
  v50[5] = v27;
  leadingAnchor = [v9 leadingAnchor];
  v16 = safeAreaLayoutGuide;
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v17 = v33 = self;
  v50[6] = v17;
  v30 = safeAreaLayoutGuide;
  trailingAnchor = [safeAreaLayoutGuide trailingAnchor];
  trailingAnchor2 = [v9 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v50[7] = v20;
  bottomAnchor2 = [v16 bottomAnchor];
  bottomAnchor3 = [v9 bottomAnchor];
  v23 = [bottomAnchor2 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  v50[8] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:9];
  [v35 activateConstraints:v24];

  [(PXPeopleBootstrapSummaryViewController *)v33 updateUI];
}

- (PXPeopleBootstrapSummaryViewController)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PXPeopleBootstrapSummaryViewController;
  v6 = [(PXPeopleBootstrapSummaryViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bootstrapContext, context);
    [(PXPeopleBootstrapSummaryViewController *)v7 setTitle:&stru_1F1741150];
  }

  return v7;
}

@end