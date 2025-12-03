@interface PRXCardContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)preferredContentSize;
- (PRXCardContainerView)init;
- (PRXCardContainerView)initWithFrame:(CGRect)frame;
- (PRXCardContainerView)initWithFrame:(CGRect)frame containerLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (PRXCardContainerViewDelegate)delegate;
- (void)_updateKeyboardDeferred:(BOOL)deferred;
- (void)keyboardWillShow:(id)show;
- (void)setDefersKeyboardUpdates:(BOOL)updates;
- (void)setPreferredContentSize:(CGSize)size;
- (void)setUsePortraitTopInset:(BOOL)inset;
- (void)tappedView:(id)view;
@end

@implementation PRXCardContainerView

- (PRXCardContainerView)init
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = [(PRXCardContainerView *)self initWithFrame:?];

  return v4;
}

- (PRXCardContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = PRXCardContainerDefaultLayoutMargins();

  return [(PRXCardContainerView *)self initWithFrame:x containerLayoutMargins:y, width, height, v11, v8, v9, v10];
}

- (PRXCardContainerView)initWithFrame:(CGRect)frame containerLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v109[5] = *MEMORY[0x277D85DE8];
  v106.receiver = self;
  v106.super_class = PRXCardContainerView;
  v8 = [(PRXCardContainerView *)&v106 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v9 = v8;
  if (v8)
  {
    p_top = &v8->_containerLayoutMargins.top;
    v8->_containerLayoutMargins.top = top;
    v8->_containerLayoutMargins.leading = leading;
    v8->_containerLayoutMargins.bottom = bottom;
    v8->_containerLayoutMargins.trailing = trailing;
    v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel_tappedView_];
    tapRecognizer = v9->_tapRecognizer;
    v9->_tapRecognizer = v11;

    [(UITapGestureRecognizer *)v9->_tapRecognizer setDelegate:v9];
    [(PRXCardContainerView *)v9 addGestureRecognizer:v9->_tapRecognizer];
    v13 = objc_alloc_init(PRXPullDismissalScrollView);
    pullDismissalScrollView = v9->_pullDismissalScrollView;
    v9->_pullDismissalScrollView = v13;

    [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    dismissableContentContainerView = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView dismissableContentContainerView];
    [dismissableContentContainerView setDirectionalLayoutMargins:{*p_top, v9->_containerLayoutMargins.leading, v9->_containerLayoutMargins.bottom, v9->_containerLayoutMargins.trailing}];
    [dismissableContentContainerView setInsetsLayoutMarginsFromSafeArea:0];
    [(PRXCardContainerView *)v9 addSubview:v9->_pullDismissalScrollView];
    v16 = [PRXCardBackgroundView alloc];
    v17 = [(PRXCardBackgroundView *)v16 initWithFrame:*MEMORY[0x277CBF3A0] containerLayoutMargins:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *p_top, v9->_containerLayoutMargins.leading, v9->_containerLayoutMargins.bottom, v9->_containerLayoutMargins.trailing];
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v17;

    [(PRXCardBackgroundView *)v9->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXCardBackgroundView *)v9->_backgroundView setClipsToBounds:1];
    [dismissableContentContainerView addSubview:v9->_backgroundView];
    PRXCardDefaultSize();
    v9->_preferredContentSize.width = v19;
    v9->_preferredContentSize.height = v20;
    v21 = [[PRXCardContentContainerView alloc] initWithFrame:0.0, 0.0, v9->_preferredContentSize.width, v9->_preferredContentSize.height];
    contentContainerView = v9->_contentContainerView;
    v9->_contentContainerView = &v21->super;

    [(UIView *)v9->_contentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = v9->_contentContainerView;
    panGestureRecognizer = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView panGestureRecognizer];
    [(UIView *)v23 addGestureRecognizer:panGestureRecognizer];

    [(PRXCardBackgroundView *)v9->_backgroundView addSubview:v9->_contentContainerView];
    widthAnchor = [(UIView *)v9->_contentContainerView widthAnchor];
    v26 = [widthAnchor constraintEqualToConstant:v9->_preferredContentSize.width];
    contentWidthConstraint = v9->_contentWidthConstraint;
    v9->_contentWidthConstraint = v26;

    LODWORD(v28) = 1146388480;
    [(NSLayoutConstraint *)v9->_contentWidthConstraint setPriority:v28];
    heightAnchor = [(UIView *)v9->_contentContainerView heightAnchor];
    v30 = [heightAnchor constraintEqualToConstant:v9->_preferredContentSize.height];
    contentHeightConstraint = v9->_contentHeightConstraint;
    v9->_contentHeightConstraint = v30;

    LODWORD(v32) = 1146388480;
    [(NSLayoutConstraint *)v9->_contentHeightConstraint setPriority:v32];
    layoutMarginsGuide = [dismissableContentContainerView layoutMarginsGuide];
    v34 = 0x277CCA000uLL;
    v105 = layoutMarginsGuide;
    v104 = dismissableContentContainerView;
    if (PRXIsPad())
    {
      bottomAnchor3 = objc_alloc_init(MEMORY[0x277D756D0]);
      [(PRXCardContainerView *)v9 addLayoutGuide:bottomAnchor3];
      heightAnchor2 = [bottomAnchor3 heightAnchor];
      heightAnchor3 = [(PRXCardContainerView *)v9 heightAnchor];
      v38 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
      visibleHeightConstraint = v9->_visibleHeightConstraint;
      v9->_visibleHeightConstraint = v38;

      v98 = MEMORY[0x277CCAAD0];
      widthAnchor2 = [bottomAnchor3 widthAnchor];
      v40 = [widthAnchor2 constraintEqualToConstant:0.0];
      v109[0] = v40;
      leadingAnchor = [bottomAnchor3 leadingAnchor];
      leadingAnchor2 = [dismissableContentContainerView leadingAnchor];
      v100 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v109[1] = v100;
      v109[2] = v9->_visibleHeightConstraint;
      bottomAnchor = [bottomAnchor3 bottomAnchor];
      bottomAnchor2 = [dismissableContentContainerView bottomAnchor];
      v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v109[3] = v42;
      centerYAnchor = [(UIView *)v9->_contentContainerView centerYAnchor];
      centerYAnchor2 = [bottomAnchor3 centerYAnchor];
      v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v109[4] = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:5];
      [v98 activateConstraints:v46];

      bottomAnchor4 = widthAnchor2;
      v34 = 0x277CCA000;
    }

    else
    {
      v48 = MEMORY[0x277CCAAD0];
      bottomAnchor3 = [(UIView *)v9->_contentContainerView bottomAnchor];
      bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
      v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v108 = v40;
      leadingAnchor = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
      [v48 activateConstraints:leadingAnchor];
    }

    heightAnchor4 = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView heightAnchor];
    heightAnchor5 = [(PRXCardContainerView *)v9 heightAnchor];
    v51 = [heightAnchor4 constraintLessThanOrEqualToAnchor:heightAnchor5];
    scrollViewHeightConstraint = v9->_scrollViewHeightConstraint;
    v9->_scrollViewHeightConstraint = v51;

    topAnchor = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView topAnchor];
    topAnchor2 = [(PRXCardContainerView *)v9 topAnchor];
    v55 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    scrollViewTopConstraint = v9->_scrollViewTopConstraint;
    v9->_scrollViewTopConstraint = v55;

    bottomAnchor5 = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView bottomAnchor];
    bottomAnchor6 = [(PRXCardContainerView *)v9 bottomAnchor];
    v59 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    scrollViewBottomConstraint = v9->_scrollViewBottomConstraint;
    v9->_scrollViewBottomConstraint = v59;

    topAnchor3 = [(UIView *)v9->_contentContainerView topAnchor];
    topAnchor4 = [v105 topAnchor];
    v63 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    contentTopConstraint = v9->_contentTopConstraint;
    v9->_contentTopConstraint = v63;

    v86 = *(v34 + 2768);
    leadingAnchor3 = [(PRXCardBackgroundView *)v9->_backgroundView leadingAnchor];
    leadingAnchor4 = [(UIView *)v9->_contentContainerView leadingAnchor];
    v99 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v107[0] = v99;
    trailingAnchor = [(PRXCardBackgroundView *)v9->_backgroundView trailingAnchor];
    trailingAnchor2 = [(UIView *)v9->_contentContainerView trailingAnchor];
    v92 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v107[1] = v92;
    topAnchor5 = [(PRXCardBackgroundView *)v9->_backgroundView topAnchor];
    topAnchor6 = [(UIView *)v9->_contentContainerView topAnchor];
    v89 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v107[2] = v89;
    bottomAnchor7 = [(PRXCardBackgroundView *)v9->_backgroundView bottomAnchor];
    bottomAnchor8 = [(UIView *)v9->_contentContainerView bottomAnchor];
    v85 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v107[3] = v85;
    leadingAnchor5 = [(UIView *)v9->_contentContainerView leadingAnchor];
    leadingAnchor6 = [v105 leadingAnchor];
    v82 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v107[4] = v82;
    trailingAnchor3 = [(UIView *)v9->_contentContainerView trailingAnchor];
    trailingAnchor4 = [v105 trailingAnchor];
    v79 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v107[5] = v79;
    leadingAnchor7 = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView leadingAnchor];
    leadingAnchor8 = [(PRXCardContainerView *)v9 leadingAnchor];
    v66 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
    v107[6] = v66;
    trailingAnchor5 = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView trailingAnchor];
    trailingAnchor6 = [(PRXCardContainerView *)v9 trailingAnchor];
    v69 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
    v107[7] = v69;
    centerXAnchor = [(PRXPullDismissalScrollView *)v9->_pullDismissalScrollView centerXAnchor];
    centerXAnchor2 = [(PRXCardContainerView *)v9 centerXAnchor];
    v72 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v107[8] = v72;
    v107[9] = v9->_scrollViewHeightConstraint;
    v107[10] = v9->_scrollViewTopConstraint;
    v107[11] = v9->_scrollViewBottomConstraint;
    v107[12] = v9->_contentWidthConstraint;
    v107[13] = v9->_contentHeightConstraint;
    v107[14] = v9->_contentTopConstraint;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:15];
    [v86 activateConstraints:v73];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

    v76 = v9;
  }

  return v9;
}

- (void)setUsePortraitTopInset:(BOOL)inset
{
  if (self->_usePortraitTopInset != inset)
  {
    self->_usePortraitTopInset = inset;
    if (inset)
    {
      top = 88.0 - self->_containerLayoutMargins.top;
    }

    else
    {
      top = self->_containerLayoutMargins.top;
    }

    [(NSLayoutConstraint *)self->_scrollViewTopConstraint setConstant:top];
  }
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_preferredContentSize = &self->_preferredContentSize;
  if (self->_preferredContentSize.width != size.width || self->_preferredContentSize.height != size.height)
  {
    v8 = PRXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(PRXCardContainerView *)v8 setPreferredContentSize:height];
    }

    p_preferredContentSize->width = width;
    p_preferredContentSize->height = height;
    [(NSLayoutConstraint *)self->_contentWidthConstraint setConstant:width];
    [(NSLayoutConstraint *)self->_contentHeightConstraint setConstant:height];
  }
}

- (void)setDefersKeyboardUpdates:(BOOL)updates
{
  if (self->_defersKeyboardUpdates != updates)
  {
    self->_defersKeyboardUpdates = updates;
    if (!updates)
    {
      [(PRXCardContainerView *)self _updateKeyboardDeferred:1];
    }
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  self->_keyboardHeight = CGRectGetHeight(v7);

  [(PRXCardContainerView *)self _updateKeyboardDeferred:0];
}

- (void)_updateKeyboardDeferred:(BOOL)deferred
{
  if (!self->_defersKeyboardUpdates)
  {
    [(NSLayoutConstraint *)self->_scrollViewBottomConstraint constant];
    keyboardHeight = self->_keyboardHeight;
    if (v6 != -keyboardHeight)
    {
      if (!deferred)
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __48__PRXCardContainerView__updateKeyboardDeferred___block_invoke;
        v10[3] = &unk_279ACC188;
        v10[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v10];
        keyboardHeight = self->_keyboardHeight;
      }

      if (keyboardHeight <= 0.0)
      {
        v9 = 0.0;
        v8 = 0.0;
        if (self->_usePortraitTopInset)
        {
          v8 = 88.0 - self->_containerLayoutMargins.top;
        }

        PRXIsPad();
      }

      else
      {
        [(PRXCardContainerView *)self safeAreaInsets];
        v8 = v7;
        v9 = 0.0;
        if (PRXIsPad())
        {
          v9 = 6.0 - self->_containerLayoutMargins.top;
        }
      }

      [(NSLayoutConstraint *)self->_contentTopConstraint setConstant:v9];
      [(NSLayoutConstraint *)self->_scrollViewTopConstraint setConstant:v8];
      [(NSLayoutConstraint *)self->_scrollViewBottomConstraint setConstant:-self->_keyboardHeight];
      [(NSLayoutConstraint *)self->_visibleHeightConstraint setConstant:-self->_keyboardHeight];
      [(PRXPullDismissalScrollView *)self->_pullDismissalScrollView setScrollEnabled:self->_keyboardHeight == 0.0];
      self->_shouldDismissKeyboardOnTap = self->_keyboardHeight != 0.0;
      if (!deferred)
      {
        [(PRXCardContainerView *)self layoutIfNeeded];
      }
    }
  }
}

- (void)tappedView:(id)view
{
  if (self->_shouldDismissKeyboardOnTap)
  {
    WeakRetained = [(PRXCardContainerView *)self firstResponder];
    [WeakRetained resignFirstResponder];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained backgroundTapped:self];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_shouldDismissKeyboardOnTap)
  {
    v5 = 1;
  }

  else if (![(PRXPullDismissalScrollView *)self->_pullDismissalScrollView allowsPullToDismiss]|| ([(PRXPullDismissalScrollView *)self->_pullDismissalScrollView isDragging]& 1) != 0 || ([(PRXPullDismissalScrollView *)self->_pullDismissalScrollView isDecelerating]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [beginCopy locationInView:self];
      v8 = [(PRXCardContainerView *)self hitTest:0 withEvent:?];
      v5 = v8 == self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PRXCardContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPreferredContentSize:(double)a3 .cold.1(NSObject *a1, double a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromCGSize(*&a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_260F65000, a1, OS_LOG_TYPE_DEBUG, "Card container view size changed to %@", &v5, 0xCu);
}

@end