@interface SiriUILegacyCardSnippetViewController
- (BOOL)isCancelled;
- (BOOL)isConfirmed;
- (BOOL)isFullPadWidth;
- (BOOL)removedAfterDialogProgresses;
- (BOOL)usePlatterStyle;
- (BOOL)wantsConfirmationInsets;
- (BOOL)wantsToManageBackgroundColor;
- (SiriUILegacyCardSnippetViewController)initWithSnippet:(id)a3;
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
- (void)_setVirgin:(BOOL)a3;
- (void)cardViewControllerDidLoad:(id)a3;
- (void)configureContentWithSizeClass:(int64_t)a3;
- (void)endEditingAndCorrect:(BOOL)a3;
- (void)setAttributedSubtitle:(id)a3;
- (void)setCancelled:(BOOL)a3;
- (void)setConfirmed:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setHeaderPunchOut:(id)a3;
- (void)setIsFullPadWidth:(BOOL)a3;
- (void)setNavigationTitle:(id)a3;
- (void)setRequestContext:(id)a3;
- (void)setSnippet:(id)a3;
- (void)setSnippetPunchOut:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setWantsConfirmationInsets:(BOOL)a3;
- (void)siriDidDeactivate;
- (void)siriDidLayoutSnippetView;
- (void)siriWillLayoutSnippetView;
- (void)wasAddedToTranscript;
- (void)willCancel;
- (void)willConfirm;
@end

@implementation SiriUILegacyCardSnippetViewController

- (SiriUILegacyCardSnippetViewController)initWithSnippet:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriUILegacyCardSnippetViewController;
  v5 = [(SiriUICardSnippetViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SiriUILegacyCardSnippetViewController *)v5 setSnippet:v4];
  }

  return v6;
}

- (void)configureContentWithSizeClass:(int64_t)a3
{
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v6 = [v5 conformsToProtocol:&unk_287A30D78];

  if (v6)
  {
    v7 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    [v7 configureContentWithSizeClass:a3];
  }
}

- (id)_legacyCardSectionViewController
{
  v2 = [(SiriUICardSnippetViewController *)self _cardViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _legacyCardSectionViewController];
  }

  else
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SiriUILegacyCardSnippetViewController *)v4 _legacyCardSectionViewController];
    }

    v3 = 0;
  }

  return v3;
}

- (id)_backingSnippetViewController
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _legacyCardSectionViewController];
  v3 = [v2 backingSnippetViewController];

  return v3;
}

- (void)setSnippet:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_snippet != v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_snippet, a3);
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
      v15 = [v14 _legacyCardSectionViewController];
      if (!v15)
      {
        [(SiriUILegacyCardSnippetViewController *)a2 setSnippet:?];
      }

      [v15 setContainingSnippetViewController:self];
      v16 = [v15 backingSnippetViewController];
      [v16 setSnippet:v6];

      [(SiriUICardSnippetViewController *)self _setCardViewController:v14];
    }
  }
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUIBaseSnippetViewController *)&v6 setDelegate:a3];
  v4 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v5 = [(SiriUILegacyCardSnippetViewController *)self _legacyCardSectionViewController];
  [v4 setDelegate:v5];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v5 setSubtitle:v4];
}

- (id)subtitle
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 subtitle];

  return v3;
}

- (void)setAttributedSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v5 setAttributedSubtitle:v4];
}

- (id)attributedSubtitle
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 attributedSubtitle];

  return v3;
}

- (void)setNavigationTitle:(id)a3
{
  v4 = a3;
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v5 setNavigationTitle:v4];
}

- (id)navigationTitle
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 navigationTitle];

  return v3;
}

- (void)setRequestContext:(id)a3
{
  v4 = a3;
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v5 setRequestContext:v4];
}

- (id)requestContext
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 requestContext];

  return v3;
}

- (void)setHeaderPunchOut:(id)a3
{
  v4 = a3;
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v5 setHeaderPunchOut:v4];
}

- (id)headerPunchOut
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 headerPunchOut];

  return v3;
}

- (void)setSnippetPunchOut:(id)a3
{
  v4 = a3;
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v5 setSnippetPunchOut:v4];
}

- (id)snippetPunchOut
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 snippetPunchOut];

  return v3;
}

- (void)setWantsConfirmationInsets:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v4 setWantsConfirmationInsets:v3];
}

- (BOOL)wantsConfirmationInsets
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 wantsConfirmationInsets];

  return v3;
}

- (void)setIsFullPadWidth:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v4 setIsFullPadWidth:v3];
}

- (BOOL)isFullPadWidth
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 isFullPadWidth];

  return v3;
}

- (void)setConfirmed:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v4 setConfirmed:v3];
}

- (BOOL)isConfirmed
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 isConfirmed];

  return v3;
}

- (void)setCancelled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v4 setCancelled:v3];
}

- (BOOL)isCancelled
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 isCancelled];

  return v3;
}

- (void)willConfirm
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v3 willConfirm];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 willConfirm];
}

- (void)willCancel
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v3 willCancel];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 willCancel];
}

- (void)_setVirgin:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v4 _setVirgin:v3];
}

- (void)siriWillLayoutSnippetView
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v3 siriWillLayoutSnippetView];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUISnippetViewController *)&v4 siriWillLayoutSnippetView];
}

- (void)siriDidLayoutSnippetView
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v3 siriDidLayoutSnippetView];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUISnippetViewController *)&v4 siriDidLayoutSnippetView];
}

- (BOOL)removedAfterDialogProgresses
{
  v2 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v3 = [v2 removedAfterDialogProgresses];

  return v3;
}

- (BOOL)usePlatterStyle
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v6 = [v5 usePlatterStyle];

  return v6;
}

- (BOOL)wantsToManageBackgroundColor
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    v6 = [v5 wantsToManageBackgroundColor];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SiriUILegacyCardSnippetViewController;
    return [(SiriUISnippetViewController *)&v8 wantsToManageBackgroundColor];
  }
}

- (void)endEditingAndCorrect:(BOOL)a3
{
  v3 = a3;
  v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    [v7 endEditingAndCorrect:v3];
  }
}

- (id)sashItem
{
  v9.receiver = self;
  v9.super_class = SiriUILegacyCardSnippetViewController;
  v3 = [(SiriUIBaseSnippetViewController *)&v9 sashItem];
  v4 = v3;
  if (!v3 || [v3 isDefault])
  {
    v5 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
    v6 = [v5 sashItem];

    if (v6)
    {
      v7 = v6;

      v4 = v7;
    }
  }

  return v4;
}

- (void)siriDidDeactivate
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v3 siriDidDeactivate];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 siriDidDeactivate];
}

- (void)wasAddedToTranscript
{
  v3 = [(SiriUILegacyCardSnippetViewController *)self _backingSnippetViewController];
  [v3 wasAddedToTranscript];

  v4.receiver = self;
  v4.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v4 wasAddedToTranscript];
}

- (void)cardViewControllerDidLoad:(id)a3
{
  v4 = a3;
  v5 = [(SiriUICardSnippetViewController *)self _cardViewController];

  if (!v5)
  {
    [(SiriUICardSnippetViewController *)self _setCardViewController:v4];
  }

  v6.receiver = self;
  v6.super_class = SiriUILegacyCardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v6 cardViewControllerDidLoad:v4];
}

- (void)_legacyCardSectionViewController
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 136315394;
  v5 = "[SiriUILegacyCardSnippetViewController _legacyCardSectionViewController]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_26948D000, v1, OS_LOG_TYPE_ERROR, "%s #cards The card view controller in this legacy snippet is not a CRKCardViewController, but instead a %@. This is a bug and we can't get a legacy card section view controller in this case.", &v4, 0x16u);
}

- (void)setSnippet:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SiriUILegacyCardSnippetViewController.m" lineNumber:110 description:@"The legacy card section view controller must exist after initialization."];
}

@end