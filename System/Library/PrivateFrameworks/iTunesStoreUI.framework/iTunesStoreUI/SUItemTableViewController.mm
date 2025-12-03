@interface SUItemTableViewController
- (BOOL)openDocumentForItemAtIndexPath:(id)path withApplication:(id)application;
- (BOOL)purchaseItemAtIndexPath:(id)path;
- (SUItemTableViewController)init;
- (id)_preferredApplicationFromCandidates:(id)candidates;
- (id)_tableCellForButton:(id)button;
- (void)_chooseApplicationToOpenDocumentAtIndexPath:(id)path withCompletionHandler:(id)handler;
- (void)_hidePurchaseConfirmationForButton:(id)button;
- (void)_promptToOpenUTI:(id)i fromIndexPath:(id)path withCompletionHandler:(id)handler;
- (void)_purchasedItemSetChangedNotification:(id)notification;
- (void)_removeTouchCaptureView;
- (void)_restrictionsChangedNotification:(id)notification;
- (void)_showPurchaseConfirmationForButton:(id)button;
- (void)_touchCaptureAction:(id)action;
- (void)dealloc;
- (void)itemOfferButtonAction:(id)action;
- (void)reloadData;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUItemTableViewController

- (SUItemTableViewController)init
{
  v5.receiver = self;
  v5.super_class = SUItemTableViewController;
  v2 = [(SUTableViewController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    [defaultCenter addObserver:v2 selector:sel__purchasedItemSetChangedNotification_ name:@"SUPurchasedItemIdentifiersChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter removeObserver:self name:@"SUPurchasedItemIdentifiersChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = SUItemTableViewController;
  [(SUTableViewController *)&v4 dealloc];
}

- (BOOL)openDocumentForItemAtIndexPath:(id)path withApplication:(id)application
{
  v5 = [(SUTableViewController *)self tableView:path];
  -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](v5, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{path, 0}], 5);
  return 1;
}

- (BOOL)purchaseItemAtIndexPath:(id)path
{
  tableView = [(SUTableViewController *)self tableView];
  -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](tableView, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{path, 0}], 5);
  return 1;
}

- (void)reloadData
{
  [(SUItemTableViewController *)self _removeTouchCaptureView];
  v3.receiver = self;
  v3.super_class = SUItemTableViewController;
  [(SUTableViewController *)&v3 reloadData];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SUItemTableViewController *)self _removeTouchCaptureView];
  v5.receiver = self;
  v5.super_class = SUItemTableViewController;
  [(SUTableViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)itemOfferButtonAction:(id)action
{
  if (([action isShowingConfirmation] & 1) != 0 || !objc_msgSend(action, "shouldShowConfirmation"))
  {
    v5 = [action superviewOfClass:objc_opt_class()];
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = [(UITableView *)[(SUTableViewController *)self tableView] indexPathForCell:v5];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    v8 = [(SUItemTableViewController *)self itemAtIndexPath:v6];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v8;
    if ([v8 itemType] == 11 || (v10 = objc_msgSend(v9, "itemMediaKind"), objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E69D4CF0])))
    {
      [action setEnabled:0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SUItemTableViewController_itemOfferButtonAction___block_invoke;
      v11[3] = &unk_1E8166028;
      v11[4] = action;
      v11[5] = self;
      v11[6] = v7;
      v11[7] = v9;
      [(SUItemTableViewController *)self _chooseApplicationToOpenDocumentAtIndexPath:v7 withCompletionHandler:v11];
      return;
    }

    if ([(SUItemTableViewController *)self purchaseItemAtIndexPath:v7])
    {

      [(SUItemTableViewController *)self _removeTouchCaptureView];
    }

    else
    {
LABEL_16:

      [(SUItemTableViewController *)self _hidePurchaseConfirmationForButton:action];
    }
  }

  else
  {

    [(SUItemTableViewController *)self _showPurchaseConfirmationForButton:action];
  }
}

void __51__SUItemTableViewController_itemOfferButtonAction___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  [*(a1 + 32) setEnabled:1];
  if (!a3 || ([*(a1 + 40) openDocumentForItemAtIndexPath:*(a1 + 48) withApplication:a3] & 1) == 0)
  {
    [*(a1 + 40) _hidePurchaseConfirmationForButton:*(a1 + 32)];
  }

  if (a2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69E4750]) initWithDialogDictionary:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 56), "defaultStoreOffer"), "documentCannotOpenDialog"), "dialogDictionary")}];
    [objc_msgSend(*(a1 + 40) "clientInterface")];
  }
}

- (void)_touchCaptureAction:(id)action
{
  v4 = [objc_msgSend(action "passThroughViews")];

  [(SUItemTableViewController *)self _hidePurchaseConfirmationForButton:v4];
}

- (void)_purchasedItemSetChangedNotification:(id)notification
{
  tableView = [(SUTableViewController *)self tableView];

  [(UITableView *)tableView reloadData];
}

- (void)_restrictionsChangedNotification:(id)notification
{
  mainThreadProxy = [(SUItemTableViewController *)self mainThreadProxy];

  [mainThreadProxy reloadData];
}

- (void)_chooseApplicationToOpenDocumentAtIndexPath:(id)path withCompletionHandler:(id)handler
{
  v7 = [-[SUItemTableViewController itemAtIndexPath:](self "itemAtIndexPath:"defaultStoreOffer"")];
  documentRequiredHandlers = [v7 documentRequiredHandlers];
  if ([documentRequiredHandlers count])
  {
    v9 = [(SUItemTableViewController *)self _preferredApplicationFromCandidates:documentRequiredHandlers];
    if (!handler)
    {
      return;
    }

LABEL_3:
    v10 = *(handler + 2);

    v10(handler, v9 == 0);
    return;
  }

  offerMedia = [v7 offerMedia];
  documentUTI = [v7 documentUTI];
  if (!documentUTI)
  {
    documentUTI = SUCopyUTIForFilePath([objc_msgSend(offerMedia "URL")], 1);
    if (!documentUTI)
    {
      v9 = 0;
      if (!handler)
      {
        return;
      }

      goto LABEL_3;
    }
  }

  v13 = documentUTI;
  [(SUItemTableViewController *)self _promptToOpenUTI:documentUTI fromIndexPath:path withCompletionHandler:handler];
}

- (void)_hidePurchaseConfirmationForButton:(id)button
{
  v5 = [(SUItemTableViewController *)self _tableCellForButton:?];
  [objc_opt_class() defaultAnimationDuration];
  v7 = v6;
  [button setShowingConfirmation:0 duration:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SUItemTableViewController__hidePurchaseConfirmationForButton___block_invoke;
  v9[3] = &unk_1E8164348;
  v9[4] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__SUItemTableViewController__hidePurchaseConfirmationForButton___block_invoke_2;
  v8[3] = &unk_1E8166050;
  v8[4] = v5;
  v8[5] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v8 completion:v7];
}

uint64_t __64__SUItemTableViewController__hidePurchaseConfirmationForButton___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUsesSubviews:0];
  v2 = *(a1 + 40);

  return [v2 _removeTouchCaptureView];
}

- (id)_preferredApplicationFromCandidates:(id)candidates
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [candidates countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(candidates);
    }

    v8 = *(*(&v10 + 1) + 8 * v7);
    if ([MEMORY[0x1E69635E0] applicationProxyForIdentifier:v8])
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [candidates countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_promptToOpenUTI:(id)i fromIndexPath:(id)path withCompletionHandler:(id)handler
{
  v9 = objc_alloc_init(MEMORY[0x1E69CDA18]);
  [v9 setName:&stru_1F41B3660];
  [v9 setUTI:i];
  v10 = [[SUDocumentInteractionSession alloc] initWithDocumentInteractionController:v9];
  self->_documentInteractionSession = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__SUItemTableViewController__promptToOpenUTI_fromIndexPath_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E8166078;
  v13[4] = self;
  v13[5] = handler;
  [(SUDocumentInteractionSession *)v10 setCompletionHandler:v13];
  v11 = [(UITableView *)[(SUTableViewController *)self tableView] cellForRowAtIndexPath:path];
  accessoryView = [(UITableViewCell *)v11 accessoryView];
  if (accessoryView)
  {
    v11 = accessoryView;
  }

  [(UITableViewCell *)v11 bounds];
  if (([v9 presentOpenInMenuFromRect:v11 inView:1 animated:?] & 1) == 0)
  {
    [(SUDocumentInteractionSession *)self->_documentInteractionSession cancel];
  }
}

uint64_t __82__SUItemTableViewController__promptToOpenUTI_fromIndexPath_withCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1192) = 0;
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_removeTouchCaptureView
{
  if ([(SUItemTableViewController *)self isViewLoaded])
  {
    v3 = [-[SUItemTableViewController view](self "view")];

    [v3 removeTouchCaptureViewWithTag:452];
  }
}

- (void)_showPurchaseConfirmationForButton:(id)button
{
  v5 = [(SUItemTableViewController *)self _tableCellForButton:?];
  [v5 setUsesSubviews:1];
  [objc_opt_class() defaultAnimationDuration];
  v7 = v6;
  [MEMORY[0x1E69DD250] beginAnimations:0 context:button];
  [MEMORY[0x1E69DD250] setAnimationDuration:v7];
  [button setShowingConfirmation:1 duration:v7];
  [v5 layoutSubviews];
  [MEMORY[0x1E69DD250] commitAnimations];
  v8 = [objc_msgSend(button "window")];
  [v8 addTarget:self action:sel__touchCaptureAction_ forControlEvents:1];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{button, 0}];

  [v8 setPassThroughViews:v9];
}

- (id)_tableCellForButton:(id)button
{
  for (i = [button superview]; i; i = objc_msgSend(i, "superview"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }
  }

  return i;
}

@end