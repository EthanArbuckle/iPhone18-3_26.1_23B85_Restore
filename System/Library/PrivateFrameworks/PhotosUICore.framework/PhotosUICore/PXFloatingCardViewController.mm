@interface PXFloatingCardViewController
- (CGRect)grabAreaBounds;
- (CGSize)size;
- (PXFloatingCardViewController)initWithCoder:(id)a3;
- (PXFloatingCardViewController)initWithContentViewController:(id)a3;
- (PXFloatingCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXFloatingCardViewControllerDelegate)delegate;
- (UIViewController)contentViewController;
- (void)_dismissTapped;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)removeFromParentViewController;
- (void)setSize:(CGSize)a3;
@end

@implementation PXFloatingCardViewController

- (UIViewController)contentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);

  return WeakRetained;
}

- (PXFloatingCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  v5 = [(PXFloatingCardViewController *)self _systemFontWithTextStyle:3 weight:*MEMORY[0x1E69DB980]];
  v4 = [(PXFloatingCardViewController *)self headerLabel];
  [v4 setFont:v5];
}

- (CGRect)grabAreaBounds
{
  v3 = [(PXFloatingCardViewController *)self backgroundView];
  [v3 frame];
  v4 = CGRectGetMaxY(v11) + -60.0;
  v5 = [(PXFloatingCardViewController *)self backgroundView];
  [v5 bounds];
  Width = CGRectGetWidth(v12);

  v7 = 60.0;
  v8 = 0.0;
  v9 = v4;
  v10 = Width;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_size.width != a3.width || self->_size.height != a3.height)
  {
    self->_size = a3;
    v7 = [(PXFloatingCardViewController *)self view];
    [v7 frame];
    v9 = v8;
    v11 = v10;

    v12 = [(PXFloatingCardViewController *)self view];
    [v12 setFrame:{v9, v11, width, height}];
  }
}

- (PXFloatingCardViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXFloatingCardViewController.m" lineNumber:197 description:{@"%s is not available as initializer", "-[PXFloatingCardViewController initWithCoder:]"}];

  abort();
}

- (PXFloatingCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXFloatingCardViewController.m" lineNumber:193 description:{@"%s is not available as initializer", "-[PXFloatingCardViewController initWithNibName:bundle:]"}];

  abort();
}

- (void)_dismissTapped
{
  v3 = [(PXFloatingCardViewController *)self delegate];
  [v3 floatingCardViewControllerDismissTapped:self];
}

- (void)removeFromParentViewController
{
  v3 = [(PXFloatingCardViewController *)self contentViewController];
  [v3 willMoveToParentViewController:0];

  v4 = [(PXFloatingCardViewController *)self contentViewController];
  v5 = [v4 view];
  [v5 removeFromSuperview];

  v6 = [(PXFloatingCardViewController *)self contentViewController];
  [v6 removeFromParentViewController];

  v7.receiver = self;
  v7.super_class = PXFloatingCardViewController;
  [(PXFloatingCardViewController *)&v7 removeFromParentViewController];
}

- (PXFloatingCardViewController)initWithContentViewController:(id)a3
{
  v203[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v194.receiver = self;
  v194.super_class = PXFloatingCardViewController;
  v5 = [(PXFloatingCardViewController *)&v194 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];
    obj = v4;
    v7 = [v6 CGColor];
    v8 = [(PXFloatingCardViewController *)v5 view];
    v9 = [v8 layer];
    [v9 setShadowColor:v7];

    v10 = [(PXFloatingCardViewController *)v5 view];
    v11 = [v10 layer];
    LODWORD(v12) = 1036831949;
    [v11 setShadowOpacity:v12];

    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    v15 = [(PXFloatingCardViewController *)v5 view];
    v16 = [v15 layer];
    [v16 setShadowOffset:{v13, v14}];

    v17 = [(PXFloatingCardViewController *)v5 view];
    v18 = [v17 layer];
    [v18 setShadowRadius:5.0];

    v19 = [MEMORY[0x1E69DC888] clearColor];
    v20 = [(PXFloatingCardViewController *)v5 view];
    [v20 setBackgroundColor:v19];

    v21 = objc_alloc_init(MEMORY[0x1E69DD298]);
    backgroundVisualEffectView = v5->_backgroundVisualEffectView;
    v5->_backgroundVisualEffectView = v21;

    v23 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    [(UIVisualEffectView *)v5->_backgroundVisualEffectView setEffect:v23];

    v24 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView layer];
    [v24 setCornerRadius:10.0];

    v25 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView layer];
    [v25 setMasksToBounds:1];

    v26 = [(PXFloatingCardViewController *)v5 view];
    [v26 addSubview:v5->_backgroundVisualEffectView];

    [(UIVisualEffectView *)v5->_backgroundVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v147 = MEMORY[0x1E696ACD8];
    v181 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView topAnchor];
    v189 = [(PXFloatingCardViewController *)v5 view];
    v177 = [v189 topAnchor];
    v169 = [v181 constraintEqualToAnchor:v177];
    v203[0] = v169;
    v155 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView bottomAnchor];
    v162 = [(PXFloatingCardViewController *)v5 view];
    v150 = [v162 bottomAnchor];
    v144 = [v155 constraintEqualToAnchor:v150];
    v203[1] = v144;
    v27 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView leadingAnchor];
    v28 = [(PXFloatingCardViewController *)v5 view];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v203[2] = v30;
    v31 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView trailingAnchor];
    v32 = [(PXFloatingCardViewController *)v5 view];
    v33 = [v32 trailingAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    v203[3] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:4];
    [v147 activateConstraints:v35];

    v36 = objc_alloc(MEMORY[0x1E69DD250]);
    v37 = *MEMORY[0x1E695F058];
    v38 = *(MEMORY[0x1E695F058] + 8);
    v39 = *(MEMORY[0x1E695F058] + 16);
    v40 = *(MEMORY[0x1E695F058] + 24);
    v41 = [v36 initWithFrame:{*MEMORY[0x1E695F058], v38, v39, v40}];
    contentView = v5->_contentView;
    v5->_contentView = v41;

    v43 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5->_grabberFooterView setBackgroundColor:v43];

    [(UIView *)v5->_contentView setClipsToBounds:1];
    v44 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView contentView];
    [v44 addSubview:v5->_contentView];

    [(UIView *)v5->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v151 = MEMORY[0x1E696ACD8];
    v170 = [(UIView *)v5->_contentView topAnchor];
    v178 = [(PXFloatingCardViewController *)v5 backgroundView];
    v163 = [v178 topAnchor];
    v156 = [v170 constraintEqualToAnchor:v163];
    v202[0] = v156;
    v45 = [(UIView *)v5->_contentView leadingAnchor];
    v46 = [(PXFloatingCardViewController *)v5 backgroundView];
    v47 = [v46 leadingAnchor];
    v48 = [v45 constraintEqualToAnchor:v47];
    v202[1] = v48;
    v49 = [(UIView *)v5->_contentView trailingAnchor];
    v50 = [(PXFloatingCardViewController *)v5 backgroundView];
    v51 = [v50 trailingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    v202[2] = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:3];
    [v151 activateConstraints:v53];

    v54 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v37, v38, v39, v40}];
    grabberFooterView = v5->_grabberFooterView;
    v5->_grabberFooterView = v54;

    [(UIView *)v5->_grabberFooterView setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView contentView];
    [v56 addSubview:v5->_grabberFooterView];

    v145 = MEMORY[0x1E696ACD8];
    v186 = [(UIView *)v5->_grabberFooterView topAnchor];
    v179 = [(UIView *)v5->_contentView bottomAnchor];
    v171 = [v186 constraintEqualToAnchor:v179];
    v201[0] = v171;
    v157 = [(UIView *)v5->_grabberFooterView bottomAnchor];
    v164 = [(PXFloatingCardViewController *)v5 backgroundView];
    v152 = [v164 bottomAnchor];
    v148 = [v157 constraintEqualToAnchor:v152];
    v201[1] = v148;
    v141 = [(UIView *)v5->_grabberFooterView leadingAnchor];
    v142 = [(PXFloatingCardViewController *)v5 backgroundView];
    v140 = [v142 leadingAnchor];
    v57 = [v141 constraintEqualToAnchor:v140];
    v201[2] = v57;
    v58 = [(UIView *)v5->_grabberFooterView trailingAnchor];
    v59 = [(PXFloatingCardViewController *)v5 backgroundView];
    v60 = [v59 trailingAnchor];
    v61 = [v58 constraintEqualToAnchor:v60];
    v201[3] = v61;
    v62 = [(UIView *)v5->_grabberFooterView heightAnchor];
    v63 = [v62 constraintEqualToConstant:21.0];
    v201[4] = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:5];
    [v145 activateConstraints:v64];

    v65 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v37, v38, v39, v40}];
    v66 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    [v65 setBackgroundColor:v66];

    [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_grabberFooterView addSubview:v65];
    v158 = MEMORY[0x1E696ACD8];
    v187 = [v65 topAnchor];
    v172 = [(UIView *)v5->_grabberFooterView topAnchor];
    v165 = [v187 constraintEqualToAnchor:v172];
    v200[0] = v165;
    v67 = v65;
    v68 = [v65 leadingAnchor];
    v69 = [(UIView *)v5->_grabberFooterView leadingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];
    v200[1] = v70;
    v180 = v67;
    v71 = [v67 trailingAnchor];
    v72 = [(UIView *)v5->_grabberFooterView trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];
    v200[2] = v73;
    v74 = [v67 heightAnchor];
    v75 = [v74 constraintEqualToConstant:1.0];
    v200[3] = v75;
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:4];
    [v158 activateConstraints:v76];

    v77 = objc_alloc_init(MEMORY[0x1E69DD4F8]);
    grabber = v5->_grabber;
    v5->_grabber = v77;

    [(_UIGrabber *)v5->_grabber sizeToFit];
    [(UIView *)v5->_grabberFooterView addSubview:v5->_grabber];
    [(_UIGrabber *)v5->_grabber setTranslatesAutoresizingMaskIntoConstraints:0];
    v79 = MEMORY[0x1E696ACD8];
    v80 = [(_UIGrabber *)v5->_grabber centerXAnchor];
    v81 = [(UIView *)v5->_grabberFooterView centerXAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];
    v199[0] = v82;
    v83 = [(_UIGrabber *)v5->_grabber centerYAnchor];
    v84 = [(UIView *)v5->_grabberFooterView centerYAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];
    v199[1] = v85;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:2];
    [v79 activateConstraints:v86];

    objc_storeWeak(&v5->_contentViewController, obj);
    v87 = [MEMORY[0x1E69DC888] clearColor];
    v88 = [obj view];
    [v88 setBackgroundColor:v87];

    v89 = v5->_contentView;
    v90 = [obj view];
    [(UIView *)v89 addSubview:v90];

    [(PXFloatingCardViewController *)v5 addChildViewController:obj];
    [obj didMoveToParentViewController:v5];
    [obj setAdditionalSafeAreaInsets:{62.0, 0.0, 21.0, 0.0}];
    v91 = [obj view];
    [v91 setTranslatesAutoresizingMaskIntoConstraints:0];

    v159 = MEMORY[0x1E696ACD8];
    v188 = [obj view];
    v182 = [v188 bottomAnchor];
    v173 = [(UIView *)v5->_contentView bottomAnchor];
    v166 = [v182 constraintEqualToAnchor:v173];
    v198[0] = v166;
    v92 = [obj view];
    v93 = [v92 leadingAnchor];
    v94 = [(UIView *)v5->_contentView leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];
    v198[1] = v95;
    v96 = [obj view];
    v97 = [v96 trailingAnchor];
    v98 = [(UIView *)v5->_contentView trailingAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];
    v198[2] = v99;
    v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:3];
    [v159 activateConstraints:v100];

    v101 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v37, v38, v39, v40}];
    headerView = v5->_headerView;
    v5->_headerView = v101;

    v103 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5->_headerView setBackgroundColor:v103];

    [(UIView *)v5->_contentView addSubview:v5->_headerView];
    [(UIView *)v5->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v146 = MEMORY[0x1E696ACD8];
    v183 = [(UIView *)v5->_headerView topAnchor];
    v174 = [(UIView *)v5->_contentView topAnchor];
    v167 = [v183 constraintEqualToAnchor:v174];
    v197[0] = v167;
    v153 = [(UIView *)v5->_headerView bottomAnchor];
    v160 = [obj view];
    v149 = [v160 topAnchor];
    v143 = [v153 constraintEqualToAnchor:v149];
    v197[1] = v143;
    v104 = [(UIView *)v5->_headerView leadingAnchor];
    v105 = [(UIView *)v5->_contentView leadingAnchor];
    v106 = [v104 constraintEqualToAnchor:v105];
    v197[2] = v106;
    v107 = [(UIView *)v5->_headerView trailingAnchor];
    v108 = [(UIView *)v5->_contentView trailingAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];
    v197[3] = v109;
    v110 = [(UIView *)v5->_headerView heightAnchor];
    v111 = [v110 constraintEqualToConstant:62.0];
    v197[4] = v111;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v197 count:5];
    [v146 activateConstraints:v112];

    v113 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v114 = PXLocalizedStringFromTable(@"PXInfoPanelFloatingTitle", @"PhotosUICore");
    [(UILabel *)v113 setText:v114];

    [(UILabel *)v113 setAccessibilityTraits:*MEMORY[0x1E69DD9C8]];
    [(UILabel *)v113 setAccessibilityIdentifier:@"com.apple.photos.infoPanel.title"];
    v115 = [(PXFloatingCardViewController *)v5 _systemFontWithTextStyle:3 weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)v113 setFont:v115];

    headerLabel = v5->_headerLabel;
    v5->_headerLabel = v113;
    v117 = v113;

    [(UIView *)v5->_headerView addSubview:v117];
    [(UILabel *)v117 setTranslatesAutoresizingMaskIntoConstraints:0];
    v175 = MEMORY[0x1E696ACD8];
    v184 = [(UILabel *)v117 topAnchor];
    v118 = [(UIView *)v5->_headerView topAnchor];
    v119 = [v184 constraintEqualToAnchor:v118];
    v196[0] = v119;
    v190 = v117;
    v120 = [(UILabel *)v117 bottomAnchor];
    v121 = [(UIView *)v5->_headerView bottomAnchor];
    v122 = [v120 constraintEqualToAnchor:v121];
    v196[1] = v122;
    v123 = [(UILabel *)v117 leadingAnchor];
    v124 = [(UIView *)v5->_headerView leadingAnchor];
    v125 = [v123 constraintEqualToAnchor:v124 constant:16.0];
    v196[2] = v125;
    v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:3];
    [v175 activateConstraints:v126];

    v127 = MEMORY[0x1E69DC628];
    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = __62__PXFloatingCardViewController_initWithContentViewController___block_invoke;
    v192[3] = &unk_1E7743BF8;
    v176 = v5;
    v193 = v176;
    v185 = [v127 actionWithHandler:v192];
    v128 = [MEMORY[0x1E69DC738] buttonWithType:7 primaryAction:v185];
    v129 = PXLocalizedStringFromTable(@"PXInfoPanelCloseButtonAXHint", @"PhotosUICore");
    [v128 setAccessibilityHint:v129];

    [v128 setAccessibilityIdentifier:@"com.apple.photos.infoPanel.dismiss"];
    [(UIView *)v5->_headerView addSubview:v128];
    [v128 setTranslatesAutoresizingMaskIntoConstraints:0];
    v154 = MEMORY[0x1E696ACD8];
    v168 = [v128 centerYAnchor];
    v161 = [(UIView *)v5->_headerView centerYAnchor];
    v130 = [v168 constraintEqualToAnchor:v161];
    v195[0] = v130;
    v131 = [v128 leadingAnchor];
    v132 = [(UILabel *)v190 trailingAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:16.0];
    v195[1] = v133;
    v134 = [v128 trailingAnchor];
    v135 = [(UIView *)v5->_headerView trailingAnchor];
    v136 = [v134 constraintEqualToAnchor:v135 constant:-16.0];
    v195[2] = v136;
    v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:3];
    [v154 activateConstraints:v137];

    v4 = obj;
    v138 = [MEMORY[0x1E696AD88] defaultCenter];
    [v138 addObserver:v176 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

@end