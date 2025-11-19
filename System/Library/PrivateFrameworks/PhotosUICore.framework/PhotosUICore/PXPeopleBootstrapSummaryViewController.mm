@interface PXPeopleBootstrapSummaryViewController
- (CGSize)preferredSize;
- (PXPeopleBootstrapSummaryViewController)initWithContext:(id)a3;
- (UILabel)descriptionLabel;
- (UILabel)promptLabel;
- (id)_localizedDescriptionString;
- (id)_localizedTitleString;
- (void)_updateNavigationBarForCurrentTraitCollection;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUI;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v4 = [(PXPeopleBootstrapSummaryViewController *)self bootstrapContext];
  v5 = [v4 localizedName];
  if ([v5 length])
  {
    v6 = v5;
    goto LABEL_16;
  }

  v7 = [v4 bootstrapType];
  v8 = [v4 sourcePerson];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:247 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:247 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v14}];
  }

LABEL_5:
  v6 = &stru_1F1741150;
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      v10 = [v8 photoLibrary];
      v6 = PXLocalizedStringForPeoplePetsHomeTitle([v10 px_peoplePetsHomeVisibility]);

      goto LABEL_15;
    }

    if (v7 == 2)
    {
      v9 = @"PXPeopleBootstrapTypeAddNamingTitle";
      goto LABEL_13;
    }
  }

  else
  {
    if (!v7)
    {
      v9 = @"PXPeopleBootstrapTypeFavoriteNamingTitle";
      goto LABEL_13;
    }

    if (v7 == 1)
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
  v4 = [(PXPeopleBootstrapSummaryViewController *)self bootstrapContext];
  v5 = [v4 sourcePerson];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v5 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:210 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"bootstrapContext.sourcePerson", v15, v17}];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapSummaryViewController.m" lineNumber:210 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"bootstrapContext.sourcePerson", v15}];
  }

LABEL_3:
  v6 = [v4 bootstrapType];
  v7 = &stru_1F1741150;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_19;
      }

      v8 = [v4 localizedName];
      if ([v8 length])
      {
        v9 = @"PXPeopleBootstrapNameWithNameFinalPrompt";
        goto LABEL_15;
      }

      v11 = @"PXPeopleBootstrapNoNameFinalPrompt";
      goto LABEL_18;
    }

    v10 = @"PXPeopleBootstrapFavoriteFinalPrompt";
LABEL_12:
    v7 = PXLocalizedStringForPersonOrPetAndVisibility(v5, 0, v10);
    goto LABEL_19;
  }

  if (v6 != 3)
  {
    if (v6 != 2)
    {
      goto LABEL_19;
    }

    v10 = @"PXPeopleBootstrapAddFinalPrompt";
    goto LABEL_12;
  }

  v8 = [v4 localizedName];
  if ([v8 length])
  {
    v9 = @"PXPeopleBootstrapOtherWithNameFinalPrompt";
LABEL_15:
    PXLocalizedStringForPersonOrPetAndVisibility(v5, 0, v9);
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v11 = @"PXPeopleBootstrapOtherWithoutNameFinalPrompt";
LABEL_18:
  v7 = PXLocalizedStringForPersonOrPetAndVisibility(v5, 0, v11);

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
  v3 = [(PXPeopleBootstrapSummaryViewController *)self _localizedPromptString];
  v4 = [(PXPeopleBootstrapSummaryViewController *)self promptLabel];
  [v4 setText:v3];

  v5 = [(PXPeopleBootstrapSummaryViewController *)self _localizedDescriptionString];
  v6 = [(PXPeopleBootstrapSummaryViewController *)self descriptionLabel];
  [v6 setText:v5];

  [(PXPeopleBootstrapSummaryViewController *)self _updateNavigationBarForCurrentTraitCollection];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapSummaryViewController;
  [(PXPeopleBootstrapSummaryViewController *)&v4 viewWillAppear:a3];
  [(PXPeopleBootstrapSummaryViewController *)self updateUI];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapSummaryViewController;
  [(PXPeopleBootstrapSummaryViewController *)&v4 traitCollectionDidChange:a3];
  [(PXPeopleBootstrapSummaryViewController *)self _updateNavigationBarForCurrentTraitCollection];
}

- (void)viewDidLoad
{
  v50[9] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PXPeopleBootstrapSummaryViewController;
  [(PXPeopleBootstrapSummaryViewController *)&v49 viewDidLoad];
  v3 = [(PXPeopleBootstrapSummaryViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [[PXPeopleScalableAvatarView alloc] initWithFrame:0.0, 0.0, 500.0, 500.0];
  [(PXPeopleScalableAvatarView *)v5 setUseLowMemoryMode:[(PXPeopleBootstrapSummaryViewController *)self useLowMemoryMode]];
  v6 = [(PXPeopleBootstrapSummaryViewController *)self bootstrapContext];
  v7 = [v6 face];
  v47 = v6;
  v48 = v7;
  if (v7)
  {
    [(PXPeopleScalableAvatarView *)v5 setFace:v7];
  }

  else
  {
    v8 = [v6 sourcePerson];
    [(PXPeopleScalableAvatarView *)v5 setPerson:v8];
  }

  [(PXPeopleScalableAvatarView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v9 setTextAlignment:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setNumberOfLines:0];
  [v9 setAdjustsFontForContentSizeCategory:1];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v9 setFont:v10];

  objc_storeWeak(&self->_descriptionLabel, v9);
  [v3 addSubview:v9];
  v11 = [v3 safeAreaLayoutGuide];
  v12 = [(PXPeopleScalableAvatarView *)v5 centerYAnchor];
  v13 = [v3 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  LODWORD(v15) = 1132068864;
  v42 = v14;
  [v14 setPriority:v15];
  v35 = MEMORY[0x1E696ACD8];
  v46 = [(PXPeopleScalableAvatarView *)v5 topAnchor];
  v45 = [v11 topAnchor];
  v44 = [v46 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v45 multiplier:1.0];
  v50[0] = v44;
  v41 = [(PXPeopleScalableAvatarView *)v5 centerXAnchor];
  v43 = v3;
  v40 = [v3 centerXAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v50[1] = v39;
  v50[2] = v14;
  v38 = [(PXPeopleScalableAvatarView *)v5 heightAnchor];
  v37 = [(PXPeopleScalableAvatarView *)v5 widthAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v50[3] = v36;
  v34 = [(PXPeopleScalableAvatarView *)v5 heightAnchor];
  v32 = [v3 heightAnchor];
  v31 = [v34 constraintEqualToAnchor:v32 multiplier:0.35];
  v50[4] = v31;
  v29 = [v9 firstBaselineAnchor];
  v28 = [(PXPeopleScalableAvatarView *)v5 bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:95.0];
  v50[5] = v27;
  v26 = [v9 leadingAnchor];
  v16 = v11;
  v25 = [v11 leadingAnchor];
  [v26 constraintEqualToSystemSpacingAfterAnchor:v25 multiplier:1.0];
  v17 = v33 = self;
  v50[6] = v17;
  v30 = v11;
  v18 = [v11 trailingAnchor];
  v19 = [v9 trailingAnchor];
  v20 = [v18 constraintEqualToSystemSpacingAfterAnchor:v19 multiplier:1.0];
  v50[7] = v20;
  v21 = [v16 bottomAnchor];
  v22 = [v9 bottomAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v22 multiplier:1.0];
  v50[8] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:9];
  [v35 activateConstraints:v24];

  [(PXPeopleBootstrapSummaryViewController *)v33 updateUI];
}

- (PXPeopleBootstrapSummaryViewController)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPeopleBootstrapSummaryViewController;
  v6 = [(PXPeopleBootstrapSummaryViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bootstrapContext, a3);
    [(PXPeopleBootstrapSummaryViewController *)v7 setTitle:&stru_1F1741150];
  }

  return v7;
}

@end