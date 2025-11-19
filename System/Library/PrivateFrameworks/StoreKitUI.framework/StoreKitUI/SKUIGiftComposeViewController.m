@interface SKUIGiftComposeViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (SKUIGiftComposeViewController)initWithGift:(id)a3 configuration:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_headerView;
- (id)_itemImage;
- (id)_itemView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_amountControlAction:(id)a3;
- (void)_finishValidationWithResponse:(id)a3 error:(id)a4;
- (void)_keyboardChangeNotification:(id)a3;
- (void)_nextAction:(id)a3;
- (void)_pushThemePickerOrShowInvalidAlert;
- (void)_recipientsDidChangeNotification:(id)a3;
- (void)_reloadSections;
- (void)_setItemImage:(id)a3 error:(id)a4;
- (void)_textFieldChangeNotification:(id)a3;
- (void)_textViewChangeNotification:(id)a3;
- (void)_textViewDidEndEditingNotification:(id)a3;
- (void)_validateGift;
- (void)_validateGiftThrottled:(BOOL)a3;
- (void)dealloc;
- (void)giftSendDateSection:(id)a3 didChangeDate:(id)a4;
- (void)loadView;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 giftRecipientCell:(id)a4 didUpdateSearchController:(id)a5;
- (void)tableView:(id)a3 giftRecipientCell:(id)a4 dismissContactPicker:(id)a5;
- (void)tableView:(id)a3 giftRecipientCell:(id)a4 presentContactPicker:(id)a5;
- (void)tableView:(id)a3 giftRecipientCellDidChangeRecipients:(id)a4;
- (void)tableView:(id)a3 giftRecipientCellDidChangeSize:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIGiftComposeViewController

- (SKUIGiftComposeViewController)initWithGift:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftComposeViewController initWithGift:configuration:];
  }

  v20.receiver = self;
  v20.super_class = SKUIGiftComposeViewController;
  v8 = [(SKUIGiftStepViewController *)&v20 initWithGift:v6 configuration:v7];
  if (v8)
  {
    v9 = [v7 clientContext];
    v10 = v9;
    if (v9)
    {
      [v9 localizedStringForKey:@"GIFTING_FLOW_TITLE" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_FLOW_TITLE" inBundles:0 inTable:@"Gifting"];
    }
    v12 = ;
    [(SKUIGiftComposeViewController *)v8 setTitle:v12];

    v11 = [(SKUIGiftStepViewController *)v8 gift];

    v13 = [v11 senderName];

    if (!v13)
    {
      v14 = [v7 senderName];
      [v11 setSenderName:v14];
    }

    v15 = [v11 senderEmailAddress];

    if (!v15)
    {
      v16 = [v7 senderEmailAddress];
      [v11 setSenderEmailAddress:v16];
    }

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v8 selector:sel__keyboardChangeNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [v17 addObserver:v8 selector:sel__keyboardChangeNotification_ name:*MEMORY[0x277D76BA8] object:0];
    v18 = getCNComposeRecipientViewDidChangeNotification();
    [v17 addObserver:v8 selector:sel__recipientsDidChangeNotification_ name:v18 object:0];

    [v17 addObserver:v8 selector:sel__textFieldChangeNotification_ name:*MEMORY[0x277D770B0] object:0];
    [v17 addObserver:v8 selector:sel__textFieldChangeNotification_ name:*MEMORY[0x277D770B8] object:0];
    [v17 addObserver:v8 selector:sel__textViewChangeNotification_ name:*MEMORY[0x277D77218] object:0];
    [v17 addObserver:v8 selector:sel__textViewDidEndEditingNotification_ name:*MEMORY[0x277D77220] object:0];
  }

  else
  {
    v11 = v6;
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getCNComposeRecipientViewDidChangeNotification();
  [v3 removeObserver:self name:v4 object:0];

  [v3 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D770B8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D77218] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D77220] object:0];
  validationTimer = self->_validationTimer;
  if (validationTimer)
  {
    dispatch_source_cancel(validationTimer);
  }

  [(SKUIGiftAddressingSection *)self->_addressingSection setTextFieldDelegate:0];
  v6 = [(SKUIGiftAmountSection *)self->_amountSection amountControl];
  [v6 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(UIPopoverController *)self->_peoplePickerPopover setDelegate:0];
  [(UIPopoverController *)self->_searchResultsPopover setDelegate:0];

  v7.receiver = self;
  v7.super_class = SKUIGiftComposeViewController;
  [(SKUIGiftComposeViewController *)&v7 dealloc];
}

- (void)loadView
{
  v23 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SKUIGiftComposeViewController *)self setView:?];
  if (!self->_sections)
  {
    [(SKUIGiftComposeViewController *)self _reloadSections];
  }

  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = [MEMORY[0x277D75348] _systemBackgroundColor];
    v5 = [(SKUIGiftStepViewController *)self gift];
    v6 = [v5 item];
    v7 = 30.0;
    if (!v6)
    {
      v8 = [MEMORY[0x277D75418] currentDevice];
      v9 = [v8 userInterfaceIdiom];

      if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v7 = 30.0;
      }

      else
      {
        v7 = 35.0;
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277D75B40]);
    v11 = self->_tableView;
    self->_tableView = v10;

    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [(UITableView *)self->_tableView setBackgroundColor:v4];
    [(UITableView *)self->_tableView setContentInset:v7, 0.0, 20.0, 0.0];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setSeparatorStyle:0];
    v12 = [(SKUIGiftComposeViewController *)self _headerView];
    [v12 setBackgroundColor:v4];
    [(UITableView *)self->_tableView setTableHeaderView:v12];

    tableView = self->_tableView;
  }

  [v23 addSubview:tableView];
  v13 = [(SKUIGiftStepViewController *)self giftConfiguration];
  v14 = [v13 clientContext];

  v15 = [(SKUIGiftComposeViewController *)self navigationItem];
  if (v14)
  {
    [v14 localizedStringForKey:@"GIFTING_BACK_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"GIFTING_BACK_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v16 = ;
  [v15 setBackButtonTitle:v16];

  [v15 setHidesBackButton:1];
  v17 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v17 setAction:sel__cancelAction_];
  [v17 setTarget:self];
  if (v14)
  {
    [v14 localizedStringForKey:@"GIFTING_CANCEL_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"GIFTING_CANCEL_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v18 = ;
  [v17 setTitle:v18];

  [v15 setLeftBarButtonItem:v17];
  v19 = objc_alloc_init(MEMORY[0x277D751E0]);
  nextButton = self->_nextButton;
  self->_nextButton = v19;

  [(UIBarButtonItem *)self->_nextButton setAction:sel__nextAction_];
  [(UIBarButtonItem *)self->_nextButton setEnabled:0];
  [(UIBarButtonItem *)self->_nextButton setTarget:self];
  v21 = self->_nextButton;
  if (v14)
  {
    [v14 localizedStringForKey:@"GIFTING_NEXT_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"GIFTING_NEXT_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v22 = ;
  [(UIBarButtonItem *)v21 setTitle:v22];

  [v15 setRightBarButtonItem:self->_nextButton];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIGiftComposeViewController *)self _itemView];
  v6 = [v5 artworkContext];

  if (self->_itemImage)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SKUIGiftComposeViewController_viewWillAppear___block_invoke;
    v9[3] = &unk_2781FA1F8;
    objc_copyWeak(&v10, &location);
    [(SKUIGiftStepViewController *)self loadItemArtworkWithArtworkContext:v6 completionBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  v8.receiver = self;
  v8.super_class = SKUIGiftComposeViewController;
  [(SKUIGiftComposeViewController *)&v8 viewWillAppear:v3];
}

void __48__SKUIGiftComposeViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setItemImage:v6 error:v5];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14 = a4;
  if ([(NSMutableArray *)self->_sections count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        if ([(UITableView *)self->_tableView numberOfRowsInSection:v7])
        {
          v10 = 0;
          do
          {
            tableView = self->_tableView;
            v12 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:v7];
            v13 = [(UITableView *)tableView cellForRowAtIndexPath:v12];

            [v9 updateCell:v13 forTransitionToSize:{width, height}];
            ++v10;
          }

          while (v10 < [(UITableView *)self->_tableView numberOfRowsInSection:v7]);
        }
      }

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_sections count]);
  }

  v15.receiver = self;
  v15.super_class = SKUIGiftComposeViewController;
  [(SKUIGiftComposeViewController *)&v15 viewWillTransitionToSize:v14 withTransitionCoordinator:width, height];
}

- (void)tableView:(id)a3 giftRecipientCellDidChangeRecipients:(id)a4
{
  v5 = a4;
  v6 = [(SKUIGiftStepViewController *)self gift];
  v7 = [v5 recipientAddresses];

  [v6 setRecipientAddresses:v7];

  [(SKUIGiftComposeViewController *)self _validateGiftThrottled:0];
}

- (void)tableView:(id)a3 giftRecipientCellDidChangeSize:(id)a4
{
  v4 = MEMORY[0x277D75D18];
  v5 = a3;
  v6 = [v4 areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  [v5 beginUpdates];
  [v5 endUpdates];

  v7 = MEMORY[0x277D75D18];

  [v7 setAnimationsEnabled:v6];
}

- (void)tableView:(id)a3 giftRecipientCell:(id)a4 didUpdateSearchController:(id)a5
{
  v49 = a4;
  v7 = a5;
  if ([v7 numberOfResults])
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      if (!self->_searchResultsPopover)
      {
        v10 = objc_alloc(MEMORY[0x277D758A0]);
        v11 = [v7 searchResultsViewController];
        v12 = [v10 initWithContentViewController:v11];
        searchResultsPopover = self->_searchResultsPopover;
        self->_searchResultsPopover = v12;

        [(UIPopoverController *)self->_searchResultsPopover setDelegate:self];
        [v49 presentSearchResultsPopover:self->_searchResultsPopover animated:1];
      }
    }

    else if (!self->_searchResultsView)
    {
      v16 = [(UITableView *)self->_tableView indexPathForCell:v49];
      [(UITableView *)self->_tableView scrollToRowAtIndexPath:v16 atScrollPosition:1 animated:0];
      v17 = [v7 searchResultsView];
      searchResultsView = self->_searchResultsView;
      self->_searchResultsView = v17;

      [(UIView *)self->_searchResultsView setAutoresizingMask:18];
      v19 = [(SKUIGiftComposeViewController *)self view];
      [v49 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [v49 superview];
      [v19 convertRect:v28 fromView:{v21, v23, v25, v27}];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v37 = [MEMORY[0x277D75658] activeKeyboard];
      [v37 frame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = [v37 superview];
      [v19 convertRect:v46 fromView:{v39, v41, v43, v45}];

      v47 = *MEMORY[0x277CBF3A0];
      v51.origin.x = v30;
      v51.origin.y = v32;
      v51.size.width = v34;
      v51.size.height = v36;
      v48 = CGRectGetMaxY(v51) + -1.0;
      [v19 bounds];
      [(UIView *)self->_searchResultsView setFrame:v47, v48];
      [v19 addSubview:self->_searchResultsView];
      [(UITableView *)self->_tableView setScrollEnabled:0];
    }
  }

  else
  {
    if (self->_searchResultsView)
    {
      [(UITableView *)self->_tableView setScrollEnabled:1];
      [(UIView *)self->_searchResultsView removeFromSuperview];
      v14 = self->_searchResultsView;
      self->_searchResultsView = 0;
    }

    [(UIPopoverController *)self->_searchResultsPopover dismissPopoverAnimated:1];
    [(UIPopoverController *)self->_searchResultsPopover setDelegate:0];
    v15 = self->_searchResultsPopover;
    self->_searchResultsPopover = 0;
  }
}

- (void)tableView:(id)a3 giftRecipientCell:(id)a4 dismissContactPicker:(id)a5
{
  peoplePickerPopover = self->_peoplePickerPopover;
  if (peoplePickerPopover)
  {
    [(UIPopoverController *)peoplePickerPopover dismissPopoverAnimated:1, a4, a5];
    [(UIPopoverController *)self->_peoplePickerPopover setDelegate:0];
    v7 = self->_peoplePickerPopover;
    self->_peoplePickerPopover = 0;
  }

  else
  {

    [a5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)tableView:(id)a3 giftRecipientCell:(id)a4 presentContactPicker:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9)
  {
    if (!self->_peoplePickerPopover)
    {
      v10 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:v7];
      peoplePickerPopover = self->_peoplePickerPopover;
      self->_peoplePickerPopover = v10;

      [(UIPopoverController *)self->_peoplePickerPopover setDelegate:self];
      [v12 presentPeoplePickerPopover:self->_peoplePickerPopover animated:1];
    }
  }

  else
  {
    [(SKUIGiftComposeViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)giftSendDateSection:(id)a3 didChangeDate:(id)a4
{
  v5 = a4;
  v6 = [(SKUIGiftStepViewController *)self gift];
  [v6 setDeliveryDate:v5];

  [(SKUIGiftComposeViewController *)self _validateGiftThrottled:1];
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  v4 = a3;
  p_peoplePickerPopover = &self->_peoplePickerPopover;
  peoplePickerPopover = self->_peoplePickerPopover;
  if (peoplePickerPopover == v4 || (p_peoplePickerPopover = &self->_searchResultsPopover, peoplePickerPopover = self->_searchResultsPopover, peoplePickerPopover == v4))
  {
    v8 = v4;
    [(UIPopoverController *)peoplePickerPopover setDelegate:0];
    v7 = *p_peoplePickerPopover;
    *p_peoplePickerPopover = 0;

    v4 = v8;
  }

  MEMORY[0x2821F96F8](peoplePickerPopover, v4);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  v9 = [v8 tableViewCellForTableView:v7 indexPath:v6];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 numberOfRowsInSection];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v5 = [v6 section];
  if (v5 == -[SKUITableViewSection sectionIndex](self->_addressingSection, "sectionIndex") && [v6 row] == 2)
  {
    [(SKUIGiftAddressingSection *)self->_addressingSection beginEditingMessageForTableView:self->_tableView indexPath:v6];
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSMutableArray *)sections objectAtIndex:a4];
  v8 = [v7 headerViewForTableView:v6];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  [v8 heightForCellInTableView:v7 indexPath:v6];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSMutableArray *)sections objectAtIndex:a4];
  v8 = [v7 headerViewForTableView:v6];
  v9 = [v6 backgroundColor];

  [v8 setBackgroundColor:v9];

  return v8;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  sections = self->_sections;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v8 section]);
  [v11 tableView:v10 willDisplayCell:v9 forIndexPath:v8];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  tableView = self->_tableView;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 superview];
  [(UITableView *)tableView convertRect:v14 fromView:v7, v9, v11, v13];
  v16 = v15;

  v17 = [(UITableView *)self->_tableView subviews];
  v18 = [v17 mutableCopy];

  v19 = [v18 count];
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    do
    {
      v24 = [v18 objectAtIndex:v22];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        if (v24 != v4)
        {
          if ([v24 canBecomeFirstResponder])
          {
            v25 = self->_tableView;
            [v24 frame];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v34 = [v24 superview];
            [(UITableView *)v25 convertRect:v34 fromView:v27, v29, v31, v33];
            v36 = v35;

            if (v36 > v16)
            {
              if (v21)
              {
                if (v36 - v16 < v23 - v16)
                {
                  v37 = v24;

                  v23 = v36;
                  v21 = v37;
                }
              }

              else
              {
                v21 = v24;
                v23 = v36;
              }
            }
          }
        }
      }

      else
      {
        v38 = [v24 subviews];
        if (v38)
        {
          [v18 addObjectsFromArray:v38];
          v20 = [v18 count];
        }
      }

      ++v22;
    }

    while (v22 < v20);
    if (v21)
    {
      [v21 becomeFirstResponder];
    }
  }

  return 1;
}

- (void)_amountControlAction:(id)a3
{
  v5 = [(SKUIGiftStepViewController *)self gift];
  [v5 setGiftAmount:{-[SKUIGiftAmountSection selectedAmount](self->_amountSection, "selectedAmount")}];
  v4 = [(SKUIGiftAmountSection *)self->_amountSection selectedAmountString];
  [v5 setGiftAmountString:v4];

  [(SKUIGiftComposeViewController *)self _validateGiftThrottled:0];
}

- (void)_nextAction:(id)a3
{
  v6 = a3;
  v4 = [(SKUIGiftComposeViewController *)self view];
  v5 = [v4 firstResponder];
  [v5 resignFirstResponder];

  UIKeyboardOrderOutAutomatic();
  if (self->_validationTimer || [(SKUIGiftValidator *)self->_validator isValidating])
  {
    self->_tappedNextWhileValidating = 1;
    [v6 setEnabled:0];
    [(UITableView *)self->_tableView setEnabled:0];
    if (self->_validationTimer)
    {
      [(SKUIGiftComposeViewController *)self _validateGift];
    }
  }

  else
  {
    [(SKUIGiftComposeViewController *)self _pushThemePickerOrShowInvalidAlert];
  }
}

- (void)_keyboardChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v35 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  v5 = v35;
  if (v35)
  {
    v6 = [(UITableView *)self->_tableView superview];
    [v35 CGRectValue];
    [v6 convertRect:0 fromView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(UITableView *)self->_tableView frame];
    v39.origin.x = v8;
    v39.origin.y = v10;
    v39.size.width = v12;
    v39.size.height = v14;
    v38 = CGRectIntersection(v37, v39);
    [(UITableView *)self->_tableView contentInset:v38.origin.x];
    [(UITableView *)self->_tableView setContentInset:?];
    [(UITableView *)self->_tableView scrollIndicatorInsets];
    [(UITableView *)self->_tableView setScrollIndicatorInsets:?];
    v15 = [(SKUIGiftComposeViewController *)self view];
    v16 = [v15 window];
    v17 = [v16 firstResponder];

    v18 = [v17 _SKUIView];
    v19 = v18;
    if (v18 && [v18 isDescendantOfView:self->_tableView])
    {
      tableView = self->_tableView;
      [v19 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [v19 superview];
      [(UITableView *)tableView convertRect:v29 fromView:v22, v24, v26, v28];
      v31 = v30;
      v33 = v32;

      v34 = [(UITableView *)self->_tableView indexPathForRowAtPoint:v31, v33];
      if (v34)
      {
        [(UITableView *)self->_tableView scrollToRowAtIndexPath:v34 atScrollPosition:1 animated:1];
      }
    }

    v5 = v35;
  }
}

- (void)_recipientsDidChangeNotification:(id)a3
{
  v27 = [a3 object];
  v4 = [(SKUIGiftComposeViewController *)self view];
  v5 = [v27 isDescendantOfView:v4];

  v6 = v27;
  if (v5)
  {
    tableView = self->_tableView;
    [v27 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v27 superview];
    [(UITableView *)tableView convertRect:v16 fromView:v9, v11, v13, v15];
    v18 = v17;
    v20 = v19;

    v21 = [(UITableView *)self->_tableView indexPathForRowAtPoint:v18, v20];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 section];
      if (v23 == [(SKUITableViewSection *)self->_addressingSection sectionIndex])
      {
        v24 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v22];
        v25 = [(SKUIGiftStepViewController *)self gift];
        v26 = [v24 recipientAddresses];
        [v25 setRecipientAddresses:v26];

        [(SKUIGiftComposeViewController *)self _validateGiftThrottled:0];
      }
    }

    v6 = v27;
  }
}

- (void)_textFieldChangeNotification:(id)a3
{
  v27 = a3;
  v4 = [v27 object];
  v5 = [(SKUIGiftComposeViewController *)self view];
  v6 = [v4 isDescendantOfView:v5];

  if (v6)
  {
    tableView = self->_tableView;
    [v4 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v4 superview];
    [(UITableView *)tableView convertRect:v16 fromView:v9, v11, v13, v15];
    v18 = v17;
    v20 = v19;

    v21 = [(UITableView *)self->_tableView indexPathForRowAtPoint:v18, v20];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 section];
      if (v23 == [(SKUITableViewSection *)self->_addressingSection sectionIndex])
      {
        v24 = [v4 text];
        if (![v24 length])
        {

          v24 = 0;
        }

        if ([v22 row] == 1)
        {
          v25 = [(SKUIGiftStepViewController *)self gift];
          [v25 setSenderName:v24];
        }

        v26 = [v27 name];
        -[SKUIGiftComposeViewController _validateGiftThrottled:](self, "_validateGiftThrottled:", [v26 isEqualToString:*MEMORY[0x277D770B0]]);
      }
    }
  }
}

- (void)_textViewChangeNotification:(id)a3
{
  v9 = [a3 object];
  v4 = [(SKUIGiftAddressingSection *)self->_addressingSection messagingTextView];

  v5 = v9;
  if (v9 == v4)
  {
    v6 = [v9 text];
    v7 = [(SKUIGiftStepViewController *)self gift];
    if ([v6 length])
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    [v7 setMessage:v8];

    v5 = v9;
  }
}

- (void)_textViewDidEndEditingNotification:(id)a3
{
  v20 = [a3 object];
  v4 = [(SKUIGiftAddressingSection *)self->_addressingSection messagingTextView];

  v5 = v20;
  if (v20 == v4)
  {
    v6 = [v20 text];
    v7 = [(SKUIGiftStepViewController *)self gift];
    if ([v6 length])
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    [v7 setMessage:v8];

    tableView = self->_tableView;
    [v20 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v20 superview];
    [(UITableView *)tableView convertRect:v18 fromView:v11, v13, v15, v17];
    v19 = [(UITableView *)tableView indexPathForRowAtPoint:?];

    [(SKUIGiftAddressingSection *)self->_addressingSection endEditingMessageForTableView:self->_tableView indexPath:v19];
    v5 = v20;
  }
}

- (void)_finishValidationWithResponse:(id)a3 error:(id)a4
{
  v8 = a3;
  objc_storeStrong(&self->_lastValidationResponse, a3);
  v6 = [(SKUIGiftStepViewController *)self gift];
  v7 = [(SKUIGiftValidationResponse *)self->_lastValidationResponse totalGiftAmountString];
  [v6 setTotalGiftAmountString:v7];

  if (self->_tappedNextWhileValidating)
  {
    self->_tappedNextWhileValidating = 0;
    [(SKUIGiftComposeViewController *)self _pushThemePickerOrShowInvalidAlert];
  }

  [(UITableView *)self->_tableView setEnabled:1];
}

- (id)_headerView
{
  v3 = [(SKUIGiftStepViewController *)self gift];
  v4 = [v3 item];

  if (v4)
  {
    v5 = [(SKUIGiftComposeViewController *)self _itemView];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    v8 = [MEMORY[0x277D755B8] imageNamed:@"GiftCardGraphic" inBundle:v6];
    v5 = [v7 initWithImage:v8];

    [v5 setContentMode:4];
  }

  return v5;
}

- (id)_itemImage
{
  v3 = self->_itemImage;
  if (!v3)
  {
    v4 = [(SKUIGiftItemView *)self->_itemView artworkContext];
    v5 = [(SKUIGiftStepViewController *)self gift];
    v6 = [v5 item];
    v3 = [v4 placeholderImageForItem:v6];
  }

  return v3;
}

- (id)_itemView
{
  v3 = [(SKUIGiftStepViewController *)self gift];
  v4 = [v3 item];

  itemView = self->_itemView;
  if (itemView)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = [SKUIGiftItemView alloc];
    v8 = [(SKUIGiftStepViewController *)self giftConfiguration];
    v9 = [v8 clientContext];
    v10 = [(SKUIGiftItemView *)v7 initWithStyle:0 item:v4 clientContext:v9];
    v11 = self->_itemView;
    self->_itemView = v10;

    [(SKUIGiftItemView *)self->_itemView setAutoresizingMask:2];
    v12 = self->_itemView;
    v13 = [v4 artistName];
    [(SKUIGiftItemView *)v12 setArtistName:v13];

    v14 = self->_itemView;
    v15 = [v4 categoryName];
    [(SKUIGiftItemView *)v14 setCategoryName:v15];

    v16 = self->_itemView;
    v17 = [(SKUIGiftComposeViewController *)self _itemImage];
    [(SKUIGiftItemView *)v16 setItemImage:v17];

    -[SKUIGiftItemView setNumberOfUserRatings:](self->_itemView, "setNumberOfUserRatings:", [v4 numberOfUserRatings]);
    v18 = self->_itemView;
    v19 = [v4 primaryItemOffer];
    v20 = [v19 buttonText];
    [(SKUIGiftItemView *)v18 setPrice:v20];

    v21 = self->_itemView;
    v22 = [v4 title];
    [(SKUIGiftItemView *)v21 setTitle:v22];

    v23 = self->_itemView;
    [v4 userRating];
    *&v25 = v24 / 5.0;
    [(SKUIGiftItemView *)v23 setUserRating:v25];
    [(SKUIGiftItemView *)self->_itemView sizeToFit];
    itemView = self->_itemView;
  }

  v26 = itemView;

  return itemView;
}

- (void)_pushThemePickerOrShowInvalidAlert
{
  if ([(SKUIGiftValidationResponse *)self->_lastValidationResponse isValid])
  {
    v15 = [(SKUIGiftStepViewController *)self gift];
    v3 = [SKUIGiftThemePickerViewController alloc];
    v4 = [(SKUIGiftStepViewController *)self giftConfiguration];
    v5 = [(SKUIGiftThemePickerViewController *)v3 initWithGift:v15 configuration:v4];

    v6 = [(SKUIGiftStepViewController *)self operationQueue];
    [(SKUIGiftStepViewController *)v5 setOperationQueue:v6];

    v7 = [(SKUIGiftComposeViewController *)self navigationController];
    [v7 pushViewController:v5 animated:1];
  }

  else
  {
    v8 = [(SKUIGiftStepViewController *)self giftConfiguration];
    v15 = [v8 clientContext];

    v9 = MEMORY[0x277D75110];
    if (v15)
    {
      [v15 localizedStringForKey:@"GIFTING_INVALID_GIFT" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_INVALID_GIFT" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    v11 = [(SKUIGiftValidationResponse *)self->_lastValidationResponse errorString];
    v5 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    if (v15)
    {
      [v15 localizedStringForKey:@"GIFTING_OK_BUTTON" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_OK_BUTTON" inBundles:0 inTable:@"Gifting"];
    }
    v13 = ;
    v14 = [v12 actionWithTitle:v13 style:0 handler:0];
    [(SKUIGiftThemePickerViewController *)v5 addAction:v14];

    [(SKUIGiftComposeViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)_reloadSections
{
  v24 = [(SKUIGiftStepViewController *)self gift];
  v3 = [(SKUIGiftStepViewController *)self giftConfiguration];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sections = self->_sections;
  self->_sections = v4;

  addressingSection = self->_addressingSection;
  if (!addressingSection)
  {
    v7 = [[SKUIGiftAddressingSection alloc] initWithGiftConfiguration:v3];
    v8 = self->_addressingSection;
    self->_addressingSection = v7;

    [(SKUIGiftAddressingSection *)self->_addressingSection setGift:v24];
    [(SKUIGiftAddressingSection *)self->_addressingSection setTextFieldDelegate:self];
    addressingSection = self->_addressingSection;
  }

  [(SKUITableViewSection *)addressingSection setSectionIndex:[(NSMutableArray *)self->_sections count]];
  [(NSMutableArray *)self->_sections addObject:self->_addressingSection];
  v9 = [v24 item];

  if (!v9)
  {
    amountSection = self->_amountSection;
    if (!amountSection)
    {
      v11 = [(SKUIGiftTableViewSection *)[SKUIGiftAmountSection alloc] initWithGiftConfiguration:v3];
      v12 = self->_amountSection;
      self->_amountSection = v11;

      v13 = [(SKUIGiftAmountSection *)self->_amountSection amountControl];
      [v13 addTarget:self action:sel__amountControlAction_ forControlEvents:4096];

      amountSection = self->_amountSection;
    }

    [(SKUITableViewSection *)amountSection setSectionIndex:[(NSMutableArray *)self->_sections count]];
    [(NSMutableArray *)self->_sections addObject:self->_amountSection];
  }

  sendDateSection = self->_sendDateSection;
  if (!sendDateSection)
  {
    v15 = [(SKUIGiftTableViewSection *)[SKUIGiftSendDateSection alloc] initWithGiftConfiguration:v3];
    v16 = self->_sendDateSection;
    self->_sendDateSection = v15;

    v17 = self->_sendDateSection;
    v18 = [MEMORY[0x277CBEAA8] now];
    [(SKUIGiftSendDateSection *)v17 setSendDate:v18];

    v19 = self->_sendDateSection;
    v20 = [v24 item];
    [(SKUIGiftSendDateSection *)v19 setGiftItem:v20];

    [(SKUIGiftSendDateSection *)self->_sendDateSection setDelegate:self];
    sendDateSection = self->_sendDateSection;
  }

  [(SKUITableViewSection *)sendDateSection setSectionIndex:[(NSMutableArray *)self->_sections count]];
  [(NSMutableArray *)self->_sections addObject:self->_sendDateSection];
  termsSection = self->_termsSection;
  if (!termsSection)
  {
    v22 = [(SKUIGiftTableViewSection *)[SKUIGiftTermsAndConditionsSection alloc] initWithGiftConfiguration:v3];
    v23 = self->_termsSection;
    self->_termsSection = v22;

    termsSection = self->_termsSection;
  }

  [(NSMutableArray *)self->_sections addObject:termsSection];
}

- (void)_setItemImage:(id)a3 error:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_itemImage, a3);
    [(SKUIGiftItemView *)self->_itemView setItemImage:self->_itemImage];
    v6 = v7;
  }
}

- (void)_validateGift
{
  validationTimer = self->_validationTimer;
  if (validationTimer)
  {
    dispatch_source_cancel(validationTimer);
    v4 = self->_validationTimer;
    self->_validationTimer = 0;
  }

  if (!self->_validator)
  {
    v5 = [(SKUIGiftStepViewController *)self giftConfiguration];
    v6 = [SKUIGiftValidator alloc];
    v7 = [v5 giftValidationURL];
    v8 = [v5 clientContext];
    v9 = [(SKUIGiftValidator *)v6 initWithValidationURL:v7 clientContext:v8];
    validator = self->_validator;
    self->_validator = v9;

    v11 = self->_validator;
    v12 = [(SKUIGiftStepViewController *)self operationQueue];
    [(SKUIGiftValidator *)v11 setOperationQueue:v12];
  }

  objc_initWeak(&location, self);
  v13 = self->_validator;
  v14 = [(SKUIGiftStepViewController *)self gift];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__SKUIGiftComposeViewController__validateGift__block_invoke;
  v15[3] = &unk_2781FA3B8;
  objc_copyWeak(&v16, &location);
  [(SKUIGiftValidator *)v13 validateGift:v14 withCompletionBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__SKUIGiftComposeViewController__validateGift__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SKUIGiftComposeViewController__validateGift__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __46__SKUIGiftComposeViewController__validateGift__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishValidationWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_validateGiftThrottled:(BOOL)a3
{
  v5 = [(SKUIGiftStepViewController *)self gift];
  v6 = v5;
  if ((!self->_amountSection || [v5 giftAmount]) && (objc_msgSend(v6, "recipientAddresses"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = [v6 senderName];
    v10 = [v9 length] != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SKUIGiftComposeViewController *)self nextButton];
  [v11 setEnabled:v10];

  [(SKUIGiftValidator *)self->_validator cancelValidation];
  if (!v10 || !a3)
  {
    validationTimer = self->_validationTimer;
    if (validationTimer)
    {
      dispatch_source_cancel(validationTimer);
      v13 = self->_validationTimer;
      self->_validationTimer = 0;
    }
  }

  if (v10)
  {
    if (a3)
    {
      v14 = self->_validationTimer;
      if (v14)
      {
        v15 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v14, v15, 0, 0);
      }

      else
      {
        v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        v17 = self->_validationTimer;
        self->_validationTimer = v16;

        v18 = self->_validationTimer;
        v19 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v18, v19, 0, 0);
        objc_initWeak(&location, self);
        v20 = self->_validationTimer;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __56__SKUIGiftComposeViewController__validateGiftThrottled___block_invoke;
        v21[3] = &unk_2781F8320;
        objc_copyWeak(&v22, &location);
        dispatch_source_set_event_handler(v20, v21);
        dispatch_resume(self->_validationTimer);
        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(SKUIGiftComposeViewController *)self _validateGift];
    }
  }
}

void __56__SKUIGiftComposeViewController__validateGiftThrottled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _validateGift];
}

- (void)initWithGift:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftComposeViewController initWithGift:configuration:]";
}

@end