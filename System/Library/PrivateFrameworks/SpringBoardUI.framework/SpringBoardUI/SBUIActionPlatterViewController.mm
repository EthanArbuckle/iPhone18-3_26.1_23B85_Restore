@interface SBUIActionPlatterViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (SBUIActionPlatterViewController)initWithActions:(id)actions gestureRecognizer:(id)recognizer;
- (SBUIActionPlatterViewController)initWithCoder:(id)coder;
- (SBUIActionPlatterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBUIActionPlatterViewControllerDelegate)delegate;
- (UILongPressGestureRecognizer)gestureRecognizer;
- (void)_handleLongPressGestureRecognizer:(id)recognizer;
- (void)_updateKeylineViews;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)setImagePosition:(int64_t)position;
- (void)setReversesActions:(BOOL)actions;
- (void)setSystemInteractionStartIndex:(unint64_t)index;
@end

@implementation SBUIActionPlatterViewController

- (SBUIActionPlatterViewController)initWithActions:(id)actions gestureRecognizer:(id)recognizer
{
  actionsCopy = actions;
  recognizerCopy = recognizer;
  v12.receiver = self;
  v12.super_class = SBUIActionPlatterViewController;
  v8 = [(SBUIActionPlatterViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [actionsCopy copy];
    actions = v8->_actions;
    v8->_actions = v9;

    objc_storeWeak(&v8->_gestureRecognizer, recognizerCopy);
    v8->_reversesActions = 0;
    v8->_imagePosition = 0;
    v8->_systemInteractionStartIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (SBUIActionPlatterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE648];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"%s is not a valid initializer. You must call -[%@ initWithActions:gestureRecognizer:].", "-[SBUIActionPlatterViewController initWithNibName:bundle:]", v8}];

  return [(SBUIActionPlatterViewController *)self initWithActions:0 gestureRecognizer:0];
}

- (SBUIActionPlatterViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBUIActionPlatterViewController;
  v9 = [(SBUIActionPlatterViewController *)&v11 initWithCoder:coderCopy];

  return v9;
}

- (void)loadView
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = 0x277D75000uLL;
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  actions = [(SBUIActionPlatterViewController *)self actions];
  if ([actions count])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([(SBUIActionPlatterViewController *)self reversesActions])
    {
      reverseObjectEnumerator = [actions reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      actions = allObjects;
    }

    imagePosition = [(SBUIActionPlatterViewController *)self imagePosition];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    actions = actions;
    v15 = [actions countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v58;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v58 != v17)
          {
            objc_enumerationMutation(actions);
          }

          v19 = *(*(&v57 + 1) + 8 * i);
          v20 = [SBUIActionView alloc];
          v21 = [(SBUIActionView *)v20 initWithAction:v19, v57];
          [(SBUIActionView *)v21 setImagePosition:imagePosition];
          [(SBUIActionView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v11 addObject:v21];
        }

        v16 = [actions countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v16);
    }

    v22 = [MEMORY[0x277CBEA60] arrayWithArray:v11];

    v3 = 0x277D75000;
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:v22];
  stackView = self->_stackView;
  self->_stackView = v23;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:self->_stackView];
  v25 = [objc_alloc(*(v3 + 3352)) initWithFrame:{v5, v6, v7, v8}];
  keylinesContainerView = self->_keylinesContainerView;
  self->_keylinesContainerView = v25;

  [(UIView *)self->_keylinesContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:self->_keylinesContainerView];
  [(SBUIActionPlatterViewController *)self _updateKeylineViews];
  leftAnchor = [(UIStackView *)self->_stackView leftAnchor];
  leftAnchor2 = [v9 leftAnchor];
  v29 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v29 setActive:1];

  rightAnchor = [(UIStackView *)self->_stackView rightAnchor];
  rightAnchor2 = [v9 rightAnchor];
  v32 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v32 setActive:1];

  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [v9 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v35 setActive:1];

  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [v9 bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v38 setActive:1];

  leftAnchor3 = [(UIView *)self->_keylinesContainerView leftAnchor];
  leftAnchor4 = [v9 leftAnchor];
  v41 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v41 setActive:1];

  rightAnchor3 = [(UIView *)self->_keylinesContainerView rightAnchor];
  rightAnchor4 = [v9 rightAnchor];
  v44 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v44 setActive:1];

  topAnchor3 = [(UIView *)self->_keylinesContainerView topAnchor];
  topAnchor4 = [v9 topAnchor];
  v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v47 setActive:1];

  bottomAnchor3 = [(UIView *)self->_keylinesContainerView bottomAnchor];
  bottomAnchor4 = [v9 bottomAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v50 setActive:1];

  v51 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleLongPressGestureRecognizer_];
  [v51 setDelegate:self];
  [v51 setMinimumPressDuration:0.0];
  [v9 addGestureRecognizer:v51];
  v52 = objc_alloc(MEMORY[0x277D75A10]);
  defaultConfiguration = [MEMORY[0x277D76228] defaultConfiguration];
  v54 = [v52 initWithConfiguration:defaultConfiguration coordinateSpace:v9];
  feedbackRetargetBehavior = self->_feedbackRetargetBehavior;
  self->_feedbackRetargetBehavior = v54;

  [(SBUIActionPlatterViewController *)self setView:v9];
  v56 = *MEMORY[0x277D85DE8];
}

- (void)setSystemInteractionStartIndex:(unint64_t)index
{
  if (self->_systemInteractionStartIndex != index)
  {
    self->_systemInteractionStartIndex = index;
    [(SBUIActionPlatterViewController *)self _updateKeylineViews];
  }
}

- (void)setReversesActions:(BOOL)actions
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_reversesActions != actions)
  {
    self->_reversesActions = actions;
    if ([(SBUIActionPlatterViewController *)self isViewLoaded])
    {
      arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      reverseObjectEnumerator = [arrangedSubviews reverseObjectEnumerator];
      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            [(UIStackView *)self->_stackView addArrangedSubview:*(*(&v11 + 1) + 8 * i)];
          }

          v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      [(SBUIActionPlatterViewController *)self _updateKeylineViews];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setImagePosition:(int64_t)position
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_imagePosition != position)
  {
    self->_imagePosition = position;
    if ([(SBUIActionPlatterViewController *)self isViewLoaded])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
      v6 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(arrangedSubviews);
            }

            [*(*(&v11 + 1) + 8 * i) setImagePosition:position];
          }

          v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);

    if (v5)
    {
      *&self->_delegateRespondsTo &= ~1u;
    }

    v6 = objc_storeWeak(&self->_delegate, obj);

    if (obj)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
    }
  }
}

- (void)_updateKeylineViews
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  subviews = [(UIView *)self->_keylinesContainerView subviews];
  v4 = [subviews countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v27 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  if ([arrangedSubviews count] >= 2)
  {
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = 1;
    do
    {
      v14 = [arrangedSubviews objectAtIndexedSubscript:v13];
      v15 = [[SBUIActionKeylineView alloc] initWithFrame:v9, v10, v11, v12];
      [(SBUIActionKeylineView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_keylinesContainerView addSubview:v15];
      leadingAnchor = [(SBUIActionKeylineView *)v15 leadingAnchor];
      leadingAnchor2 = [v14 leadingAnchor];
      [v14 leadingContentMargin];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
      [v18 setActive:1];

      trailingAnchor = [(SBUIActionKeylineView *)v15 trailingAnchor];
      trailingAnchor2 = [v14 trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v21 setActive:1];

      topAnchor = [(SBUIActionKeylineView *)v15 topAnchor];
      topAnchor2 = [v14 topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v24 setActive:1];

      if (v13 == self->_systemInteractionStartIndex)
      {
        v25 = 3.0;
      }

      else
      {
        v25 = 1.0;
      }

      [(SBUIActionKeylineView *)v15 setHeight:v25];

      ++v13;
    }

    while (v13 < [arrangedSubviews count]);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleLongPressGestureRecognizer:(id)recognizer
{
  v48 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  if ([arrangedSubviews count])
  {
    if (*&self->_delegateRespondsTo)
    {
      delegate = [(SBUIActionPlatterViewController *)self delegate];
      v6 = [delegate actionPlatterViewControllerShouldRespondToTouches:self];
    }

    else
    {
      v6 = 1;
    }

    state = [recognizerCopy state];
    if ((state - 3) < 2)
    {
      if ([(UISelectionFeedbackGenerator *)self->_feedbackRetargetBehavior isActive])
      {
        [(UISelectionFeedbackGenerator *)self->_feedbackRetargetBehavior deactivate];
      }
    }

    else if ((state - 1) <= 1 && ([(UISelectionFeedbackGenerator *)self->_feedbackRetargetBehavior isActive]& 1) == 0)
    {
      [(UISelectionFeedbackGenerator *)self->_feedbackRetargetBehavior activateWithCompletionBlock:0];
    }

    if (v6)
    {
      v43 = 0uLL;
      v44 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      v9 = arrangedSubviews;
      v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v10)
      {
        v11 = *v42;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v42 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v41 + 1) + 8 * i);
            [recognizerCopy locationInView:v13];
            v15 = v14;
            v17 = v16;
            [v13 bounds];
            v49.x = v15;
            v49.y = v17;
            if (CGRectContainsPoint(v50, v49))
            {
              v10 = v13;
              goto LABEL_30;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v9;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v37 + 1) + 8 * j);
            if ([recognizerCopy state] == 2)
            {
              feedbackRetargetBehavior = self->_feedbackRetargetBehavior;
            }

            else
            {
              feedbackRetargetBehavior = 0;
            }

            [v27 setHighlighted:v27 == v10 withFeedbackRetargetBehavior:feedbackRetargetBehavior];
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v24);
      }

      if ([recognizerCopy state] == 3)
      {
        action = [v10 action];
        v30 = action;
        if (action)
        {
          handler = [action handler];
          handler[2]();
        }
      }
    }

    else
    {
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v10 = arrangedSubviews;
      v18 = [v10 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        do
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v33 + 1) + 8 * k) setHighlighted:{0, v33}];
          }

          v19 = [v10 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v19);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ((*&self->_delegateRespondsTo & 1) != 0 && (-[SBUIActionPlatterViewController delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 actionPlatterViewControllerShouldRespondToTouches:self], v5, !v6))
  {
    v9 = 0;
  }

  else
  {
    gestureRecognizer = [(SBUIActionPlatterViewController *)self gestureRecognizer];
    v8 = gestureRecognizer;
    if (gestureRecognizer)
    {
      v9 = [gestureRecognizer state] == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (UILongPressGestureRecognizer)gestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizer);

  return WeakRetained;
}

- (SBUIActionPlatterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end