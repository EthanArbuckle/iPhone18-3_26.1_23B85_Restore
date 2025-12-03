@interface PXPeopleConfirmationLoadingView
- (PXPeopleConfirmationLoadingView)init;
- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)frame;
- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)frame person:(id)person;
- (void)_updateViewVisibilityForLoadingStateInitial;
- (void)_updateViewVisibilityForLoadingStateLoading;
- (void)_updateViewVisibilityForLoadingStateNoneFound;
- (void)layoutSubviews;
- (void)setLoadingState:(int64_t)state;
@end

@implementation PXPeopleConfirmationLoadingView

- (void)_updateViewVisibilityForLoadingStateInitial
{
  noneFoundLabel = [(PXPeopleConfirmationLoadingView *)self noneFoundLabel];
  [noneFoundLabel setHidden:1];

  contentLoadingView = [(PXPeopleConfirmationLoadingView *)self contentLoadingView];
  [contentLoadingView setHidden:0];

  avatarView = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [avatarView setHidden:1];
}

- (void)_updateViewVisibilityForLoadingStateNoneFound
{
  avatarView = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [avatarView setHidden:0];

  noneFoundLabel = [(PXPeopleConfirmationLoadingView *)self noneFoundLabel];
  [noneFoundLabel setHidden:0];

  contentLoadingView = [(PXPeopleConfirmationLoadingView *)self contentLoadingView];
  [contentLoadingView setHidden:1];
}

- (void)_updateViewVisibilityForLoadingStateLoading
{
  noneFoundLabel = [(PXPeopleConfirmationLoadingView *)self noneFoundLabel];
  [noneFoundLabel setHidden:1];

  contentLoadingView = [(PXPeopleConfirmationLoadingView *)self contentLoadingView];
  [contentLoadingView setHidden:0];

  avatarView = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [avatarView setHidden:1];
}

- (void)setLoadingState:(int64_t)state
{
  if (self->_loadingState != state)
  {
    self->_loadingState = state;
    if (state)
    {
      if (state == 2)
      {
        [(PXPeopleConfirmationLoadingView *)self _updateViewVisibilityForLoadingStateNoneFound];
      }

      else if (state == 1)
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
  person = [(PXPeopleConfirmationLoadingView *)self person];
  avatarView = [(PXPeopleConfirmationLoadingView *)self avatarView];
  [avatarView setPerson:person];
}

- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleConfirmationLoadingView.m" lineNumber:170 description:{@"%s is not available as initializer", "-[PXPeopleConfirmationLoadingView initWithFrame:]"}];

  abort();
}

- (PXPeopleConfirmationLoadingView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleConfirmationLoadingView.m" lineNumber:166 description:{@"%s is not available as initializer", "-[PXPeopleConfirmationLoadingView init]"}];

  abort();
}

- (PXPeopleConfirmationLoadingView)initWithFrame:(CGRect)frame person:(id)person
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v78[13] = *MEMORY[0x1E69E9840];
  personCopy = person;
  v77.receiver = self;
  v77.super_class = PXPeopleConfirmationLoadingView;
  height = [(PXPeopleConfirmationLoadingView *)&v77 initWithFrame:x, y, width, height];
  if (!height)
  {
    goto LABEL_7;
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPeopleConfirmationLoadingView *)height setBackgroundColor:systemBackgroundColor];

  loadingConfiguration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  v15 = PXLocalizedStringFromTable(@"PXPeopleConfirmationLoadingMessageText", @"PhotosUICore");
  [loadingConfiguration setText:v15];

  v75 = loadingConfiguration;
  v16 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:loadingConfiguration];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setHidden:1];
  objc_storeStrong(&height->_contentLoadingView, v16);
  [(PXPeopleConfirmationLoadingView *)height addSubview:v16];
  height->_loadingState = 0;
  objc_storeStrong(&height->_person, person);
  v17 = [[PXPeopleScalableAvatarView alloc] initWithFrame:0.0, 0.0, 500.0, 500.0];
  [(PXPeopleScalableAvatarView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleScalableAvatarView *)v17 setPerson:personCopy];
  objc_storeStrong(&height->_avatarView, v17);
  [(PXPeopleConfirmationLoadingView *)height addSubview:v17];
  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  noneFoundLabel = height->_noneFoundLabel;
  height->_noneFoundLabel = v18;

  [(UILabel *)height->_noneFoundLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)height->_noneFoundLabel setNumberOfLines:0];
  [(UILabel *)height->_noneFoundLabel setTextAlignment:1];
  v20 = personCopy;
  if (!v20)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    [currentHandler handleFailureInMethod:a2 object:height file:@"PXPeopleConfirmationLoadingView.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"person", v35}];
LABEL_10:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v35 = NSStringFromClass(v36);
    px_descriptionForAssertionMessage = [v20 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:height file:@"PXPeopleConfirmationLoadingView.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"person", v35, px_descriptionForAssertionMessage}];

    goto LABEL_10;
  }

LABEL_4:
  [v20 px_localizedName];
  v73 = v76 = personCopy;
  v74 = v20;
  if ([v73 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v20, 0, @"PXPeopleConfirmationNoneFoundNamedMessage");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v50 = PXLocalizedStringForPersonOrPetAndVisibility(v20, 0, @"PXPeopleConfirmationNoneFoundUnnamedMessage");
  [(UILabel *)height->_noneFoundLabel setText:v50];
  [(UILabel *)height->_noneFoundLabel setHidden:1];
  [(PXPeopleConfirmationLoadingView *)height addSubview:height->_noneFoundLabel];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)height->_noneFoundLabel setFont:v21];

  [(UILabel *)height->_noneFoundLabel setAdjustsFontForContentSizeCategory:1];
  v22 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [(PXPeopleConfirmationLoadingView *)height addLayoutGuide:v22];
  v56 = MEMORY[0x1E696ACD8];
  topAnchor = [v22 topAnchor];
  topAnchor2 = [(PXPeopleConfirmationLoadingView *)height topAnchor];
  [topAnchor constraintEqualToAnchor:topAnchor2];
  v70 = v69 = v22;
  v78[0] = v70;
  heightAnchor = [v22 heightAnchor];
  heightAnchor2 = [(PXPeopleConfirmationLoadingView *)height heightAnchor];
  v66 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.27];
  v78[1] = v66;
  topAnchor3 = [(PXPeopleScalableAvatarView *)v17 topAnchor];
  bottomAnchor = [v22 bottomAnchor];
  v63 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v78[2] = v63;
  heightAnchor3 = [(PXPeopleScalableAvatarView *)v17 heightAnchor];
  heightAnchor4 = [(PXPeopleConfirmationLoadingView *)height heightAnchor];
  v60 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.25];
  v78[3] = v60;
  widthAnchor = [(PXPeopleScalableAvatarView *)v17 widthAnchor];
  heightAnchor5 = [(PXPeopleScalableAvatarView *)v17 heightAnchor];
  v57 = [widthAnchor constraintEqualToAnchor:heightAnchor5];
  v78[4] = v57;
  centerXAnchor = [(PXPeopleScalableAvatarView *)v17 centerXAnchor];
  centerXAnchor2 = [(PXPeopleConfirmationLoadingView *)height centerXAnchor];
  v53 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v78[5] = v53;
  bottomAnchor2 = [(PXPeopleScalableAvatarView *)v17 bottomAnchor];
  firstBaselineAnchor = [(UILabel *)height->_noneFoundLabel firstBaselineAnchor];
  v47 = [bottomAnchor2 constraintEqualToAnchor:firstBaselineAnchor constant:-28.0];
  v78[6] = v47;
  centerXAnchor3 = [(UILabel *)height->_noneFoundLabel centerXAnchor];
  centerXAnchor4 = [(PXPeopleConfirmationLoadingView *)height centerXAnchor];
  v44 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v78[7] = v44;
  widthAnchor2 = [(UILabel *)height->_noneFoundLabel widthAnchor];
  v42 = [widthAnchor2 constraintEqualToConstant:325.0];
  v78[8] = v42;
  topAnchor4 = [v16 topAnchor];
  topAnchor5 = [(PXPeopleConfirmationLoadingView *)height topAnchor];
  v39 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v78[9] = v39;
  trailingAnchor = [v16 trailingAnchor];
  trailingAnchor2 = [(PXPeopleConfirmationLoadingView *)height trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v78[10] = v24;
  bottomAnchor3 = [v16 bottomAnchor];
  bottomAnchor4 = [(PXPeopleConfirmationLoadingView *)height bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v78[11] = v27;
  [v16 leadingAnchor];
  v28 = v52 = v16;
  leadingAnchor = [(PXPeopleConfirmationLoadingView *)height leadingAnchor];
  [v28 constraintEqualToAnchor:leadingAnchor];
  v30 = v48 = v17;
  v78[12] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:13];
  [v56 activateConstraints:v31];

  personCopy = v76;
LABEL_7:

  return height;
}

@end