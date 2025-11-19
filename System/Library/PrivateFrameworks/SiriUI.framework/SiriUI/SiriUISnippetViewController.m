@interface SiriUISnippetViewController
- (BOOL)_hasConfirmationButtons;
- (BOOL)_hasConfirmationOrCancelledInsets;
- (Class)footerViewClass;
- (Class)headerViewClass;
- (NSString)subtitle;
- (SiriUISnippetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)defaultViewInsets;
- (UIView)containingView;
- (double)desiredHeightForFooterView;
- (double)desiredHeightForHeaderView;
- (double)desiredHeightForTransparentFooterView;
- (double)desiredHeightForTransparentHeaderView;
- (id)_createReusableViewIfNeededWithClass:(Class)a3;
- (id)_footerView;
- (id)_headerView;
- (id)_privateDelegate;
- (id)_transparentFooterView;
- (id)_transparentHeaderView;
- (void)_cellDidLayoutSubviews;
- (void)_instrumentConfirmationOptionInteractionWithPreviousTurn:(id)a3;
- (void)_snippetPunchOutButtonTapped;
- (void)cancelButtonTapped:(id)a3;
- (void)configureForConversationStorable:(id)a3;
- (void)configureReusableFooterView:(id)a3;
- (void)configureReusableHeaderView:(id)a3;
- (void)confirmButtonTapped:(id)a3;
- (void)confirmSnippet;
- (void)headerTapped:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setUserConfirmationEnabled:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SiriUISnippetViewController

- (SiriUISnippetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SiriUISnippetViewController;
  v4 = [(SiriUISnippetViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SiriUISnippetViewController *)v4 setDefaultViewInsets:10.0, 8.0, 10.0, 8.0];
    [(SiriUISnippetViewController *)v5 setWantsConfirmationInsets:1];
    [(SiriUISnippetViewController *)v5 setShowHeaderChevron:1];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SiriUISnippetViewController;
  [(SiriUISnippetViewController *)&v5 viewDidAppear:a3];
  v4 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v4 siriViewControllerViewDidAppear:self isTopLevelViewController:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SiriUISnippetViewController;
  [(SiriUISnippetViewController *)&v5 viewDidDisappear:a3];
  v4 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v4 siriViewControllerViewDidDisappear:self isTopLevelViewController:1];
}

- (BOOL)_hasConfirmationOrCancelledInsets
{
  v3 = [(SiriUISnippetViewController *)self _isProvisional];
  v4 = [(SiriUISnippetViewController *)self _willAnimateConfirmation];
  v5 = [(SiriUISnippetViewController *)self wantsConfirmationInsets];
  if (v5 && !v3 && !v4)
  {

    LOBYTE(v5) = [(SiriUISnippetViewController *)self isCancelled];
  }

  return v5;
}

- (BOOL)_hasConfirmationButtons
{
  v4 = [(SiriUISnippetViewController *)self _hasConfirmationOrCancelledInsets];
  if (v4)
  {
    v2 = [(SiriUIBaseSnippetViewController *)self snippet];
    v5 = [v2 confirmationOptions];
    if (v5)
    {
      v6 = 1;
LABEL_6:

      return v6;
    }
  }

  v7 = [(SiriUISnippetViewController *)self _previousConfirmationOptions];
  v6 = v7 != 0;

  if (v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  return v6;
}

- (id)_privateDelegate
{
  v3 = [(SiriUIBaseSnippetViewController *)self delegate];
  v4 = [v3 conformsToProtocol:&unk_287A3AA40];

  if (v4)
  {
    v5 = [(SiriUIBaseSnippetViewController *)self delegate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSubtitle:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA898];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(SiriUISnippetViewController *)self setAttributedSubtitle:v6];
}

- (NSString)subtitle
{
  v2 = [(SiriUISnippetViewController *)self attributedSubtitle];
  v3 = [v2 string];

  return v3;
}

- (void)setUserConfirmationEnabled:(BOOL)a3
{
  if (self->_userConfirmationEnabled != a3)
  {
    v3 = a3;
    self->_userConfirmationEnabled = a3;
    if (self->_footerView)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(SiriUIReusableView *)self->_footerView confirmButton];
        [v5 setEnabled:v3];
      }
    }
  }
}

- (Class)headerViewClass
{
  v3 = [(SiriUISnippetViewController *)self title];

  if (v3)
  {
    [(SiriUISnippetViewController *)self attributedSubtitle];

    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Class)footerViewClass
{
  [(SiriUISnippetViewController *)self _hasConfirmationButtons];
  v2 = objc_opt_class();

  return v2;
}

- (void)_cellDidLayoutSubviews
{
  if (self->_headerView)
  {
    [(SiriUISnippetViewController *)self configureReusableHeaderView:?];
  }

  if (self->_footerView)
  {
    [(SiriUISnippetViewController *)self configureReusableFooterView:?];
  }

  if (self->_transparentHeaderView)
  {
    [(SiriUISnippetViewController *)self configureReusableTransparentHeaderView:?];
  }

  if (self->_transparentFooterView)
  {

    [(SiriUISnippetViewController *)self configureReusableTransparentFooterView:?];
  }
}

- (void)configureReusableHeaderView:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v11;
    v5 = [(SiriUISnippetViewController *)self titleTextColor];
    [v4 setTitleTextColor:v5];

    v6 = [(SiriUISnippetViewController *)self title];
    [v4 setTitleText:v6];

    v7 = [(SiriUISnippetViewController *)self titleBackgroundColor];
    [v4 setBackgroundColor:v7];

    v8 = [v4 headerAreaButton];

    [v8 addTarget:self action:sel_headerTapped_ forControlEvents:64];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
    v10 = [(SiriUISnippetViewController *)self attributedSubtitle];
    [v9 setAttributedSubtitleText:v10];
  }
}

- (void)configureReusableFooterView:(id)a3
{
  v15 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v15;
  if (isKindOfClass)
  {
    v6 = v15;
    v7 = [(SiriUISnippetViewController *)self _previousConfirmationOptions];

    if (v7)
    {
      v8 = [(SiriUISnippetViewController *)self _previousConfirmationOptions];
      [v6 setConfirmationOptions:v8];

      [v6 setUserInteractionEnabled:0];
    }

    else
    {
      v9 = [(SiriUIBaseSnippetViewController *)self snippet];
      v10 = [v9 confirmationOptions];
      [v6 setConfirmationOptions:v10];

      v11 = [v6 cancelButton];
      [v11 addTarget:self action:sel_cancelButtonTapped_ forControlEvents:64];

      v12 = [v6 confirmButton];
      [v12 addTarget:self action:sel_confirmButtonTapped_ forControlEvents:64];

      v13 = [v6 confirmButton];
      [v13 setEnabled:self->_userConfirmationEnabled];
    }

    footerView = self->_footerView;
    self->_footerView = v6;

    v5 = v15;
  }

  MEMORY[0x2821F96F8](isKindOfClass, v5);
}

- (double)desiredHeightForHeaderView
{
  v3 = [(SiriUISnippetViewController *)self _headerView];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v4 siriViewControllerExpectedWidth:self];
    v6 = v5;

    [(SiriUISnippetViewController *)self defaultViewInsets];
    v8 = v7;
    [(SiriUISnippetViewController *)self defaultViewInsets];
    v10 = v6 + v8 + v9;
    [(SiriUISnippetViewController *)self configureReusableHeaderView:v3];
    [v3 desiredHeightForWidth:v10];
  }

  else
  {
    [(objc_class *)[(SiriUISnippetViewController *)self headerViewClass] defaultHeight];
  }

  v12 = v11;

  return v12;
}

- (double)desiredHeightForFooterView
{
  if ([(SiriUISnippetViewController *)self isCancelled]|| [(SiriUISnippetViewController *)self isConfirmed]|| [(SiriUISnippetViewController *)self _isAwaitingSuccessOrFailureEvent])
  {
    return 0.0;
  }

  v4 = [(SiriUISnippetViewController *)self footerViewClass];

  [(objc_class *)v4 defaultHeight];
  return result;
}

- (double)desiredHeightForTransparentHeaderView
{
  v3 = [(SiriUISnippetViewController *)self _transparentHeaderView];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v4 siriViewControllerExpectedWidth:self];
    v6 = v5;

    [(SiriUISnippetViewController *)self defaultViewInsets];
    v8 = v7;
    [(SiriUISnippetViewController *)self defaultViewInsets];
    v10 = v6 + v8 + v9;
    [(SiriUISnippetViewController *)self configureReusableTransparentHeaderView:v3];
    [v3 desiredHeightForWidth:v10];
  }

  else
  {
    [(objc_class *)[(SiriUISnippetViewController *)self transparentHeaderViewClass] defaultHeight];
  }

  v12 = v11;

  return v12;
}

- (double)desiredHeightForTransparentFooterView
{
  v2 = [(SiriUISnippetViewController *)self transparentFooterViewClass];

  [(objc_class *)v2 defaultHeight];
  return result;
}

- (id)_headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [(SiriUISnippetViewController *)self _createReusableViewIfNeededWithClass:[(SiriUISnippetViewController *)self headerViewClass]];
    v5 = self->_headerView;
    self->_headerView = v4;

    headerView = self->_headerView;
  }

  return headerView;
}

- (id)_footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = [(SiriUISnippetViewController *)self _createReusableViewIfNeededWithClass:[(SiriUISnippetViewController *)self footerViewClass]];
    v5 = self->_footerView;
    self->_footerView = v4;

    footerView = self->_footerView;
  }

  return footerView;
}

- (id)_transparentHeaderView
{
  transparentHeaderView = self->_transparentHeaderView;
  if (!transparentHeaderView)
  {
    v4 = [(SiriUISnippetViewController *)self _createReusableViewIfNeededWithClass:[(SiriUISnippetViewController *)self transparentHeaderViewClass]];
    v5 = self->_transparentHeaderView;
    self->_transparentHeaderView = v4;

    transparentHeaderView = self->_transparentHeaderView;
  }

  return transparentHeaderView;
}

- (id)_transparentFooterView
{
  transparentFooterView = self->_transparentFooterView;
  if (!transparentFooterView)
  {
    v4 = [(SiriUISnippetViewController *)self _createReusableViewIfNeededWithClass:[(SiriUISnippetViewController *)self transparentFooterViewClass]];
    v5 = self->_transparentFooterView;
    self->_transparentFooterView = v4;

    transparentFooterView = self->_transparentFooterView;
  }

  return transparentFooterView;
}

- (id)_createReusableViewIfNeededWithClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  if (objc_opt_respondsToSelector())
  {
    [v5 setSnippetViewController:self];
  }

  return v5;
}

- (void)_snippetPunchOutButtonTapped
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [(SiriUIBaseSnippetViewController *)self delegate];
  v4 = [(SiriUISnippetViewController *)self snippetPunchOut];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 siriViewController:self performAceCommands:v5];
}

- (void)headerTapped:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [(SiriUIBaseSnippetViewController *)self delegate];
  v5 = [(SiriUISnippetViewController *)self headerPunchOut];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v4 siriViewController:self performAceCommands:v6];
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = [(SiriUIReusableView *)self->_footerView cancelButton];
  [v4 setEnabled:0];

  v5 = [(SiriUIReusableView *)self->_footerView confirmButton];
  [v5 setEnabled:0];

  v6 = [(SiriUISnippetViewController *)self view];
  [v6 setUserInteractionEnabled:0];

  [(SiriUISnippetViewController *)self willCancel];
  v7 = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  [(SiriUISnippetViewController *)self _instrumentConfirmationOptionInteractionWithPreviousTurn:v7];

  v11 = [(SiriUIBaseSnippetViewController *)self delegate];
  v8 = [(SiriUIBaseSnippetViewController *)self snippet];
  v9 = [v8 confirmationOptions];
  v10 = [v9 denyCommands];
  [v11 siriViewController:self performAceCommands:v10];
}

- (void)confirmButtonTapped:(id)a3
{
  v4 = [(SiriUIReusableView *)self->_footerView cancelButton];
  [v4 setEnabled:0];

  v5 = [(SiriUIReusableView *)self->_footerView confirmButton];
  [v5 setEnabled:0];

  v6 = [(SiriUISnippetViewController *)self view];
  [v6 setUserInteractionEnabled:0];

  [(SiriUISnippetViewController *)self willConfirm];
  v7 = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  [(SiriUISnippetViewController *)self _instrumentConfirmationOptionInteractionWithPreviousTurn:v7];

  v11 = [(SiriUIBaseSnippetViewController *)self delegate];
  v8 = [(SiriUIBaseSnippetViewController *)self snippet];
  v9 = [v8 confirmationOptions];
  v10 = [v9 confirmCommands];
  [v11 siriViewController:self performAceCommands:v10];
}

- (void)confirmSnippet
{
  if (!self->_cancelled)
  {
    [(SiriUISnippetViewController *)self confirmButtonTapped:0];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SiriUISnippetViewController;
  [(SiriUISnippetViewController *)&v8 touchesBegan:a3 withEvent:a4];
  v5 = [(SiriUIBaseSnippetViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v7 userTouchedSnippet];
  }
}

- (void)_instrumentConfirmationOptionInteractionWithPreviousTurn:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D5ACB0]);
  v6 = [(SiriUIBaseSnippetViewController *)self snippet];
  v7 = [v6 confirmationOptions];
  v8 = [v7 aceId];
  [v5 setViewID:v8];

  v9 = [(SiriUIBaseSnippetViewController *)self snippet];
  v10 = [v9 confirmationOptions];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v5 setSnippetClass:v12];

  v13 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v13 setInvocationSource:11];
  [v13 setViewContainer:v5];
  v14 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v4];
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v14 turnIdentifier];
    v20 = 136315650;
    v21 = "[SiriUISnippetViewController _instrumentConfirmationOptionInteractionWithPreviousTurn:]";
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_26948D000, v16, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v20, 0x20u);
  }

  v18 = [(SiriUISnippetViewController *)self _instrumentationManager];
  [v18 storeCurrentInstrumentationTurnContext:v14];

  v19 = [(SiriUISnippetViewController *)self _instrumentationManager];
  [v19 emitInstrumentation:v13];
}

- (void)configureForConversationStorable:(id)a3
{
  v4 = a3;
  -[SiriUISnippetViewController _setVirgin:](self, "_setVirgin:", [v4 isVirgin]);
  v5 = [v4 presentationState];

  if (v5 == 2)
  {

    [(SiriUISnippetViewController *)self _setProvisional:1];
  }
}

- (UIEdgeInsets)defaultViewInsets
{
  top = self->_defaultViewInsets.top;
  left = self->_defaultViewInsets.left;
  bottom = self->_defaultViewInsets.bottom;
  right = self->_defaultViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)containingView
{
  WeakRetained = objc_loadWeakRetained(&self->_containingView);

  return WeakRetained;
}

@end