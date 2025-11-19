@interface SBHFocusModePopoverView
- (SBHFocusModePopoverView)initWithDelegate:(id)a3 iconListView:(id)a4;
- (SBHFocusModePopoverViewDelegate)delegate;
- (SBIconListView)iconListView;
- (void)_closeButtonTapped:(id)a3;
- (void)_editPageButtonTapped:(id)a3;
- (void)_updateForUserInterfaceStyle;
@end

@implementation SBHFocusModePopoverView

- (SBHFocusModePopoverView)initWithDelegate:(id)a3 iconListView:(id)a4
{
  v143[2] = *MEMORY[0x1E69E9840];
  obj = a3;
  v6 = a4;
  v140.receiver = self;
  v140.super_class = SBHFocusModePopoverView;
  v7 = [(SBHPopoverView *)&v140 initWithArrowLocation:1];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, obj);
    objc_storeWeak(&v8->_iconListView, v6);
    v9 = [obj focusModePopoverViewActiveFocusMode:v8];
    v10 = [v9 name];
    [v6 addLayoutObserver:v8];
    v137 = [(SBHPopoverView *)v8 backgroundView];
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHFocusModePopoverView *)v8 addSubview:v11];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v13 = MEMORY[0x1E696AEC0];
    v14 = SBHBundle();
    v15 = [v14 localizedStringForKey:@"FOCUS_MODE_POPOVER_BODY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v128 = v10;
    v16 = [v13 stringWithFormat:v15, v10];
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

    v22 = [v19 titleLabel];
    v23 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v17];
    [v22 setFont:v23];

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v8->_editPageButton, v19);
    v136 = v11;
    v134 = v19;
    [v11 addSubview:v19];
    v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v25 = [MEMORY[0x1E69DC888] systemWhiteColor];
    [v24 setBackgroundColor:v25];

    [v24 _setCornerRadius:27.0];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHFocusModePopoverView *)v8 addSubview:v24];
    v26 = [v9 symbol];
    [MEMORY[0x1E69DCAD8] unspecifiedConfiguration];
    v126 = v127 = v26;
    v125 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v26 withConfiguration:?];
    v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v125];
    [v27 setContentMode:1];
    v129 = v9;
    v124 = [v9 color];
    [v27 setTintColor:?];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v133 = v24;
    v132 = v27;
    [v24 addSubview:v27];
    v28 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{0.0, 0.0, 40.0, 40.0}];
    [v28 addTarget:v8 action:sel__closeButtonTapped_ forControlEvents:64];
    v29 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v121 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:10.0];
    v120 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:?];
    [v29 setImage:?];
    v122 = v29;
    [v28 setConfiguration:v29];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v8->_closeButton, v28);
    v123 = v28;
    [(SBHFocusModePopoverView *)v8 addSubview:v28];
    [v6 addSubview:v8];
    [v6 bringSubviewToFront:v8];
    v30 = [MEMORY[0x1E69DC938] currentDevice];
    v31 = [v30 userInterfaceIdiom];

    v131 = v6;
    v130 = v8;
    if ((v31 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v32 = MEMORY[0x1E696ACD8];
      v33 = [(SBHFocusModePopoverView *)v8 widthAnchor];
      SBHGetScreenSpecification(3, v139);
      v118 = v33;
      v34 = [v33 constraintEqualToConstant:v139[0]];
      v143[0] = v34;
      v35 = [(SBHFocusModePopoverView *)v8 centerXAnchor];
      v36 = [v6 centerXAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      v143[1] = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
      [v32 activateConstraints:v38];
    }

    else
    {
      v118 = [v6 layoutProvider];
      v34 = [v118 layoutForIconLocation:@"SBIconLocationRoot"];
      v35 = [v34 rootFolderVisualConfiguration];
      [v35 dockBackgroundViewInsets];
      v40 = v39;
      if (BSFloatIsZero())
      {
        v40 = 10.0;
      }

      v116 = MEMORY[0x1E696ACD8];
      v36 = [(SBHFocusModePopoverView *)v8 leadingAnchor];
      v37 = [v6 leadingAnchor];
      v38 = [v36 constraintEqualToAnchor:v37 constant:v40];
      v142[0] = v38;
      v41 = [(SBHFocusModePopoverView *)v8 trailingAnchor];
      v42 = [v6 trailingAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:-v40];
      v142[1] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
      [v116 activateConstraints:v44];

      v8 = v130;
      v6 = v131;
    }

    [obj focusModePopoverViewFolderScrollAccessoryFrame:v8];
    v46 = v45;
    [v6 frame];
    v48 = v47 - v46;
    v91 = MEMORY[0x1E696ACD8];
    v119 = [(SBHFocusModePopoverView *)v8 bottomAnchor];
    v117 = [v6 bottomAnchor];
    v115 = [v119 constraintEqualToAnchor:v117 constant:-v48];
    v141[0] = v115;
    v114 = [v136 leadingAnchor];
    v113 = [v137 leadingAnchor];
    v112 = [v114 constraintEqualToAnchor:v113 constant:24.0];
    v141[1] = v112;
    v111 = [v136 trailingAnchor];
    v110 = [v133 leadingAnchor];
    v109 = [v111 constraintEqualToAnchor:v110 constant:-8.0];
    v141[2] = v109;
    v108 = [v136 topAnchor];
    v107 = [v137 topAnchor];
    v106 = [v108 constraintEqualToAnchor:v107 constant:18.0];
    v141[3] = v106;
    v105 = [v136 bottomAnchor];
    v104 = [v137 bottomAnchor];
    v103 = [v105 constraintEqualToAnchor:v104 constant:-18.0];
    v141[4] = v103;
    v102 = [v135 leadingAnchor];
    v101 = [v136 leadingAnchor];
    v100 = [v102 constraintEqualToAnchor:v101];
    v141[5] = v100;
    v99 = [v135 trailingAnchor];
    v98 = [v136 trailingAnchor];
    v97 = [v99 constraintEqualToAnchor:v98];
    v141[6] = v97;
    v96 = [v135 topAnchor];
    v95 = [v136 topAnchor];
    v94 = [v96 constraintEqualToAnchor:v95];
    v141[7] = v94;
    v93 = [v134 leadingAnchor];
    v92 = [v136 leadingAnchor];
    v90 = [v93 constraintEqualToAnchor:v92];
    v141[8] = v90;
    v89 = [v134 topAnchor];
    v88 = [v135 bottomAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v141[9] = v87;
    v86 = [v134 bottomAnchor];
    v85 = [v136 bottomAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v141[10] = v84;
    v83 = [v133 centerYAnchor];
    v82 = [v136 centerYAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v141[11] = v81;
    v80 = [v133 trailingAnchor];
    v79 = [v137 trailingAnchor];
    v78 = [v80 constraintEqualToAnchor:v79 constant:-33.0];
    v141[12] = v78;
    v77 = [v133 widthAnchor];
    v76 = [v133 heightAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v141[13] = v75;
    v74 = [v133 widthAnchor];
    v73 = [v74 constraintEqualToConstant:54.0];
    v141[14] = v73;
    v72 = [v132 centerXAnchor];
    v71 = [v133 centerXAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v141[15] = v70;
    v69 = [v132 centerYAnchor];
    v68 = [v133 centerYAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v141[16] = v67;
    v66 = [v132 widthAnchor];
    v65 = [v132 heightAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v141[17] = v64;
    v63 = [v132 widthAnchor];
    v62 = [v63 constraintEqualToConstant:37.8];
    v141[18] = v62;
    v61 = [v123 topAnchor];
    v60 = [v137 topAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v141[19] = v59;
    v49 = [v123 trailingAnchor];
    v50 = [v137 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v141[20] = v51;
    v52 = [v123 widthAnchor];
    v53 = [v123 heightAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v141[21] = v54;
    v55 = [v123 widthAnchor];
    v56 = [v55 constraintEqualToConstant:40.0];
    v141[22] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:23];
    [v91 activateConstraints:v57];

    v8 = v130;
    v6 = v131;

    [(SBHFocusModePopoverView *)v130 _updateForUserInterfaceStyle];
  }

  return v8;
}

- (void)_closeButtonTapped:(id)a3
{
  v5 = [(SBHFocusModePopoverView *)self delegate];
  v4 = [(SBHFocusModePopoverView *)self iconListView];
  [v5 focusModePopoverView:self closeButtonTappedForIconListView:v4];
}

- (void)_editPageButtonTapped:(id)a3
{
  v5 = [(SBHFocusModePopoverView *)self delegate];
  v4 = [(SBHFocusModePopoverView *)self iconListView];
  [v5 focusModePopoverView:self editPageButtonTappedForIconListView:v4];
}

- (void)_updateForUserInterfaceStyle
{
  v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v3 = [(SBHFocusModePopoverView *)self titleLabel];
  v4 = [MEMORY[0x1E69DC888] labelColor];
  v5 = [v4 resolvedColorWithTraitCollection:v18];
  [v3 setTextColor:v5];

  [v3 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v6 = [(SBHFocusModePopoverView *)self bodyLabel];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v8 = [v7 resolvedColorWithTraitCollection:v18];
  [v6 setTextColor:v8];

  [v6 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v9 = [(SBHFocusModePopoverView *)self editPageButton];
  v10 = [MEMORY[0x1E69DC888] linkColor];
  v11 = [v10 resolvedColorWithTraitCollection:v18];
  [v9 setTintColor:v11];

  [v9 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v12 = [(SBHFocusModePopoverView *)self imageView];
  v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v14 = [v13 resolvedColorWithTraitCollection:v18];
  [v12 setTintColor:v14];

  [v12 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v15 = [(SBHFocusModePopoverView *)self closeButton];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17 = [v16 resolvedColorWithTraitCollection:v18];
  [v15 setTintColor:v17];

  [v15 _setDrawsAsBackdropOverlayWithBlendMode:2];
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