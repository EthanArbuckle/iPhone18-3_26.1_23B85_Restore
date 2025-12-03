@interface SiriSharedUIViewStackContainer
- (BOOL)hasContentAtPoint:(CGPoint)point;
- (NSArray)contentViews;
- (SiriSharedUIViewStackContainer)initWithFrame:(CGRect)frame contentViews:(id)views;
- (SiriSharedUIViewStackContainerDelegate)delegate;
- (double)topPadding;
- (id)_mostRecentBottomStackViewAnchor;
- (id)_mostRecentTopStackViewAnchor;
- (id)_stackContainingContentView:(id)view;
- (id)stackableViewsWithAttachment:(int64_t)attachment;
- (void)_attachContentView:(id)view;
- (void)_configureContainingView;
- (void)_configureCustomTopAndBottomViews:(id)views;
- (void)_snapshotContentViewFramesForTransition;
- (void)_updateContainingViewConstraints;
- (void)_updateContainingViewTopConstraint;
- (void)_updateContainingViewTrailingConstraint;
- (void)_updateLeadingTrailingConstraints;
- (void)_updateScrollViewContentInsets;
- (void)addContentView:(id)view;
- (void)addContentView:(id)view fromViewController:(id)controller;
- (void)bringSubviewToFront:(id)front;
- (void)didDismissModalContent;
- (void)relayout;
- (void)removeContentView:(id)view;
- (void)safeAreaInsetsDidChange;
- (void)setBottomPadding:(double)padding animatedWithDuration:(double)duration animationOptions:(unint64_t)options alongsideAnimations:(id)animations completion:(id)completion;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)stackableContentWillUpdateLayout:(id)layout withUpdatedContentSize:(CGSize)size animated:(BOOL)animated;
- (void)updateConstraints;
- (void)willDismissModalContent;
- (void)willPresentModalContent;
@end

@implementation SiriSharedUIViewStackContainer

- (SiriSharedUIViewStackContainer)initWithFrame:(CGRect)frame contentViews:(id)views
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v13.receiver = self;
  v13.super_class = SiriSharedUIViewStackContainer;
  height = [(SiriSharedUIViewStackContainer *)&v13 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[SiriSharedUIViewStackContainer initWithFrame:contentViews:]";
      _os_log_impl(&dword_21E3EB000, v11, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    [(SiriSharedUIViewStackContainer *)height _configureContainingView];
    [(SiriSharedUIViewStackContainer *)height _setContentViews:viewsCopy];
  }

  return height;
}

- (void)_configureContainingView
{
  v3 = objc_alloc_init(SiriSharedUIStandardScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(SiriSharedUIStandardScrollView *)self->_scrollView setScrollEnabled:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setClipsToBounds:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setKeyboardDismissMode:2];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setAlwaysBounceHorizontal:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setScrollEnabled:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(SiriSharedUIViewStackContainer *)self addSubview:self->_scrollView];
  frameLayoutGuide = [(SiriSharedUIStandardScrollView *)self->_scrollView frameLayoutGuide];
  safeAreaLayoutGuide = [(SiriSharedUIViewStackContainer *)self safeAreaLayoutGuide];
  IsPad = SiriSharedUIDeviceIsPad();
  leadingAnchor = [frameLayoutGuide leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  if (IsPad)
  {
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  }

  else
  {
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  }
  v9 = ;
  leadingContainerConstraint = self->_leadingContainerConstraint;
  self->_leadingContainerConstraint = v9;

  [(NSLayoutConstraint *)self->_leadingContainerConstraint setActive:1];
  topAnchor = [frameLayoutGuide topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self->_topPadding];
  topContainerConstraint = self->_topContainerConstraint;
  self->_topContainerConstraint = v13;

  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTopConstraint];
  [(NSLayoutConstraint *)self->_topContainerConstraint setActive:1];
  trailingAnchor = [frameLayoutGuide trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  trailingContainerConstraint = self->_trailingContainerConstraint;
  self->_trailingContainerConstraint = v17;

  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTrailingConstraint];
  [(NSLayoutConstraint *)self->_trailingContainerConstraint setActive:1];
  bottomAnchor = [frameLayoutGuide bottomAnchor];
  bottomAnchor2 = [(SiriSharedUIViewStackContainer *)self bottomAnchor];
  [(SiriSharedUIViewStackContainer *)self bottomPadding];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v21];

  [(NSLayoutConstraint *)v22 setActive:1];
  bottomContainerConstraint = self->_bottomContainerConstraint;
  self->_bottomContainerConstraint = v22;
  v24 = v22;

  contentLayoutGuide = [(SiriSharedUIStandardScrollView *)self->_scrollView contentLayoutGuide];
  v26 = [SiriSharedUIStandardView alloc];
  v27 = [(SiriSharedUIStandardView *)v26 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  containingView = self->_containingView;
  self->_containingView = v27;

  [(UIView *)self->_containingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_containingView];
  leadingAnchor3 = [(UIView *)self->_containingView leadingAnchor];
  leadingAnchor4 = [contentLayoutGuide leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v31 setActive:1];

  topAnchor3 = [(UIView *)self->_containingView topAnchor];
  topAnchor4 = [contentLayoutGuide topAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v34 setActive:1];

  trailingAnchor3 = [(UIView *)self->_containingView trailingAnchor];
  trailingAnchor4 = [contentLayoutGuide trailingAnchor];
  v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v37 setActive:1];

  bottomAnchor3 = [(UIView *)self->_containingView bottomAnchor];
  bottomAnchor4 = [contentLayoutGuide bottomAnchor];
  v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v40 setActive:1];

  leadingAnchor5 = [(UIView *)self->_containingView leadingAnchor];
  leadingAnchor6 = [frameLayoutGuide leadingAnchor];
  v43 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v43 setActive:1];

  widthAnchor = [(UIView *)self->_containingView widthAnchor];
  widthAnchor2 = [frameLayoutGuide widthAnchor];
  v46 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v46 setActive:1];

  heightAnchor = [(UIView *)self->_containingView heightAnchor];
  heightAnchor2 = [frameLayoutGuide heightAnchor];
  v49 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v50) = 1148846080;
  [(NSLayoutConstraint *)v49 setPriority:v50];
  [(NSLayoutConstraint *)v49 setActive:1];
  containingViewHeightConstraint = self->_containingViewHeightConstraint;
  self->_containingViewHeightConstraint = v49;
}

- (void)setIsInAmbient:(BOOL)ambient
{
  ambientCopy = ambient;
  self->_isInAmbient = ambient;
  [(SiriSharedUIStandardScrollView *)self->_scrollView setScrollEnabled:?];
  LODWORD(v5) = 1148846080;
  if (ambientCopy)
  {
    *&v5 = 250.0;
  }

  [(NSLayoutConstraint *)self->_containingViewHeightConstraint setPriority:v5];
  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTopConstraint];
  [(SiriSharedUIViewStackContainer *)self _updateLeadingTrailingConstraints];

  [(SiriSharedUIViewStackContainer *)self _updateScrollViewContentInsets];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SiriSharedUIViewStackContainer;
  [(SiriSharedUIViewStackContainer *)&v3 safeAreaInsetsDidChange];
  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTopConstraint];
  [(SiriSharedUIViewStackContainer *)self _updateLeadingTrailingConstraints];
}

- (void)_updateLeadingTrailingConstraints
{
  [(SiriSharedUIViewStackContainer *)self safeAreaInsets];
  if (self->_isInAmbient)
  {
    if (v3 <= 36.0)
    {
      [(NSLayoutConstraint *)self->_leadingContainerConstraint setConstant:36.0];
      trailingContainerConstraint = self->_trailingContainerConstraint;
      v6 = -36.0;
    }

    else
    {
      v4 = v3 - 36.0;
      [(NSLayoutConstraint *)self->_leadingContainerConstraint setConstant:-(v3 - 36.0)];
      trailingContainerConstraint = self->_trailingContainerConstraint;
      v6 = v4;
    }
  }

  else
  {
    leadingContainerConstraint = self->_leadingContainerConstraint;
    IsPad = SiriSharedUIDeviceIsPad();
    v9 = 30.0;
    if (!IsPad)
    {
      v9 = 0.0;
    }

    [(NSLayoutConstraint *)leadingContainerConstraint setConstant:v9];
    trailingContainerConstraint = self->_trailingContainerConstraint;
    v6 = 0.0;
  }

  [(NSLayoutConstraint *)trailingContainerConstraint setConstant:v6];
}

- (void)_updateScrollViewContentInsets
{
  [(SiriSharedUIStandardScrollView *)self->_scrollView contentInset];
  scrollView = self->_scrollView;

  [(SiriSharedUIStandardScrollView *)scrollView setContentInset:?];
}

- (void)_updateContainingViewConstraints
{
  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTrailingConstraint];

  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTopConstraint];
}

- (void)updateConstraints
{
  [(SiriSharedUIViewStackContainer *)self _updateContainingViewConstraints];
  v3.receiver = self;
  v3.super_class = SiriSharedUIViewStackContainer;
  [(SiriSharedUIViewStackContainer *)&v3 updateConstraints];
}

- (void)_updateContainingViewTrailingConstraint
{
  IsPad = [(SiriSharedUIViewStackContainer *)self window];
  v4 = IsPad;
  if (self->_trailingContainerConstraint)
  {
    v16 = IsPad;
    IsPad = SiriSharedUIDeviceIsPad();
    v4 = v16;
    if (IsPad)
    {
      if (v16)
      {
        [v16 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
        windowScene = [v16 windowScene];
        SiriSharedUICompactSlideOverContentSpacingOnPad([windowScene interfaceOrientation], v6, v8, v10, v12);
        v15 = v14;

        IsPad = [(NSLayoutConstraint *)self->_trailingContainerConstraint setConstant:-v15];
        v4 = v16;
      }
    }
  }

  MEMORY[0x2821F96F8](IsPad, v4);
}

- (void)_updateContainingViewTopConstraint
{
  if (SiriSharedUIDeviceIsPad())
  {
    return;
  }

  if (self->_isInAmbient)
  {
    [(SiriSharedUIViewStackContainer *)self safeAreaInsets];
    v4 = v3 <= 36.0;
    v5 = 36.0 - v3;
    if (v4)
    {
      v5 = 36.0;
    }

    goto LABEL_11;
  }

  window = [(SiriSharedUIViewStackContainer *)self window];
  windowScene = [window windowScene];
  if (([windowScene interfaceOrientation] - 3) > 1)
  {

LABEL_10:
    v5 = 0.0;
    goto LABEL_11;
  }

  [(SiriSharedUIViewStackContainer *)self safeAreaInsets];
  v9 = v8;

  v5 = 8.0;
  if (v9 != 0.0)
  {
    goto LABEL_10;
  }

LABEL_11:
  topContainerConstraint = self->_topContainerConstraint;

  [(NSLayoutConstraint *)topContainerConstraint setConstant:v5];
}

- (void)_configureCustomTopAndBottomViews:(id)views
{
  v25 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v5 = [SiriSharedUIViewStack alloc];
  v6 = MEMORY[0x277CBEBF8];
  v7 = [(SiriSharedUIViewStack *)v5 initWithContentViews:MEMORY[0x277CBEBF8]];
  customConstraintsViewStack = self->_customConstraintsViewStack;
  self->_customConstraintsViewStack = v7;

  v9 = [[SiriSharedUIViewStack alloc] initWithContentViews:v6];
  bottomViewStack = self->_bottomViewStack;
  self->_bottomViewStack = v9;

  v11 = [[SiriSharedUIViewStack alloc] initWithContentViews:v6];
  topViewStack = self->_topViewStack;
  self->_topViewStack = v11;

  v13 = [[SiriSharedUIViewStack alloc] initWithContentViews:v6];
  listViewStack = self->_listViewStack;
  self->_listViewStack = v13;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = viewsCopy;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(SiriSharedUIViewStackContainer *)self addContentView:*(*(&v20 + 1) + 8 * v19++), v20];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (BOOL)hasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _transitionalContentViewFrames = [(SiriSharedUIViewStackContainer *)self _transitionalContentViewFrames];
  v7 = [_transitionalContentViewFrames containsPoint:{x, y}];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    contentViews = [(SiriSharedUIViewStackContainer *)self contentViews];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__SiriSharedUIViewStackContainer_hasContentAtPoint___block_invoke;
    v11[3] = &unk_278354AE0;
    *&v11[6] = x;
    *&v11[7] = y;
    v11[4] = self;
    v11[5] = &v12;
    [contentViews enumerateObjectsUsingBlock:v11];

    v8 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v8 & 1;
}

void __52__SiriSharedUIViewStackContainer_hasContentAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  [v17 frame];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v10 = CGRectGetWidth(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v11 = CGRectGetHeight(v21);
  [v17 convertPoint:*(a1 + 32) fromView:{*(a1 + 48), *(a1 + 56)}];
  v13 = v12;
  v15 = v14;
  if (([v17 isHidden] & 1) == 0)
  {
    [v17 alpha];
    if (v16 > 0.0)
    {
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = v10;
      v22.size.height = v11;
      v19.x = v13;
      v19.y = v15;
      if (CGRectContainsPoint(v22, v19))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

- (id)_mostRecentBottomStackViewAnchor
{
  mostRecentlyAddedView = [(SiriSharedUIViewStack *)self->_bottomViewStack mostRecentlyAddedView];
  topAnchor = [mostRecentlyAddedView topAnchor];
  v5 = topAnchor;
  if (topAnchor)
  {
    bottomAnchor = topAnchor;
  }

  else
  {
    bottomAnchor = [(UIView *)self->_containingView bottomAnchor];
  }

  v7 = bottomAnchor;

  return v7;
}

- (id)_mostRecentTopStackViewAnchor
{
  mostRecentlyAddedView = [(SiriSharedUIViewStack *)self->_topViewStack mostRecentlyAddedView];
  bottomAnchor = [mostRecentlyAddedView bottomAnchor];
  v5 = bottomAnchor;
  if (bottomAnchor)
  {
    topAnchor = bottomAnchor;
  }

  else
  {
    topAnchor = [(UIView *)self->_containingView topAnchor];
  }

  v7 = topAnchor;

  return v7;
}

- (id)_stackContainingContentView:(id)view
{
  viewCopy = view;
  p_bottomViewStack = &self->_bottomViewStack;
  if ([(SiriSharedUIViewStack *)self->_bottomViewStack containsContentView:viewCopy]|| (p_bottomViewStack = &self->_topViewStack, [(SiriSharedUIViewStack *)self->_topViewStack containsContentView:viewCopy]) || (p_bottomViewStack = &self->_listViewStack, [(SiriSharedUIViewStack *)self->_listViewStack containsContentView:viewCopy]) || (p_bottomViewStack = &self->_customConstraintsViewStack, [(SiriSharedUIViewStack *)self->_customConstraintsViewStack containsContentView:viewCopy]))
  {
    v6 = *p_bottomViewStack;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)topPadding
{
  [(SiriSharedUIViewStackContainer *)self safeAreaInsets];
  v4 = v3;
  [(NSLayoutConstraint *)self->_topContainerConstraint constant];
  return v4 + v5;
}

- (void)_snapshotContentViewFramesForTransition
{
  v3 = [SiriSharedUIRectSet alloc];
  contentViews = [(SiriSharedUIViewStackContainer *)self contentViews];
  v5 = [(SiriSharedUIRectSet *)v3 initWithFramesForViews:contentViews inCoordinateSpace:self];

  [(SiriSharedUIViewStackContainer *)self _setTransitionalContentViewFrames:v5];
}

- (void)setBottomPadding:(double)padding animatedWithDuration:(double)duration animationOptions:(unint64_t)options alongsideAnimations:(id)animations completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  animationsCopy = animations;
  completionCopy = completion;
  if (self->_bottomPadding == padding)
  {
    if (animationsCopy)
    {
      animationsCopy[2](animationsCopy);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    self->_bottomPadding = padding;
    [(SiriSharedUIViewStackContainer *)self _snapshotContentViewFramesForTransition];
    contentViews = [(SiriSharedUIViewStackContainer *)self contentViews];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = [contentViews countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        v18 = 0;
        do
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(contentViews);
          }

          [*(*(&v26 + 1) + 8 * v18++) setNeedsLayout];
        }

        while (v16 != v18);
        v16 = [contentViews countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    [(NSLayoutConstraint *)self->_bottomContainerConstraint setConstant:-self->_bottomPadding];
    v19 = MEMORY[0x277D75D18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __120__SiriSharedUIViewStackContainer_setBottomPadding_animatedWithDuration_animationOptions_alongsideAnimations_completion___block_invoke;
    v23[3] = &unk_278354B08;
    v23[4] = self;
    v24 = contentViews;
    v25 = animationsCopy;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __120__SiriSharedUIViewStackContainer_setBottomPadding_animatedWithDuration_animationOptions_alongsideAnimations_completion___block_invoke_2;
    v21[3] = &unk_278354B30;
    v21[4] = self;
    v22 = completionCopy;
    v20 = contentViews;
    [v19 animateWithDuration:options delay:v23 options:v21 animations:duration completion:0.0];
  }
}

uint64_t __120__SiriSharedUIViewStackContainer_setBottomPadding_animatedWithDuration_animationOptions_alongsideAnimations_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) layoutIfNeeded];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) layoutIfNeeded];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __120__SiriSharedUIViewStackContainer_setBottomPadding_animatedWithDuration_animationOptions_alongsideAnimations_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _clearTransitionalContentViewFrameSnapshots];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (NSArray)contentViews
{
  array = [MEMORY[0x277CBEB18] array];
  contentViews = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  [array addObjectsFromArray:contentViews];

  contentViews2 = [(SiriSharedUIViewStack *)self->_topViewStack contentViews];
  [array addObjectsFromArray:contentViews2];

  contentViews3 = [(SiriSharedUIViewStack *)self->_customConstraintsViewStack contentViews];
  [array addObjectsFromArray:contentViews3];

  contentViews4 = [(SiriSharedUIViewStack *)self->_listViewStack contentViews];
  [array addObjectsFromArray:contentViews4];

  v8 = [array copy];

  return v8;
}

- (void)bringSubviewToFront:(id)front
{
  containingView = self->_containingView;
  if (containingView)
  {
    [(UIView *)containingView bringSubviewToFront:front];
  }
}

- (void)addContentView:(id)view fromViewController:(id)controller
{
  controllerCopy = controller;
  viewCopy = view;
  delegate = [(SiriSharedUIViewStackContainer *)self delegate];
  [delegate viewStackContainer:self willBeginHostingChildViewController:controllerCopy];

  [(SiriSharedUIViewStackContainer *)self addContentView:viewCopy];
  delegate2 = [(SiriSharedUIViewStackContainer *)self delegate];
  [delegate2 viewStackContainer:self didBeginHostingChildViewController:controllerCopy];
}

- (void)addContentView:(id)view
{
  viewCopy = view;
  [viewCopy setStackContainerDelegate:self];
  v4 = +[SiriSharedUIViewStackConstraints constraints];
  [viewCopy setStackConstraints:v4];

  [(UIView *)self->_containingView addSubview:viewCopy];
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriSharedUIViewStackContainer *)self _attachContentView:viewCopy];
  attachmentType = [viewCopy attachmentType];
  if (attachmentType <= 3)
  {
    [*(&self->super.super.super.super.isa + *off_278354B78[attachmentType]) addContentView:viewCopy];
  }
}

- (void)removeContentView:(id)view
{
  v32 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [viewCopy removeFromSuperview];
  v5 = [(SiriSharedUIViewStackContainer *)self _stackContainingContentView:viewCopy];
  v6 = [v5 nextViewAfterContentView:viewCopy];
  selfCopy = self;
  v7 = [viewCopy attachmentType] == 1 && objc_msgSend(v6, "attachmentType") == 1;
  array = [MEMORY[0x277CBEB18] array];
  if (v7)
  {
    stackConstraints = [viewCopy stackConstraints];
    bottomConstraint = [stackConstraints bottomConstraint];

    if (bottomConstraint)
    {
      [array addObject:bottomConstraint];
    }

    stackConstraints2 = [v6 stackConstraints];
    bottomConstraint2 = [stackConstraints2 bottomConstraint];

    if (bottomConstraint2)
    {
      [bottomConstraint2 setActive:0];
      [v6 removeConstraint:bottomConstraint2];
    }
  }

  stackConstraints3 = [viewCopy stackConstraints];
  heightConstraint = [stackConstraints3 heightConstraint];
  [heightConstraint setActive:0];

  stackConstraints4 = [viewCopy stackConstraints];
  [stackConstraints4 setHeightConstraint:0];

  [v5 removeContentView:viewCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = array;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * v20);
        bottomAnchor = [v6 bottomAnchor];
        secondAnchor = [v21 secondAnchor];
        v24 = [bottomAnchor constraintEqualToAnchor:secondAnchor];

        [v24 setActive:1];
        stackConstraints5 = [v6 stackConstraints];
        [stackConstraints5 setBottomConstraint:v24];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  [v6 portraitContentSize];
  [(SiriSharedUIViewStackContainer *)selfCopy stackableContentWillUpdateLayout:v6 withUpdatedContentSize:0 animated:?];
}

- (void)_attachContentView:(id)view
{
  v60 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  attachmentType = [viewCopy attachmentType];
  [viewCopy portraitContentSize];
  v7 = v6;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_containingView leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];

  [v10 setActive:1];
  stackConstraints = [viewCopy stackConstraints];
  [stackConstraints setLeadingConstraint:v10];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_containingView trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];

  [v14 setActive:1];
  stackConstraints2 = [viewCopy stackConstraints];
  [stackConstraints2 setTrailingConstraint:v14];

  if (attachmentType > 1)
  {
    if (attachmentType == 2)
    {
      bottomAnchor = [viewCopy bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_containingView bottomAnchor];
      v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];

      LODWORD(v33) = 1148846080;
      [v18 setPriority:v33];
      [v18 setActive:1];
      stackConstraints3 = [viewCopy stackConstraints];
      [stackConstraints3 setBottomConstraint:v18];

      topAnchor = [viewCopy topAnchor];
      topAnchor2 = [(UIView *)self->_containingView topAnchor];
      stackConstraints10 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];

      v24 = stackConstraints10;
      LODWORD(v23) = 1148846080;
LABEL_11:
      [v24 setPriority:v23];
      [stackConstraints10 setActive:1];
      stackConstraints4 = [viewCopy stackConstraints];
      [stackConstraints4 setTopConstraint:stackConstraints10];

      goto LABEL_14;
    }

    if (attachmentType != 3)
    {
      goto LABEL_15;
    }

    mostRecentlyAddedView = [(SiriSharedUIViewStack *)self->_listViewStack mostRecentlyAddedView];
    v18 = mostRecentlyAddedView;
    if (mostRecentlyAddedView)
    {
      stackConstraints5 = [mostRecentlyAddedView stackConstraints];
      bottomConstraint = [stackConstraints5 bottomConstraint];

      [v18 removeConstraint:bottomConstraint];
      [bottomConstraint setActive:0];
      stackConstraints6 = [v18 stackConstraints];
      [stackConstraints6 setBottomConstraint:0];

      [v18 bottomAnchor];
    }

    else
    {
      [(UIView *)self->_containingView topAnchor];
    }
    stackConstraints10 = ;
    topAnchor3 = [viewCopy topAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:stackConstraints10];

    [v39 setActive:1];
    stackConstraints7 = [viewCopy stackConstraints];
    [stackConstraints7 setTopConstraint:v39];

    bottomAnchor3 = [viewCopy bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_containingView bottomAnchor];
    v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];

    [v43 setActive:1];
    stackConstraints8 = [viewCopy stackConstraints];
    [stackConstraints8 setBottomConstraint:v43];
  }

  else
  {
    if (attachmentType)
    {
      if (attachmentType != 1)
      {
        goto LABEL_15;
      }

      bottomAnchor5 = [viewCopy bottomAnchor];
      _mostRecentBottomStackViewAnchor = [(SiriSharedUIViewStackContainer *)self _mostRecentBottomStackViewAnchor];
      [viewCopy attachmentYOffset];
      v18 = [bottomAnchor5 constraintEqualToAnchor:_mostRecentBottomStackViewAnchor constant:?];

      [v18 setActive:1];
      stackConstraints9 = [viewCopy stackConstraints];
      [stackConstraints9 setBottomConstraint:v18];

      topAnchor4 = [viewCopy topAnchor];
      topAnchor5 = [(UIView *)self->_containingView topAnchor];
      stackConstraints10 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];

      LODWORD(v23) = 1148846080;
      v24 = stackConstraints10;
      goto LABEL_11;
    }

    topAnchor6 = [viewCopy topAnchor];
    _mostRecentTopStackViewAnchor = [(SiriSharedUIViewStackContainer *)self _mostRecentTopStackViewAnchor];
    [viewCopy attachmentYOffset];
    v18 = [topAnchor6 constraintEqualToAnchor:_mostRecentTopStackViewAnchor constant:?];

    [v18 setActive:1];
    stackConstraints10 = [viewCopy stackConstraints];
    [stackConstraints10 setTopConstraint:v18];
  }

LABEL_14:

LABEL_15:
  if (objc_opt_respondsToSelector())
  {
    customAttachmentConstraints = [viewCopy customAttachmentConstraints];
    v46 = customAttachmentConstraints;
    if (customAttachmentConstraints)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v47 = [customAttachmentConstraints countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v56;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v56 != v49)
            {
              objc_enumerationMutation(v46);
            }

            [*(*(&v55 + 1) + 8 * i) setActive:1];
          }

          v48 = [v46 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v48);
      }
    }
  }

  heightAnchor = [viewCopy heightAnchor];
  v52 = [heightAnchor constraintEqualToConstant:v7];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [viewCopy useLowerPriorityHeightConstraint])
  {
    LODWORD(v53) = 1137180672;
    [v52 setPriority:v53];
  }

  [v52 setActive:1];
  stackConstraints11 = [viewCopy stackConstraints];
  [stackConstraints11 setHeightConstraint:v52];
}

- (void)relayout
{
  v14 = *MEMORY[0x277D85DE8];
  [(SiriSharedUIViewStackContainer *)self _updateContainingViewConstraints];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  contentViews = [(SiriSharedUIViewStackContainer *)self contentViews];
  v4 = [contentViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(contentViews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 relayout];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [contentViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)willPresentModalContent
{
  contentViews = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  v4 = [contentViews count];

  if (v4)
  {
    v5 = [(SiriSharedUIViewStack *)self->_bottomViewStack viewAtIndex:0];
    stackConstraints = [v5 stackConstraints];
    bottomConstraint = [stackConstraints bottomConstraint];

    LODWORD(v7) = 1132068864;
    [bottomConstraint setPriority:v7];
    mostRecentlyAddedView = [(SiriSharedUIViewStack *)self->_bottomViewStack mostRecentlyAddedView];
    topAnchor = [mostRecentlyAddedView topAnchor];
    topAnchor2 = [(UIView *)self->_containingView topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    temporaryTopConstraintForBottomViewStack = self->_temporaryTopConstraintForBottomViewStack;
    self->_temporaryTopConstraintForBottomViewStack = v11;

    [(NSLayoutConstraint *)self->_temporaryTopConstraintForBottomViewStack setActive:1];
    [(SiriSharedUIViewStackContainer *)self layoutIfNeeded];
  }
}

- (void)willDismissModalContent
{
  contentViews = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  v4 = [contentViews count];

  if (v4)
  {
    v5 = [(SiriSharedUIViewStack *)self->_bottomViewStack viewAtIndex:0];
    stackConstraints = [v5 stackConstraints];
    bottomConstraint = [stackConstraints bottomConstraint];

    LODWORD(v7) = 1148846080;
    [bottomConstraint setPriority:v7];
    [(NSLayoutConstraint *)self->_temporaryTopConstraintForBottomViewStack setActive:0];
    [(SiriSharedUIViewStackContainer *)self layoutIfNeeded];
  }
}

- (void)didDismissModalContent
{
  contentViews = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  v4 = [contentViews count];

  if (v4)
  {
    [(UIView *)self->_containingView removeConstraint:self->_temporaryTopConstraintForBottomViewStack];
    temporaryTopConstraintForBottomViewStack = self->_temporaryTopConstraintForBottomViewStack;
    self->_temporaryTopConstraintForBottomViewStack = 0;
  }
}

- (void)stackableContentWillUpdateLayout:(id)layout withUpdatedContentSize:(CGSize)size animated:(BOOL)animated
{
  animatedCopy = animated;
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v10 = [(SiriSharedUIViewStackContainer *)self _stackContainingContentView:layoutCopy];
  if (v10)
  {
    [(UIView *)self->_containingView frame];
    if ((v11 - width) * 0.5 >= 0.0)
    {
      v12 = (v11 - width) * 0.5;
    }

    else
    {
      v12 = 0.0;
    }

    stackConstraints = [layoutCopy stackConstraints];
    leadingConstraint = [stackConstraints leadingConstraint];
    [leadingConstraint setConstant:v12];

    stackConstraints2 = [layoutCopy stackConstraints];
    trailingConstraint = [stackConstraints2 trailingConstraint];
    [trailingConstraint setConstant:-v12];

    stackConstraints3 = [layoutCopy stackConstraints];
    heightConstraint = [stackConstraints3 heightConstraint];

    [layoutCopy removeConstraint:heightConstraint];
    [heightConstraint setActive:0];
    heightAnchor = [layoutCopy heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:height];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [layoutCopy useLowerPriorityHeightConstraint])
    {
      LODWORD(v21) = 1137180672;
      [v20 setPriority:v21];
    }

    [v20 setActive:1];
    stackConstraints4 = [layoutCopy stackConstraints];
    [stackConstraints4 setHeightConstraint:v20];

    [layoutCopy setNeedsLayout];
    superview = [layoutCopy superview];
    [superview setNeedsLayout];

    if (animatedCopy)
    {
      objc_initWeak(&location, self);
      v24 = MEMORY[0x277D75D18];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __99__SiriSharedUIViewStackContainer_stackableContentWillUpdateLayout_withUpdatedContentSize_animated___block_invoke;
      v26[3] = &unk_278354B58;
      objc_copyWeak(&v27, &location);
      [v24 _animateUsingSpringWithDuration:0 delay:v26 options:0 mass:0.5 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:0.0];
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v25 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriSharedUIViewStackContainer stackableContentWillUpdateLayout:v25 withUpdatedContentSize:? animated:?];
    }
  }
}

void __99__SiriSharedUIViewStackContainer_stackableContentWillUpdateLayout_withUpdatedContentSize_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[55] layoutIfNeeded];
    WeakRetained = v2;
  }
}

- (id)stackableViewsWithAttachment:(int64_t)attachment
{
  if (attachment <= 3)
  {
    a2 = [*(&self->super.super.super.super.isa + *off_278354B78[attachment]) contentViews];
  }

  return a2;
}

- (SiriSharedUIViewStackContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stackableContentWillUpdateLayout:(os_log_t)log withUpdatedContentSize:animated:.cold.1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[SiriSharedUIViewStackContainer stackableContentWillUpdateLayout:withUpdatedContentSize:animated:]";
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&dword_21E3EB000, log, OS_LOG_TYPE_ERROR, "%s #viewStack Skipping because contentView wasn't found in SiriSharedUIViewStack: %@", &v1, 0x16u);
}

@end