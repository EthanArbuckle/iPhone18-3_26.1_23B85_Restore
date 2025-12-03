@interface SBHFocusModePopoverView
- (SBHFocusModePopoverView)initWithDelegate:(id)delegate iconListView:(id)view;
- (SBHFocusModePopoverViewDelegate)delegate;
- (SBIconListView)iconListView;
- (void)_closeButtonTapped:(id)tapped;
- (void)_editPageButtonTapped:(id)tapped;
- (void)_updateForUserInterfaceStyle;
@end

@implementation SBHFocusModePopoverView

- (SBHFocusModePopoverView)initWithDelegate:(id)delegate iconListView:(id)view
{
  v143[2] = *MEMORY[0x1E69E9840];
  obj = delegate;
  viewCopy = view;
  v140.receiver = self;
  v140.super_class = SBHFocusModePopoverView;
  v7 = [(SBHPopoverView *)&v140 initWithArrowLocation:1];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, obj);
    objc_storeWeak(&v8->_iconListView, viewCopy);
    v9 = [obj focusModePopoverViewActiveFocusMode:v8];
    name = [v9 name];
    [viewCopy addLayoutObserver:v8];
    backgroundView = [(SBHPopoverView *)v8 backgroundView];
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHFocusModePopoverView *)v8 addSubview:v11];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v13 = MEMORY[0x1E696AEC0];
    v14 = SBHBundle();
    v15 = [v14 localizedStringForKey:@"FOCUS_MODE_POPOVER_BODY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v128 = name;
    v16 = [v13 stringWithFormat:v15, name];
    [v12 setText:v16];

    [v12 setNumberOfLines:0];
    v17 = *MEMORY[0x1E69DB978];
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB978]];
    [v12 setFont:v18];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v8->_bodyLabel, v12);
    v135 = v12;
    [v11 addSubview:v12];
    v19 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [v19 addTarget:v8 action:sel__editPageButtonTapped_ forControlEvents:0x2000];
    v20 = SBHBundle();
    v21 = [v20 localizedStringForKey:@"EDIT_PAGES" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [v19 setTitle:v21 forState:0];

    titleLabel = [v19 titleLabel];
    v23 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v17];
    [titleLabel setFont:v23];

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v8->_editPageButton, v19);
    v136 = v11;
    v134 = v19;
    [v11 addSubview:v19];
    v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    [v24 setBackgroundColor:systemWhiteColor];

    [v24 _setCornerRadius:27.0];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHFocusModePopoverView *)v8 addSubview:v24];
    symbol = [v9 symbol];
    [MEMORY[0x1E69DCAD8] unspecifiedConfiguration];
    v126 = v127 = symbol;
    v125 = [MEMORY[0x1E69DCAB8] _systemImageNamed:symbol withConfiguration:?];
    v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v125];
    [v27 setContentMode:1];
    v129 = v9;
    color = [v9 color];
    [v27 setTintColor:?];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v133 = v24;
    v132 = v27;
    [v24 addSubview:v27];
    v28 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{0.0, 0.0, 40.0, 40.0}];
    [v28 addTarget:v8 action:sel__closeButtonTapped_ forControlEvents:64];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v121 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:10.0];
    v120 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:?];
    [plainButtonConfiguration setImage:?];
    v122 = plainButtonConfiguration;
    [v28 setConfiguration:plainButtonConfiguration];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v8->_closeButton, v28);
    v123 = v28;
    [(SBHFocusModePopoverView *)v8 addSubview:v28];
    [viewCopy addSubview:v8];
    [viewCopy bringSubviewToFront:v8];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v131 = viewCopy;
    v130 = v8;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v32 = MEMORY[0x1E696ACD8];
      widthAnchor = [(SBHFocusModePopoverView *)v8 widthAnchor];
      SBHGetScreenSpecification(3, v139);
      layoutProvider = widthAnchor;
      v34 = [widthAnchor constraintEqualToConstant:v139[0]];
      v143[0] = v34;
      centerXAnchor = [(SBHFocusModePopoverView *)v8 centerXAnchor];
      centerXAnchor2 = [viewCopy centerXAnchor];
      leadingAnchor = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v143[1] = leadingAnchor;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
      [v32 activateConstraints:v38];
    }

    else
    {
      layoutProvider = [viewCopy layoutProvider];
      v34 = [layoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
      centerXAnchor = [v34 rootFolderVisualConfiguration];
      [centerXAnchor dockBackgroundViewInsets];
      v40 = v39;
      if (BSFloatIsZero())
      {
        v40 = 10.0;
      }

      v116 = MEMORY[0x1E696ACD8];
      centerXAnchor2 = [(SBHFocusModePopoverView *)v8 leadingAnchor];
      leadingAnchor = [viewCopy leadingAnchor];
      v38 = [centerXAnchor2 constraintEqualToAnchor:leadingAnchor constant:v40];
      v142[0] = v38;
      trailingAnchor = [(SBHFocusModePopoverView *)v8 trailingAnchor];
      trailingAnchor2 = [viewCopy trailingAnchor];
      v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v40];
      v142[1] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
      [v116 activateConstraints:v44];

      v8 = v130;
      viewCopy = v131;
    }

    [obj focusModePopoverViewFolderScrollAccessoryFrame:v8];
    v46 = v45;
    [viewCopy frame];
    v48 = v47 - v46;
    v91 = MEMORY[0x1E696ACD8];
    bottomAnchor = [(SBHFocusModePopoverView *)v8 bottomAnchor];
    bottomAnchor2 = [viewCopy bottomAnchor];
    v115 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v48];
    v141[0] = v115;
    leadingAnchor2 = [v136 leadingAnchor];
    leadingAnchor3 = [backgroundView leadingAnchor];
    v112 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:24.0];
    v141[1] = v112;
    trailingAnchor3 = [v136 trailingAnchor];
    leadingAnchor4 = [v133 leadingAnchor];
    v109 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
    v141[2] = v109;
    topAnchor = [v136 topAnchor];
    topAnchor2 = [backgroundView topAnchor];
    v106 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
    v141[3] = v106;
    bottomAnchor3 = [v136 bottomAnchor];
    bottomAnchor4 = [backgroundView bottomAnchor];
    v103 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-18.0];
    v141[4] = v103;
    leadingAnchor5 = [v135 leadingAnchor];
    leadingAnchor6 = [v136 leadingAnchor];
    v100 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v141[5] = v100;
    trailingAnchor4 = [v135 trailingAnchor];
    trailingAnchor5 = [v136 trailingAnchor];
    v97 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v141[6] = v97;
    topAnchor3 = [v135 topAnchor];
    topAnchor4 = [v136 topAnchor];
    v94 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v141[7] = v94;
    leadingAnchor7 = [v134 leadingAnchor];
    leadingAnchor8 = [v136 leadingAnchor];
    v90 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v141[8] = v90;
    topAnchor5 = [v134 topAnchor];
    bottomAnchor5 = [v135 bottomAnchor];
    v87 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
    v141[9] = v87;
    bottomAnchor6 = [v134 bottomAnchor];
    bottomAnchor7 = [v136 bottomAnchor];
    v84 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v141[10] = v84;
    centerYAnchor = [v133 centerYAnchor];
    centerYAnchor2 = [v136 centerYAnchor];
    v81 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v141[11] = v81;
    trailingAnchor6 = [v133 trailingAnchor];
    trailingAnchor7 = [backgroundView trailingAnchor];
    v78 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-33.0];
    v141[12] = v78;
    widthAnchor2 = [v133 widthAnchor];
    heightAnchor = [v133 heightAnchor];
    v75 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
    v141[13] = v75;
    widthAnchor3 = [v133 widthAnchor];
    v73 = [widthAnchor3 constraintEqualToConstant:54.0];
    v141[14] = v73;
    centerXAnchor3 = [v132 centerXAnchor];
    centerXAnchor4 = [v133 centerXAnchor];
    v70 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v141[15] = v70;
    centerYAnchor3 = [v132 centerYAnchor];
    centerYAnchor4 = [v133 centerYAnchor];
    v67 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v141[16] = v67;
    widthAnchor4 = [v132 widthAnchor];
    heightAnchor2 = [v132 heightAnchor];
    v64 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
    v141[17] = v64;
    widthAnchor5 = [v132 widthAnchor];
    v62 = [widthAnchor5 constraintEqualToConstant:37.8];
    v141[18] = v62;
    topAnchor6 = [v123 topAnchor];
    topAnchor7 = [backgroundView topAnchor];
    v59 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v141[19] = v59;
    trailingAnchor8 = [v123 trailingAnchor];
    trailingAnchor9 = [backgroundView trailingAnchor];
    v51 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v141[20] = v51;
    widthAnchor6 = [v123 widthAnchor];
    heightAnchor3 = [v123 heightAnchor];
    v54 = [widthAnchor6 constraintEqualToAnchor:heightAnchor3];
    v141[21] = v54;
    widthAnchor7 = [v123 widthAnchor];
    v56 = [widthAnchor7 constraintEqualToConstant:40.0];
    v141[22] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:23];
    [v91 activateConstraints:v57];

    v8 = v130;
    viewCopy = v131;

    [(SBHFocusModePopoverView *)v130 _updateForUserInterfaceStyle];
  }

  return v8;
}

- (void)_closeButtonTapped:(id)tapped
{
  delegate = [(SBHFocusModePopoverView *)self delegate];
  iconListView = [(SBHFocusModePopoverView *)self iconListView];
  [delegate focusModePopoverView:self closeButtonTappedForIconListView:iconListView];
}

- (void)_editPageButtonTapped:(id)tapped
{
  delegate = [(SBHFocusModePopoverView *)self delegate];
  iconListView = [(SBHFocusModePopoverView *)self iconListView];
  [delegate focusModePopoverView:self editPageButtonTappedForIconListView:iconListView];
}

- (void)_updateForUserInterfaceStyle
{
  v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  titleLabel = [(SBHFocusModePopoverView *)self titleLabel];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v5 = [labelColor resolvedColorWithTraitCollection:v18];
  [titleLabel setTextColor:v5];

  [titleLabel _setDrawsAsBackdropOverlayWithBlendMode:2];
  bodyLabel = [(SBHFocusModePopoverView *)self bodyLabel];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v8 = [secondaryLabelColor resolvedColorWithTraitCollection:v18];
  [bodyLabel setTextColor:v8];

  [bodyLabel _setDrawsAsBackdropOverlayWithBlendMode:2];
  editPageButton = [(SBHFocusModePopoverView *)self editPageButton];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  v11 = [linkColor resolvedColorWithTraitCollection:v18];
  [editPageButton setTintColor:v11];

  [editPageButton _setDrawsAsBackdropOverlayWithBlendMode:2];
  imageView = [(SBHFocusModePopoverView *)self imageView];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v14 = [secondaryLabelColor2 resolvedColorWithTraitCollection:v18];
  [imageView setTintColor:v14];

  [imageView _setDrawsAsBackdropOverlayWithBlendMode:2];
  closeButton = [(SBHFocusModePopoverView *)self closeButton];
  secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17 = [secondaryLabelColor3 resolvedColorWithTraitCollection:v18];
  [closeButton setTintColor:v17];

  [closeButton _setDrawsAsBackdropOverlayWithBlendMode:2];
}

- (SBHFocusModePopoverViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

@end