@interface SKUIITunesStoreUIPageViewController
- (BOOL)presentDialogForError:(id)error pendUntilVisible:(BOOL)visible;
- (SKProductPageViewController)productPageViewController;
- (id)_cancelButtonItem;
- (void)_addCancelButtonToNavigationItem:(id)item;
- (void)_storeSheetCancelButtonAction:(id)action;
- (void)dealloc;
- (void)handleFailureWithError:(id)error;
- (void)resetNavigationItem:(id)item;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUIITunesStoreUIPageViewController

- (void)dealloc
{
  target = [(SUBarButtonItem *)self->_cancelButtonItem target];

  if (target == self)
  {
    [(SUBarButtonItem *)self->_cancelButtonItem setTarget:0];
  }

  v4.receiver = self;
  v4.super_class = SKUIITunesStoreUIPageViewController;
  [(SUStorePageViewController *)&v4 dealloc];
}

- (void)handleFailureWithError:(id)error
{
  errorCopy = error;
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
    [(SUStorePageViewController *)&v13 handleFailureWithError:errorCopy];
  }
}

- (BOOL)presentDialogForError:(id)error pendUntilVisible:(BOOL)visible
{
  visibleCopy = visible;
  errorCopy = error;
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

  productPageViewController = [(SKUIITunesStoreUIPageViewController *)self productPageViewController];
  productPageStyle = [productPageViewController productPageStyle];

  if (productPageStyle == 1)
  {
    v17 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SKUIITunesStoreUIPageViewController;
    v17 = [(SUViewController *)&v19 presentDialogForError:errorCopy pendUntilVisible:visibleCopy];
  }

  return v17;
}

- (void)resetNavigationItem:(id)item
{
  itemCopy = item;
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
  [(SUStorePageViewController *)&v13 resetNavigationItem:itemCopy];
  if ([(SKUIITunesStoreUIPageViewController *)self showsCancelButton])
  {
    [(SKUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:itemCopy];
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
    navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    [(SKUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:navigationItemForScriptInterface];
  }

  v12.receiver = self;
  v12.super_class = SKUIITunesStoreUIPageViewController;
  [(SKUIITunesStoreUIPageViewController *)&v12 viewWillLayoutSubviews];
}

- (void)_addCancelButtonToNavigationItem:(id)item
{
  itemCopy = item;
  _cancelButtonItem = [(SKUIITunesStoreUIPageViewController *)self _cancelButtonItem];
  clientInterface = [(SUViewController *)self clientInterface];
  appearance = [clientInterface appearance];
  [appearance styleBarButtonItem:_cancelButtonItem];

  [itemCopy setLeftBarButtonItem:_cancelButtonItem animated:0];
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

- (void)_storeSheetCancelButtonAction:(id)action
{
  productPageViewController = [(SKUIITunesStoreUIPageViewController *)self productPageViewController];
  [productPageViewController _sendDidFinishWithResult:0];
}

- (SKProductPageViewController)productPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productPageViewController);

  return WeakRetained;
}

@end