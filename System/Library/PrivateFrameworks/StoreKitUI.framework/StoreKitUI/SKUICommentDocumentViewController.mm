@interface SKUICommentDocumentViewController
- (BOOL)_loadImageForURL:(id)l cacheKey:(id)key dataConsumer:(id)consumer reason:(int64_t)reason;
- (SKUICommentDocumentViewController)initWithTemplateElement:(id)element;
- (id)_backgroundColor;
- (id)_getSelectedCommenter;
- (id)_layoutContext;
- (void)_changeCommenter;
- (void)_checkAdminStatus;
- (void)_keyboardDidHideChangeNotification:(id)notification;
- (void)_keyboardWillChangeNotification:(id)notification accountForGuideLines:(BOOL)lines applyKeyboardOffset:(BOOL)offset;
- (void)_keyboardWillHideNotification:(id)notification;
- (void)_keyboardWillShowNotification:(id)notification;
- (void)_layoutKeyboard;
- (void)_layoutScrollView:(double)view;
- (void)_preloadCommenterImages;
- (void)_reloadContentSize:(double)size;
- (void)_setSelectedCommenter:(int64_t)commenter;
- (void)commentPostBarView:(id)view text:(id)text as:(id)as;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)updateStackElement:(id)element withView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUICommentDocumentViewController

- (SKUICommentDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUICommentDocumentViewController *)v6 initWithTemplateElement:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUICommentDocumentViewController;
  v14 = [(SKUICommentDocumentViewController *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_templateElement, element);
    v15->_scrollNewCommentToView = [(SKUICommentTemplateViewElement *)v15->_templateElement scrollNewCommentToView];
    v16 = [elementCopy firstChildForElementType:132];
    stackTemplateElement = v15->_stackTemplateElement;
    v15->_stackTemplateElement = v16;

    [(SKUICommentDocumentViewController *)v15 setAutomaticallyAdjustsScrollViewInsets:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__keyboardWillChangeFrameNotification_ name:*MEMORY[0x277D76C48] object:0];
    [defaultCenter addObserver:v15 selector:sel__keyboardDidHideChangeNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [defaultCenter addObserver:v15 selector:sel__keyboardWillHideNotification_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v15 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x277D76C60] object:0];
    v19 = +[SKUIMediaSocialProfileCoordinator sharedCoordinator];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__SKUICommentDocumentViewController_initWithTemplateElement___block_invoke;
    v21[3] = &unk_2781FFA28;
    v22 = v15;
    [v19 getProfileWithOptions:0 profileBlock:v21];
  }

  return v15;
}

void __61__SKUICommentDocumentViewController_initWithTemplateElement___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_alloc_init(SKUIMediaSocialAuthor);
    v5 = *(a1 + 32);
    v6 = *(v5 + 1064);
    *(v5 + 1064) = v4;

    v7 = *(*(a1 + 32) + 1064);
    v8 = [v3 profileType];
    [v7 setAuthorType:v8];

    v9 = *(*(a1 + 32) + 1064);
    v10 = [v3 identifier];
    [v9 setIdentifier:v10];

    v11 = *(*(a1 + 32) + 1064);
    v12 = [v3 name];
    [v11 setName:v12];

    v13 = *(*(a1 + 32) + 1064);
    v14 = [v3 profileImageURL];

    [v13 setThumbnailImageURL:v14];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  [(SKUILayoutCache *)self->_textLayoutCache setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUICommentDocumentViewController;
  [(SKUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  stackTemplateElement = self->_stackTemplateElement;
  v15 = v3;
  if (stackTemplateElement)
  {
    [(SKUICommentDocumentViewController *)self updateStackElement:stackTemplateElement withView:v3];
    v3 = v15;
  }

  if (!self->_postView)
  {
    v5 = [SKUICommentPostBarView alloc];
    v6 = [(SKUICommentPostBarView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    postView = self->_postView;
    self->_postView = v6;

    [(SKUICommentPostBarView *)self->_postView setDelegate:self];
    v8 = self->_postView;
    postButtonText = [(SKUICommentTemplateViewElement *)self->_templateElement postButtonText];
    [(SKUICommentPostBarView *)v8 setPostButtonText:postButtonText];

    v10 = self->_postView;
    postPlaceholderText = [(SKUICommentTemplateViewElement *)self->_templateElement postPlaceholderText];
    [(SKUICommentPostBarView *)v10 setPlaceholderText:postPlaceholderText];

    [(SKUICommentPostBarView *)self->_postView setPostButtonVisible:0];
    asText = [(SKUICommentTemplateViewElement *)self->_templateElement asText];

    if (asText)
    {
      v13 = self->_postView;
      asText2 = [(SKUICommentTemplateViewElement *)self->_templateElement asText];
      [(SKUICommentPostBarView *)v13 setAsText:asText2];
    }

    [v15 addSubview:self->_postView];
    v3 = v15;
  }

  [(SKUICommentDocumentViewController *)self setView:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  templateElement = self->_templateElement;
  if (templateElement && [(SKUICommentTemplateViewElement *)templateElement showKeyboard]&& !self->_didShowKeyboard)
  {
    [(SKUICommentPostBarView *)self->_postView becomeFirstResponder];
    self->_didShowKeyboard = 1;
  }

  v6.receiver = self;
  v6.super_class = SKUICommentDocumentViewController;
  [(SKUICommentDocumentViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUICommentDocumentViewController *)self _layoutScrollView:0.0];
  v5.receiver = self;
  v5.super_class = SKUICommentDocumentViewController;
  [(SKUIViewController *)&v5 viewWillAppear:appearCopy];
  [(SKUICommentDocumentViewController *)self _checkAdminStatus];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  view = [(SKUIStackDocumentViewController *)self->_childViewController view];
  [view resignFirstResponder];
  v6.receiver = self;
  v6.super_class = SKUICommentDocumentViewController;
  [(SKUICommentDocumentViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  [(SKUICommentDocumentViewController *)self _layoutScrollView:0.0];
  if (!self->_keyboardVisible)
  {
    [(SKUICommentDocumentViewController *)self _layoutKeyboard];
    [(SKUICommentDocumentViewController *)self _reloadContentSize:0.0];
  }

  v3.receiver = self;
  v3.super_class = SKUICommentDocumentViewController;
  [(SKUICommentDocumentViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = SKUICommentDocumentViewController;
  coordinatorCopy = coordinator;
  [(SKUICommentDocumentViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(SKUIStackDocumentViewController *)self->_childViewController viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height, v8.receiver, v8.super_class];
}

- (void)documentDidUpdate:(id)update
{
  updateCopy = update;
  templateElement = [updateCopy templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  v6 = [(SKUIViewElement *)self->_templateElement firstChildForElementType:132];
  childViewController = self->_childViewController;
  if (childViewController)
  {
    [(SKUIStackDocumentViewController *)childViewController documentDidUpdate:updateCopy withTemplate:v6];
  }

  else
  {
    view = [(SKUICommentDocumentViewController *)self view];
    [(SKUICommentDocumentViewController *)self updateStackElement:v6 withView:view];

    [(SKUICommentDocumentViewController *)self _reloadContentSize:0.0];
  }
}

- (void)updateStackElement:(id)element withView:(id)view
{
  elementCopy = element;
  objc_storeStrong(&self->_stackTemplateElement, element);
  viewCopy = view;
  childViewController = self->_childViewController;
  if (childViewController)
  {
    view = [(SKUIStackDocumentViewController *)childViewController view];
    [view removeFromSuperview];

    [(SKUIStackDocumentViewController *)self->_childViewController removeFromParentViewController];
  }

  v10 = [[SKUIStackDocumentViewController alloc] initWithTemplateElement:self->_stackTemplateElement layoutStyle:0];
  v11 = self->_childViewController;
  self->_childViewController = v10;

  v12 = self->_childViewController;
  clientContext = [(SKUIViewController *)self clientContext];
  [(SKUIViewController *)v12 setClientContext:clientContext];

  v14 = self->_childViewController;
  operationQueue = [(SKUIViewController *)self operationQueue];
  [(SKUIViewController *)v14 setOperationQueue:operationQueue];

  view2 = [(SKUIStackDocumentViewController *)self->_childViewController view];
  [view2 setAutoresizingMask:18];
  _backgroundColor = [(SKUICommentDocumentViewController *)self _backgroundColor];
  [view2 setBackgroundColor:_backgroundColor];

  [viewCopy bounds];
  [view2 setFrame:?];
  [(SKUICommentDocumentViewController *)self addChildViewController:self->_childViewController];
  [(SKUIStackDocumentViewController *)self->_childViewController didMoveToParentViewController:self];
  [viewCopy addSubview:view2];
  [viewCopy sendSubviewToBack:view2];
}

- (void)commentPostBarView:(id)view text:(id)text as:(id)as
{
  viewCopy = view;
  textCopy = text;
  if (self->_templateElement)
  {
    _getSelectedCommenter = [(SKUICommentDocumentViewController *)self _getSelectedCommenter];
    _getSelectedCommenter2 = [(SKUICommentDocumentViewController *)self _getSelectedCommenter];
    identifier = [_getSelectedCommenter2 identifier];

    isAttributed = [_getSelectedCommenter isAttributed];
    v13 = MEMORY[0x277CBEC28];
    if (isAttributed)
    {
      v13 = MEMORY[0x277CBEC38];
    }

    v14 = v13;
    authorType = [_getSelectedCommenter authorType];
    if (authorType)
    {
      authorType2 = [_getSelectedCommenter authorType];
    }

    else
    {
      authorType2 = &stru_2827FFAC8;
    }

    v17 = objc_opt_new();
    [v17 setObject:@"post" forKey:@"type"];
    if (textCopy)
    {
      [v17 setObject:textCopy forKey:@"comment"];
    }

    if (identifier)
    {
      [v17 setObject:identifier forKey:@"commenter"];
    }

    [v17 setObject:v14 forKey:@"isAttributed"];
    [v17 setObject:authorType2 forKey:@"authorType"];
    templateElement = self->_templateElement;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__SKUICommentDocumentViewController_commentPostBarView_text_as___block_invoke;
    v19[3] = &unk_2781FAF50;
    v20 = viewCopy;
    [(SKUICommentTemplateViewElement *)templateElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v17 completionBlock:v19];
  }
}

void __64__SKUICommentDocumentViewController_commentPostBarView_text_as___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SKUICommentDocumentViewController_commentPostBarView_text_as___block_invoke_2;
  block[3] = &unk_2781F80F0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __64__SKUICommentDocumentViewController_commentPostBarView_text_as___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setText:&stru_2827FFAC8];
  v2 = *(a1 + 32);

  return [v2 resignFirstResponder];
}

- (void)_keyboardWillShowNotification:(id)notification
{
  self->_keyboardVisible = 1;
  selectedCommenter = self->_selectedCommenter;
  notificationCopy = notification;
  [(SKUICommentDocumentViewController *)self _setSelectedCommenter:selectedCommenter];
  [(SKUICommentPostBarView *)self->_postView setPostButtonVisible:1];
  [(SKUICommentDocumentViewController *)self _layoutKeyboard];
  [(SKUICommentDocumentViewController *)self _keyboardWillChangeNotification:notificationCopy accountForGuideLines:0 applyKeyboardOffset:1];
}

- (void)_keyboardWillHideNotification:(id)notification
{
  postView = self->_postView;
  notificationCopy = notification;
  [(SKUICommentPostBarView *)postView setCommenter:0];
  [(SKUICommentPostBarView *)self->_postView setPostButtonVisible:0];
  [(SKUICommentDocumentViewController *)self _layoutKeyboard];
  [(SKUICommentDocumentViewController *)self _keyboardWillChangeNotification:notificationCopy accountForGuideLines:1 applyKeyboardOffset:0];
}

- (void)_keyboardDidHideChangeNotification:(id)notification
{
  self->_keyboardVisible = 0;
  if (self->_scrollNewCommentToView)
  {
    sectionsViewController = [(SKUIStackDocumentViewController *)self->_childViewController sectionsViewController];
    collectionView = [sectionsViewController collectionView];

    [collectionView contentSize];
    v7 = v6;
    view = [(SKUICommentDocumentViewController *)self view];
    [view bounds];
    v10 = v9;

    if (v7 >= v10)
    {
      [collectionView contentInset];
      v12 = v11;
      [collectionView bounds];
      [collectionView setContentOffset:1 animated:{0.0, v12 + v7 - v13}];
    }
  }
}

- (void)_keyboardWillChangeNotification:(id)notification accountForGuideLines:(BOOL)lines applyKeyboardOffset:(BOOL)offset
{
  offsetCopy = offset;
  linesCopy = lines;
  userInfo = [notification userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  v9 = v8;
  if (v8)
  {
    [v8 CGRectValue];
    self->_keyboardRect.origin.x = v10;
    self->_keyboardRect.origin.y = v11;
    self->_keyboardRect.size.width = v12;
    self->_keyboardRect.size.height = v13;
    v14 = [userInfo objectForKey:*MEMORY[0x277D76B78]];
    [v14 doubleValue];
    v16 = v15;

    v17 = [userInfo objectForKey:*MEMORY[0x277D76B70]];
    unsignedIntegerValue = [v17 unsignedIntegerValue];

    [MEMORY[0x277D75D18] beginAnimations:0 context:0];
    [MEMORY[0x277D75D18] setAnimationCurve:unsignedIntegerValue];
    [MEMORY[0x277D75D18] setAnimationDuration:v16];
    [(SKUICommentPostBarView *)self->_postView frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    y = self->_keyboardRect.origin.y;
    [(SKUICommentPostBarView *)self->_postView bounds];
    if (linesCopy)
    {
      presentingViewController = [(SKUICommentDocumentViewController *)self presentingViewController];
      v28 = presentingViewController;
      if (presentingViewController)
      {
        selfCopy = presentingViewController;
      }

      else
      {
        selfCopy = self;
      }

      v30 = selfCopy;

      view = [(SKUICommentDocumentViewController *)self view];
      [view bounds];
      v33 = v32 - v24;
      bottomLayoutGuide = [(SKUICommentDocumentViewController *)v30 bottomLayoutGuide];

      [bottomLayoutGuide length];
      v36 = v33 - v35;
    }

    else
    {
      v36 = y - v26;
    }

    [(SKUICommentPostBarView *)self->_postView setFrame:v20, v36, v22, v24];
    [MEMORY[0x277D75D18] commitAnimations];
    height = 0.0;
    if (offsetCopy)
    {
      height = self->_keyboardRect.size.height;
    }

    [(SKUICommentDocumentViewController *)self _reloadContentSize:height];
  }
}

- (id)_backgroundColor
{
  style = [(SKUICommentTemplateViewElement *)self->_templateElement style];
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

- (void)_changeCommenter
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75110];
  clientContext = [(SKUIViewController *)self clientContext];
  v5 = [v3 alertControllerWithTitle:0 message:0 preferredStyle:SKUIUserInterfaceIdiom(clientContext) == 1];

  [v5 setModalPresentationStyle:7];
  commentAsText = [(SKUICommentTemplateViewElement *)self->_templateElement commentAsText];
  v24 = [[SKUICommentHeaderViewController alloc] initWithTitle:commentAsText];
  v23 = [MEMORY[0x277D750F8] _actionWithContentViewController:? style:?];
  [v5 addAction:?];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_commenters;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v27 = *v30;
    v9 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 isMySelf])
        {
          v12 = MEMORY[0x277CCACA8];
          name = [v11 name];
          myselfText = [(SKUICommentTemplateViewElement *)self->_templateElement myselfText];
          v15 = [v12 stringWithFormat:@"%@ (%@)", name, myselfText];
        }

        else
        {
          if ([v11 isAttributed])
          {
            [v11 attributedName];
          }

          else
          {
            [v11 name];
          }
          v15 = ;
        }

        thumbnailImage = [v11 thumbnailImage];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __53__SKUICommentDocumentViewController__changeCommenter__block_invoke;
        v28[3] = &unk_2781FBCE8;
        v28[4] = self;
        v17 = [SKUICommenterAction _actionWithTitle:v15 image:thumbnailImage style:0 handler:v28 shouldDismissHandler:&__block_literal_global_50];
        [v17 setIndex:v8];
        [v17 _setChecked:v8 == self->_selectedCommenter];
        [v17 _setTitleTextAlignment:4];
        v18 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        [v17 _setTitleTextColor:v18];

        v5 = v9;
        [v9 addAction:v17];
        ++v8;
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v19 = MEMORY[0x277D750F8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [mainBundle localizedStringForKey:@"CANCEL" value:&stru_2827FFAC8 table:0];
  v22 = [v19 actionWithTitle:v21 style:1 handler:&__block_literal_global_67];

  if (v22)
  {
    [v5 addAction:v22];
  }

  [(SKUICommentDocumentViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __53__SKUICommentDocumentViewController__changeCommenter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1 + 32) + 1160) = [v3 index];
    [*(a1 + 32) _setSelectedCommenter:*(*(a1 + 32) + 1160)];
  }
}

- (void)_checkAdminStatus
{
  mEMORY[0x277D69CE0] = [MEMORY[0x277D69CE0] sharedCoordinator];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SKUICommentDocumentViewController__checkAdminStatus__block_invoke;
  v4[3] = &unk_2781FB4C8;
  v4[4] = self;
  [mEMORY[0x277D69CE0] getAdminStatusAndWaitWithOptions:0 resultBlock:v4];
}

void __54__SKUICommentDocumentViewController__checkAdminStatus__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[SKUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__SKUICommentDocumentViewController__checkAdminStatus__block_invoke_2;
    v4[3] = &unk_2781FFA70;
    v4[4] = *(a1 + 32);
    [v3 getAuthorsAndWaitWithOptions:0 authorsBlock:v4];
  }
}

void __54__SKUICommentDocumentViewController__checkAdminStatus__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SKUICommentDocumentViewController__checkAdminStatus__block_invoke_3;
  v5[3] = &unk_2781F80C8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __54__SKUICommentDocumentViewController__checkAdminStatus__block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v32 = a1;
  if (*(*(a1 + 32) + 1064))
  {
    v3 = [[SKUICommenter alloc] initWithAuthor:*(*(a1 + 32) + 1064)];
    [(SKUICommenter *)v3 setIsMySelf:1];
    [v2 addObject:v3];

    a1 = v32;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      v8 = @"commentAsEntity";
      v9 = @"commentWithAttribution";
      do
      {
        v10 = 0;
        v33 = v6;
        do
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * v10);
          v12 = [v11 permissions];
          v13 = [v12 containsObject:v8];

          if (v13)
          {
            v14 = [[SKUICommenter alloc] initWithAuthor:v11];
            [v2 addObject:v14];
          }

          v15 = [v11 permissions];
          v16 = [v15 containsObject:v9];

          if (v16)
          {
            v17 = v9;
            v18 = v8;
            v19 = v7;
            v20 = v2;
            v21 = [[SKUICommenter alloc] initWithAuthor:v11];
            [(SKUICommenter *)v21 setIsAttributed:1];
            v22 = [*(a1 + 32) clientContext];
            v23 = v22;
            if (v22)
            {
              [v22 localizedStringForKey:@"ATTRIBUTION_PERSON_%@_FROM_GROUP_%@"];
            }

            else
            {
              [SKUIClientContext localizedStringForKey:@"ATTRIBUTION_PERSON_%@_FROM_GROUP_%@" inBundles:0];
            }
            v24 = ;

            v25 = MEMORY[0x277CCACA8];
            v26 = [*(*(a1 + 32) + 1064) name];
            v27 = [v11 name];
            v28 = [v25 stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@%@" error:0, v26, v27];

            a1 = v32;
            [(SKUICommenter *)v21 setAttributedName:v28];
            [v20 addObject:v21];

            v2 = v20;
            v7 = v19;
            v8 = v18;
            v9 = v17;
            v6 = v33;
          }

          ++v10;
        }

        while (v6 != v10);
        v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v6);
    }
  }

  v29 = *(a1 + 32);
  v30 = *(v29 + 1080);
  *(v29 + 1080) = v2;
  v31 = v2;

  [*(a1 + 32) _preloadCommenterImages];
}

- (id)_getSelectedCommenter
{
  v3 = [(NSArray *)self->_commenters count];
  if (v3)
  {
    selectedCommenter = self->_selectedCommenter;
    if (selectedCommenter >= [(NSArray *)self->_commenters count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [(NSArray *)self->_commenters objectAtIndex:self->_selectedCommenter];
    }
  }

  return v3;
}

- (id)_layoutContext
{
  layoutContext = self->_layoutContext;
  if (!layoutContext)
  {
    v4 = objc_alloc_init(SKUIViewElementLayoutContext);
    v5 = self->_layoutContext;
    self->_layoutContext = v4;

    [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
    v6 = self->_layoutContext;
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIViewElementLayoutContext *)v6 setClientContext:clientContext];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SKUICommentTemplateViewElement *)self->_templateElement elementType]];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SKUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SKUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SKUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SKUIResourceLoader alloc];
    operationQueue = [(SKUIViewController *)self operationQueue];
    clientContext2 = [(SKUIViewController *)self clientContext];
    v14 = [(SKUIResourceLoader *)v11 initWithOperationQueue:operationQueue clientContext:clientContext2];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v14];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_layoutScrollView:(double)view
{
  view = [(SKUICommentDocumentViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view2 = [(SKUIStackDocumentViewController *)self->_childViewController view];
  [view2 setFrame:{v7, v9, v11, v13 - view}];
}

- (void)_layoutKeyboard
{
  presentingViewController = [(SKUICommentDocumentViewController *)self presentingViewController];
  v4 = presentingViewController;
  if (presentingViewController)
  {
    selfCopy = presentingViewController;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  postView = self->_postView;
  view = [(SKUICommentDocumentViewController *)self view];
  [view bounds];
  [(SKUICommentPostBarView *)postView sizeThatFits:v9, v10];
  v12 = v11;
  v14 = v13;

  view2 = [(SKUICommentDocumentViewController *)self view];
  [view2 bounds];
  v17 = v16 - v14;
  bottomLayoutGuide = [(SKUICommentDocumentViewController *)v6 bottomLayoutGuide];
  [bottomLayoutGuide length];
  v20 = v17 - v19;

  v21 = self->_postView;

  [(SKUICommentPostBarView *)v21 setFrame:0.0, v20, v12, v14];
}

- (BOOL)_loadImageForURL:(id)l cacheKey:(id)key dataConsumer:(id)consumer reason:(int64_t)reason
{
  consumerCopy = consumer;
  keyCopy = key;
  lCopy = l;
  _layoutContext = [(SKUICommentDocumentViewController *)self _layoutContext];
  resourceLoader = [_layoutContext resourceLoader];

  v15 = objc_alloc_init(SKUIArtworkRequest);
  [(SKUIResourceRequest *)v15 setCacheKey:keyCopy];

  [(SKUIArtworkRequest *)v15 setDataConsumer:consumerCopy];
  [(SKUIArtworkRequest *)v15 setURL:lCopy];

  LOBYTE(reason) = [resourceLoader loadResourceWithRequest:v15 reason:reason];
  return reason;
}

- (void)_preloadCommenterImages
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_commenters;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        thumbnailImageURL = [v7 thumbnailImageURL];

        if (thumbnailImageURL)
        {
          v9 = objc_alloc_init(SKUICommentImageDataConsumer);
          [(SKUIStyledImageDataConsumer *)v9 setImageSize:25.0, 25.0];
          objc_initWeak(&location, v7);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __60__SKUICommentDocumentViewController__preloadCommenterImages__block_invoke;
          v12[3] = &unk_2781FA1F8;
          objc_copyWeak(&v13, &location);
          [(SKUICommentImageDataConsumer *)v9 setCompletionBlock:v12];
          thumbnailImageURL2 = [v7 thumbnailImageURL];
          thumbnailImageURL3 = [v7 thumbnailImageURL];
          [(SKUICommentDocumentViewController *)self _loadImageForURL:thumbnailImageURL2 cacheKey:thumbnailImageURL3 dataConsumer:v9 reason:1];

          objc_destroyWeak(&v13);
          objc_destroyWeak(&location);
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void __60__SKUICommentDocumentViewController__preloadCommenterImages__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setThumbnailImage:v5];
  }
}

- (void)_reloadContentSize:(double)size
{
  sectionsViewController = [(SKUIStackDocumentViewController *)self->_childViewController sectionsViewController];
  collectionView = [sectionsViewController collectionView];

  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  topLayoutGuide = [(SKUICommentDocumentViewController *)self topLayoutGuide];
  [topLayoutGuide length];
  v11 = v10;

  if (size <= 0.0)
  {
    presentingViewController = [(SKUICommentDocumentViewController *)self presentingViewController];
    v13 = presentingViewController;
    if (presentingViewController)
    {
      selfCopy = presentingViewController;
    }

    else
    {
      selfCopy = self;
    }

    v15 = selfCopy;

    bottomLayoutGuide = [(SKUICommentDocumentViewController *)v15 bottomLayoutGuide];

    [bottomLayoutGuide length];
    size = v17;
  }

  else
  {
    [collectionView contentOffset];
    [collectionView setContentOffset:?];
  }

  postView = self->_postView;
  view = [(SKUICommentDocumentViewController *)self view];
  [view bounds];
  [(SKUICommentPostBarView *)postView sizeThatFits:v20, v21];
  v23 = v7 + size + v22;

  [collectionView setContentInset:{v11, v6, v23, v8}];
}

- (void)_setSelectedCommenter:(int64_t)commenter
{
  if ([(NSArray *)self->_commenters count]&& (selectedCommenter = self->_selectedCommenter, selectedCommenter < [(NSArray *)self->_commenters count]))
  {
    if (commenter || ([(SKUICommentTemplateViewElement *)self->_templateElement myselfText], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v6 = [(NSArray *)self->_commenters objectAtIndex:self->_selectedCommenter];
      if ([v6 isAttributed])
      {
        [v6 attributedName];
      }

      else
      {
        [v6 name];
      }
      v11 = ;

      myselfText = v11;
    }

    else
    {
      myselfText = [(SKUICommentTemplateViewElement *)self->_templateElement myselfText];
    }

    postView = self->_postView;
    v12 = myselfText;
    if (self->_keyboardVisible)
    {
      [(SKUICommentPostBarView *)postView setCommenter:myselfText];
    }

    else
    {
      [(SKUICommentPostBarView *)postView setCommenter:0];
      [(SKUICommentDocumentViewController *)self _layoutKeyboard];
    }
  }

  else
  {
    v7 = self->_postView;

    [(SKUICommentPostBarView *)v7 setCommenter:0];
  }
}

@end