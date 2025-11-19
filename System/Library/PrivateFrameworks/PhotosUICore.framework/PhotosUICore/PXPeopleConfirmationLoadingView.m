@interface PXPeopleConfirmationLoadingView
- (PXPeopleConfirmationLoadingView)init;
- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)a3;
- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)a3 person:(id)a4;
- (void)_updateViewVisibilityForLoadingStateInitial;
- (void)_updateViewVisibilityForLoadingStateLoading;
- (void)_updateViewVisibilityForLoadingStateNoneFound;
- (void)layoutSubviews;
- (void)setLoadingState:(int64_t)a3;
@end

@implementation PXPeopleConfirmationLoadingView

- (void)_updateViewVisibilityForLoadingStateInitial
{
  v3 = [(PXPeopleConfirmationLoadingView *)self noneFoundLabel];
  [v3 setHidden:1];

  v4 = [(PXPeopleConfirmationLoadingView *)self contentLoadingView];
  [v4 setHidden:0];

  v5 = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [v5 setHidden:1];
}

- (void)_updateViewVisibilityForLoadingStateNoneFound
{
  v3 = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [v3 setHidden:0];

  v4 = [(PXPeopleConfirmationLoadingView *)self noneFoundLabel];
  [v4 setHidden:0];

  v5 = [(PXPeopleConfirmationLoadingView *)self contentLoadingView];
  [v5 setHidden:1];
}

- (void)_updateViewVisibilityForLoadingStateLoading
{
  v3 = [(PXPeopleConfirmationLoadingView *)self noneFoundLabel];
  [v3 setHidden:1];

  v4 = [(PXPeopleConfirmationLoadingView *)self contentLoadingView];
  [v4 setHidden:0];

  v5 = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [v5 setHidden:1];
}

- (void)setLoadingState:(int64_t)a3
{
  if (self->_loadingState != a3)
  {
    self->_loadingState = a3;
    if (a3)
    {
      if (a3 == 2)
      {
        [(PXPeopleConfirmationLoadingView *)self _updateViewVisibilityForLoadingStateNoneFound];
      }

      else if (a3 == 1)
      {
        [(PXPeopleConfirmationLoadingView *)self _updateViewVisibilityForLoadingStateLoading];
      }
    }

    else
    {
      [(PXPeopleConfirmationLoadingView *)self _updateViewVisibilityForLoadingStateInitial];
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXPeopleConfirmationLoadingView;
  [(PXPeopleConfirmationLoadingView *)&v5 layoutSubviews];
  v3 = [(PXPeopleConfirmationLoadingView *)self person];
  v4 = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [v4 setPerson:v3];
}

- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleConfirmationLoadingView.m" lineNumber:170 description:{@"%s is not available as initializer", "-[PXPeopleConfirmationLoadingView initWithFrame:]"}];

  abort();
}

- (PXPeopleConfirmationLoadingView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPeopleConfirmationLoadingView.m" lineNumber:166 description:{@"%s is not available as initializer", "-[PXPeopleConfirmationLoadingView init]"}];

  abort();
}

- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)a3 person:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v78[13] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v77.receiver = self;
  v77.super_class = PXPeopleConfirmationLoadingView;
  v12 = [(PXPeopleConfirmationLoadingView *)&v77 initWithFrame:x, y, width, height];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPeopleConfirmationLoadingView *)v12 setBackgroundColor:v13];

  v14 = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  v15 = PXLocalizedStringFromTable(@"PXPeopleConfirmationLoadingMessageText", @"PhotosUICore");
  [v14 setText:v15];

  v75 = v14;
  v16 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:v14];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setHidden:1];
  objc_storeStrong(&v12->_contentLoadingView, v16);
  [(PXPeopleConfirmationLoadingView *)v12 addSubview:v16];
  v12->_loadingState = 0;
  objc_storeStrong(&v12->_person, a4);
  v17 = [[PXPeopleScalableAvatarView alloc] initWithFrame:0.0, 0.0, 500.0, 500.0];
  [(PXPeopleScalableAvatarView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleScalableAvatarView *)v17 setPerson:v11];
  objc_storeStrong(&v12->_avatarView, v17);
  [(PXPeopleConfirmationLoadingView *)v12 addSubview:v17];
  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  noneFoundLabel = v12->_noneFoundLabel;
  v12->_noneFoundLabel = v18;

  [(UILabel *)v12->_noneFoundLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v12->_noneFoundLabel setNumberOfLines:0];
  [(UILabel *)v12->_noneFoundLabel setTextAlignment:1];
  v20 = v11;
  if (!v20)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    [v33 handleFailureInMethod:a2 object:v12 file:@"PXPeopleConfirmationLoadingView.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"person", v35}];
LABEL_10:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v35 = NSStringFromClass(v36);
    v37 = [v20 px_descriptionForAssertionMessage];
    [v33 handleFailureInMethod:a2 object:v12 file:@"PXPeopleConfirmationLoadingView.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"person", v35, v37}];

    goto LABEL_10;
  }

LABEL_4:
  [v20 px_localizedName];
  v73 = v76 = v11;
  v74 = v20;
  if ([v73 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v20, 0, @"PXPeopleConfirmationNoneFoundNamedMessage");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v50 = PXLocalizedStringForPersonOrPetAndVisibility(v20, 0, @"PXPeopleConfirmationNoneFoundUnnamedMessage");
  [(UILabel *)v12->_noneFoundLabel setText:v50];
  [(UILabel *)v12->_noneFoundLabel setHidden:1];
  [(PXPeopleConfirmationLoadingView *)v12 addSubview:v12->_noneFoundLabel];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)v12->_noneFoundLabel setFont:v21];

  [(UILabel *)v12->_noneFoundLabel setAdjustsFontForContentSizeCategory:1];
  v22 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [(PXPeopleConfirmationLoadingView *)v12 addLayoutGuide:v22];
  v56 = MEMORY[0x1E696ACD8];
  v72 = [v22 topAnchor];
  v71 = [(PXPeopleConfirmationLoadingView *)v12 topAnchor];
  [v72 constraintEqualToAnchor:v71];
  v70 = v69 = v22;
  v78[0] = v70;
  v68 = [v22 heightAnchor];
  v67 = [(PXPeopleConfirmationLoadingView *)v12 heightAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 multiplier:0.27];
  v78[1] = v66;
  v65 = [(PXPeopleScalableAvatarView *)v17 topAnchor];
  v64 = [v22 bottomAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v78[2] = v63;
  v62 = [(PXPeopleScalableAvatarView *)v17 heightAnchor];
  v61 = [(PXPeopleConfirmationLoadingView *)v12 heightAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 multiplier:0.25];
  v78[3] = v60;
  v59 = [(PXPeopleScalableAvatarView *)v17 widthAnchor];
  v58 = [(PXPeopleScalableAvatarView *)v17 heightAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v78[4] = v57;
  v55 = [(PXPeopleScalableAvatarView *)v17 centerXAnchor];
  v54 = [(PXPeopleConfirmationLoadingView *)v12 centerXAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v78[5] = v53;
  v51 = [(PXPeopleScalableAvatarView *)v17 bottomAnchor];
  v49 = [(UILabel *)v12->_noneFoundLabel firstBaselineAnchor];
  v47 = [v51 constraintEqualToAnchor:v49 constant:-28.0];
  v78[6] = v47;
  v46 = [(UILabel *)v12->_noneFoundLabel centerXAnchor];
  v45 = [(PXPeopleConfirmationLoadingView *)v12 centerXAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v78[7] = v44;
  v43 = [(UILabel *)v12->_noneFoundLabel widthAnchor];
  v42 = [v43 constraintEqualToConstant:325.0];
  v78[8] = v42;
  v41 = [v16 topAnchor];
  v40 = [(PXPeopleConfirmationLoadingView *)v12 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v78[9] = v39;
  v38 = [v16 trailingAnchor];
  v23 = [(PXPeopleConfirmationLoadingView *)v12 trailingAnchor];
  v24 = [v38 constraintEqualToAnchor:v23];
  v78[10] = v24;
  v25 = [v16 bottomAnchor];
  v26 = [(PXPeopleConfirmationLoadingView *)v12 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v78[11] = v27;
  [v16 leadingAnchor];
  v28 = v52 = v16;
  v29 = [(PXPeopleConfirmationLoadingView *)v12 leadingAnchor];
  [v28 constraintEqualToAnchor:v29];
  v30 = v48 = v17;
  v78[12] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:13];
  [v56 activateConstraints:v31];

  v11 = v76;
LABEL_7:

  return v12;
}

@end