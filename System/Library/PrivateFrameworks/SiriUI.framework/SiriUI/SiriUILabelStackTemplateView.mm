@interface SiriUILabelStackTemplateView
- (NSLayoutConstraint)bottomViewConstraint;
- (NSLayoutConstraint)topViewConstraint;
- (SiriUILabelStackTemplateView)initWithDataSource:(id)source;
- (SiriUILabelStackTemplateViewDelegate)delegate;
- (double)desiredHeight;
- (void)_createContentLayoutGuides;
- (void)_updateTopAndBottomViewConstraints;
- (void)insertLeadingView:(id)view withMargins:(UIEdgeInsets)margins;
- (void)insertTopView:(id)view;
- (void)insertTrailingView:(id)view withMargins:(UIEdgeInsets)margins;
- (void)populateStack;
- (void)reloadData;
- (void)removeFromTemplatedSuperview;
- (void)setDataSource:(id)source;
- (void)setTemplatedSuperview:(id)superview;
- (void)updateConstraints;
@end

@implementation SiriUILabelStackTemplateView

- (SiriUILabelStackTemplateView)initWithDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = SiriUILabelStackTemplateView;
  v5 = [(SiriUIBaseTemplateView *)&v14 initWithDataSource:sourceCopy];
  v6 = v5;
  if (v5)
  {
    v5->_defaultTextAlignment = 4;
    dataSource = [(SiriUIBaseTemplateView *)v5 dataSource];
    alignmentValue = [dataSource alignmentValue];

    if (alignmentValue == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4;
    }

    [(SiriUILabelStackTemplateView *)v6 setDefaultTextAlignment:v9];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    componentsForViews = v6->_componentsForViews;
    v6->_componentsForViews = v10;

    [(SiriUILabelStackTemplateView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SiriUILabelStackTemplateView *)v6 _createContentLayoutGuides];
    v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    [(SiriUILabelStackTemplateView *)v6 addConstraint:v12];

    [(SiriUILabelStackTemplateView *)v6 setDataSource:sourceCopy];
    [(SiriUILabelStackTemplateView *)v6 setNeedsUpdateConstraints];
    [(SiriUILabelStackTemplateView *)v6 setNeedsLayout];
  }

  return v6;
}

- (void)_createContentLayoutGuides
{
  v26[4] = *MEMORY[0x277D85DE8];
  if (!self->_contentBoundsGuide)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentBoundsGuide = self->_contentBoundsGuide;
    self->_contentBoundsGuide = v3;

    [(UILayoutGuide *)self->_contentBoundsGuide setIdentifier:@"outer margins guide"];
    [(SiriUILabelStackTemplateView *)self addLayoutGuide:self->_contentBoundsGuide];
    v5 = [(UIView *)self siriui_pinToLayoutGuide:self->_contentBoundsGuide];
    contentBoundsGuideConstraints = self->_contentBoundsGuideConstraints;
    self->_contentBoundsGuideConstraints = v5;
  }

  if (!self->_stackedComponentsBoundsGuide)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756D0]);
    stackedComponentsBoundsGuide = self->_stackedComponentsBoundsGuide;
    self->_stackedComponentsBoundsGuide = v7;

    [(UILayoutGuide *)self->_stackedComponentsBoundsGuide setIdentifier:@"inner components guide"];
    [(SiriUILabelStackTemplateView *)self addLayoutGuide:self->_stackedComponentsBoundsGuide];
    leadingAnchor = [(UILayoutGuide *)self->_stackedComponentsBoundsGuide leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self->_contentBoundsGuide leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    trailingAnchor = [(UILayoutGuide *)self->_stackedComponentsBoundsGuide trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_contentBoundsGuide trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    topAnchor = [(UILayoutGuide *)self->_stackedComponentsBoundsGuide topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_contentBoundsGuide topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];

    bottomAnchor = [(UILayoutGuide *)self->_stackedComponentsBoundsGuide bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_contentBoundsGuide bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    v25[0] = &unk_287A0D190;
    v25[1] = &unk_287A0D1A8;
    v26[0] = v17;
    v26[1] = v20;
    v25[2] = &unk_287A0D1C0;
    v25[3] = &unk_287A0D1D8;
    v26[2] = v11;
    v26[3] = v14;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
    v22 = [v21 mutableCopy];
    stackedComponentsGuideConstraints = self->_stackedComponentsGuideConstraints;
    self->_stackedComponentsGuideConstraints = v22;

    allValues = [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints allValues];
    [(SiriUILabelStackTemplateView *)self addConstraints:allValues];
  }
}

- (void)_updateTopAndBottomViewConstraints
{
  WeakRetained = objc_loadWeakRetained(&self->_topViewConstraint);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_topViewConstraint);
    [(SiriUILabelStackTemplateView *)self removeConstraint:v4];
  }

  v5 = objc_loadWeakRetained(&self->_bottomViewConstraint);

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_bottomViewConstraint);
    [(SiriUILabelStackTemplateView *)self removeConstraint:v6];
  }

  topView = [(SiriUILabelStackTemplateView *)self topView];
  if (topView)
  {
    v8 = topView;
    topView2 = [(SiriUILabelStackTemplateView *)self topView];
    bottomView = [(SiriUILabelStackTemplateView *)self bottomView];

    if (topView2 == bottomView)
    {
      topView3 = [(SiriUILabelStackTemplateView *)self topView];
      centerYAnchor = [topView3 centerYAnchor];
      stackedComponentsBoundsGuide = [(SiriUILabelStackTemplateView *)self stackedComponentsBoundsGuide];
      centerYAnchor2 = [stackedComponentsBoundsGuide centerYAnchor];
      v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      LODWORD(v16) = 1132068864;
      [v15 setPriority:v16];
      [(SiriUILabelStackTemplateView *)self addConstraint:v15];
    }
  }

  topView4 = [(SiriUILabelStackTemplateView *)self topView];

  if (topView4)
  {
    componentsForViews = [(SiriUILabelStackTemplateView *)self componentsForViews];
    v19 = MEMORY[0x277CCAE60];
    topView5 = [(SiriUILabelStackTemplateView *)self topView];
    v21 = [v19 valueWithPointer:topView5];
    v22 = [componentsForViews objectForKey:v21];

    v23 = +[SiriUIComponentConstraintFactory sharedConstraintFactory];
    topView6 = [(SiriUILabelStackTemplateView *)self topView];
    stackedComponentsBoundsGuide2 = [(SiriUILabelStackTemplateView *)self stackedComponentsBoundsGuide];
    v26 = [v23 topConstraintForView:topView6 fromLayoutGuide:stackedComponentsBoundsGuide2 templateComponent:v22 layoutStyle:{-[SiriUILabelStackTemplateView layoutStyle](self, "layoutStyle")}];
    objc_storeWeak(&self->_topViewConstraint, v26);

    v27 = objc_loadWeakRetained(&self->_topViewConstraint);
    if (!v27)
    {
      topView7 = [(SiriUILabelStackTemplateView *)self topView];
      contentBoundsGuide = [(SiriUILabelStackTemplateView *)self contentBoundsGuide];
      templatedSuperview = [(SiriUIBaseTemplateView *)self templatedSuperview];
      [templatedSuperview templatedContentMargins];
      v31 = [topView7 siriui_pinTopTo:contentBoundsGuide withMargin:? priority:?];
      objc_storeWeak(&self->_topViewConstraint, v31);
    }

    v32 = objc_loadWeakRetained(&self->_topViewConstraint);
    [(SiriUILabelStackTemplateView *)self addConstraint:v32];
  }

  bottomView2 = [(SiriUILabelStackTemplateView *)self bottomView];

  if (bottomView2)
  {
    componentsForViews2 = [(SiriUILabelStackTemplateView *)self componentsForViews];
    v35 = MEMORY[0x277CCAE60];
    bottomView3 = [(SiriUILabelStackTemplateView *)self bottomView];
    v37 = [v35 valueWithPointer:bottomView3];
    v49 = [componentsForViews2 objectForKey:v37];

    v38 = +[SiriUIComponentConstraintFactory sharedConstraintFactory];
    bottomView4 = [(SiriUILabelStackTemplateView *)self bottomView];
    stackedComponentsBoundsGuide3 = [(SiriUILabelStackTemplateView *)self stackedComponentsBoundsGuide];
    v41 = [v38 bottomConstraintForView:bottomView4 fromLayoutGuide:stackedComponentsBoundsGuide3 templateComponent:v49 layoutStyle:{-[SiriUILabelStackTemplateView layoutStyle](self, "layoutStyle")}];
    objc_storeWeak(&self->_bottomViewConstraint, v41);

    v42 = objc_loadWeakRetained(&self->_bottomViewConstraint);
    if (!v42)
    {
      bottomView5 = [(SiriUILabelStackTemplateView *)self bottomView];
      templatedSuperview2 = [(SiriUIBaseTemplateView *)self templatedSuperview];
      [templatedSuperview2 templatedContentMargins];
      LODWORD(v45) = 1132003328;
      v47 = [bottomView5 siriui_pinBottomTo:self withMargin:v46 priority:v45];
      objc_storeWeak(&self->_bottomViewConstraint, v47);
    }

    v48 = objc_loadWeakRetained(&self->_bottomViewConstraint);
    [(SiriUILabelStackTemplateView *)self addConstraint:v48];
  }
}

- (void)updateConstraints
{
  v25.receiver = self;
  v25.super_class = SiriUILabelStackTemplateView;
  [(SiriUILabelStackTemplateView *)&v25 updateConstraints];
  if (!self->_constraintsUpdated)
  {
    templatedSuperview = [(SiriUIBaseTemplateView *)self templatedSuperview];

    if (templatedSuperview)
    {
      [(SiriUILabelStackTemplateView *)self _updateTopAndBottomViewConstraints];
      self->_constraintsUpdated = 1;
    }
  }

  templatedSuperview2 = [(SiriUIBaseTemplateView *)self templatedSuperview];

  if (templatedSuperview2)
  {
    templatedSuperview3 = [(SiriUIBaseTemplateView *)self templatedSuperview];
    [templatedSuperview3 templatedContentMargins];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints objectForKeyedSubscript:&unk_287A0D190];
    [v14 setConstant:v7];

    v15 = [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints objectForKeyedSubscript:&unk_287A0D1A8];
    [v15 setConstant:-v11];

    v16 = [(NSDictionary *)self->_contentBoundsGuideConstraints objectForKeyedSubscript:&unk_287A0D1C0];
    [v16 setConstant:v9];

    v17 = [(NSDictionary *)self->_contentBoundsGuideConstraints objectForKeyedSubscript:&unk_287A0D1D8];
    [v17 setConstant:-v13];
  }

  delegate = [(SiriUILabelStackTemplateView *)self delegate];
  v19 = [delegate labelStackTemplateViewShouldLayoutCompressed:self];

  v20 = 0.0;
  if ((v19 & 1) == 0)
  {
    dataSource = [(SiriUIBaseTemplateView *)self dataSource];
    paddingValue = [dataSource paddingValue];

    if (paddingValue == 1)
    {
      v20 = 22.0;
    }

    else
    {
      v20 = 0.0;
    }
  }

  v23 = [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints objectForKeyedSubscript:&unk_287A0D190];
  [v23 setConstant:v20];

  v24 = [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints objectForKeyedSubscript:&unk_287A0D1A8];
  [v24 setConstant:-v20];
}

- (void)insertLeadingView:(id)view withMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  left = margins.left;
  viewCopy = view;
  leadingViews = self->_leadingViews;
  v28 = viewCopy;
  if (!leadingViews)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75A68]);
    v10 = self->_leadingViews;
    self->_leadingViews = v9;

    [(SiriUILabelStackTemplateView *)self addSubview:self->_leadingViews];
    [(UIStackView *)self->_leadingViews setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_leadingViews setAlignment:0];
    [(UIStackView *)self->_leadingViews setAxis:0];
    LODWORD(v11) = 1144750080;
    [(UIStackView *)self->_leadingViews setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v12) = 1132068864;
    [(UIStackView *)self->_leadingViews setContentCompressionResistancePriority:0 forAxis:v12];
    v13 = self->_leadingViews;
    contentBoundsGuide = [(SiriUILabelStackTemplateView *)self contentBoundsGuide];
    v15 = [(UIStackView *)v13 siriui_pinLeadingToLeadingEdgeOf:contentBoundsGuide withMargin:0.0];

    v16 = [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints objectForKeyedSubscript:&unk_287A0D1C0];
    [(SiriUILabelStackTemplateView *)self removeConstraint:v16];

    v17 = [(UIStackView *)self->_leadingViews siriui_pinTrailingToLeadingEdgeOf:self->_stackedComponentsBoundsGuide withMargin:-12.0];
    [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints setObject:v17 forKeyedSubscript:&unk_287A0D1C0];
    centerYAnchor = [(UIStackView *)self->_leadingViews centerYAnchor];
    centerYAnchor2 = [(UILayoutGuide *)self->_stackedComponentsBoundsGuide centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    LODWORD(v21) = 1132068864;
    [v20 setPriority:v21];
    [(SiriUILabelStackTemplateView *)self addConstraint:v20];

    viewCopy = v28;
    leadingViews = self->_leadingViews;
  }

  [(UIStackView *)leadingViews addArrangedSubview:viewCopy];
  v22 = +[SiriUIComponentConstraintFactory sharedConstraintFactory];
  contentBoundsGuide2 = [(SiriUILabelStackTemplateView *)self contentBoundsGuide];
  v24 = [v22 topConstraintForView:v28 fromLayoutGuide:contentBoundsGuide2 templateComponent:0 layoutStyle:{-[SiriUILabelStackTemplateView layoutStyle](self, "layoutStyle")}];

  if (v24)
  {
    [(SiriUILabelStackTemplateView *)self addConstraint:v24];
  }

  v25 = +[SiriUIComponentConstraintFactory sharedConstraintFactory];
  contentBoundsGuide3 = [(SiriUILabelStackTemplateView *)self contentBoundsGuide];
  v27 = [v25 bottomConstraintForView:v28 fromLayoutGuide:contentBoundsGuide3 templateComponent:0 layoutStyle:{-[SiriUILabelStackTemplateView layoutStyle](self, "layoutStyle")}];

  if (v27)
  {
    [(SiriUILabelStackTemplateView *)self addConstraint:v27];
  }

  [(UIStackView *)self->_leadingViews setSpacing:fabs(left) + fabs(right)];
}

- (void)insertTrailingView:(id)view withMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  left = margins.left;
  viewCopy = view;
  trailingViews = self->_trailingViews;
  v22 = viewCopy;
  if (!trailingViews)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75A68]);
    v10 = self->_trailingViews;
    self->_trailingViews = v9;

    [(SiriUILabelStackTemplateView *)self addSubview:self->_trailingViews];
    [(UIStackView *)self->_trailingViews setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_trailingViews setAlignment:0];
    [(UIStackView *)self->_trailingViews setAxis:0];
    LODWORD(v11) = 1144750080;
    [(UIStackView *)self->_trailingViews setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v12) = 1132068864;
    [(UIStackView *)self->_trailingViews setContentCompressionResistancePriority:0 forAxis:v12];
    v13 = self->_trailingViews;
    contentBoundsGuide = [(SiriUILabelStackTemplateView *)self contentBoundsGuide];
    v15 = [(UIStackView *)v13 siriui_pinTrailingToTrailingEdgeOf:contentBoundsGuide withMargin:0.0];

    v16 = [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints objectForKeyedSubscript:&unk_287A0D1D8];
    [(SiriUILabelStackTemplateView *)self removeConstraint:v16];

    v17 = [(UIStackView *)self->_trailingViews siriui_pinLeadingToTrailingEdgeOf:self->_stackedComponentsBoundsGuide withMargin:12.0];
    [(NSMutableDictionary *)self->_stackedComponentsGuideConstraints setObject:v17 forKeyedSubscript:&unk_287A0D1D8];
    centerYAnchor = [(UIStackView *)self->_trailingViews centerYAnchor];
    stackedComponentsBoundsGuide = [(SiriUILabelStackTemplateView *)self stackedComponentsBoundsGuide];
    centerYAnchor2 = [stackedComponentsBoundsGuide centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(SiriUILabelStackTemplateView *)self addConstraint:v21];

    viewCopy = v22;
    trailingViews = self->_trailingViews;
  }

  [(UIStackView *)trailingViews addArrangedSubview:viewCopy];
  [(UIStackView *)self->_trailingViews setSpacing:fabs(left) + fabs(right)];
}

- (void)insertTopView:(id)view
{
  viewCopy = view;
  [(SiriUILabelStackTemplateView *)self addSubview:viewCopy];
  topView = [(SiriUILabelStackTemplateView *)self topView];

  if (topView)
  {
    topView2 = [(SiriUILabelStackTemplateView *)self topView];
    componentsForViews = [(SiriUILabelStackTemplateView *)self componentsForViews];
    v8 = [MEMORY[0x277CCAE60] valueWithPointer:topView2];
    v9 = [componentsForViews objectForKey:v8];

    v10 = +[SiriUIComponentConstraintFactory sharedConstraintFactory];
    v11 = [v10 verticalConstraintFromUpperView:viewCopy lowerView:topView2 upperTemplateComponent:0 lowerTemplateComponent:v9 layoutStyle:{-[SiriUILabelStackTemplateView layoutStyle](self, "layoutStyle")}];

    [(SiriUILabelStackTemplateView *)self addConstraint:v11];
  }

  else
  {
    [(SiriUILabelStackTemplateView *)self setBottomView:viewCopy];
  }

  [(SiriUILabelStackTemplateView *)self setTopView:viewCopy];

  [(SiriUILabelStackTemplateView *)self _updateTopAndBottomViewConstraints];

  [(SiriUILabelStackTemplateView *)self setNeedsUpdateConstraints];
}

- (double)desiredHeight
{
  [(UILayoutGuide *)self->_contentBoundsGuide layoutFrame];

  return CGRectGetMaxY(*&v2);
}

- (void)removeFromTemplatedSuperview
{
  templatedSuperview = [(SiriUIBaseTemplateView *)self templatedSuperview];
  [templatedSuperview templateSubviewWantsToBeRemovedFromHierarchy:self];
}

- (void)populateStack
{
  v28 = *MEMORY[0x277D85DE8];
  topView = [(SiriUILabelStackTemplateView *)self topView];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  dataSource = [(SiriUIBaseTemplateView *)self dataSource];
  labelComponents = [dataSource labelComponents];

  obj = labelComponents;
  v6 = [labelComponents countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      v10 = 0;
      v11 = topView;
      v12 = v8;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * v10);
        v14 = [SiriUILabelComponentView viewForComponent:v13];
        componentsForViews = [(SiriUILabelStackTemplateView *)self componentsForViews];
        v16 = [MEMORY[0x277CCAE60] valueWithPointer:v14];
        [componentsForViews setObject:v13 forKey:v16];

        [(SiriUILabelStackTemplateView *)self addSubview:v14];
        if (v11)
        {
          v17 = +[SiriUIComponentConstraintFactory sharedConstraintFactory];
          v18 = [v17 verticalConstraintFromUpperView:v11 lowerView:v14 upperTemplateComponent:v12 lowerTemplateComponent:v13 layoutStyle:{-[SiriUILabelStackTemplateView layoutStyle](self, "layoutStyle")}];

          [(SiriUILabelStackTemplateView *)self addConstraint:v18];
        }

        else
        {
          [(SiriUILabelStackTemplateView *)self setTopView:v14];
        }

        v19 = [v14 siriui_pinLeadingToLeadingEdgeOf:self->_stackedComponentsBoundsGuide withMargin:0.0];
        v20 = [v14 siriui_pinTrailingToTrailingEdgeOf:self->_stackedComponentsBoundsGuide withMargin:0.0];
        v8 = v13;

        topView = v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = topView;
          [v21 setTextAlignment:{-[SiriUILabelStackTemplateView defaultTextAlignment](self, "defaultTextAlignment")}];
        }

        [(SiriUILabelStackTemplateView *)self setBottomView:topView];

        ++v10;
        v11 = topView;
        v12 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }
}

- (void)setTemplatedSuperview:(id)superview
{
  superviewCopy = superview;
  v7.receiver = self;
  v7.super_class = SiriUILabelStackTemplateView;
  [(SiriUIBaseTemplateView *)&v7 setTemplatedSuperview:superviewCopy];
  if (superviewCopy)
  {
    v5 = [(UIView *)self siriui_pinLeadingTo:superviewCopy withMargin:0.0];
    v6 = [(UIView *)self siriui_pinTrailingTo:superviewCopy withMargin:0.0];
    [(SiriUILabelStackTemplateView *)self setNeedsUpdateConstraints];
  }
}

- (void)reloadData
{
  [(SiriUILabelStackTemplateView *)self populateStack];

  [(SiriUILabelStackTemplateView *)self setNeedsUpdateConstraints];
}

- (void)setDataSource:(id)source
{
  v4.receiver = self;
  v4.super_class = SiriUILabelStackTemplateView;
  [(SiriUIBaseTemplateView *)&v4 setDataSource:source];
  [(SiriUILabelStackTemplateView *)self reloadData];
}

- (SiriUILabelStackTemplateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSLayoutConstraint)topViewConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_topViewConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomViewConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomViewConstraint);

  return WeakRetained;
}

@end