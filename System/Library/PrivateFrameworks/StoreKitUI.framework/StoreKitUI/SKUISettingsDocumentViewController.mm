@interface SKUISettingsDocumentViewController
+ (double)_heightThatFitsWidth:(double)width withSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_settingsGroupsFromTemplateElement:(id)element withDelegate:(id)delegate settingsContext:(id)context;
- (SKUISettingsDocumentViewController)initWithTemplateElement:(id)element clientContext:(id)context;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_barButtonItemCancel;
- (id)_barButtonItemDone;
- (id)_barButtonItemEdit;
- (id)_dequeueHeaderFooterViewWithReuseIdentifier:(id)identifier;
- (id)_layoutContext;
- (id)_resourceLoader;
- (id)_tableView;
- (id)_textLayoutCache;
- (id)_viewForSettingsHeaderFooterDescription:(id)description;
- (id)settingsGroupsDescription:(id)description viewForSettingAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_cancelButtonAction:(id)action;
- (void)_deselectItemsAnimated:(BOOL)animated;
- (void)_doneButtonAction:(id)action;
- (void)_editButtonAction:(id)action;
- (void)_invalidateLayout;
- (void)_showBarItemLeft:(id)left right:(id)right animated:(BOOL)animated;
- (void)_showEditBarButtonItemAnimated:(BOOL)animated;
- (void)_showEditingBarButtonItemsEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)settingsDocumentViewDidChangeTintColor:(id)color;
- (void)settingsEditTransaction:(id)transaction isValid:(BOOL)valid;
- (void)settingsEditTransactionDidFailTransaction:(id)transaction;
- (void)settingsEditTransactionWillBeginTransaction:(id)transaction;
- (void)settingsEditTransactionWillCommitTransaction:(id)transaction;
- (void)settingsGroupsDescription:(id)description deletedSettingAtIndexPath:(id)path;
- (void)settingsGroupsDescription:(id)description deletedSettingsGroupAtIndex:(unint64_t)index;
- (void)settingsGroupsDescription:(id)description didUpdateSettingsDescription:(id)settingsDescription;
- (void)settingsGroupsDescription:(id)description dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)settingsGroupsDescription:(id)description presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)settingsGroupsDescriptionDidUpdateValidity:(id)validity;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUISettingsDocumentViewController

- (SKUISettingsDocumentViewController)initWithTemplateElement:(id)element clientContext:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsDocumentViewController initWithTemplateElement:clientContext:];
  }

  v17.receiver = self;
  v17.super_class = SKUISettingsDocumentViewController;
  v9 = [(SKUISettingsDocumentViewController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(SKUIViewController *)v9 setClientContext:contextCopy];
    v11 = [[SKUISettingsContext alloc] initWithClientContext:contextCopy];
    settingsContext = v10->_settingsContext;
    v10->_settingsContext = v11;

    objc_storeStrong(&v10->_templateElement, element);
    v13 = [objc_opt_class() _settingsGroupsFromTemplateElement:v10->_templateElement withDelegate:v10 settingsContext:v10->_settingsContext];
    settingsGroupsDescription = v10->_settingsGroupsDescription;
    v10->_settingsGroupsDescription = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
    [(SKUISettingsDocumentViewController *)v10 _reloadData];
    [(SKUISettingsDocumentViewController *)v10 _invalidateLayout];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SKUISettingsDocumentViewController;
  [(SKUIViewController *)&v4 dealloc];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy bounds];
  Width = CGRectGetWidth(v16);
  v9 = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:pathCopy];
  v10 = objc_alloc_init([SKUISettingDescription viewClassForSettingDescription:v9]);
  _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
  [v10 reloadWithSettingDescription:v9 width:_layoutContext context:Width];

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"SKUISettingsTableViewCellReuseIdentifier" forIndexPath:pathCopy];

  [v12 displaySettingDescriptionView:v10];
  if ([v9 allowsSelection])
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v12 setSelectionStyle:v13];

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v8 = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:pathCopy];
  v9 = v8;
  if (v8 && [v8 allowsSelection])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__SKUISettingsDocumentViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v10[3] = &unk_2781F8320;
    objc_copyWeak(&v11, &location);
    [v9 handleSelectionOnCompletion:v10];
    objc_destroyWeak(&v11);
  }

  else
  {
    [(SKUISettingsDocumentViewController *)self _deselectItemsAnimated:1];
  }

  objc_destroyWeak(&location);
}

void __72__SKUISettingsDocumentViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deselectItemsAnimated:1];
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  settingsGroupsDescription = self->_settingsGroupsDescription;
  viewCopy = view;
  v8 = [(SKUISettingsGroupsDescription *)settingsGroupsDescription footerDescriptionForGroupAtIndex:section];
  v9 = objc_opt_class();
  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  Width = CGRectGetWidth(v26);
  _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
  [v9 _heightThatFitsWidth:v8 withSettingsHeaderFooterDescription:_layoutContext context:Width];
  v21 = v20;

  if ([(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription numberOfGroups]- 1 == section)
  {
    v22 = 36.0;
  }

  else
  {
    v23 = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:section + 1];
    v22 = 36.0;
    if (v23)
    {
      v22 = 2.22044605e-16;
    }
  }

  v24 = v21 + v22;

  return v24;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  settingsGroupsDescription = self->_settingsGroupsDescription;
  viewCopy = view;
  v8 = [(SKUISettingsGroupsDescription *)settingsGroupsDescription headerDescriptionForGroupAtIndex:section];
  v9 = objc_opt_class();
  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  Width = CGRectGetWidth(v26);
  _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
  [v9 _heightThatFitsWidth:v8 withSettingsHeaderFooterDescription:_layoutContext context:Width];
  v21 = v20;

  if (section)
  {
    v22 = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:section];
    v23 = 2.22044605e-16;
    if (v22)
    {
      v23 = 36.0;
    }
  }

  else
  {
    v23 = 16.0;
  }

  v24 = v21 + v23;

  return v24;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view bounds];
  Width = CGRectGetWidth(v14);
  v8 = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription settingDescriptionAtIndexPath:pathCopy];

  v9 = [SKUISettingDescription viewClassForSettingDescription:v8];
  _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
  [(objc_class *)v9 sizeThatFitsWidth:v8 settingDescription:_layoutContext context:Width];
  v12 = v11;

  return fmax(v12, 48.0);
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowFooterForGroupAtIndex:section])
  {
    v6 = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription footerDescriptionForGroupAtIndex:section];
    v7 = [(SKUISettingsDocumentViewController *)self _viewForSettingsHeaderFooterDescription:v6];
  }

  else
  {
    v7 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"SKUISettingsTableViewEmptyHeaderFooterViewReuseIdentifier"];
  }

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription shouldShowHeaderForGroupAtIndex:section])
  {
    v6 = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription headerDescriptionForGroupAtIndex:section];
    v7 = [(SKUISettingsDocumentViewController *)self _viewForSettingsHeaderFooterDescription:v6];
  }

  else
  {
    v7 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"SKUISettingsTableViewEmptyHeaderFooterViewReuseIdentifier"];
  }

  return v7;
}

- (void)loadView
{
  v5 = objc_alloc_init(SKUISettingsDocumentView);
  [(SKUISettingsDocumentView *)v5 setDelegate:self];
  _tableView = [(SKUISettingsDocumentViewController *)self _tableView];
  if (storeShouldReverseLayoutDirection())
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [_tableView setSemanticContentAttribute:v4];
  [(SKUISettingsDocumentView *)v5 addSubview:_tableView];
  [(SKUISettingsDocumentViewController *)self setView:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SKUISettingsDocumentViewController;
  [(SKUISettingsDocumentViewController *)&v5 viewDidAppear:?];
  [(SKUIResourceLoader *)self->_resourceLoader enterForeground];
  if ([(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription hasEditableSettingDescriptions])
  {
    [(SKUISettingsDocumentViewController *)self _showEditBarButtonItemAnimated:appearCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUISettingsDocumentViewController;
  [(SKUIViewController *)&v4 viewWillAppear:appear];
  [(SKUISettingsDocumentViewController *)self _reloadData];
  [(SKUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SKUISettingsDocumentViewController;
  [(SKUISettingsDocumentViewController *)&v3 viewWillLayoutSubviews];
  [(SKUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SKUISettingsDocumentViewController;
  [(SKUISettingsDocumentViewController *)&v4 viewDidDisappear:disappear];
  [(SKUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  visibleCells = [(UITableView *)self->_tableView visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(visibleCells);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
      LOBYTE(v13) = [v13 setImage:imageCopy forArtworkRequest:requestCopy context:_layoutContext];

      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)documentDidUpdate:(id)update
{
  updateCopy = update;
  settingsGroupsDescription = self->_settingsGroupsDescription;
  if (settingsGroupsDescription)
  {
    [(SKUISettingsGroupsDescription *)settingsGroupsDescription recycle];
    v5 = self->_settingsGroupsDescription;
    self->_settingsGroupsDescription = 0;
  }

  templateElement = [updateCopy templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  v8 = [objc_opt_class() _settingsGroupsFromTemplateElement:self->_templateElement withDelegate:self settingsContext:self->_settingsContext];
  v9 = self->_settingsGroupsDescription;
  self->_settingsGroupsDescription = v8;

  if ([(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription hasEditableSettingDescriptions])
  {
    [(SKUISettingsDocumentViewController *)self _showEditBarButtonItemAnimated:1];
  }

  [(SKUISettingsDocumentViewController *)self _reloadData];
  [(SKUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)settingsDocumentViewDidChangeTintColor:(id)color
{
  colorCopy = color;
  _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
  tintColor = [colorCopy tintColor];

  [_layoutContext setTintColor:tintColor];

  [(SKUISettingsDocumentViewController *)self _invalidateLayout];
}

- (void)settingsEditTransactionDidFailTransaction:(id)transaction
{
  _barButtonItemDone = [(SKUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:1];
}

- (void)settingsEditTransactionWillBeginTransaction:(id)transaction
{
  isValid = [transaction isValid];

  [(SKUISettingsDocumentViewController *)self _showEditingBarButtonItemsEnabled:isValid animated:1];
}

- (void)settingsEditTransactionWillCommitTransaction:(id)transaction
{
  _barButtonItemDone = [(SKUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:0];
}

- (void)settingsEditTransaction:(id)transaction isValid:(BOOL)valid
{
  validCopy = valid;
  _barButtonItemDone = [(SKUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:validCopy];
}

- (void)settingsGroupsDescription:(id)description deletedSettingAtIndexPath:(id)path
{
  v5 = MEMORY[0x277CBEA60];
  pathCopy = path;
  v7 = [[v5 alloc] initWithObjects:{pathCopy, 0}];

  [(UITableView *)self->_tableView deleteRowsAtIndexPaths:v7 withRowAnimation:0];
}

- (void)settingsGroupsDescription:(id)description deletedSettingsGroupAtIndex:(unint64_t)index
{
  v5 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:index];
  [(UITableView *)self->_tableView deleteSections:v5 withRowAnimation:0];
}

- (void)settingsGroupsDescription:(id)description didUpdateSettingsDescription:(id)settingsDescription
{
  settingsDescriptionCopy = settingsDescription;
  updateType = [settingsDescriptionCopy updateType];
  if (updateType > 2)
  {
    switch(updateType)
    {
      case 3:
        tableView = self->_tableView;
        indexPaths = [settingsDescriptionCopy indexPaths];
        [(UITableView *)tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:0];
        break;
      case 4:
        v12 = self->_tableView;
        indexPaths = [settingsDescriptionCopy indexPaths];
        [(UITableView *)v12 insertRowsAtIndexPaths:indexPaths withRowAnimation:0];
        break;
      case 5:
        v8 = self->_tableView;
        indexPaths = [settingsDescriptionCopy indexPaths];
        [(UITableView *)v8 reloadRowsAtIndexPaths:indexPaths withRowAnimation:5];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (updateType)
  {
    if (updateType == 1)
    {
      v11 = self->_tableView;
      indexPaths = [settingsDescriptionCopy indexSet];
      [(UITableView *)v11 insertSections:indexPaths withRowAnimation:0];
    }

    else
    {
      if (updateType != 2)
      {
        goto LABEL_15;
      }

      v6 = self->_tableView;
      indexPaths = [settingsDescriptionCopy indexSet];
      [(UITableView *)v6 reloadSections:indexPaths withRowAnimation:0];
    }
  }

  else
  {
    v9 = self->_tableView;
    indexPaths = [settingsDescriptionCopy indexSet];
    [(UITableView *)v9 deleteSections:indexPaths withRowAnimation:0];
  }

LABEL_15:
}

- (void)settingsGroupsDescription:(id)description dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  presentedViewController = [(SKUISettingsDocumentViewController *)self presentedViewController];
  v11 = [presentedViewController isEqual:controllerCopy];

  if (v11)
  {
    [(SKUISettingsDocumentViewController *)self dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)settingsGroupsDescription:(id)description presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentedViewController = [(SKUISettingsDocumentViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    [(SKUISettingsDocumentViewController *)self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (id)settingsGroupsDescription:(id)description viewForSettingAtIndexPath:(id)path
{
  v4 = [(UITableView *)self->_tableView cellForRowAtIndexPath:path];
  settingDescriptionView = [v4 settingDescriptionView];

  return settingDescriptionView;
}

- (void)settingsGroupsDescriptionDidUpdateValidity:(id)validity
{
  if (self->_editTransaction)
  {
    barButtonItemDone = self->_barButtonItemDone;
    isValid = [(SKUISettingsEditTransaction *)self->_editTransaction isValid];

    [(UIBarButtonItem *)barButtonItemDone setEnabled:isValid];
  }
}

- (void)_cancelButtonAction:(id)action
{
  if ([(SKUISettingsEditTransaction *)self->_editTransaction isCommiting])
  {
    editTransaction = self->_editTransaction;

    [(SKUISettingsEditTransaction *)editTransaction cancelTransaction];
  }

  else
  {
    view = [(SKUISettingsDocumentViewController *)self view];
    window = [view window];
    firstResponder = [window firstResponder];
    [firstResponder resignFirstResponder];

    [(SKUISettingsEditTransaction *)self->_editTransaction rollbackTransaction];
    v8 = self->_editTransaction;
    self->_editTransaction = 0;
  }
}

- (void)_doneButtonAction:(id)action
{
  view = [(SKUISettingsDocumentViewController *)self view];
  window = [view window];
  firstResponder = [window firstResponder];
  [firstResponder resignFirstResponder];

  editTransaction = self->_editTransaction;

  [(SKUISettingsEditTransaction *)editTransaction commitTransaction];
}

- (void)_editButtonAction:(id)action
{
  createEditTransaction = [(SKUISettingsGroupsDescription *)self->_settingsGroupsDescription createEditTransaction];
  editTransaction = self->_editTransaction;
  self->_editTransaction = createEditTransaction;

  [(SKUISettingsEditTransaction *)self->_editTransaction setDelegate:self];
  v6 = self->_editTransaction;

  [(SKUISettingsEditTransaction *)v6 beginTransaction];
}

+ (double)_heightThatFitsWidth:(double)width withSettingsHeaderFooterDescription:(id)description context:(id)context
{
  if (!description)
  {
    return 0.0;
  }

  contextCopy = context;
  descriptionCopy = description;
  [(objc_class *)[SKUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:?]settingsHeaderFooterDescription:"sizeThatFitsWidth:settingsHeaderFooterDescription:context:" context:descriptionCopy, contextCopy, width];
  v10 = v9;

  return v10;
}

+ (id)_settingsGroupsFromTemplateElement:(id)element withDelegate:(id)delegate settingsContext:(id)context
{
  contextCopy = context;
  delegateCopy = delegate;
  elementCopy = element;
  v10 = [[SKUISettingsGroupsDescription alloc] initWithDelegate:delegateCopy settingsContext:contextCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__SKUISettingsDocumentViewController__settingsGroupsFromTemplateElement_withDelegate_settingsContext___block_invoke;
  v13[3] = &unk_2781F9640;
  v11 = v10;
  v14 = v11;
  [elementCopy enumerateChildrenUsingBlock:v13];

  return v11;
}

void __102__SKUISettingsDocumentViewController__settingsGroupsFromTemplateElement_withDelegate_settingsContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 46)
  {
    [*(a1 + 32) addSettingsGroupWithViewElement:v3];
  }
}

- (id)_barButtonItemCancel
{
  barButtonItemCancel = self->_barButtonItemCancel;
  if (!barButtonItemCancel)
  {
    clientContext = [(SKUIViewController *)self clientContext];
    v5 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"SETTINGS_NAVIGATION_CANCEL" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_NAVIGATION_CANCEL" inBundles:0 inTable:@"Settings"];
    }
    v6 = ;

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:0 target:self action:sel__cancelButtonAction_];
    v8 = self->_barButtonItemCancel;
    self->_barButtonItemCancel = v7;

    barButtonItemCancel = self->_barButtonItemCancel;
  }

  return barButtonItemCancel;
}

- (id)_barButtonItemDone
{
  barButtonItemDone = self->_barButtonItemDone;
  if (!barButtonItemDone)
  {
    clientContext = [(SKUIViewController *)self clientContext];
    v5 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"SETTINGS_NAVIGATION_DONE" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_NAVIGATION_DONE" inBundles:0 inTable:@"Settings"];
    }
    v6 = ;

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:2 target:self action:sel__doneButtonAction_];
    v8 = self->_barButtonItemDone;
    self->_barButtonItemDone = v7;

    barButtonItemDone = self->_barButtonItemDone;
  }

  return barButtonItemDone;
}

- (id)_barButtonItemEdit
{
  barButtonItemEdit = self->_barButtonItemEdit;
  if (!barButtonItemEdit)
  {
    clientContext = [(SKUIViewController *)self clientContext];
    v5 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"SETTINGS_NAVIGATION_EDIT" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_NAVIGATION_EDIT" inBundles:0 inTable:@"Settings"];
    }
    v6 = ;

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:0 target:self action:sel__editButtonAction_];
    v8 = self->_barButtonItemEdit;
    self->_barButtonItemEdit = v7;

    barButtonItemEdit = self->_barButtonItemEdit;
  }

  return barButtonItemEdit;
}

- (id)_dequeueHeaderFooterViewWithReuseIdentifier:(id)identifier
{
  v4 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:identifier];
  [(UITableView *)self->_tableView layoutMargins];
  [v4 setLayoutMargins:?];

  return v4;
}

- (void)_deselectItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x277D85DE8];
  indexPathsForSelectedRows = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        [(UITableView *)self->_tableView deselectRowAtIndexPath:*(*(&v10 + 1) + 8 * v9++) animated:animatedCopy];
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedRows countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_invalidateLayout
{
  if ([(SKUISettingsDocumentViewController *)self isViewLoaded])
  {
    settingsGroupsDescription = self->_settingsGroupsDescription;
    [(UITableView *)self->_tableView bounds];
    Width = CGRectGetWidth(v14);
    _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
    [(SKUISettingsGroupsDescription *)settingsGroupsDescription requestLayoutForWidth:_layoutContext context:Width];

    _textLayoutCache = [(SKUISettingsDocumentViewController *)self _textLayoutCache];
    layoutCache = [_textLayoutCache layoutCache];
    [layoutCache commitLayoutRequests];

    style = [(SKUISettingsTemplateViewElement *)self->_templateElement style];
    v8 = [style valueForStyle:*MEMORY[0x277D1AFA0]];
    v9 = v8;
    if (v8)
    {
      tableView = self->_tableView;
      color = [v8 color];
      [(UITableView *)tableView setBackgroundColor:color];
    }

    [(UITableView *)self->_tableView reloadData];
  }
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
    _textLayoutCache = [(SKUISettingsDocumentViewController *)self _textLayoutCache];
    [(SKUIViewElementLayoutContext *)v6 setLabelLayoutCache:_textLayoutCache];

    v8 = self->_layoutContext;
    _resourceLoader = [(SKUISettingsDocumentViewController *)self _resourceLoader];
    [(SKUIViewElementLayoutContext *)v8 setResourceLoader:_resourceLoader];

    v10 = self->_layoutContext;
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIViewElementLayoutContext *)v10 setClientContext:clientContext];

    v12 = self->_layoutContext;
    view = [(SKUISettingsDocumentViewController *)self view];
    tintColor = [view tintColor];
    [(SKUIViewElementLayoutContext *)v12 setTintColor:tintColor];

    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (id)_resourceLoader
{
  resourceLoader = self->_resourceLoader;
  if (!resourceLoader)
  {
    v4 = [SKUIResourceLoader alloc];
    clientContext = [(SKUIViewController *)self clientContext];
    v6 = [(SKUIResourceLoader *)v4 initWithClientContext:clientContext];
    v7 = self->_resourceLoader;
    self->_resourceLoader = v6;

    v8 = self->_resourceLoader;
    v9 = SKUIResourceLoaderGetNameForObject(self);
    [(SKUIResourceLoader *)v8 setName:v9];

    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

- (void)_showBarItemLeft:(id)left right:(id)right animated:(BOOL)animated
{
  animatedCopy = animated;
  leftCopy = left;
  rightCopy = right;
  parentViewController = [(SKUISettingsDocumentViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];

  if (leftCopy)
  {
    [navigationItem setHidesBackButton:1 animated:animatedCopy];
    v11 = navigationItem;
    v12 = leftCopy;
  }

  else
  {
    [navigationItem setHidesBackButton:0 animated:animatedCopy];
    v11 = navigationItem;
    v12 = 0;
  }

  [v11 setLeftBarButtonItem:v12 animated:animatedCopy];
  [navigationItem setRightBarButtonItem:rightCopy animated:animatedCopy];
}

- (void)_showEditBarButtonItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _barButtonItemEdit = [(SKUISettingsDocumentViewController *)self _barButtonItemEdit];
  [(SKUISettingsDocumentViewController *)self _showBarItemLeft:0 right:_barButtonItemEdit animated:animatedCopy];
}

- (void)_showEditingBarButtonItemsEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  _barButtonItemDone = [(SKUISettingsDocumentViewController *)self _barButtonItemDone];
  [_barButtonItemDone setEnabled:enabledCopy];

  _barButtonItemCancel = [(SKUISettingsDocumentViewController *)self _barButtonItemCancel];
  _barButtonItemDone2 = [(SKUISettingsDocumentViewController *)self _barButtonItemDone];
  [(SKUISettingsDocumentViewController *)self _showBarItemLeft:_barButtonItemCancel right:_barButtonItemDone2 animated:animatedCopy];
}

- (id)_textLayoutCache
{
  textLayoutCache = self->_textLayoutCache;
  if (!textLayoutCache)
  {
    v4 = objc_alloc_init(SKUILayoutCache);
    v5 = [[SKUIViewElementTextLayoutCache alloc] initWithLayoutCache:v4];
    v6 = self->_textLayoutCache;
    self->_textLayoutCache = v5;

    textLayoutCache = self->_textLayoutCache;
  }

  return textLayoutCache;
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [v4 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_tableView;
    self->_tableView = v5;

    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SKUISettingsTableViewCellReuseIdentifier"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"SKUISettingsTableViewEmptyHeaderFooterViewReuseIdentifier"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"SKUISettingsTableViewHeaderFooterViewReuseIdentifier"];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_viewForSettingsHeaderFooterDescription:(id)description
{
  descriptionCopy = description;
  v5 = objc_alloc_init([SKUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:descriptionCopy]);
  [(UITableView *)self->_tableView bounds];
  Width = CGRectGetWidth(v11);
  _layoutContext = [(SKUISettingsDocumentViewController *)self _layoutContext];
  [v5 reloadWithSettingsHeaderFooterDescription:descriptionCopy width:_layoutContext context:Width];

  v8 = [(SKUISettingsDocumentViewController *)self _dequeueHeaderFooterViewWithReuseIdentifier:@"SKUISettingsTableViewHeaderFooterViewReuseIdentifier"];
  [v8 displaySettingsHeaderFooterDescriptionView:v5];

  return v8;
}

- (void)initWithTemplateElement:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsDocumentViewController initWithTemplateElement:clientContext:]";
}

@end