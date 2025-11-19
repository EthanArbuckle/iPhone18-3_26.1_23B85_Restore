@interface SSChromePlaceholderView
- (SSChromePlaceholderView)initWithFrame:(CGRect)a3;
- (int64_t)positionForBar:(id)a3;
- (void)_initializeBarButtonItems;
- (void)_layoutTopBar;
- (void)_updateBarButtonItemPositionsAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation SSChromePlaceholderView

- (SSChromePlaceholderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SSChromePlaceholderView;
  v3 = [(SSChromePlaceholderView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SSChromePlaceholderView *)v3 _initializeBarButtonItems];
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [(SSChromePlaceholderView *)v4 setTintColor:v5];
  }

  return v4;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SSChromePlaceholderView;
  [(SSChromePlaceholderView *)&v3 safeAreaInsetsDidChange];
  [(SSChromePlaceholderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SSChromePlaceholderView;
  [(SSChromePlaceholderView *)&v3 layoutSubviews];
  [(SSChromePlaceholderView *)self _layoutTopBar];
  [(SSChromePlaceholderView *)self _updateBarButtonItemPositionsAnimated:0];
}

- (void)_initializeBarButtonItems
{
  v47[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCCE0]);
  managedNavigationItem = self->_managedNavigationItem;
  self->_managedNavigationItem = v3;

  [(UINavigationBar *)self->_topBar pushNavigationItem:self->_managedNavigationItem animated:0];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v5 = +[SSChromeFactory closeBarButtonItem];
    closeItem = self->_closeItem;
    self->_closeItem = v5;
  }

  v7 = [MEMORY[0x1E69DC708] _sss_shareItemWithTarget:self action:0];
  shareItem = self->_shareItem;
  self->_shareItem = v7;

  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v11 = [v9 initWithImage:v10 menu:0];
  doneItem = self->_doneItem;
  self->_doneItem = v11;

  [(UIBarButtonItem *)self->_doneItem setStyle:2];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.8];
  [(UIBarButtonItem *)self->_doneItem setTintColor:v13];

  v14 = [MEMORY[0x1E69DC708] _sss_undoItemWithTarget:self action:0];
  undoItem = self->_undoItem;
  self->_undoItem = v14;

  v16 = [MEMORY[0x1E69DC708] _sss_redoItemWithTarget:self action:0];
  redoItem = self->_redoItem;
  self->_redoItem = v16;

  v18 = [MEMORY[0x1E69DC708] _sss_trashItemWithTarget:self action:0];
  deleteItem = self->_deleteItem;
  self->_deleteItem = v18;

  v20 = objc_alloc_init(SSVellumOpacityControl);
  opacityControl = self->_opacityControl;
  self->_opacityControl = v20;

  v22 = self->_opacityControl;
  +[SSVellumOpacityControl preferredWidth];
  v24 = v23;
  [(SSVellumOpacityControl *)self->_opacityControl intrinsicContentSize];
  [(SSVellumOpacityControl *)v22 setFrame:0.0, 0.0, v24, v25];
  v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_opacityControl];
  opacityItem = self->_opacityItem;
  self->_opacityItem = v26;

  v28 = objc_alloc_init(MEMORY[0x1E69DC708]);
  annotationEnabledButton = self->_annotationEnabledButton;
  self->_annotationEnabledButton = v28;

  v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil.tip.crop.circle"];
  [(UIBarButtonItem *)self->_annotationEnabledButton setImage:v30];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v31 = getVKImageAnalysisBarButtonItemClass_softClass;
  v46 = getVKImageAnalysisBarButtonItemClass_softClass;
  if (!getVKImageAnalysisBarButtonItemClass_softClass)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __getVKImageAnalysisBarButtonItemClass_block_invoke;
    v42[3] = &unk_1E8590188;
    v42[4] = &v43;
    __getVKImageAnalysisBarButtonItemClass_block_invoke(v42);
    v31 = v44[3];
  }

  v32 = v31;
  _Block_object_dispose(&v43, 8);
  v33 = [v31 analysisButtonWithTarget:self action:0 mode:0];
  aaBarButtonItem = self->_aaBarButtonItem;
  self->_aaBarButtonItem = v33;

  [(VKImageAnalysisBarButtonItem *)self->_aaBarButtonItem setEnabled:0];
  v35 = self->_doneItem;
  v47[0] = self->_shareItem;
  v47[1] = v35;
  v36 = self->_redoItem;
  v47[2] = self->_undoItem;
  v47[3] = v36;
  v37 = self->_opacityItem;
  v47[4] = self->_deleteItem;
  v47[5] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:6];
  barItems = self->_barItems;
  self->_barItems = v38;

  if ([getVKCImageAnalyzerClass() supportedAnalysisTypes])
  {
    v40 = [(NSArray *)self->_barItems arrayByAddingObject:self->_aaBarButtonItem];
    v41 = self->_barItems;
    self->_barItems = v40;
  }
}

- (void)_updateBarButtonItemPositionsAnimated:(BOOL)a3
{
  v3 = a3;
  v46[4] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  +[SSChromeHelper defaultBarButtonSpacing];
  v7 = [SSChromeHelper createFixedSpaceBarButtonItemWithWidth:?];
  v8 = 0.0;
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    +[SSChromeHelper defaultBarButtonSpacing];
    v8 = v9;
  }

  v10 = [(SSChromePlaceholderView *)self traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    [(UIBarButtonItem *)self->_opacityItem _setFlexible:0];
    [SSChromeHelper widthForOpacityControlInView:self withContentSwitcher:0];
    v13 = v12;
    opacityControl = self->_opacityControl;
    [(SSVellumOpacityControl *)opacityControl intrinsicContentSize];
    [(SSVellumOpacityControl *)opacityControl setFrame:0.0, 0.0, v13, v15];
    v16 = _SSScreenshotsRedesign2025Enabled();
    v17 = &OBJC_IVAR___SSChromePlaceholderView__doneItem;
    if (v16)
    {
      v17 = &OBJC_IVAR___SSChromePlaceholderView__closeItem;
    }

    [v5 addObject:*(&self->super.super.super.isa + *v17)];
    v18 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:v8];
    [v5 addObject:v18];

    [v5 addObject:self->_opacityItem];
    if (_SSScreenshotsRedesign2025Enabled())
    {
      v46[0] = self->_doneItem;
      v19 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      shareItem = self->_shareItem;
      v46[1] = v19;
      v46[2] = shareItem;
      v46[3] = self->_annotationEnabledButton;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
      [v6 addObjectsFromArray:v21];

      if (([getVKCImageAnalyzerClass() supportedAnalysisTypes] & 1) == 0)
      {
        goto LABEL_14;
      }

      v22 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      aaBarButtonItem = self->_aaBarButtonItem;
      v45[0] = v22;
      v45[1] = aaBarButtonItem;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      [v6 addObjectsFromArray:v24];
    }

    else
    {
      if ([getVKCImageAnalyzerClass() supportedAnalysisTypes])
      {
        deleteItem = self->_deleteItem;
        annotationEnabledButton = self->_annotationEnabledButton;
        v31 = self->_aaBarButtonItem;
        v40 = self->_shareItem;
        v41 = deleteItem;
        v42 = annotationEnabledButton;
        v43 = v31;
        v44 = v7;
        v26 = MEMORY[0x1E695DEC8];
        v27 = &v40;
        v28 = 5;
      }

      else
      {
        v25 = self->_deleteItem;
        v36 = self->_shareItem;
        v37 = v25;
        v38 = self->_annotationEnabledButton;
        v39 = v7;
        v26 = MEMORY[0x1E695DEC8];
        v27 = &v36;
        v28 = 4;
      }

      v22 = [v26 arrayWithObjects:v27 count:{v28, v36, v37, v38, v39, v40, v41, v42, v43, v44}];
      [v6 addObjectsFromArray:v22];
    }
  }

LABEL_14:
  v32 = self->_topBar;
  [(UINavigationItem *)self->_managedNavigationItem setLeftBarButtonItems:v5 animated:v3];
  [(UINavigationItem *)self->_managedNavigationItem setRightBarButtonItems:v6 animated:v3];
  [(UINavigationItem *)self->_managedNavigationItem setTitleView:0];
  v33 = [(UINavigationBar *)v32 topItem];
  managedNavigationItem = self->_managedNavigationItem;

  if (v33 != managedNavigationItem)
  {
    v35 = [(UINavigationBar *)v32 popNavigationItemAnimated:0];
    [(UINavigationBar *)v32 pushNavigationItem:self->_managedNavigationItem animated:0];
  }
}

- (void)_layoutTopBar
{
  if (!self->_topBarBackground)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCCC0]);
    topBarBackground = self->_topBarBackground;
    self->_topBarBackground = v3;

    [(UINavigationBar *)self->_topBarBackground setDelegate:self];
    [SSChromeHelper configureNavigationBarAppearance:self->_topBarBackground];
    [(SSChromePlaceholderView *)self addSubview:self->_topBarBackground];
  }

  if (!self->_topBar)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCCC0]);
    topBar = self->_topBar;
    self->_topBar = v5;

    v7 = [(UINavigationBar *)self->_topBar layer];
    [v7 setAllowsGroupOpacity:1];

    [(UINavigationBar *)self->_topBar setAlpha:self->_contentAlpha];
    [(UINavigationBar *)self->_topBar setDelegate:self];
    v8 = [MEMORY[0x1E69DCA80] defaultFormat];
    [v8 setOpaque:0];
    v9 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v8 format:{1.0, 1.0}];
    v10 = [v9 imageWithActions:&__block_literal_global];
    [(UINavigationBar *)self->_topBar setBackgroundImage:v10 forBarMetrics:1];
    [(UINavigationBar *)self->_topBar setBackgroundImage:v10 forBarMetrics:0];
    [(UINavigationBar *)self->_topBar setShadowImage:v10];
    [(SSChromePlaceholderView *)self addSubview:self->_topBar];
    if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
    {
      v11 = +[SSChromeHelper separatorView];
      topBarSeparatorLine = self->_topBarSeparatorLine;
      self->_topBarSeparatorLine = v11;

      [(UINavigationBar *)self->_topBar addSubview:self->_topBarSeparatorLine];
    }
  }

  [(SSChromePlaceholderView *)self bounds];
  [(UINavigationBar *)self->_topBar sizeThatFits:v13, v14];
  v16 = v15;
  v18 = v17;
  [(SSChromePlaceholderView *)self safeAreaInsets];
  v20 = v19;
  +[SSChromeHelper barSeparatorSize];
  v22 = v21;
  [(SSChromePlaceholderView *)self bounds];
  v24 = v23;
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    [(UINavigationBar *)self->_topBar bringSubviewToFront:self->_topBarSeparatorLine];
  }

  [(UINavigationBar *)self->_topBar frame];
  v29.origin.x = 0.0;
  v29.origin.y = v20;
  v29.size.width = v16;
  v29.size.height = v18;
  if (!CGRectEqualToRect(v26, v29) || ([(UINavigationBar *)self->_topBarBackground frame], v30.origin.x = 0.0, v30.origin.y = v20, v30.size.width = v16, v30.size.height = v18, !CGRectEqualToRect(v27, v30)) || ([(UIView *)self->_topBarSeparatorLine frame], v31.origin.x = 0.0, v31.origin.y = v18 - v22, v31.size.width = v24, v31.size.height = v22, !CGRectEqualToRect(v28, v31)))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __40__SSChromePlaceholderView__layoutTopBar__block_invoke_2;
    v25[3] = &unk_1E8590160;
    v25[4] = self;
    v25[5] = 0;
    *&v25[6] = v20;
    *&v25[7] = v16;
    *&v25[8] = v18;
    v25[9] = 0;
    *&v25[10] = v18 - v22;
    *&v25[11] = v24;
    *&v25[12] = v22;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v25];
  }
}

uint64_t __40__SSChromePlaceholderView__layoutTopBar__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 496) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 504) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    [*(*(a1 + 32) + 512) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  }

  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (int64_t)positionForBar:(id)a3
{
  if (self->_topBar == a3)
  {
    return 3;
  }

  if (self->_topBarBackground == a3)
  {
    return 3;
  }

  return 0;
}

@end