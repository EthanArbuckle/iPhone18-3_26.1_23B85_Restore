@interface SiriUILegacyCardSnippetViewController
- (BOOL)isCancelled;
- (BOOL)isConfirmed;
- (BOOL)isFullPadWidth;
- (BOOL)removedAfterDialogProgresses;
- (BOOL)usePlatterStyle;
- (BOOL)wantsConfirmationInsets;
- (BOOL)wantsToManageBackgroundColor;
- (SiriUILegacyCardSnippetViewController)initWithSnippet:(id)snippet;
- (id)_backingSnippetViewController;
- (id)_legacyCardSectionViewController;
- (id)attributedSubtitle;
- (id)headerPunchOut;
- (id)navigationTitle;
- (id)requestContext;
- (id)sashItem;
- (id)snippetPunchOut;
- (id)subtitle;
- (void)_legacyCardSectionViewController;
- (void)_setVirgin:(BOOL)virgin;
- (void)cardViewControllerDidLoad:(id)load;
- (void)configureContentWithSizeClass:(int64_t)class;
- (void)endEditingAndCorrect:(BOOL)correct;
- (void)setAttributedSubtitle:(id)subtitle;
- (void)setCancelled:(BOOL)cancelled;
- (void)setConfirmed:(BOOL)confirmed;
- (void)setDelegate:(id)delegate;
- (void)setHeaderPunchOut:(id)out;
- (void)setIsFullPadWidth:(BOOL)width;
- (void)setNavigationTitle:(id)title;
- (void)setRequestContext:(id)context;
- (void)setSnippet:(id)snippet;
- (void)setSnippetPunchOut:(id)out;
- (void)setSubtitle:(id)subtitle;
- (void)setWantsConfirmationInsets:(BOOL)insets;
- (void)siriDidDeactivate;
- (void)siriDidLayoutSnippetView;
- (void)siriWillLayoutSnippetView;
- (void)wasAddedToTranscript;
- (void)willCancel;
- (void)willConfirm;
@end

@implementation SiriUILegacyCardSnippetViewController

- (SiriUILegacyCardSnippetViewController)initWithSnippet:(id)snippet
{
  snippetCopy = snippet;
  v8.receiver = self;
  v8.super_class = SiriUILegacyCardSnippetViewController;
  v5 = [(SiriUICardSnippetViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SiriUILegacyCardSnippetViewController *)v5 setSnippet:snippetCopy];
  }

  return v6;
}

- (void)configureContentWithSizeClass:(int64_t)class
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v6 = [_backingSnippetViewController conformsToProtocol:&unk_287A30D78];

  if (v6)
  {
    _backingSnippetViewController2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    [_backingSnippetViewController2 configureContentWithSizeClass:class];
  }
}

- (id)_legacyCardSectionViewController
{
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _legacyCardSectionViewController = [_cardViewController _legacyCardSectionViewController];
  }

  else
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SiriUILegacyCardSnippetViewController *)v4 _legacyCardSectionViewController];
    }

    _legacyCardSectionViewController = 0;
  }

  return _legacyCardSectionViewController;
}

- (id)_backingSnippetViewController
{
  _legacyCardSectionViewController = [(SiriUILegacyCardSnippetViewController *)self _legacyCardSectionViewController];
  backingSnippetViewController = [_legacyCardSectionViewController backingSnippetViewController];

  return backingSnippetViewController;
}

- (void)setSnippet:(id)snippet
{
  v17[1] = *MEMORY[0x277D85DE8];
  snippetCopy = snippet;
  if (self->_snippet != snippetCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_snippet, snippet);
      v7 = objc_alloc(MEMORY[0x277CD3D58]);
      v8 = objc_alloc_init(MEMORY[0x277CD3D30]);
      v9 = [v7 initWithIntent:v8 response:0];

      [v9 _setSnippet:self->_snippet];
      v10 = objc_alloc_init(SiriUILegacyCardSection);
      v11 = objc_alloc_init(MEMORY[0x277CF9408]);
      v17[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [v11 setCardSections:v12];

      v13 = [MEMORY[0x277CBEB98] setWithObject:v9];
      [v11 setInteractions:v13];

      v14 = [objc_alloc(MEMORY[0x277CF93C0]) _initWithCard:v11 delegate:self loadProvidersImmediately:1];
      _legacyCardSectionViewController = [v14 _legacyCardSectionViewController];
      if (!_legacyCardSectionViewController)
      {
        [(SiriUILegacyCardSnippetViewController *)a2 setSnippet:?];
      }

      [_legacyCardSectionViewController setContainingSnippetViewController:self];
      backingSnippetViewController = [_legacyCardSectionViewController backingSnippetViewController];
      [backingSnippetViewController setSnippet:snippetCopy];

      [(SiriUICardSnippetViewController *)self _setCardViewController:v14];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUIBaseSnippetViewController *)&v6 setDelegate:delegate];
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  _legacyCardSectionViewController = [(SiriUILegacyCardSnippetViewController *)self _legacyCardSectionViewController];
  [_backingSnippetViewController setDelegate:_legacyCardSectionViewController];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setSubtitle:subtitleCopy];
}

- (id)subtitle
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  subtitle = [_backingSnippetViewController subtitle];

  return subtitle;
}

- (void)setAttributedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setAttributedSubtitle:subtitleCopy];
}

- (id)attributedSubtitle
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  attributedSubtitle = [_backingSnippetViewController attributedSubtitle];

  return attributedSubtitle;
}

- (void)setNavigationTitle:(id)title
{
  titleCopy = title;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setNavigationTitle:titleCopy];
}

- (id)navigationTitle
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  navigationTitle = [_backingSnippetViewController navigationTitle];

  return navigationTitle;
}

- (void)setRequestContext:(id)context
{
  contextCopy = context;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setRequestContext:contextCopy];
}

- (id)requestContext
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  requestContext = [_backingSnippetViewController requestContext];

  return requestContext;
}

- (void)setHeaderPunchOut:(id)out
{
  outCopy = out;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setHeaderPunchOut:outCopy];
}

- (id)headerPunchOut
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  headerPunchOut = [_backingSnippetViewController headerPunchOut];

  return headerPunchOut;
}

- (void)setSnippetPunchOut:(id)out
{
  outCopy = out;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setSnippetPunchOut:outCopy];
}

- (id)snippetPunchOut
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  snippetPunchOut = [_backingSnippetViewController snippetPunchOut];

  return snippetPunchOut;
}

- (void)setWantsConfirmationInsets:(BOOL)insets
{
  insetsCopy = insets;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setWantsConfirmationInsets:insetsCopy];
}

- (BOOL)wantsConfirmationInsets
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  wantsConfirmationInsets = [_backingSnippetViewController wantsConfirmationInsets];

  return wantsConfirmationInsets;
}

- (void)setIsFullPadWidth:(BOOL)width
{
  widthCopy = width;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setIsFullPadWidth:widthCopy];
}

- (BOOL)isFullPadWidth
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  isFullPadWidth = [_backingSnippetViewController isFullPadWidth];

  return isFullPadWidth;
}

- (void)setConfirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setConfirmed:confirmedCopy];
}

- (BOOL)isConfirmed
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  isConfirmed = [_backingSnippetViewController isConfirmed];

  return isConfirmed;
}

- (void)setCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController setCancelled:cancelledCopy];
}

- (BOOL)isCancelled
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  isCancelled = [_backingSnippetViewController isCancelled];

  return isCancelled;
}

- (void)willConfirm
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController willConfirm];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 willConfirm];
}

- (void)willCancel
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController willCancel];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 willCancel];
}

- (void)_setVirgin:(BOOL)virgin
{
  virginCopy = virgin;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController _setVirgin:virginCopy];
}

- (void)siriWillLayoutSnippetView
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController siriWillLayoutSnippetView];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUISnippetViewController *)&v4 siriWillLayoutSnippetView];
}

- (void)siriDidLayoutSnippetView
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController siriDidLayoutSnippetView];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUISnippetViewController *)&v4 siriDidLayoutSnippetView];
}

- (BOOL)removedAfterDialogProgresses
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  removedAfterDialogProgresses = [_backingSnippetViewController removedAfterDialogProgresses];

  return removedAfterDialogProgresses;
}

- (BOOL)usePlatterStyle
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  _backingSnippetViewController2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  usePlatterStyle = [_backingSnippetViewController2 usePlatterStyle];

  return usePlatterStyle;
}

- (BOOL)wantsToManageBackgroundColor
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _backingSnippetViewController2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    wantsToManageBackgroundColor = [_backingSnippetViewController2 wantsToManageBackgroundColor];

    return wantsToManageBackgroundColor;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SiriUILegacyCardSnippetViewController;
    return [(SiriUISnippetViewController *)&v8 wantsToManageBackgroundColor];
  }
}

- (void)endEditingAndCorrect:(BOOL)correct
{
  correctCopy = correct;
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _backingSnippetViewController2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    [_backingSnippetViewController2 endEditingAndCorrect:correctCopy];
  }
}

- (id)sashItem
{
  v9.receiver = self;
  v9.super_class = SiriUILegacyCardSnippetViewController;
  sashItem = [(SiriUIBaseSnippetViewController *)&v9 sashItem];
  v4 = sashItem;
  if (!sashItem || [sashItem isDefault])
  {
    _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    sashItem2 = [_backingSnippetViewController sashItem];

    if (sashItem2)
    {
      v7 = sashItem2;

      v4 = v7;
    }
  }

  return v4;
}

- (void)siriDidDeactivate
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController siriDidDeactivate];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 siriDidDeactivate];
}

- (void)wasAddedToTranscript
{
  _backingSnippetViewController = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [_backingSnippetViewController wasAddedToTranscript];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 wasAddedToTranscript];
}

- (void)cardViewControllerDidLoad:(id)load
{
  loadCopy = load;
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];

  if (!_cardViewController)
  {
    [(SiriUICardSnippetViewController *)self _setCardViewController:loadCopy];
  }

  v6.receiver = self;
  v6.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v6 cardViewControllerDidLoad:loadCopy];
}

- (void)_legacyCardSectionViewController
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 136315394;
  v5 = "[SiriUILegacyCardSnippetViewController _legacyCardSectionViewController]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_26948D000, selfCopy, OS_LOG_TYPE_ERROR, "%s #cards The card view controller in this legacy snippet is not a CRKCardViewController, but instead a %@. This is a bug and we can't get a legacy card section view controller in this case.", &v4, 0x16u);
}

- (void)setSnippet:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SiriUILegacyCardSnippetViewController.m" lineNumber:110 description:@"The legacy card section view controller must exist after initialization."];
}

@end