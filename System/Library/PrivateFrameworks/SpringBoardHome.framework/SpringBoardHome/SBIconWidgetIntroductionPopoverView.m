@interface SBIconWidgetIntroductionPopoverView
+ (CGSize)contentSize:(BOOL)a3;
- (SBIconWidgetIntroductionDelegate)delegate;
- (SBIconWidgetIntroductionPopoverView)initWithDelegate:(id)a3 vertical:(BOOL)a4;
- (void)_editButtonTapped:(id)a3;
- (void)_okButtonTapped:(id)a3;
- (void)_setUpViews:(BOOL)a3;
- (void)_updateForUserInterfaceStyle;
@end

@implementation SBIconWidgetIntroductionPopoverView

+ (CGSize)contentSize:(BOOL)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && a3)
  {
    v6 = 120.0;
    v7 = 320.0;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    v7 = dbl_1BEE88710[(v9 & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v6 = 74.0;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (SBIconWidgetIntroductionPopoverView)initWithDelegate:(id)a3 vertical:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v12.receiver = self;
  v12.super_class = SBIconWidgetIntroductionPopoverView;
  v8 = [(SBHPopoverView *)&v12 initWithArrowLocation:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    [(SBIconWidgetIntroductionPopoverView *)v9 _setUpViews:v4];
    [(SBIconWidgetIntroductionPopoverView *)v9 _updateForUserInterfaceStyle];
    v10 = v9;
  }

  return v9;
}

- (void)_setUpViews:(BOOL)a3
{
  v3 = a3;
  v124[4] = *MEMORY[0x1E69E9840];
  v4 = [(SBHPopoverView *)self backgroundView];
  [v4 setUserInteractionEnabled:1];
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = v6 & 0xFFFFFFFFFFFFFFFBLL;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 14.0;
  }

  else
  {
    v8 = 13.0;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 22.0;
  }

  else
  {
    v9 = 15.0;
  }

  if (v3)
  {
    v10 = 40.0;
  }

  else
  {
    v10 = 4.0;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v112 = [MEMORY[0x1E69DB878] systemFontOfSize:v8 weight:*MEMORY[0x1E69DB978]];
  v117 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [v4 addLayoutGuide:?];
  v110 = v3;
  v116 = v4;
  if (v3)
  {
    v98 = MEMORY[0x1E696ACD8];
    v13 = [v117 leadingAnchor];
    [v4 leadingAnchor];
    v107 = v113 = v13;
    v103 = [v13 constraintEqualToAnchor:?];
    v124[0] = v103;
    v14 = [v117 trailingAnchor];
    v15 = [v4 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v124[1] = v16;
    v17 = [v117 bottomAnchor];
    v18 = [v4 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:-10.0];
    v124[2] = v19;
    v20 = [v117 heightAnchor];
    v21 = [v20 constraintLessThanOrEqualToConstant:32.0];
    v124[3] = v21;
    v22 = v124;
  }

  else
  {
    v23 = dbl_1BEE88720[(v12 & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v98 = MEMORY[0x1E696ACD8];
    v113 = [v117 widthAnchor];
    v107 = [v113 constraintEqualToConstant:v23];
    v123[0] = v107;
    v24 = [v117 trailingAnchor];
    v14 = [v4 trailingAnchor];
    v103 = v24;
    v15 = [v24 constraintEqualToAnchor:v14];
    v123[1] = v15;
    v16 = [v117 centerYAnchor];
    v17 = [v4 centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v123[2] = v18;
    v19 = [v117 heightAnchor];
    v20 = [v4 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-25.0];
    v123[3] = v21;
    v22 = v123;
  }

  v25 = v7 == 1;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v98 activateConstraints:v26];

  v27 = dbl_1BEE88730[v25];
  v114 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB980]];
  v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v116 addSubview:v28];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v95 = MEMORY[0x1E696ACD8];
  v108 = [v28 centerXAnchor];
  v104 = [v117 centerXAnchor];
  v99 = [v108 constraintEqualToAnchor:v104];
  v122[0] = v99;
  v29 = [v28 centerYAnchor];
  v30 = [v117 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v122[1] = v31;
  v32 = [v28 widthAnchor];
  v33 = [v32 constraintEqualToConstant:1.0];
  v122[2] = v33;
  v34 = [v28 topAnchor];
  v35 = [v117 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v122[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:4];
  [v95 activateConstraints:v37];

  v109 = v28;
  objc_storeStrong(&self->_verticalDividerLine, v28);
  v38 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v39 = SBHBundle();
  v40 = [v39 localizedStringForKey:@"WIDGET_DISCOVERABILITY_OK" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [v38 setTitle:v40 forState:0];

  v41 = [v38 titleLabel];
  [v41 setFont:v114];

  v42 = [v38 titleLabel];
  [v42 setAdjustsFontSizeToFitWidth:1];

  [v38 setAccessibilityIdentifier:@"SBWidgetIntroductionButton-OK"];
  [v116 addSubview:v38];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v92 = MEMORY[0x1E696ACD8];
  v105 = [v38 trailingAnchor];
  v100 = [v117 trailingAnchor];
  v96 = [v105 constraintEqualToAnchor:v100 constant:-v10];
  v121[0] = v96;
  v43 = [v38 widthAnchor];
  v44 = [v43 constraintEqualToConstant:v27];
  v121[1] = v44;
  v45 = [v38 centerYAnchor];
  v46 = [v117 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v121[2] = v47;
  v48 = [v38 heightAnchor];
  v49 = [v117 heightAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  v121[3] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:4];
  [v92 activateConstraints:v51];

  [v38 addTarget:self action:sel__okButtonTapped_ forControlEvents:64];
  v106 = v38;
  objc_storeStrong(&self->_okButton, v38);
  v52 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v53 = [MEMORY[0x1E69DC938] currentDevice];
  v54 = [v53 userInterfaceIdiom];

  if ((v54 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v55 = @"WIDGET_DISCOVERABILITY_EDIT";
  }

  else
  {
    v55 = @"WIDGET_DISCOVERABILITY_UNDO";
  }

  v56 = SBHBundle();
  v57 = [v56 localizedStringForKey:v55 value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  v97 = v57;
  [v52 setTitle:v57 forState:0];
  v58 = [v52 titleLabel];
  [v58 setFont:v114];

  v59 = [v52 titleLabel];
  [v59 setAdjustsFontSizeToFitWidth:1];

  [v52 setAccessibilityIdentifier:@"SBWidgetIntroductionButton-Edit"];
  [v116 addSubview:v52];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  v88 = MEMORY[0x1E696ACD8];
  v101 = [v52 leadingAnchor];
  v93 = [v117 leadingAnchor];
  v90 = [v101 constraintEqualToAnchor:v93 constant:v10];
  v120[0] = v90;
  v60 = [v52 widthAnchor];
  v61 = [v60 constraintEqualToConstant:v27];
  v120[1] = v61;
  v62 = [v52 centerYAnchor];
  v63 = [v117 centerYAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  v120[2] = v64;
  v65 = [v52 heightAnchor];
  v66 = [v117 heightAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  v120[3] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:4];
  [v88 activateConstraints:v68];

  [v52 addTarget:self action:sel__editButtonTapped_ forControlEvents:64];
  v102 = v52;
  objc_storeStrong(&self->_editButton, v52);
  v69 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v70 = SBHBundle();
  v71 = [v70 localizedStringForKey:@"WIDGET_DISCOVERABILITY_DESCRIPTION" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [(UILabel *)v69 setText:v71];

  [(UILabel *)v69 setFont:v112];
  [(UILabel *)v69 setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)v69 setMinimumScaleFactor:0.6];
  [(UILabel *)v69 setNumberOfLines:3];
  [v116 addSubview:v69];
  [(UILabel *)v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v69 setTextAlignment:1];
  v87 = MEMORY[0x1E696ACD8];
  v72 = [(UILabel *)v69 leadingAnchor];
  v91 = [v116 leadingAnchor];
  v94 = v72;
  v73 = [v72 constraintEqualToAnchor:v9 constant:?];
  v89 = v73;
  if (v110)
  {
    v119[0] = v73;
    v74 = [(UILabel *)v69 trailingAnchor];
    [v116 trailingAnchor];
    v86 = v111 = v74;
    v75 = [v74 constraintEqualToAnchor:-v9 constant:?];
    v119[1] = v75;
    v76 = [(UILabel *)v69 centerXAnchor];
    v77 = [v116 centerXAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    v119[2] = v78;
    v79 = [(UILabel *)v69 bottomAnchor];
    v80 = [v117 topAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 constant:-15.0];
    v119[3] = v81;
    v82 = v119;
  }

  else
  {
    v118[0] = v73;
    v83 = [(UILabel *)v69 trailingAnchor];
    [v117 leadingAnchor];
    v86 = v111 = v83;
    v75 = [v83 constraintEqualToAnchor:-v10 constant:?];
    v118[1] = v75;
    v76 = [(UILabel *)v69 centerYAnchor];
    v77 = [v116 centerYAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    v118[2] = v78;
    v79 = [(UILabel *)v69 heightAnchor];
    v80 = [v116 heightAnchor];
    v81 = [v79 constraintLessThanOrEqualToAnchor:v80 constant:-8.0];
    v118[3] = v81;
    v82 = v118;
  }

  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
  [v87 activateConstraints:v84];

  textLabel = self->_textLabel;
  self->_textLabel = v69;
}

- (void)_updateForUserInterfaceStyle
{
  v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v3 = [(SBIconWidgetIntroductionPopoverView *)self textLabel];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = [v4 resolvedColorWithTraitCollection:v15];
  [v3 setTextColor:v5];

  [v3 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v6 = [(SBIconWidgetIntroductionPopoverView *)self verticalDividerLine];
  v7 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v8 = [v7 resolvedColorWithTraitCollection:v15];
  [v6 setBackgroundColor:v8];

  [v6 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v9 = [(SBIconWidgetIntroductionPopoverView *)self okButton];
  v10 = [MEMORY[0x1E69DC888] linkColor];
  v11 = [v10 resolvedColorWithTraitCollection:v15];
  [v9 setTintColor:v11];

  [v9 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v12 = [(SBIconWidgetIntroductionPopoverView *)self editButton];
  v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v14 = [v13 resolvedColorWithTraitCollection:v15];
  [v12 setTintColor:v14];

  [v12 _setDrawsAsBackdropOverlayWithBlendMode:2];
}

- (void)_okButtonTapped:(id)a3
{
  v3 = [(SBIconWidgetIntroductionPopoverView *)self delegate];
  [v3 acceptWidgetIntroduction];
}

- (void)_editButtonTapped:(id)a3
{
  v3 = [(SBIconWidgetIntroductionPopoverView *)self delegate];
  [v3 rejectWidgetIntroduction];
}

- (SBIconWidgetIntroductionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end