@interface PRXCardContentViewController
- (PRXButton)infoButton;
- (PRXCardContentView)contentView;
- (PRXCardContentViewController)initWithContentView:(id)a3;
- (UIImageView)bottomTrayImageView;
- (id)addAction:(id)a3;
- (id)bottomTray;
- (void)_prxCommonInit;
- (void)_updateActionButtons;
- (void)_updateDismisalControls;
- (void)_updateSubtitleLabel;
- (void)_updateTitleLabel;
- (void)hideActivityIndicator;
- (void)loadView;
- (void)removeAction:(id)a3;
- (void)replaceAction:(id)a3 withNewAction:(id)a4;
- (void)scrollToBottom;
- (void)setAttributedBottomTrayTitle:(id)a3;
- (void)setAttributedSubtitle:(id)a3;
- (void)setAuxiliaryButtonWithSymbolName:(id)a3 handler:(id)a4;
- (void)setBottomTrayImageView:(id)a3;
- (void)setBottomTrayTitle:(id)a3;
- (void)setDesiredHeight:(double)a3;
- (void)setDismissButtonAction:(id)a3;
- (void)setDismissalType:(unint64_t)a3;
- (void)setInfoButtonAction:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)showActivityIndicatorWithStatus:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePreferredContentSizeForCardWidth:(double)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PRXCardContentViewController

- (PRXCardContentViewController)initWithContentView:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PRXCardContentViewController;
  v6 = [(PRXCardContentViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    [(PRXCardContentViewController *)v7 _prxCommonInit];
    if (v7->_contentView)
    {
      v8 = [[PRXCardContentWrapperView alloc] initWithContentView:v7->_contentView];
      wrapperView = v7->_wrapperView;
      v7->_wrapperView = v8;
    }

    v10 = v7;
  }

  return v7;
}

- (void)_prxCommonInit
{
  actions = self->_actions;
  self->_actions = MEMORY[0x277CBEBF8];

  [(PRXCardContentViewController *)self setModalPresentationStyle:4];
  v4 = [[PRXTransitioningController alloc] initWithPullDismissalProvider:self];
  transitionController = self->_transitionController;
  self->_transitionController = v4;

  [(PRXCardContentViewController *)self setTransitioningDelegate:self->_transitionController];

  [(PRXCardContentViewController *)self setDismissButtonAction:0];
}

- (PRXCardContentView)contentView
{
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  contentView = self->_contentView;

  return contentView;
}

- (void)loadView
{
  v3 = [objc_opt_class() contentViewClass];
  if (([v3 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE648];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"-[%@ contentViewClass] must return a subclass of PRXCardContentView", v13];
    v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  if (!self->_contentView)
  {
    v4 = [[v3 alloc] initWithCardStyle:0];
    contentView = self->_contentView;
    self->_contentView = v4;

    v6 = [[PRXCardContentWrapperView alloc] initWithContentView:self->_contentView];
    wrapperView = self->_wrapperView;
    self->_wrapperView = v6;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x277CBEAD8];
    v18 = *MEMORY[0x277CBE648];
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromClass(v3);
    v23 = [v19 stringWithFormat:@"%@'s contentView must be a %@", v21, v22];
    v24 = [v17 exceptionWithName:v18 reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  v8 = self->_wrapperView;

  [(PRXCardContentViewController *)self setView:v8];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRXCardContentViewController;
  [(PRXCardContentViewController *)&v3 viewDidLoad];
  [(PRXCardContentViewController *)self _updateTitleLabel];
  [(PRXCardContentViewController *)self _updateSubtitleLabel];
  [(PRXCardContentViewController *)self _updateDismisalControls];
  [(PRXCardContentViewController *)self _updateActionButtons];
}

- (void)updatePreferredContentSizeForCardWidth:(double)a3
{
  v5 = [(PRXCardContentViewController *)self contentView];
  [v5 updateTitleTextViewExclusionPathsForCardWidth:a3];

  v6 = [(PRXCardContentViewController *)self view];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [v6 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v7, v8}];
  v10 = v9;
  v12 = v11;

  [(PRXCardContentViewController *)self setPreferredContentSize:v10, v12];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PRXCardContentViewController;
  [(PRXCardContentViewController *)&v15 viewDidLayoutSubviews];
  if (!self->_transitioningSize)
  {
    v3 = [(PRXCardContentViewController *)self contentView];
    [(PRXCardContentView *)self->_contentView bounds];
    [v3 updateTitleTextViewExclusionPathsForCardWidth:CGRectGetWidth(v16)];

    v4 = [(PRXCardContentViewController *)self view];
    [(PRXCardContentView *)self->_contentView bounds];
    Width = CGRectGetWidth(v17);
    LODWORD(v6) = 1148846080;
    LODWORD(v7) = 1112014848;
    [v4 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v6, v7}];
    v9 = v8;
    v11 = v10;

    [(PRXCardContentViewController *)self preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [(PRXCardContentViewController *)self setPreferredContentSize:v9, v11];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = PRXCardContentViewController;
  v7 = a4;
  [(PRXCardContentViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_transitioningSize = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__PRXCardContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279ACC2E0;
  v9[4] = self;
  [v7 animateAlongsideTransition:0 completion:v9];

  v8 = [(PRXCardContentViewController *)self contentView];
  [v8 updateTitleTextViewExclusionPathsForCardWidth:width];
}

- (void)setDesiredHeight:(double)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  if (a3 == -1.0)
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    a3 = v6;

    v7 = PRXIsPad();
    v8 = fmin(a3 + -176.0, 890.0);
    if (v7)
    {
      a3 = v8;
    }
  }

  self->_desiredHeight = a3;
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 bounds];
  v11 = v10;

  if (a3 > v11)
  {
    a3 = v11;
  }

  v12 = MEMORY[0x277CBEB18];
  v13 = [(PRXCardContentWrapperView *)self->_wrapperView heightAnchor];
  v14 = [v13 constraintEqualToConstant:a3];
  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v16 = [v12 arrayWithArray:v15];

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
}

- (void)setTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRXCardContentViewController;
  [(PRXCardContentViewController *)&v4 setTitle:a3];
  [(PRXCardContentViewController *)self _updateTitleLabel];
}

- (void)_updateTitleLabel
{
  if ([(PRXCardContentViewController *)self isViewLoaded])
  {
    v7 = [(PRXCardContentViewController *)self title];
    v3 = [v7 length];
    contentView = self->_contentView;
    if (v3)
    {
      v5 = [(PRXCardContentView *)contentView titleTextView];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [PRXTextView textViewWithStyle:0];

        [(PRXCardContentView *)self->_contentView setTitleView:v6];
        v5 = v6;
      }

      [v5 setTitleText:v7];
    }

    else
    {
      [(PRXCardContentView *)contentView setTitleView:0];
    }

    [(PRXCardContentWrapperView *)self->_wrapperView setTitle:v7];
  }
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  subtitle = self->_subtitle;
  if (subtitle != v4)
  {
    v9 = v4;
    subtitle = [(NSString *)subtitle isEqualToString:v4];
    v4 = v9;
    if ((subtitle & 1) == 0)
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_subtitle;
      self->_subtitle = v6;

      if (v9)
      {
        v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
      }

      else
      {
        v8 = 0;
      }

      [(PRXCardContentViewController *)self setAttributedSubtitle:v8];

      v4 = v9;
    }
  }

  MEMORY[0x2821F96F8](subtitle, v4);
}

- (void)_updateSubtitleLabel
{
  if ([(PRXCardContentViewController *)self isViewLoaded])
  {
    v3 = [(NSAttributedString *)self->_attributedSubtitle length];
    contentView = self->_contentView;
    if (v3)
    {
      v5 = [(PRXCardContentView *)contentView subtitleLabel];
      if (!v5)
      {
        v6 = [PRXLabel labelWithStyle:1];
        [(PRXCardContentView *)self->_contentView setSubtitleLabel:v6];
        v5 = v6;
      }

      v7 = v5;
      [v5 setAttributedText:self->_attributedSubtitle];
    }

    else
    {

      [(PRXCardContentView *)contentView setSubtitleLabel:0];
    }
  }
}

- (void)setAttributedSubtitle:(id)a3
{
  v4 = a3;
  attributedSubtitle = self->_attributedSubtitle;
  if (attributedSubtitle != v4)
  {
    v8 = v4;
    attributedSubtitle = [attributedSubtitle isEqual:v4];
    v4 = v8;
    if ((attributedSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_attributedSubtitle;
      self->_attributedSubtitle = v6;

      attributedSubtitle = [(PRXCardContentViewController *)self _updateSubtitleLabel];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](attributedSubtitle, v4);
}

- (void)setBottomTrayTitle:(id)a3
{
  v4 = a3;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  v5 = [v4 copy];
  bottomTrayTitle = self->_bottomTrayTitle;
  self->_bottomTrayTitle = v5;

  v7 = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [v7 setTitle:v4];
}

- (void)setAttributedBottomTrayTitle:(id)a3
{
  v4 = a3;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  v5 = [v4 copy];
  attributedBottomTrayTitle = self->_attributedBottomTrayTitle;
  self->_attributedBottomTrayTitle = v5;

  v7 = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [v7 setAttributedTitle:v4];
}

- (UIImageView)bottomTrayImageView
{
  v2 = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  v3 = [v2 imageView];

  return v3;
}

- (void)setBottomTrayImageView:(id)a3
{
  v4 = a3;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  v5 = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [v5 setImageView:v4];
}

- (void)scrollToBottom
{
  v3 = [(PRXCardContentViewController *)self view];
  [v3 layoutIfNeeded];

  [(PRXCardContentWrapperView *)self->_wrapperView scrollToBottom];
  self->_shouldAutoScrollToBottom = 1;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRXCardContentViewController;
  [(PRXCardContentViewController *)&v4 traitCollectionDidChange:a3];
  if (self->_shouldAutoScrollToBottom)
  {
    [(PRXCardContentViewController *)self scrollToBottom];
  }
}

- (void)setDismissalType:(unint64_t)a3
{
  if (self->_dismissalType != a3)
  {
    self->_dismissalType = a3;
    [(PRXCardContentViewController *)self _updateDismisalControls];
  }
}

- (void)setDismissButtonAction:(id)a3
{
  v4 = a3;
  if (!v4 || self->_dismissButtonAction != v4)
  {
    v8 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [PRXAction defaultDismissalActionForViewController:self];
    }

    dismissButtonAction = self->_dismissButtonAction;
    self->_dismissButtonAction = v5;

    v7 = [(PRXCardContentView *)self->_contentView dismissButton];
    [(PRXAction *)self->_dismissButtonAction setButton:v7];

    v4 = v8;
  }
}

- (void)_updateDismisalControls
{
  if ([(PRXCardContentViewController *)self isViewLoaded])
  {
    if (self->_dismissalType)
    {
      v4 = [PRXButton buttonWithProximityType:2];
      [(PRXAction *)self->_dismissButtonAction setButton:v4];
      [(PRXCardContentView *)self->_contentView setDismissButton:v4];
    }

    else
    {
      contentView = self->_contentView;

      [(PRXCardContentView *)contentView setDismissButton:0];
    }
  }
}

- (id)addAction:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_actions mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
  }

  v8 = v7;

  [v8 addObject:v4];
  v9 = [v8 copy];
  actions = self->_actions;
  self->_actions = v9;

  [(PRXCardContentViewController *)self _updateActionButtons];

  return v4;
}

- (void)removeAction:(id)a3
{
  actions = self->_actions;
  v5 = a3;
  v6 = [(NSArray *)actions mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  v11 = v8;

  [v11 removeObject:v5];
  v9 = [v11 copy];
  v10 = self->_actions;
  self->_actions = v9;

  [(PRXCardContentViewController *)self _updateActionButtons];
}

- (void)replaceAction:(id)a3 withNewAction:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NSArray *)self->_actions mutableCopy];
  v8 = [v7 indexOfObject:v13];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v10 = [v13 button];
    [v6 setButton:v10];

    [v7 setObject:v6 atIndexedSubscript:v9];
    [v13 setButton:0];
    v11 = [v7 copy];
    actions = self->_actions;
    self->_actions = v11;
  }
}

- (void)_updateActionButtons
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(PRXCardContentViewController *)self isViewLoaded])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_actions, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = self;
    obj = self->_actions;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 style] - 1;
          if (v9 > 2)
          {
            v10 = 1;
          }

          else
          {
            v10 = qword_260F853D8[v9];
          }

          v11 = [v8 usesLegacyStyling];
          v12 = [v8 customColors];
          v13 = [PRXButton buttonWithProximityType:v10 usesLegacyStyling:v11 usingCustomColors:v12];

          [v8 setButton:v13];
          [v3 addObject:v13];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    v14 = [(PRXCardContentWrapperView *)v15->_wrapperView bottomTray];
    [v14 setActionButtons:v3];
  }
}

- (void)showActivityIndicatorWithStatus:(id)a3
{
  v10 = a3;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  if ([v10 length])
  {
    v4 = objc_alloc_init(PRXActivityStatusView);
    v5 = [(PRXActivityStatusView *)v4 statusLabel];
    [v5 setText:v10];

    v6 = [(PRXActivityStatusView *)v4 activityIndicator];
    [v6 startAnimating];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D750E8]);
    if ([(PRXCardContentViewController *)self cardStyle]== 1)
    {
      v8 = 100;
    }

    else
    {
      v8 = 101;
    }

    v4 = [v7 initWithActivityIndicatorStyle:v8];
    [(PRXActivityStatusView *)v4 startAnimating];
  }

  v9 = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [v9 setActivityIndicator:v4];
}

- (void)hideActivityIndicator
{
  v2 = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [v2 setActivityIndicator:0];
}

- (void)setInfoButtonAction:(id)a3
{
  v4 = a3;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  [(PRXCardContentWrapperView *)self->_wrapperView setAuxiliaryButtonAction:v4];
}

- (PRXButton)infoButton
{
  v2 = [(PRXCardContentWrapperView *)self->_wrapperView auxiliaryButtonAction];
  v3 = [v2 button];

  return v3;
}

- (void)setAuxiliaryButtonWithSymbolName:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  [(PRXCardContentWrapperView *)self->_wrapperView setAuxiliaryButtonWithSymbolName:v7 handler:v6];
}

- (id)bottomTray
{
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  wrapperView = self->_wrapperView;

  return [(PRXCardContentWrapperView *)wrapperView bottomTray];
}

@end