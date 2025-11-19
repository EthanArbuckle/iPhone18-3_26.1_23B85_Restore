@interface SUItemTableViewController
- (BOOL)openDocumentForItemAtIndexPath:(id)a3 withApplication:(id)a4;
- (BOOL)purchaseItemAtIndexPath:(id)a3;
- (SUItemTableViewController)init;
- (id)_preferredApplicationFromCandidates:(id)a3;
- (id)_tableCellForButton:(id)a3;
- (void)_chooseApplicationToOpenDocumentAtIndexPath:(id)a3 withCompletionHandler:(id)a4;
- (void)_hidePurchaseConfirmationForButton:(id)a3;
- (void)_promptToOpenUTI:(id)a3 fromIndexPath:(id)a4 withCompletionHandler:(id)a5;
- (void)_purchasedItemSetChangedNotification:(id)a3;
- (void)_removeTouchCaptureView;
- (void)_restrictionsChangedNotification:(id)a3;
- (void)_showPurchaseConfirmationForButton:(id)a3;
- (void)_touchCaptureAction:(id)a3;
- (void)dealloc;
- (void)itemOfferButtonAction:(id)a3;
- (void)reloadData;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUItemTableViewController

- (SUItemTableViewController)init
{
  v5.receiver = self;
  v5.super_class = SUItemTableViewController;
  v2 = [(SUTableViewController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    [v3 addObserver:v2 selector:sel__purchasedItemSetChangedNotification_ name:@"SUPurchasedItemIdentifiersChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [v3 removeObserver:self name:@"SUPurchasedItemIdentifiersChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = SUItemTableViewController;
  [(SUTableViewController *)&v4 dealloc];
}

- (BOOL)openDocumentForItemAtIndexPath:(id)a3 withApplication:(id)a4
{
  v5 = [(SUTableViewController *)self tableView:a3];
  -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](v5, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}], 5);
  return 1;
}

- (BOOL)purchaseItemAtIndexPath:(id)a3
{
  v4 = [(SUTableViewController *)self tableView];
  -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](v4, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}], 5);
  return 1;
}

- (void)reloadData
{
  [(SUItemTableViewController *)self _removeTouchCaptureView];
  v3.receiver = self;
  v3.super_class = SUItemTableViewController;
  [(SUTableViewController *)&v3 reloadData];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(SUItemTableViewController *)self _removeTouchCaptureView];
  v5.receiver = self;
  v5.super_class = SUItemTableViewController;
  [(SUTableViewController *)&v5 viewWillDisappear:v3];
}

- (void)itemOfferButtonAction:(id)a3
{
  if (([a3 isShowingConfirmation] & 1) != 0 || !objc_msgSend(a3, "shouldShowConfirmation"))
  {
    v5 = [a3 superviewOfClass:objc_opt_class()];
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
      [a3 setEnabled:0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SUItemTableViewController_itemOfferButtonAction___block_invoke;
      v11[3] = &unk_1E8166028;
      v11[4] = a3;
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

      [(SUItemTableViewController *)self _hidePurchaseConfirmationForButton:a3];
    }
  }

  else
  {

    [(SUItemTableViewController *)self _showPurchaseConfirmationForButton:a3];
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

- (void)_touchCaptureAction:(id)a3
{
  v4 = [objc_msgSend(a3 "passThroughViews")];

  [(SUItemTableViewController *)self _hidePurchaseConfirmationForButton:v4];
}

- (void)_purchasedItemSetChangedNotification:(id)a3
{
  v3 = [(SUTableViewController *)self tableView];

  [(UITableView *)v3 reloadData];
}

- (void)_restrictionsChangedNotification:(id)a3
{
  v3 = [(SUItemTableViewController *)self mainThreadProxy];

  [v3 reloadData];
}

- (void)_chooseApplicationToOpenDocumentAtIndexPath:(id)a3 withCompletionHandler:(id)a4
{
  v7 = [-[SUItemTableViewController itemAtIndexPath:](self "itemAtIndexPath:"defaultStoreOffer"")];
  v8 = [v7 documentRequiredHandlers];
  if ([v8 count])
  {
    v9 = [(SUItemTableViewController *)self _preferredApplicationFromCandidates:v8];
    if (!a4)
    {
      return;
    }

LABEL_3:
    v10 = *(a4 + 2);

    v10(a4, v9 == 0);
    return;
  }

  v11 = [v7 offerMedia];
  v12 = [v7 documentUTI];
  if (!v12)
  {
    v12 = SUCopyUTIForFilePath([objc_msgSend(v11 "URL")], 1);
    if (!v12)
    {
      v9 = 0;
      if (!a4)
      {
        return;
      }

      goto LABEL_3;
    }
  }

  v13 = v12;
  [(SUItemTableViewController *)self _promptToOpenUTI:v12 fromIndexPath:a3 withCompletionHandler:a4];
}

- (void)_hidePurchaseConfirmationForButton:(id)a3
{
  v5 = [(SUItemTableViewController *)self _tableCellForButton:?];
  [objc_opt_class() defaultAnimationDuration];
  v7 = v6;
  [a3 setShowingConfirmation:0 duration:?];
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

- (id)_preferredApplicationFromCandidates:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
      objc_enumerationMutation(a3);
    }

    v8 = *(*(&v10 + 1) + 8 * v7);
    if ([MEMORY[0x1E69635E0] applicationProxyForIdentifier:v8])
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_promptToOpenUTI:(id)a3 fromIndexPath:(id)a4 withCompletionHandler:(id)a5
{
  v9 = objc_alloc_init(MEMORY[0x1E69CDA18]);
  [v9 setName:&stru_1F41B3660];
  [v9 setUTI:a3];
  v10 = [[SUDocumentInteractionSession alloc] initWithDocumentInteractionController:v9];
  self->_documentInteractionSession = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__SUItemTableViewController__promptToOpenUTI_fromIndexPath_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E8166078;
  v13[4] = self;
  v13[5] = a5;
  [(SUDocumentInteractionSession *)v10 setCompletionHandler:v13];
  v11 = [(UITableView *)[(SUTableViewController *)self tableView] cellForRowAtIndexPath:a4];
  v12 = [(UITableViewCell *)v11 accessoryView];
  if (v12)
  {
    v11 = v12;
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

- (void)_showPurchaseConfirmationForButton:(id)a3
{
  v5 = [(SUItemTableViewController *)self _tableCellForButton:?];
  [v5 setUsesSubviews:1];
  [objc_opt_class() defaultAnimationDuration];
  v7 = v6;
  [MEMORY[0x1E69DD250] beginAnimations:0 context:a3];
  [MEMORY[0x1E69DD250] setAnimationDuration:v7];
  [a3 setShowingConfirmation:1 duration:v7];
  [v5 layoutSubviews];
  [MEMORY[0x1E69DD250] commitAnimations];
  v8 = [objc_msgSend(a3 "window")];
  [v8 addTarget:self action:sel__touchCaptureAction_ forControlEvents:1];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}];

  [v8 setPassThroughViews:v9];
}

- (id)_tableCellForButton:(id)a3
{
  for (i = [a3 superview]; i; i = objc_msgSend(i, "superview"))
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