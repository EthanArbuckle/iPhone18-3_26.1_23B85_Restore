@interface PXFloatingCardViewController
- (CGRect)grabAreaBounds;
- (CGSize)size;
- (PXFloatingCardViewController)initWithCoder:(id)coder;
- (PXFloatingCardViewController)initWithContentViewController:(id)controller;
- (PXFloatingCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXFloatingCardViewControllerDelegate)delegate;
- (UIViewController)contentViewController;
- (void)_dismissTapped;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)removeFromParentViewController;
- (void)setSize:(CGSize)size;
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

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  v5 = [(PXFloatingCardViewController *)self _systemFontWithTextStyle:3 weight:*MEMORY[0x1E69DB980]];
  headerLabel = [(PXFloatingCardViewController *)self headerLabel];
  [headerLabel setFont:v5];
}

- (CGRect)grabAreaBounds
{
  backgroundView = [(PXFloatingCardViewController *)self backgroundView];
  [backgroundView frame];
  v4 = CGRectGetMaxY(v11) + -60.0;
  backgroundView2 = [(PXFloatingCardViewController *)self backgroundView];
  [backgroundView2 bounds];
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

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_size.width != size.width || self->_size.height != size.height)
  {
    self->_size = size;
    view = [(PXFloatingCardViewController *)self view];
    [view frame];
    v9 = v8;
    v11 = v10;

    view2 = [(PXFloatingCardViewController *)self view];
    [view2 setFrame:{v9, v11, width, height}];
  }
}

- (PXFloatingCardViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFloatingCardViewController.m" lineNumber:197 description:{@"%s is not available as initializer", "-[PXFloatingCardViewController initWithCoder:]"}];

  abort();
}

- (PXFloatingCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFloatingCardViewController.m" lineNumber:193 description:{@"%s is not available as initializer", "-[PXFloatingCardViewController initWithNibName:bundle:]"}];

  abort();
}

- (void)_dismissTapped
{
  delegate = [(PXFloatingCardViewController *)self delegate];
  [delegate floatingCardViewControllerDismissTapped:self];
}

- (void)removeFromParentViewController
{
  contentViewController = [(PXFloatingCardViewController *)self contentViewController];
  [contentViewController willMoveToParentViewController:0];

  contentViewController2 = [(PXFloatingCardViewController *)self contentViewController];
  view = [contentViewController2 view];
  [view removeFromSuperview];

  contentViewController3 = [(PXFloatingCardViewController *)self contentViewController];
  [contentViewController3 removeFromParentViewController];

  v7.receiver = self;
  v7.super_class = PXFloatingCardViewController;
  [(PXFloatingCardViewController *)&v7 removeFromParentViewController];
}

- (PXFloatingCardViewController)initWithContentViewController:(id)controller
{
  v203[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v194.receiver = self;
  v194.super_class = PXFloatingCardViewController;
  v5 = [(PXFloatingCardViewController *)&v194 initWithNibName:0 bundle:0];
  if (v5)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    obj = controllerCopy;
    cGColor = [blackColor CGColor];
    view = [(PXFloatingCardViewController *)v5 view];
    layer = [view layer];
    [layer setShadowColor:cGColor];

    view2 = [(PXFloatingCardViewController *)v5 view];
    layer2 = [view2 layer];
    LODWORD(v12) = 1036831949;
    [layer2 setShadowOpacity:v12];

    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    view3 = [(PXFloatingCardViewController *)v5 view];
    layer3 = [view3 layer];
    [layer3 setShadowOffset:{v13, v14}];

    view4 = [(PXFloatingCardViewController *)v5 view];
    layer4 = [view4 layer];
    [layer4 setShadowRadius:5.0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    view5 = [(PXFloatingCardViewController *)v5 view];
    [view5 setBackgroundColor:clearColor];

    v21 = objc_alloc_init(MEMORY[0x1E69DD298]);
    backgroundVisualEffectView = v5->_backgroundVisualEffectView;
    v5->_backgroundVisualEffectView = v21;

    v23 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    [(UIVisualEffectView *)v5->_backgroundVisualEffectView setEffect:v23];

    layer5 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView layer];
    [layer5 setCornerRadius:10.0];

    layer6 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView layer];
    [layer6 setMasksToBounds:1];

    view6 = [(PXFloatingCardViewController *)v5 view];
    [view6 addSubview:v5->_backgroundVisualEffectView];

    [(UIVisualEffectView *)v5->_backgroundVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v147 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIVisualEffectView *)v5->_backgroundVisualEffectView topAnchor];
    view7 = [(PXFloatingCardViewController *)v5 view];
    topAnchor2 = [view7 topAnchor];
    v169 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v203[0] = v169;
    bottomAnchor = [(UIVisualEffectView *)v5->_backgroundVisualEffectView bottomAnchor];
    view8 = [(PXFloatingCardViewController *)v5 view];
    bottomAnchor2 = [view8 bottomAnchor];
    v144 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v203[1] = v144;
    leadingAnchor = [(UIVisualEffectView *)v5->_backgroundVisualEffectView leadingAnchor];
    view9 = [(PXFloatingCardViewController *)v5 view];
    leadingAnchor2 = [view9 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v203[2] = v30;
    trailingAnchor = [(UIVisualEffectView *)v5->_backgroundVisualEffectView trailingAnchor];
    view10 = [(PXFloatingCardViewController *)v5 view];
    trailingAnchor2 = [view10 trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5->_grabberFooterView setBackgroundColor:clearColor2];

    [(UIView *)v5->_contentView setClipsToBounds:1];
    contentView = [(UIVisualEffectView *)v5->_backgroundVisualEffectView contentView];
    [contentView addSubview:v5->_contentView];

    [(UIView *)v5->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v151 = MEMORY[0x1E696ACD8];
    topAnchor3 = [(UIView *)v5->_contentView topAnchor];
    backgroundView = [(PXFloatingCardViewController *)v5 backgroundView];
    topAnchor4 = [backgroundView topAnchor];
    v156 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v202[0] = v156;
    leadingAnchor3 = [(UIView *)v5->_contentView leadingAnchor];
    backgroundView2 = [(PXFloatingCardViewController *)v5 backgroundView];
    leadingAnchor4 = [backgroundView2 leadingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v202[1] = v48;
    trailingAnchor3 = [(UIView *)v5->_contentView trailingAnchor];
    backgroundView3 = [(PXFloatingCardViewController *)v5 backgroundView];
    trailingAnchor4 = [backgroundView3 trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v202[2] = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:3];
    [v151 activateConstraints:v53];

    v54 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v37, v38, v39, v40}];
    grabberFooterView = v5->_grabberFooterView;
    v5->_grabberFooterView = v54;

    [(UIView *)v5->_grabberFooterView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(UIVisualEffectView *)v5->_backgroundVisualEffectView contentView];
    [contentView2 addSubview:v5->_grabberFooterView];

    v145 = MEMORY[0x1E696ACD8];
    topAnchor5 = [(UIView *)v5->_grabberFooterView topAnchor];
    bottomAnchor3 = [(UIView *)v5->_contentView bottomAnchor];
    v171 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v201[0] = v171;
    bottomAnchor4 = [(UIView *)v5->_grabberFooterView bottomAnchor];
    backgroundView4 = [(PXFloatingCardViewController *)v5 backgroundView];
    bottomAnchor5 = [backgroundView4 bottomAnchor];
    v148 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v201[1] = v148;
    leadingAnchor5 = [(UIView *)v5->_grabberFooterView leadingAnchor];
    backgroundView5 = [(PXFloatingCardViewController *)v5 backgroundView];
    leadingAnchor6 = [backgroundView5 leadingAnchor];
    v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v201[2] = v57;
    trailingAnchor5 = [(UIView *)v5->_grabberFooterView trailingAnchor];
    backgroundView6 = [(PXFloatingCardViewController *)v5 backgroundView];
    trailingAnchor6 = [backgroundView6 trailingAnchor];
    v61 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v201[3] = v61;
    heightAnchor = [(UIView *)v5->_grabberFooterView heightAnchor];
    v63 = [heightAnchor constraintEqualToConstant:21.0];
    v201[4] = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:5];
    [v145 activateConstraints:v64];

    v65 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v37, v38, v39, v40}];
    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    [v65 setBackgroundColor:quaternaryLabelColor];

    [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_grabberFooterView addSubview:v65];
    v158 = MEMORY[0x1E696ACD8];
    topAnchor6 = [v65 topAnchor];
    topAnchor7 = [(UIView *)v5->_grabberFooterView topAnchor];
    v165 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v200[0] = v165;
    v67 = v65;
    leadingAnchor7 = [v65 leadingAnchor];
    leadingAnchor8 = [(UIView *)v5->_grabberFooterView leadingAnchor];
    v70 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v200[1] = v70;
    v180 = v67;
    trailingAnchor7 = [v67 trailingAnchor];
    trailingAnchor8 = [(UIView *)v5->_grabberFooterView trailingAnchor];
    v73 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v200[2] = v73;
    heightAnchor2 = [v67 heightAnchor];
    v75 = [heightAnchor2 constraintEqualToConstant:1.0];
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
    centerXAnchor = [(_UIGrabber *)v5->_grabber centerXAnchor];
    centerXAnchor2 = [(UIView *)v5->_grabberFooterView centerXAnchor];
    v82 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v199[0] = v82;
    centerYAnchor = [(_UIGrabber *)v5->_grabber centerYAnchor];
    centerYAnchor2 = [(UIView *)v5->_grabberFooterView centerYAnchor];
    v85 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v199[1] = v85;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:2];
    [v79 activateConstraints:v86];

    objc_storeWeak(&v5->_contentViewController, obj);
    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    view11 = [obj view];
    [view11 setBackgroundColor:clearColor3];

    v89 = v5->_contentView;
    view12 = [obj view];
    [(UIView *)v89 addSubview:view12];

    [(PXFloatingCardViewController *)v5 addChildViewController:obj];
    [obj didMoveToParentViewController:v5];
    [obj setAdditionalSafeAreaInsets:{62.0, 0.0, 21.0, 0.0}];
    view13 = [obj view];
    [view13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v159 = MEMORY[0x1E696ACD8];
    view14 = [obj view];
    bottomAnchor6 = [view14 bottomAnchor];
    bottomAnchor7 = [(UIView *)v5->_contentView bottomAnchor];
    v166 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v198[0] = v166;
    view15 = [obj view];
    leadingAnchor9 = [view15 leadingAnchor];
    leadingAnchor10 = [(UIView *)v5->_contentView leadingAnchor];
    v95 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v198[1] = v95;
    view16 = [obj view];
    trailingAnchor9 = [view16 trailingAnchor];
    trailingAnchor10 = [(UIView *)v5->_contentView trailingAnchor];
    v99 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v198[2] = v99;
    v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:3];
    [v159 activateConstraints:v100];

    v101 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v37, v38, v39, v40}];
    headerView = v5->_headerView;
    v5->_headerView = v101;

    clearColor4 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5->_headerView setBackgroundColor:clearColor4];

    [(UIView *)v5->_contentView addSubview:v5->_headerView];
    [(UIView *)v5->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v146 = MEMORY[0x1E696ACD8];
    topAnchor8 = [(UIView *)v5->_headerView topAnchor];
    topAnchor9 = [(UIView *)v5->_contentView topAnchor];
    v167 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v197[0] = v167;
    bottomAnchor8 = [(UIView *)v5->_headerView bottomAnchor];
    view17 = [obj view];
    topAnchor10 = [view17 topAnchor];
    v143 = [bottomAnchor8 constraintEqualToAnchor:topAnchor10];
    v197[1] = v143;
    leadingAnchor11 = [(UIView *)v5->_headerView leadingAnchor];
    leadingAnchor12 = [(UIView *)v5->_contentView leadingAnchor];
    v106 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v197[2] = v106;
    trailingAnchor11 = [(UIView *)v5->_headerView trailingAnchor];
    trailingAnchor12 = [(UIView *)v5->_contentView trailingAnchor];
    v109 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v197[3] = v109;
    heightAnchor3 = [(UIView *)v5->_headerView heightAnchor];
    v111 = [heightAnchor3 constraintEqualToConstant:62.0];
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
    topAnchor11 = [(UILabel *)v117 topAnchor];
    topAnchor12 = [(UIView *)v5->_headerView topAnchor];
    v119 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
    v196[0] = v119;
    v190 = v117;
    bottomAnchor9 = [(UILabel *)v117 bottomAnchor];
    bottomAnchor10 = [(UIView *)v5->_headerView bottomAnchor];
    v122 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v196[1] = v122;
    leadingAnchor13 = [(UILabel *)v117 leadingAnchor];
    leadingAnchor14 = [(UIView *)v5->_headerView leadingAnchor];
    v125 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:16.0];
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
    centerYAnchor3 = [v128 centerYAnchor];
    centerYAnchor4 = [(UIView *)v5->_headerView centerYAnchor];
    v130 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v195[0] = v130;
    leadingAnchor15 = [v128 leadingAnchor];
    trailingAnchor13 = [(UILabel *)v190 trailingAnchor];
    v133 = [leadingAnchor15 constraintEqualToAnchor:trailingAnchor13 constant:16.0];
    v195[1] = v133;
    trailingAnchor14 = [v128 trailingAnchor];
    trailingAnchor15 = [(UIView *)v5->_headerView trailingAnchor];
    v136 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:-16.0];
    v195[2] = v136;
    v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:3];
    [v154 activateConstraints:v137];

    controllerCopy = obj;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v176 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

@end