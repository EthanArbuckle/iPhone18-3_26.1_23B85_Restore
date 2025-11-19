@interface SKUIITunesStoreUIPageViewController
- (BOOL)presentDialogForError:(id)a3 pendUntilVisible:(BOOL)a4;
- (SKProductPageViewController)productPageViewController;
- (id)_cancelButtonItem;
- (void)_addCancelButtonToNavigationItem:(id)a3;
- (void)_storeSheetCancelButtonAction:(id)a3;
- (void)dealloc;
- (void)handleFailureWithError:(id)a3;
- (void)resetNavigationItem:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUIITunesStoreUIPageViewController

- (void)dealloc
{
  v3 = [(SUBarButtonItem *)self->_cancelButtonItem target];

  if (v3 == self)
  {
    [(SUBarButtonItem *)self->_cancelButtonItem setTarget:0];
  }

  v4.receiver = self;
  v4.super_class = SKUIITunesStoreUIPageViewController;
  [(SUStorePageViewController *)&v4 dealloc];
}

- (void)handleFailureWithError:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIITunesStoreUIPageViewController *)v5 handleFailureWithError:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if ([(SUViewController *)self isVisible])
  {
    v13.receiver = self;
    v13.super_class = SKUIITunesStoreUIPageViewController;
    [(SUStorePageViewController *)&v13 handleFailureWithError:v4];
  }
}

- (BOOL)presentDialogForError:(id)a3 pendUntilVisible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIITunesStoreUIPageViewController *)v7 presentDialogForError:v8 pendUntilVisible:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(SKUIITunesStoreUIPageViewController *)self productPageViewController];
  v16 = [v15 productPageStyle];

  if (v16 == 1)
  {
    v17 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SKUIITunesStoreUIPageViewController;
    v17 = [(SUViewController *)&v19 presentDialogForError:v6 pendUntilVisible:v4];
  }

  return v17;
}

- (void)resetNavigationItem:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIITunesStoreUIPageViewController *)v5 resetNavigationItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIITunesStoreUIPageViewController;
  [(SUStorePageViewController *)&v13 resetNavigationItem:v4];
  if ([(SKUIITunesStoreUIPageViewController *)self showsCancelButton])
  {
    [(SKUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:v4];
  }
}

- (void)viewWillLayoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIITunesStoreUIPageViewController *)v3 viewWillLayoutSubviews:v4];
      }
    }
  }

  if ([(SKUIITunesStoreUIPageViewController *)self showsCancelButton])
  {
    v11 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    [(SKUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:v11];
  }

  v12.receiver = self;
  v12.super_class = SKUIITunesStoreUIPageViewController;
  [(SKUIITunesStoreUIPageViewController *)&v12 viewWillLayoutSubviews];
}

- (void)_addCancelButtonToNavigationItem:(id)a3
{
  v4 = a3;
  v7 = [(SKUIITunesStoreUIPageViewController *)self _cancelButtonItem];
  v5 = [(SUViewController *)self clientInterface];
  v6 = [v5 appearance];
  [v6 styleBarButtonItem:v7];

  [v4 setLeftBarButtonItem:v7 animated:0];
}

- (id)_cancelButtonItem
{
  if (!self->_cancelButtonItem)
  {
    v3 = objc_alloc_init(MEMORY[0x277D7FDB0]);
    cancelButtonItem = self->_cancelButtonItem;
    self->_cancelButtonItem = v3;

    [(SUBarButtonItem *)self->_cancelButtonItem setAction:sel__storeSheetCancelButtonAction_];
    [(SUBarButtonItem *)self->_cancelButtonItem setStyle:2];
    [(SUBarButtonItem *)self->_cancelButtonItem setTarget:self];
    v5 = self->_cancelButtonItem;
    if (self->_cancelButtonTitle)
    {
      [(SUBarButtonItem *)self->_cancelButtonItem setTitle:?];
    }

    else
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"CLOSE_SHEET_BUTTON" value:&stru_2827FFAC8 table:0];
      [(SUBarButtonItem *)v5 setTitle:v7];
    }
  }

  v8 = self->_cancelButtonItem;

  return v8;
}

- (void)_storeSheetCancelButtonAction:(id)a3
{
  v3 = [(SKUIITunesStoreUIPageViewController *)self productPageViewController];
  [v3 _sendDidFinishWithResult:0];
}

- (SKProductPageViewController)productPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productPageViewController);

  return WeakRetained;
}

@end