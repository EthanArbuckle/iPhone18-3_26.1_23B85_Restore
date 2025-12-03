@interface SiriUISnippetViewController
- (BOOL)_hasConfirmationButtons;
- (BOOL)_hasConfirmationOrCancelledInsets;
- (Class)footerViewClass;
- (Class)headerViewClass;
- (NSString)subtitle;
- (SiriUISnippetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)defaultViewInsets;
- (UIView)containingView;
- (double)desiredHeightForFooterView;
- (double)desiredHeightForHeaderView;
- (double)desiredHeightForTransparentFooterView;
- (double)desiredHeightForTransparentHeaderView;
- (id)_createReusableViewIfNeededWithClass:(Class)class;
- (id)_footerView;
- (id)_headerView;
- (id)_privateDelegate;
- (id)_transparentFooterView;
- (id)_transparentHeaderView;
- (void)_cellDidLayoutSubviews;
- (void)_instrumentConfirmationOptionInteractionWithPreviousTurn:(id)turn;
- (void)_snippetPunchOutButtonTapped;
- (void)cancelButtonTapped:(id)tapped;
- (void)configureForConversationStorable:(id)storable;
- (void)configureReusableFooterView:(id)view;
- (void)configureReusableHeaderView:(id)view;
- (void)confirmButtonTapped:(id)tapped;
- (void)confirmSnippet;
- (void)headerTapped:(id)tapped;
- (void)setSubtitle:(id)subtitle;
- (void)setUserConfirmationEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SiriUISnippetViewController

- (SiriUISnippetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SiriUISnippetViewController;
  v4 = [(SiriUISnippetViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SiriUISnippetViewController *)v4 setDefaultViewInsets:10.0, 8.0, 10.0, 8.0];
    [(SiriUISnippetViewController *)v5 setWantsConfirmationInsets:1];
    [(SiriUISnippetViewController *)v5 setShowHeaderChevron:1];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SiriUISnippetViewController;
  [(SiriUISnippetViewController *)&v5 viewDidAppear:appear];
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriViewControllerViewDidAppear:self isTopLevelViewController:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SiriUISnippetViewController;
  [(SiriUISnippetViewController *)&v5 viewDidDisappear:disappear];
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriViewControllerViewDidDisappear:self isTopLevelViewController:1];
}

- (BOOL)_hasConfirmationOrCancelledInsets
{
  _isProvisional = [(SiriUISnippetViewController *)self _isProvisional];
  _willAnimateConfirmation = [(SiriUISnippetViewController *)self _willAnimateConfirmation];
  wantsConfirmationInsets = [(SiriUISnippetViewController *)self wantsConfirmationInsets];
  if (wantsConfirmationInsets && !_isProvisional && !_willAnimateConfirmation)
  {

    LOBYTE(wantsConfirmationInsets) = [(SiriUISnippetViewController *)self isCancelled];
  }

  return wantsConfirmationInsets;
}

- (BOOL)_hasConfirmationButtons
{
  _hasConfirmationOrCancelledInsets = [(SiriUISnippetViewController *)self _hasConfirmationOrCancelledInsets];
  if (_hasConfirmationOrCancelledInsets)
  {
    snippet = [(SiriUIBaseSnippetViewController *)self snippet];
    confirmationOptions = [snippet confirmationOptions];
    if (confirmationOptions)
    {
      v6 = 1;
LABEL_6:

      return v6;
    }
  }

  _previousConfirmationOptions = [(SiriUISnippetViewController *)self _previousConfirmationOptions];
  v6 = _previousConfirmationOptions != 0;

  if (_hasConfirmationOrCancelledInsets)
  {
    confirmationOptions = 0;
    goto LABEL_6;
  }

  return v6;
}

- (id)_privateDelegate
{
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  v4 = [delegate conformsToProtocol:&unk_287A3AA40];

  if (v4)
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (void)setSubtitle:(id)subtitle
{
  if (subtitle)
  {
    v4 = MEMORY[0x277CCA898];
    subtitleCopy = subtitle;
    v6 = [[v4 alloc] initWithString:subtitleCopy];
  }

  else
  {
    v6 = 0;
  }

  [(SiriUISnippetViewController *)self setAttributedSubtitle:v6];
}

- (NSString)subtitle
{
  attributedSubtitle = [(SiriUISnippetViewController *)self attributedSubtitle];
  string = [attributedSubtitle string];

  return string;
}

- (void)setUserConfirmationEnabled:(BOOL)enabled
{
  if (self->_userConfirmationEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_userConfirmationEnabled = enabled;
    if (self->_footerView)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        confirmButton = [(SiriUIReusableView *)self->_footerView confirmButton];
        [confirmButton setEnabled:enabledCopy];
      }
    }
  }
}

- (Class)headerViewClass
{
  title = [(SiriUISnippetViewController *)self title];

  if (title)
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

- (void)configureReusableHeaderView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
    titleTextColor = [(SiriUISnippetViewController *)self titleTextColor];
    [v4 setTitleTextColor:titleTextColor];

    title = [(SiriUISnippetViewController *)self title];
    [v4 setTitleText:title];

    titleBackgroundColor = [(SiriUISnippetViewController *)self titleBackgroundColor];
    [v4 setBackgroundColor:titleBackgroundColor];

    headerAreaButton = [v4 headerAreaButton];

    [headerAreaButton addTarget:self action:sel_headerTapped_ forControlEvents:64];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
    attributedSubtitle = [(SiriUISnippetViewController *)self attributedSubtitle];
    [v9 setAttributedSubtitleText:attributedSubtitle];
  }
}

- (void)configureReusableFooterView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = viewCopy;
  if (isKindOfClass)
  {
    v6 = viewCopy;
    _previousConfirmationOptions = [(SiriUISnippetViewController *)self _previousConfirmationOptions];

    if (_previousConfirmationOptions)
    {
      _previousConfirmationOptions2 = [(SiriUISnippetViewController *)self _previousConfirmationOptions];
      [v6 setConfirmationOptions:_previousConfirmationOptions2];

      [v6 setUserInteractionEnabled:0];
    }

    else
    {
      snippet = [(SiriUIBaseSnippetViewController *)self snippet];
      confirmationOptions = [snippet confirmationOptions];
      [v6 setConfirmationOptions:confirmationOptions];

      cancelButton = [v6 cancelButton];
      [cancelButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:64];

      confirmButton = [v6 confirmButton];
      [confirmButton addTarget:self action:sel_confirmButtonTapped_ forControlEvents:64];

      confirmButton2 = [v6 confirmButton];
      [confirmButton2 setEnabled:self->_userConfirmationEnabled];
    }

    footerView = self->_footerView;
    self->_footerView = v6;

    v5 = viewCopy;
  }

  MEMORY[0x2821F96F8](isKindOfClass, v5);
}

- (double)desiredHeightForHeaderView
{
  _headerView = [(SiriUISnippetViewController *)self _headerView];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate siriViewControllerExpectedWidth:self];
    v6 = v5;

    [(SiriUISnippetViewController *)self defaultViewInsets];
    v8 = v7;
    [(SiriUISnippetViewController *)self defaultViewInsets];
    v10 = v6 + v8 + v9;
    [(SiriUISnippetViewController *)self configureReusableHeaderView:_headerView];
    [_headerView desiredHeightForWidth:v10];
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

  footerViewClass = [(SiriUISnippetViewController *)self footerViewClass];

  [(objc_class *)footerViewClass defaultHeight];
  return result;
}

- (double)desiredHeightForTransparentHeaderView
{
  _transparentHeaderView = [(SiriUISnippetViewController *)self _transparentHeaderView];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate siriViewControllerExpectedWidth:self];
    v6 = v5;

    [(SiriUISnippetViewController *)self defaultViewInsets];
    v8 = v7;
    [(SiriUISnippetViewController *)self defaultViewInsets];
    v10 = v6 + v8 + v9;
    [(SiriUISnippetViewController *)self configureReusableTransparentHeaderView:_transparentHeaderView];
    [_transparentHeaderView desiredHeightForWidth:v10];
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
  transparentFooterViewClass = [(SiriUISnippetViewController *)self transparentFooterViewClass];

  [(objc_class *)transparentFooterViewClass defaultHeight];
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

- (id)_createReusableViewIfNeededWithClass:(Class)class
{
  v4 = [class alloc];
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
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  snippetPunchOut = [(SiriUISnippetViewController *)self snippetPunchOut];
  v6[0] = snippetPunchOut;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [delegate siriViewController:self performAceCommands:v5];
}

- (void)headerTapped:(id)tapped
{
  v7[1] = *MEMORY[0x277D85DE8];
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  headerPunchOut = [(SiriUISnippetViewController *)self headerPunchOut];
  v7[0] = headerPunchOut;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [delegate siriViewController:self performAceCommands:v6];
}

- (void)cancelButtonTapped:(id)tapped
{
  cancelButton = [(SiriUIReusableView *)self->_footerView cancelButton];
  [cancelButton setEnabled:0];

  confirmButton = [(SiriUIReusableView *)self->_footerView confirmButton];
  [confirmButton setEnabled:0];

  view = [(SiriUISnippetViewController *)self view];
  [view setUserInteractionEnabled:0];

  [(SiriUISnippetViewController *)self willCancel];
  instrumentationTurnIdentifier = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  [(SiriUISnippetViewController *)self _instrumentConfirmationOptionInteractionWithPreviousTurn:instrumentationTurnIdentifier];

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  snippet = [(SiriUIBaseSnippetViewController *)self snippet];
  confirmationOptions = [snippet confirmationOptions];
  denyCommands = [confirmationOptions denyCommands];
  [delegate siriViewController:self performAceCommands:denyCommands];
}

- (void)confirmButtonTapped:(id)tapped
{
  cancelButton = [(SiriUIReusableView *)self->_footerView cancelButton];
  [cancelButton setEnabled:0];

  confirmButton = [(SiriUIReusableView *)self->_footerView confirmButton];
  [confirmButton setEnabled:0];

  view = [(SiriUISnippetViewController *)self view];
  [view setUserInteractionEnabled:0];

  [(SiriUISnippetViewController *)self willConfirm];
  instrumentationTurnIdentifier = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  [(SiriUISnippetViewController *)self _instrumentConfirmationOptionInteractionWithPreviousTurn:instrumentationTurnIdentifier];

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  snippet = [(SiriUIBaseSnippetViewController *)self snippet];
  confirmationOptions = [snippet confirmationOptions];
  confirmCommands = [confirmationOptions confirmCommands];
  [delegate siriViewController:self performAceCommands:confirmCommands];
}

- (void)confirmSnippet
{
  if (!self->_cancelled)
  {
    [(SiriUISnippetViewController *)self confirmButtonTapped:0];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SiriUISnippetViewController;
  [(SiriUISnippetViewController *)&v8 touchesBegan:began withEvent:event];
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate2 userTouchedSnippet];
  }
}

- (void)_instrumentConfirmationOptionInteractionWithPreviousTurn:(id)turn
{
  v26 = *MEMORY[0x277D85DE8];
  turnCopy = turn;
  v5 = objc_alloc_init(MEMORY[0x277D5ACB0]);
  snippet = [(SiriUIBaseSnippetViewController *)self snippet];
  confirmationOptions = [snippet confirmationOptions];
  aceId = [confirmationOptions aceId];
  [v5 setViewID:aceId];

  snippet2 = [(SiriUIBaseSnippetViewController *)self snippet];
  confirmationOptions2 = [snippet2 confirmationOptions];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v5 setSnippetClass:v12];

  v13 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v13 setInvocationSource:11];
  [v13 setViewContainer:v5];
  v14 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:turnCopy];
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    turnIdentifier = [v14 turnIdentifier];
    v20 = 136315650;
    v21 = "[SiriUISnippetViewController _instrumentConfirmationOptionInteractionWithPreviousTurn:]";
    v22 = 2112;
    v23 = turnIdentifier;
    v24 = 2112;
    v25 = turnCopy;
    _os_log_impl(&dword_26948D000, v16, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v20, 0x20u);
  }

  _instrumentationManager = [(SiriUISnippetViewController *)self _instrumentationManager];
  [_instrumentationManager storeCurrentInstrumentationTurnContext:v14];

  _instrumentationManager2 = [(SiriUISnippetViewController *)self _instrumentationManager];
  [_instrumentationManager2 emitInstrumentation:v13];
}

- (void)configureForConversationStorable:(id)storable
{
  storableCopy = storable;
  -[SiriUISnippetViewController _setVirgin:](self, "_setVirgin:", [storableCopy isVirgin]);
  presentationState = [storableCopy presentationState];

  if (presentationState == 2)
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