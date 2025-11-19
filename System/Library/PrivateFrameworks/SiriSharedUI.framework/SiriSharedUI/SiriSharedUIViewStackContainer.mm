@interface SiriSharedUIViewStackContainer
- (BOOL)hasContentAtPoint:(CGPoint)a3;
- (NSArray)contentViews;
- (SiriSharedUIViewStackContainer)initWithFrame:(CGRect)a3 contentViews:(id)a4;
- (SiriSharedUIViewStackContainerDelegate)delegate;
- (double)topPadding;
- (id)_mostRecentBottomStackViewAnchor;
- (id)_mostRecentTopStackViewAnchor;
- (id)_stackContainingContentView:(id)a3;
- (id)stackableViewsWithAttachment:(int64_t)a3;
- (void)_attachContentView:(id)a3;
- (void)_configureContainingView;
- (void)_configureCustomTopAndBottomViews:(id)a3;
- (void)_snapshotContentViewFramesForTransition;
- (void)_updateContainingViewConstraints;
- (void)_updateContainingViewTopConstraint;
- (void)_updateContainingViewTrailingConstraint;
- (void)_updateLeadingTrailingConstraints;
- (void)_updateScrollViewContentInsets;
- (void)addContentView:(id)a3;
- (void)addContentView:(id)a3 fromViewController:(id)a4;
- (void)bringSubviewToFront:(id)a3;
- (void)didDismissModalContent;
- (void)relayout;
- (void)removeContentView:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)setBottomPadding:(double)a3 animatedWithDuration:(double)a4 animationOptions:(unint64_t)a5 alongsideAnimations:(id)a6 completion:(id)a7;
- (void)setIsInAmbient:(BOOL)a3;
- (void)stackableContentWillUpdateLayout:(id)a3 withUpdatedContentSize:(CGSize)a4 animated:(BOOL)a5;
- (void)updateConstraints;
- (void)willDismissModalContent;
- (void)willPresentModalContent;
@end

@implementation SiriSharedUIViewStackContainer

- (SiriSharedUIViewStackContainer)initWithFrame:(CGRect)a3 contentViews:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SiriSharedUIViewStackContainer;
  v10 = [(SiriSharedUIViewStackContainer *)&v13 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[SiriSharedUIViewStackContainer initWithFrame:contentViews:]";
      _os_log_impl(&dword_21E3EB000, v11, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    [(SiriSharedUIViewStackContainer *)v10 _configureContainingView];
    [(SiriSharedUIViewStackContainer *)v10 _setContentViews:v9];
  }

  return v10;
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
  v52 = [(SiriSharedUIStandardScrollView *)self->_scrollView frameLayoutGuide];
  v5 = [(SiriSharedUIViewStackContainer *)self safeAreaLayoutGuide];
  IsPad = SiriSharedUIDeviceIsPad();
  v7 = [v52 leadingAnchor];
  v8 = [v5 leadingAnchor];
  if (IsPad)
  {
    [v7 constraintEqualToAnchor:v8 constant:30.0];
  }

  else
  {
    [v7 constraintEqualToAnchor:v8];
  }
  v9 = ;
  leadingContainerConstraint = self->_leadingContainerConstraint;
  self->_leadingContainerConstraint = v9;

  [(NSLayoutConstraint *)self->_leadingContainerConstraint setActive:1];
  v11 = [v52 topAnchor];
  v12 = [v5 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:self->_topPadding];
  topContainerConstraint = self->_topContainerConstraint;
  self->_topContainerConstraint = v13;

  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTopConstraint];
  [(NSLayoutConstraint *)self->_topContainerConstraint setActive:1];
  v15 = [v52 trailingAnchor];
  v16 = [v5 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];
  trailingContainerConstraint = self->_trailingContainerConstraint;
  self->_trailingContainerConstraint = v17;

  [(SiriSharedUIViewStackContainer *)self _updateContainingViewTrailingConstraint];
  [(NSLayoutConstraint *)self->_trailingContainerConstraint setActive:1];
  v19 = [v52 bottomAnchor];
  v20 = [(SiriSharedUIViewStackContainer *)self bottomAnchor];
  [(SiriSharedUIViewStackContainer *)self bottomPadding];
  v22 = [v19 constraintEqualToAnchor:v20 constant:-v21];

  [(NSLayoutConstraint *)v22 setActive:1];
  bottomContainerConstraint = self->_bottomContainerConstraint;
  self->_bottomContainerConstraint = v22;
  v24 = v22;

  v25 = [(SiriSharedUIStandardScrollView *)self->_scrollView contentLayoutGuide];
  v26 = [SiriSharedUIStandardView alloc];
  v27 = [(SiriSharedUIStandardView *)v26 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  containingView = self->_containingView;
  self->_containingView = v27;

  [(UIView *)self->_containingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriSharedUIStandardScrollView *)self->_scrollView addContentView:self->_containingView];
  v29 = [(UIView *)self->_containingView leadingAnchor];
  v30 = [v25 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [(UIView *)self->_containingView topAnchor];
  v33 = [v25 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(UIView *)self->_containingView trailingAnchor];
  v36 = [v25 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  v38 = [(UIView *)self->_containingView bottomAnchor];
  v39 = [v25 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [(UIView *)self->_containingView leadingAnchor];
  v42 = [v52 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [(UIView *)self->_containingView widthAnchor];
  v45 = [v52 widthAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [(UIView *)self->_containingView heightAnchor];
  v48 = [v52 heightAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  LODWORD(v50) = 1148846080;
  [(NSLayoutConstraint *)v49 setPriority:v50];
  [(NSLayoutConstraint *)v49 setActive:1];
  containingViewHeightConstraint = self->_containingViewHeightConstraint;
  self->_containingViewHeightConstraint = v49;
}

- (void)setIsInAmbient:(BOOL)a3
{
  v3 = a3;
  self->_isInAmbient = a3;
  [(SiriSharedUIStandardScrollView *)self->_scrollView setScrollEnabled:?];
  LODWORD(v5) = 1148846080;
  if (v3)
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
        v13 = [v16 windowScene];
        SiriSharedUICompactSlideOverContentSpacingOnPad([v13 interfaceOrientation], v6, v8, v10, v12);
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

  v6 = [(SiriSharedUIViewStackContainer *)self window];
  v7 = [v6 windowScene];
  if (([v7 interfaceOrientation] - 3) > 1)
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

- (void)_configureCustomTopAndBottomViews:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v15 = v4;
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

- (BOOL)hasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SiriSharedUIViewStackContainer *)self _transitionalContentViewFrames];
  v7 = [v6 containsPoint:{x, y}];

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
    v9 = [(SiriSharedUIViewStackContainer *)self contentViews];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__SiriSharedUIViewStackContainer_hasContentAtPoint___block_invoke;
    v11[3] = &unk_278354AE0;
    *&v11[6] = x;
    *&v11[7] = y;
    v11[4] = self;
    v11[5] = &v12;
    [v9 enumerateObjectsUsingBlock:v11];

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
  v3 = [(SiriSharedUIViewStack *)self->_bottomViewStack mostRecentlyAddedView];
  v4 = [v3 topAnchor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIView *)self->_containingView bottomAnchor];
  }

  v7 = v6;

  return v7;
}

- (id)_mostRecentTopStackViewAnchor
{
  v3 = [(SiriSharedUIViewStack *)self->_topViewStack mostRecentlyAddedView];
  v4 = [v3 bottomAnchor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIView *)self->_containingView topAnchor];
  }

  v7 = v6;

  return v7;
}

- (id)_stackContainingContentView:(id)a3
{
  v4 = a3;
  p_bottomViewStack = &self->_bottomViewStack;
  if ([(SiriSharedUIViewStack *)self->_bottomViewStack containsContentView:v4]|| (p_bottomViewStack = &self->_topViewStack, [(SiriSharedUIViewStack *)self->_topViewStack containsContentView:v4]) || (p_bottomViewStack = &self->_listViewStack, [(SiriSharedUIViewStack *)self->_listViewStack containsContentView:v4]) || (p_bottomViewStack = &self->_customConstraintsViewStack, [(SiriSharedUIViewStack *)self->_customConstraintsViewStack containsContentView:v4]))
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
  v4 = [(SiriSharedUIViewStackContainer *)self contentViews];
  v5 = [(SiriSharedUIRectSet *)v3 initWithFramesForViews:v4 inCoordinateSpace:self];

  [(SiriSharedUIViewStackContainer *)self _setTransitionalContentViewFrames:v5];
}

- (void)setBottomPadding:(double)a3 animatedWithDuration:(double)a4 animationOptions:(unint64_t)a5 alongsideAnimations:(id)a6 completion:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  if (self->_bottomPadding == a3)
  {
    if (v12)
    {
      v12[2](v12);
    }

    if (v13)
    {
      v13[2](v13);
    }
  }

  else
  {
    self->_bottomPadding = a3;
    [(SiriSharedUIViewStackContainer *)self _snapshotContentViewFramesForTransition];
    v14 = [(SiriSharedUIViewStackContainer *)self contentViews];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v14);
          }

          [*(*(&v26 + 1) + 8 * v18++) setNeedsLayout];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
    v24 = v14;
    v25 = v12;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __120__SiriSharedUIViewStackContainer_setBottomPadding_animatedWithDuration_animationOptions_alongsideAnimations_completion___block_invoke_2;
    v21[3] = &unk_278354B30;
    v21[4] = self;
    v22 = v13;
    v20 = v14;
    [v19 animateWithDuration:a5 delay:v23 options:v21 animations:a4 completion:0.0];
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  [v3 addObjectsFromArray:v4];

  v5 = [(SiriSharedUIViewStack *)self->_topViewStack contentViews];
  [v3 addObjectsFromArray:v5];

  v6 = [(SiriSharedUIViewStack *)self->_customConstraintsViewStack contentViews];
  [v3 addObjectsFromArray:v6];

  v7 = [(SiriSharedUIViewStack *)self->_listViewStack contentViews];
  [v3 addObjectsFromArray:v7];

  v8 = [v3 copy];

  return v8;
}

- (void)bringSubviewToFront:(id)a3
{
  containingView = self->_containingView;
  if (containingView)
  {
    [(UIView *)containingView bringSubviewToFront:a3];
  }
}

- (void)addContentView:(id)a3 fromViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SiriSharedUIViewStackContainer *)self delegate];
  [v8 viewStackContainer:self willBeginHostingChildViewController:v6];

  [(SiriSharedUIViewStackContainer *)self addContentView:v7];
  v9 = [(SiriSharedUIViewStackContainer *)self delegate];
  [v9 viewStackContainer:self didBeginHostingChildViewController:v6];
}

- (void)addContentView:(id)a3
{
  v6 = a3;
  [v6 setStackContainerDelegate:self];
  v4 = +[SiriSharedUIViewStackConstraints constraints];
  [v6 setStackConstraints:v4];

  [(UIView *)self->_containingView addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SiriSharedUIViewStackContainer *)self _attachContentView:v6];
  v5 = [v6 attachmentType];
  if (v5 <= 3)
  {
    [*(&self->super.super.super.super.isa + *off_278354B78[v5]) addContentView:v6];
  }
}

- (void)removeContentView:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 removeFromSuperview];
  v5 = [(SiriSharedUIViewStackContainer *)self _stackContainingContentView:v4];
  v6 = [v5 nextViewAfterContentView:v4];
  v26 = self;
  v7 = [v4 attachmentType] == 1 && objc_msgSend(v6, "attachmentType") == 1;
  v8 = [MEMORY[0x277CBEB18] array];
  if (v7)
  {
    v9 = [v4 stackConstraints];
    v10 = [v9 bottomConstraint];

    if (v10)
    {
      [v8 addObject:v10];
    }

    v11 = [v6 stackConstraints];
    v12 = [v11 bottomConstraint];

    if (v12)
    {
      [v12 setActive:0];
      [v6 removeConstraint:v12];
    }
  }

  v13 = [v4 stackConstraints];
  v14 = [v13 heightConstraint];
  [v14 setActive:0];

  v15 = [v4 stackConstraints];
  [v15 setHeightConstraint:0];

  [v5 removeContentView:v4];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v8;
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
        v22 = [v6 bottomAnchor];
        v23 = [v21 secondAnchor];
        v24 = [v22 constraintEqualToAnchor:v23];

        [v24 setActive:1];
        v25 = [v6 stackConstraints];
        [v25 setBottomConstraint:v24];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  [v6 portraitContentSize];
  [(SiriSharedUIViewStackContainer *)v26 stackableContentWillUpdateLayout:v6 withUpdatedContentSize:0 animated:?];
}

- (void)_attachContentView:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 attachmentType];
  [v4 portraitContentSize];
  v7 = v6;
  v8 = [v4 leadingAnchor];
  v9 = [(UIView *)self->_containingView leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:0.0];

  [v10 setActive:1];
  v11 = [v4 stackConstraints];
  [v11 setLeadingConstraint:v10];

  v12 = [v4 trailingAnchor];
  v13 = [(UIView *)self->_containingView trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

  [v14 setActive:1];
  v15 = [v4 stackConstraints];
  [v15 setTrailingConstraint:v14];

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v31 = [v4 bottomAnchor];
      v32 = [(UIView *)self->_containingView bottomAnchor];
      v18 = [v31 constraintLessThanOrEqualToAnchor:v32];

      LODWORD(v33) = 1148846080;
      [v18 setPriority:v33];
      [v18 setActive:1];
      v34 = [v4 stackConstraints];
      [v34 setBottomConstraint:v18];

      v35 = [v4 topAnchor];
      v36 = [(UIView *)self->_containingView topAnchor];
      v22 = [v35 constraintGreaterThanOrEqualToAnchor:v36];

      v24 = v22;
      LODWORD(v23) = 1148846080;
LABEL_11:
      [v24 setPriority:v23];
      [v22 setActive:1];
      v37 = [v4 stackConstraints];
      [v37 setTopConstraint:v22];

      goto LABEL_14;
    }

    if (v5 != 3)
    {
      goto LABEL_15;
    }

    v25 = [(SiriSharedUIViewStack *)self->_listViewStack mostRecentlyAddedView];
    v18 = v25;
    if (v25)
    {
      v26 = [v25 stackConstraints];
      v27 = [v26 bottomConstraint];

      [v18 removeConstraint:v27];
      [v27 setActive:0];
      v28 = [v18 stackConstraints];
      [v28 setBottomConstraint:0];

      [v18 bottomAnchor];
    }

    else
    {
      [(UIView *)self->_containingView topAnchor];
    }
    v22 = ;
    v38 = [v4 topAnchor];
    v39 = [v38 constraintEqualToAnchor:v22];

    [v39 setActive:1];
    v40 = [v4 stackConstraints];
    [v40 setTopConstraint:v39];

    v41 = [v4 bottomAnchor];
    v42 = [(UIView *)self->_containingView bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    [v43 setActive:1];
    v44 = [v4 stackConstraints];
    [v44 setBottomConstraint:v43];
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_15;
      }

      v16 = [v4 bottomAnchor];
      v17 = [(SiriSharedUIViewStackContainer *)self _mostRecentBottomStackViewAnchor];
      [v4 attachmentYOffset];
      v18 = [v16 constraintEqualToAnchor:v17 constant:?];

      [v18 setActive:1];
      v19 = [v4 stackConstraints];
      [v19 setBottomConstraint:v18];

      v20 = [v4 topAnchor];
      v21 = [(UIView *)self->_containingView topAnchor];
      v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

      LODWORD(v23) = 1148846080;
      v24 = v22;
      goto LABEL_11;
    }

    v29 = [v4 topAnchor];
    v30 = [(SiriSharedUIViewStackContainer *)self _mostRecentTopStackViewAnchor];
    [v4 attachmentYOffset];
    v18 = [v29 constraintEqualToAnchor:v30 constant:?];

    [v18 setActive:1];
    v22 = [v4 stackConstraints];
    [v22 setTopConstraint:v18];
  }

LABEL_14:

LABEL_15:
  if (objc_opt_respondsToSelector())
  {
    v45 = [v4 customAttachmentConstraints];
    v46 = v45;
    if (v45)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v47 = [v45 countByEnumeratingWithState:&v55 objects:v59 count:16];
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

  v51 = [v4 heightAnchor];
  v52 = [v51 constraintEqualToConstant:v7];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 useLowerPriorityHeightConstraint])
  {
    LODWORD(v53) = 1137180672;
    [v52 setPriority:v53];
  }

  [v52 setActive:1];
  v54 = [v4 stackConstraints];
  [v54 setHeightConstraint:v52];
}

- (void)relayout
{
  v14 = *MEMORY[0x277D85DE8];
  [(SiriSharedUIViewStackContainer *)self _updateContainingViewConstraints];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(SiriSharedUIViewStackContainer *)self contentViews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 relayout];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)willPresentModalContent
{
  v3 = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SiriSharedUIViewStack *)self->_bottomViewStack viewAtIndex:0];
    v6 = [v5 stackConstraints];
    v13 = [v6 bottomConstraint];

    LODWORD(v7) = 1132068864;
    [v13 setPriority:v7];
    v8 = [(SiriSharedUIViewStack *)self->_bottomViewStack mostRecentlyAddedView];
    v9 = [v8 topAnchor];
    v10 = [(UIView *)self->_containingView topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    temporaryTopConstraintForBottomViewStack = self->_temporaryTopConstraintForBottomViewStack;
    self->_temporaryTopConstraintForBottomViewStack = v11;

    [(NSLayoutConstraint *)self->_temporaryTopConstraintForBottomViewStack setActive:1];
    [(SiriSharedUIViewStackContainer *)self layoutIfNeeded];
  }
}

- (void)willDismissModalContent
{
  v3 = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SiriSharedUIViewStack *)self->_bottomViewStack viewAtIndex:0];
    v6 = [v5 stackConstraints];
    v8 = [v6 bottomConstraint];

    LODWORD(v7) = 1148846080;
    [v8 setPriority:v7];
    [(NSLayoutConstraint *)self->_temporaryTopConstraintForBottomViewStack setActive:0];
    [(SiriSharedUIViewStackContainer *)self layoutIfNeeded];
  }
}

- (void)didDismissModalContent
{
  v3 = [(SiriSharedUIViewStack *)self->_bottomViewStack contentViews];
  v4 = [v3 count];

  if (v4)
  {
    [(UIView *)self->_containingView removeConstraint:self->_temporaryTopConstraintForBottomViewStack];
    temporaryTopConstraintForBottomViewStack = self->_temporaryTopConstraintForBottomViewStack;
    self->_temporaryTopConstraintForBottomViewStack = 0;
  }
}

- (void)stackableContentWillUpdateLayout:(id)a3 withUpdatedContentSize:(CGSize)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [(SiriSharedUIViewStackContainer *)self _stackContainingContentView:v9];
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

    v13 = [v9 stackConstraints];
    v14 = [v13 leadingConstraint];
    [v14 setConstant:v12];

    v15 = [v9 stackConstraints];
    v16 = [v15 trailingConstraint];
    [v16 setConstant:-v12];

    v17 = [v9 stackConstraints];
    v18 = [v17 heightConstraint];

    [v9 removeConstraint:v18];
    [v18 setActive:0];
    v19 = [v9 heightAnchor];
    v20 = [v19 constraintEqualToConstant:height];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 useLowerPriorityHeightConstraint])
    {
      LODWORD(v21) = 1137180672;
      [v20 setPriority:v21];
    }

    [v20 setActive:1];
    v22 = [v9 stackConstraints];
    [v22 setHeightConstraint:v20];

    [v9 setNeedsLayout];
    v23 = [v9 superview];
    [v23 setNeedsLayout];

    if (v5)
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

- (id)stackableViewsWithAttachment:(int64_t)a3
{
  if (a3 <= 3)
  {
    a2 = [*(&self->super.super.super.super.isa + *off_278354B78[a3]) contentViews];
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