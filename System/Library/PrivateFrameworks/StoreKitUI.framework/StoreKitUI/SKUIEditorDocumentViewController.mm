@interface SKUIEditorDocumentViewController
- (SKUIEditorDocumentViewController)initWithTemplateElement:(id)element;
- (id)_backgroundColor;
- (id)_layoutContext;
- (id)_locateFirstButtonWithType:(int64_t)type inChildrenOfElement:(id)element;
- (void)_authenticateOnCompletion:(id)completion;
- (void)_doneButtonAction;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_layoutEditorView;
- (void)_layoutNavigation;
- (void)_resetButtonAction;
- (void)_resetTextView;
- (void)_sendCancelEventAndDismiss;
- (void)_sendDoneEventAndDismissWithText:(id)text;
- (void)_updateBiographyWithText:(id)text onCompletion:(id)completion;
- (void)_updateEditorViewInset;
- (void)dealloc;
- (void)didChangeTextInEditorTemplateView:(id)view;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIEditorDocumentViewController

- (SKUIEditorDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorDocumentViewController initWithTemplateElement:];
  }

  v10.receiver = self;
  v10.super_class = SKUIEditorDocumentViewController;
  v6 = [(SKUIEditorDocumentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, element);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [defaultCenter addObserver:v7 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
    [defaultCenter addObserver:v7 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  v4.receiver = self;
  v4.super_class = SKUIEditorDocumentViewController;
  [(SKUIViewController *)&v4 dealloc];
}

- (void)_doneButtonAction
{
  text = [(SKUIEditorTemplateView *)self->_editorView text];
  [(SKUIEditorTemplateView *)self->_editorView setDisabled:1];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SKUIEditorDocumentViewController__doneButtonAction__block_invoke;
  v5[3] = &unk_2781FE8D0;
  objc_copyWeak(&v8, &location);
  v4 = text;
  v6 = v4;
  selfCopy = self;
  [(SKUIEditorDocumentViewController *)self _updateBiographyWithText:v4 onCompletion:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__SKUIEditorDocumentViewController__doneButtonAction__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained _sendDoneEventAndDismissWithText:*(a1 + 32)];
  }

  else
  {
    [*(*(a1 + 40) + 1072) setDisabled:0];
  }
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v10 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];

  if (v10)
  {
    view = [(SKUIEditorDocumentViewController *)self view];
    [v10 CGRectValue];
    [view convertRect:0 fromView:?];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;

    [(SKUIEditorDocumentViewController *)self _updateEditorViewInset];
  }
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v10 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];

  if (v10)
  {
    view = [(SKUIEditorDocumentViewController *)self view];
    [v10 CGRectValue];
    [view convertRect:0 fromView:?];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;

    [(SKUIEditorDocumentViewController *)self _updateEditorViewInset];
  }
}

- (void)_keyboardWillHide:(id)hide
{
  userInfo = [hide userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];

  if (v6)
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
    self->_keyboardFrame.size = v5;
    [(SKUIEditorDocumentViewController *)self _updateEditorViewInset];
  }
}

- (void)documentDidUpdate:(id)update
{
  templateElement = [update templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  editorView = self->_editorView;
  if (editorView)
  {
    _backgroundColor = [(SKUIEditorDocumentViewController *)self _backgroundColor];
    [(SKUIViewReuseView *)editorView setBackgroundColor:_backgroundColor];
  }

  [(SKUIEditorDocumentViewController *)self _layoutNavigation];
}

- (void)didChangeTextInEditorTemplateView:(id)view
{
  if (!self->_isTextChanged)
  {
    self->_isTextChanged = 1;
    [(SKUIEditorDocumentViewController *)self _layoutNavigation];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  editorView = self->_editorView;
  v11 = v3;
  if (!editorView)
  {
    v5 = objc_alloc_init(SKUIEditorTemplateView);
    v6 = self->_editorView;
    self->_editorView = v5;

    [(SKUIEditorTemplateView *)self->_editorView setDelegate:self];
    v7 = self->_editorView;
    _backgroundColor = [(SKUIEditorDocumentViewController *)self _backgroundColor];
    [(SKUIViewReuseView *)v7 setBackgroundColor:_backgroundColor];

    [(SKUIEditorTemplateView *)self->_editorView setPreservesSuperviewLayoutMargins:1];
    v9 = self->_editorView;
    templateElement = self->_templateElement;
    [(SKUIViewElementLayoutContext *)self->_layoutContext activePageWidth];
    [(SKUIEditorTemplateView *)v9 reloadWithViewElement:templateElement width:self->_layoutContext context:?];
    v3 = v11;
    editorView = self->_editorView;
  }

  [v3 addSubview:editorView];
  [(SKUIEditorDocumentViewController *)self setView:v11];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIEditorDocumentViewController *)self _layoutEditorView];
  [(SKUIEditorDocumentViewController *)self _layoutNavigation];
  v5.receiver = self;
  v5.super_class = SKUIEditorDocumentViewController;
  [(SKUIViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SKUIEditorTemplateView *)self->_editorView resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SKUIEditorDocumentViewController;
  [(SKUIEditorDocumentViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  [(SKUIEditorDocumentViewController *)self _layoutEditorView];
  [(SKUIEditorDocumentViewController *)self _layoutNavigation];
  v3.receiver = self;
  v3.super_class = SKUIEditorDocumentViewController;
  [(SKUIEditorDocumentViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = SKUIEditorDocumentViewController;
  [(SKUIEditorDocumentViewController *)&v4 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
}

- (void)_authenticateOnCompletion:(id)completion
{
  completionCopy = completion;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    contextForSignIn = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:activeAccount];
    [contextForSignIn setPromptStyle:1];
    [contextForSignIn setShouldCreateNewSession:1];
  }

  else
  {
    contextForSignIn = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  v7 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:contextForSignIn];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SKUIEditorDocumentViewController__authenticateOnCompletion___block_invoke;
  v9[3] = &unk_2781FE8F8;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 startWithAuthenticateResponseBlock:v9];
}

void __62__SKUIEditorDocumentViewController__authenticateOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SKUIEditorDocumentViewController__authenticateOnCompletion___block_invoke_2;
  v5[3] = &unk_2781F98F0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __62__SKUIEditorDocumentViewController__authenticateOnCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) authenticateResponseType];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_backgroundColor
{
  style = [(SKUIEditorTemplateViewElement *)self->_templateElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    whiteColor = color;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = whiteColor;

  return v6;
}

- (id)_layoutContext
{
  layoutContext = self->_layoutContext;
  if (!layoutContext)
  {
    v4 = objc_alloc_init(SKUIViewElementLayoutContext);
    v5 = self->_layoutContext;
    self->_layoutContext = v4;

    v6 = self->_layoutContext;
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIViewElementLayoutContext *)v6 setClientContext:clientContext];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SKUIEditorTemplateViewElement *)self->_templateElement elementType]];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_layoutEditorView
{
  editorView = self->_editorView;
  view = [(SKUIEditorDocumentViewController *)self view];
  [view bounds];
  [(SKUIEditorTemplateView *)editorView setFrame:?];
}

- (void)_layoutNavigation
{
  navigationController = [(SKUIEditorDocumentViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  items = [navigationBar items];
  lastObject = [items lastObject];

  rightBarButtonItem = [lastObject rightBarButtonItem];
  [rightBarButtonItem setEnabled:self->_isTextChanged];
  [rightBarButtonItem setTarget:self];
  [rightBarButtonItem setAction:sel__doneButtonAction];
  leftBarButtonItem = [lastObject leftBarButtonItem];
  [leftBarButtonItem setTarget:self];
  [leftBarButtonItem setAction:sel__cancelButtonAction];
  [navigationController setToolbarHidden:!self->_isTextChanged];
  toolbar = [navigationController toolbar];
  items2 = [toolbar items];
  firstObject = [items2 firstObject];

  [firstObject setTarget:self];
  [firstObject setAction:sel__resetButtonAction];
  p_toolbarFrame = &self->_toolbarFrame;
  if (self->_isTextChanged)
  {
    toolbar2 = [navigationController toolbar];
    [toolbar2 frame];
    p_toolbarFrame->origin.x = v13;
    p_toolbarFrame->origin.y = v14;
    p_toolbarFrame->size.width = v15;
    p_toolbarFrame->size.height = v16;
  }

  else
  {
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    p_toolbarFrame->origin = *MEMORY[0x277CBF3A0];
    self->_toolbarFrame.size = v17;
  }
}

- (id)_locateFirstButtonWithType:(int64_t)type inChildrenOfElement:(id)element
{
  elementCopy = element;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__66;
  v13 = __Block_byref_object_dispose__66;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__SKUIEditorDocumentViewController__locateFirstButtonWithType_inChildrenOfElement___block_invoke;
  v8[3] = &unk_2781FC5D8;
  v8[4] = &v9;
  v8[5] = type;
  [elementCopy enumerateChildrenUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __83__SKUIEditorDocumentViewController__locateFirstButtonWithType_inChildrenOfElement___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 elementType] == 12;
  v7 = v9;
  if (v6)
  {
    v8 = v9;
    if ([v8 buttonViewType] == *(a1 + 40))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a3 = 1;
    }

    v7 = v9;
  }
}

- (void)_resetButtonAction
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = [(SKUIViewElement *)self->_templateElement firstChildForElementType:31];
  title = [v20 title];
  text = [title text];
  string = [text string];

  message = [v20 message];
  text2 = [message text];
  string2 = [text2 string];

  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:string message:string2 preferredStyle:1];
  [v20 buttons];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 buttonViewType] == 11)
        {
          objc_initWeak(&location, self);
          v11 = MEMORY[0x277D750F8];
          buttonText = [v10 buttonText];
          string3 = [buttonText string];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __54__SKUIEditorDocumentViewController__resetButtonAction__block_invoke;
          v23[3] = &unk_2781F9748;
          objc_copyWeak(&v24, &location);
          v14 = [v11 actionWithTitle:string3 style:2 handler:v23];

          objc_destroyWeak(&v24);
          objc_destroyWeak(&location);
        }

        else
        {
          v15 = MEMORY[0x277D750F8];
          buttonText2 = [v10 buttonText];
          string4 = [buttonText2 string];
          v14 = [v15 actionWithTitle:string4 style:1 handler:0];
        }

        [v6 addAction:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  [(SKUIEditorDocumentViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __54__SKUIEditorDocumentViewController__resetButtonAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetTextView];
}

- (void)_resetTextView
{
  editorView = self->_editorView;
  templateElement = self->_templateElement;
  [(SKUIViewElementLayoutContext *)self->_layoutContext activePageWidth];
  [(SKUIEditorTemplateView *)editorView reloadWithViewElement:templateElement width:self->_layoutContext context:?];
  self->_isTextChanged = 0;

  [(SKUIEditorDocumentViewController *)self _layoutNavigation];
}

- (void)_sendCancelEventAndDismiss
{
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"cancelButton", @"buttonIdentifier", 0}];
  templateElement = self->_templateElement;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SKUIEditorDocumentViewController__sendCancelEventAndDismiss__block_invoke;
  v5[3] = &unk_2781FAF50;
  v5[4] = self;
  [(SKUIEditorTemplateViewElement *)templateElement dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v3 completionBlock:v5];
}

- (void)_sendDoneEventAndDismissWithText:(id)text
{
  v4 = MEMORY[0x277CBEAC0];
  textCopy = text;
  v6 = [[v4 alloc] initWithObjectsAndKeys:{@"doneButton", @"buttonIdentifier", textCopy, @"text", 0}];

  templateElement = self->_templateElement;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SKUIEditorDocumentViewController__sendDoneEventAndDismissWithText___block_invoke;
  v8[3] = &unk_2781FAF50;
  v8[4] = self;
  [(SKUIEditorTemplateViewElement *)templateElement dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v6 completionBlock:v8];
}

- (void)_updateBiographyWithText:(id)text onCompletion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  contentId = [(SKUIEditorTemplateViewElement *)self->_templateElement contentId];
  if (contentId)
  {
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v11 = [v9 initWithObjectsAndKeys:{v10, @"SKUIMediaSocialAdminPermissionsOptionIgnoreCache", 0}];

    v12 = +[SKUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SKUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke;
    v18[3] = &unk_2781FE920;
    v19 = contentId;
    v20 = &v21;
    [v12 getAuthorsAndWaitWithOptions:v11 authorsBlock:v18];
  }

  if (*(v22 + 24) == 1)
  {
    v13 = [SKUIMediaSocialUpdateProfileOperation alloc];
    clientContext = [(SKUIViewController *)self clientContext];
    v15 = [(SKUIMediaSocialUpdateProfileOperation *)v13 initWithClientContext:clientContext];

    [(SKUIMediaSocialUpdateProfileOperation *)v15 setEntityType:@"artist"];
    [(SKUIMediaSocialUpdateProfileOperation *)v15 setIdentifier:contentId];
    [(SKUIMediaSocialUpdateProfileOperation *)v15 setValue:textCopy forProfileField:@"bio"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__SKUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_2;
    v16[3] = &unk_2781FE6D8;
    v17 = completionCopy;
    [(SKUIMediaSocialUpdateProfileOperation *)v15 setOutputBlock:v16];
    [(SKUIMediaSocialUpdateProfileOperation *)v15 main];
  }

  _Block_object_dispose(&v21, 8);
}

void __74__SKUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) longLongValue];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) identifier];
        v11 = [v10 longLongValue];

        if (v11 == v4)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __74__SKUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__SKUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_3;
  v3[3] = &unk_2781FB5B0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __74__SKUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_updateEditorViewInset
{
  editorView = self->_editorView;
  Height = CGRectGetHeight(self->_keyboardFrame);
  v5 = Height + CGRectGetHeight(self->_toolbarFrame);

  [(SKUIEditorTemplateView *)editorView setBottomInset:v5];
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorDocumentViewController initWithTemplateElement:]";
}

@end