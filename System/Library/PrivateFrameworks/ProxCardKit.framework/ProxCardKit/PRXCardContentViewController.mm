@interface PRXCardContentViewController
- (PRXButton)infoButton;
- (PRXCardContentView)contentView;
- (PRXCardContentViewController)initWithContentView:(id)view;
- (UIImageView)bottomTrayImageView;
- (id)addAction:(id)action;
- (id)bottomTray;
- (void)_prxCommonInit;
- (void)_updateActionButtons;
- (void)_updateDismisalControls;
- (void)_updateSubtitleLabel;
- (void)_updateTitleLabel;
- (void)hideActivityIndicator;
- (void)loadView;
- (void)removeAction:(id)action;
- (void)replaceAction:(id)action withNewAction:(id)newAction;
- (void)scrollToBottom;
- (void)setAttributedBottomTrayTitle:(id)title;
- (void)setAttributedSubtitle:(id)subtitle;
- (void)setAuxiliaryButtonWithSymbolName:(id)name handler:(id)handler;
- (void)setBottomTrayImageView:(id)view;
- (void)setBottomTrayTitle:(id)title;
- (void)setDesiredHeight:(double)height;
- (void)setDismissButtonAction:(id)action;
- (void)setDismissalType:(unint64_t)type;
- (void)setInfoButtonAction:(id)action;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)showActivityIndicatorWithStatus:(id)status;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePreferredContentSizeForCardWidth:(double)width;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRXCardContentViewController

- (PRXCardContentViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = PRXCardContentViewController;
  v6 = [(PRXCardContentViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
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
  contentViewClass = [objc_opt_class() contentViewClass];
  if (([contentViewClass isSubclassOfClass:objc_opt_class()] & 1) == 0)
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
    v4 = [[contentViewClass alloc] initWithCardStyle:0];
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
    v22 = NSStringFromClass(contentViewClass);
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

- (void)updatePreferredContentSizeForCardWidth:(double)width
{
  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView updateTitleTextViewExclusionPathsForCardWidth:width];

  view = [(PRXCardContentViewController *)self view];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [view systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v7, v8}];
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
    contentView = [(PRXCardContentViewController *)self contentView];
    [(PRXCardContentView *)self->_contentView bounds];
    [contentView updateTitleTextViewExclusionPathsForCardWidth:CGRectGetWidth(v16)];

    view = [(PRXCardContentViewController *)self view];
    [(PRXCardContentView *)self->_contentView bounds];
    Width = CGRectGetWidth(v17);
    LODWORD(v6) = 1148846080;
    LODWORD(v7) = 1112014848;
    [view systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v6, v7}];
    v9 = v8;
    v11 = v10;

    [(PRXCardContentViewController *)self preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [(PRXCardContentViewController *)self setPreferredContentSize:v9, v11];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = PRXCardContentViewController;
  coordinatorCopy = coordinator;
  [(PRXCardContentViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_transitioningSize = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__PRXCardContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279ACC2E0;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];

  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView updateTitleTextViewExclusionPathsForCardWidth:width];
}

- (void)setDesiredHeight:(double)height
{
  v17[1] = *MEMORY[0x277D85DE8];
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  if (height == -1.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    height = v6;

    v7 = PRXIsPad();
    v8 = fmin(height + -176.0, 890.0);
    if (v7)
    {
      height = v8;
    }
  }

  self->_desiredHeight = height;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v11 = v10;

  if (height > v11)
  {
    height = v11;
  }

  v12 = MEMORY[0x277CBEB18];
  heightAnchor = [(PRXCardContentWrapperView *)self->_wrapperView heightAnchor];
  v14 = [heightAnchor constraintEqualToConstant:height];
  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v16 = [v12 arrayWithArray:v15];

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
}

- (void)setTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = PRXCardContentViewController;
  [(PRXCardContentViewController *)&v4 setTitle:title];
  [(PRXCardContentViewController *)self _updateTitleLabel];
}

- (void)_updateTitleLabel
{
  if ([(PRXCardContentViewController *)self isViewLoaded])
  {
    title = [(PRXCardContentViewController *)self title];
    v3 = [title length];
    contentView = self->_contentView;
    if (v3)
    {
      titleTextView = [(PRXCardContentView *)contentView titleTextView];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [PRXTextView textViewWithStyle:0];

        [(PRXCardContentView *)self->_contentView setTitleView:v6];
        titleTextView = v6;
      }

      [titleTextView setTitleText:title];
    }

    else
    {
      [(PRXCardContentView *)contentView setTitleView:0];
    }

    [(PRXCardContentWrapperView *)self->_wrapperView setTitle:title];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = self->_subtitle;
  if (subtitle != subtitleCopy)
  {
    v9 = subtitleCopy;
    subtitle = [(NSString *)subtitle isEqualToString:subtitleCopy];
    subtitleCopy = v9;
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

      subtitleCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](subtitle, subtitleCopy);
}

- (void)_updateSubtitleLabel
{
  if ([(PRXCardContentViewController *)self isViewLoaded])
  {
    v3 = [(NSAttributedString *)self->_attributedSubtitle length];
    contentView = self->_contentView;
    if (v3)
    {
      subtitleLabel = [(PRXCardContentView *)contentView subtitleLabel];
      if (!subtitleLabel)
      {
        v6 = [PRXLabel labelWithStyle:1];
        [(PRXCardContentView *)self->_contentView setSubtitleLabel:v6];
        subtitleLabel = v6;
      }

      v7 = subtitleLabel;
      [subtitleLabel setAttributedText:self->_attributedSubtitle];
    }

    else
    {

      [(PRXCardContentView *)contentView setSubtitleLabel:0];
    }
  }
}

- (void)setAttributedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  attributedSubtitle = self->_attributedSubtitle;
  if (attributedSubtitle != subtitleCopy)
  {
    v8 = subtitleCopy;
    attributedSubtitle = [attributedSubtitle isEqual:subtitleCopy];
    subtitleCopy = v8;
    if ((attributedSubtitle & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_attributedSubtitle;
      self->_attributedSubtitle = v6;

      attributedSubtitle = [(PRXCardContentViewController *)self _updateSubtitleLabel];
      subtitleCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](attributedSubtitle, subtitleCopy);
}

- (void)setBottomTrayTitle:(id)title
{
  titleCopy = title;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  v5 = [titleCopy copy];
  bottomTrayTitle = self->_bottomTrayTitle;
  self->_bottomTrayTitle = v5;

  bottomTray = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [bottomTray setTitle:titleCopy];
}

- (void)setAttributedBottomTrayTitle:(id)title
{
  titleCopy = title;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  v5 = [titleCopy copy];
  attributedBottomTrayTitle = self->_attributedBottomTrayTitle;
  self->_attributedBottomTrayTitle = v5;

  bottomTray = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [bottomTray setAttributedTitle:titleCopy];
}

- (UIImageView)bottomTrayImageView
{
  bottomTray = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  imageView = [bottomTray imageView];

  return imageView;
}

- (void)setBottomTrayImageView:(id)view
{
  viewCopy = view;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  bottomTray = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [bottomTray setImageView:viewCopy];
}

- (void)scrollToBottom
{
  view = [(PRXCardContentViewController *)self view];
  [view layoutIfNeeded];

  [(PRXCardContentWrapperView *)self->_wrapperView scrollToBottom];
  self->_shouldAutoScrollToBottom = 1;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PRXCardContentViewController;
  [(PRXCardContentViewController *)&v4 traitCollectionDidChange:change];
  if (self->_shouldAutoScrollToBottom)
  {
    [(PRXCardContentViewController *)self scrollToBottom];
  }
}

- (void)setDismissalType:(unint64_t)type
{
  if (self->_dismissalType != type)
  {
    self->_dismissalType = type;
    [(PRXCardContentViewController *)self _updateDismisalControls];
  }
}

- (void)setDismissButtonAction:(id)action
{
  actionCopy = action;
  if (!actionCopy || self->_dismissButtonAction != actionCopy)
  {
    v8 = actionCopy;
    if (actionCopy)
    {
      v5 = actionCopy;
    }

    else
    {
      v5 = [PRXAction defaultDismissalActionForViewController:self];
    }

    dismissButtonAction = self->_dismissButtonAction;
    self->_dismissButtonAction = v5;

    dismissButton = [(PRXCardContentView *)self->_contentView dismissButton];
    [(PRXAction *)self->_dismissButtonAction setButton:dismissButton];

    actionCopy = v8;
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

- (id)addAction:(id)action
{
  actionCopy = action;
  v5 = [(NSArray *)self->_actions mutableCopy];
  v6 = v5;
  if (v5)
  {
    array = v5;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v8 = array;

  [v8 addObject:actionCopy];
  v9 = [v8 copy];
  actions = self->_actions;
  self->_actions = v9;

  [(PRXCardContentViewController *)self _updateActionButtons];

  return actionCopy;
}

- (void)removeAction:(id)action
{
  actions = self->_actions;
  actionCopy = action;
  v6 = [(NSArray *)actions mutableCopy];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v11 = array;

  [v11 removeObject:actionCopy];
  v9 = [v11 copy];
  v10 = self->_actions;
  self->_actions = v9;

  [(PRXCardContentViewController *)self _updateActionButtons];
}

- (void)replaceAction:(id)action withNewAction:(id)newAction
{
  actionCopy = action;
  newActionCopy = newAction;
  v7 = [(NSArray *)self->_actions mutableCopy];
  v8 = [v7 indexOfObject:actionCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    button = [actionCopy button];
    [newActionCopy setButton:button];

    [v7 setObject:newActionCopy atIndexedSubscript:v9];
    [actionCopy setButton:0];
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
    selfCopy = self;
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

          usesLegacyStyling = [v8 usesLegacyStyling];
          customColors = [v8 customColors];
          v13 = [PRXButton buttonWithProximityType:v10 usesLegacyStyling:usesLegacyStyling usingCustomColors:customColors];

          [v8 setButton:v13];
          [v3 addObject:v13];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    bottomTray = [(PRXCardContentWrapperView *)selfCopy->_wrapperView bottomTray];
    [bottomTray setActionButtons:v3];
  }
}

- (void)showActivityIndicatorWithStatus:(id)status
{
  statusCopy = status;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  if ([statusCopy length])
  {
    v4 = objc_alloc_init(PRXActivityStatusView);
    statusLabel = [(PRXActivityStatusView *)v4 statusLabel];
    [statusLabel setText:statusCopy];

    activityIndicator = [(PRXActivityStatusView *)v4 activityIndicator];
    [activityIndicator startAnimating];
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

  bottomTray = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [bottomTray setActivityIndicator:v4];
}

- (void)hideActivityIndicator
{
  bottomTray = [(PRXCardContentWrapperView *)self->_wrapperView bottomTray];
  [bottomTray setActivityIndicator:0];
}

- (void)setInfoButtonAction:(id)action
{
  actionCopy = action;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  [(PRXCardContentWrapperView *)self->_wrapperView setAuxiliaryButtonAction:actionCopy];
}

- (PRXButton)infoButton
{
  auxiliaryButtonAction = [(PRXCardContentWrapperView *)self->_wrapperView auxiliaryButtonAction];
  button = [auxiliaryButtonAction button];

  return button;
}

- (void)setAuxiliaryButtonWithSymbolName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  [(PRXCardContentWrapperView *)self->_wrapperView setAuxiliaryButtonWithSymbolName:nameCopy handler:handlerCopy];
}

- (id)bottomTray
{
  [(PRXCardContentViewController *)self loadViewIfNeeded];
  wrapperView = self->_wrapperView;

  return [(PRXCardContentWrapperView *)wrapperView bottomTray];
}

@end