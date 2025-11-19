@interface PKMemoIconChooserViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (PKMemoIconChooserViewController)initWithDelegate:(id)a3 memo:(id)a4 context:(int64_t)a5 mode:(unint64_t)a6;
- (void)_cancelTapped;
- (void)_doneTapped;
- (void)cell:(id)a3 didUpdateText:(id)a4;
- (void)didSelectItem:(id)a3;
- (void)invalidateLayout;
- (void)loadView;
- (void)memoIconChooserDidChooseMemo:(id)a3;
- (void)selectCellForItem:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PKMemoIconChooserViewController

- (PKMemoIconChooserViewController)initWithDelegate:(id)a3 memo:(id)a4 context:(int64_t)a5 mode:(unint64_t)a6
{
  v38[1] = *MEMORY[0x1E69E9840];
  obj = a3;
  v10 = a4;
  v36.receiver = self;
  v36.super_class = PKMemoIconChooserViewController;
  v11 = [(PKDynamicCollectionViewController *)&v36 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, obj);
    v12->_context = a5;
    v12->_mode = a6;
    [(PKDynamicCollectionViewController *)v12 setUseItemIdentityWhenUpdating:1];
    v13 = [[PKMemoIconChooserSectionController alloc] initWithDelegate:v12 mode:a6 memo:v10];
    section = v12->_section;
    v12->_section = v13;

    v38[0] = v12->_section;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [(PKDynamicCollectionViewController *)v12 setSections:v15 animated:1];

    objc_initWeak(&location, v12);
    v16 = MEMORY[0x1E69DC628];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70__PKMemoIconChooserViewController_initWithDelegate_memo_context_mode___block_invoke;
    v33[3] = &unk_1E8010A60;
    objc_copyWeak(&v34, &location);
    v17 = [v16 actionWithHandler:v33];
    v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 primaryAction:v17];
    doneButton = v12->_doneButton;
    v12->_doneButton = v18;

    [(UIBarButtonItem *)v12->_doneButton setEnabled:0];
    if ([(PKMemoIconChooserViewController *)v12 overrideUserInterfaceStyle]== 2)
    {
      v20 = v12->_doneButton;
      v21 = +[PKPeerPaymentTheme primaryNavigationTintColor];
      [(UIBarButtonItem *)v20 setTintColor:v21];
    }

    [(UIBarButtonItem *)v12->_doneButton setAccessibilityIdentifier:*MEMORY[0x1E69B9720], obj];
    v22 = MEMORY[0x1E69DC628];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__PKMemoIconChooserViewController_initWithDelegate_memo_context_mode___block_invoke_2;
    v31[3] = &unk_1E8010A60;
    objc_copyWeak(&v32, &location);
    v23 = [v22 actionWithHandler:v31];
    v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 primaryAction:v23];
    [v24 setAccessibilityIdentifier:*MEMORY[0x1E69B95A0]];
    v25 = [(PKMemoIconChooserViewController *)v12 navigationItem];
    [v25 setRightBarButtonItem:v12->_doneButton];
    [v25 setLeftBarButtonItem:v24];
    v26 = PKLocalizedPeerPaymentRecurringString(&cfstr_MemoPickerChoo.isa);
    [v25 setTitle:v26];

    v37 = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v28 = [(PKMemoIconChooserViewController *)v12 registerForTraitChanges:v27 withHandler:&__block_literal_global_324_0];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __70__PKMemoIconChooserViewController_initWithDelegate_memo_context_mode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _doneTapped];
}

void __70__PKMemoIconChooserViewController_initWithDelegate_memo_context_mode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelTapped];
}

void __70__PKMemoIconChooserViewController_initWithDelegate_memo_context_mode___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 overrideUserInterfaceStyle] == 2)
  {
    v2 = v4[136];
    v3 = +[PKPeerPaymentTheme primaryNavigationTintColor];
    [v2 setTintColor:v3];
  }
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = PKMemoIconChooserViewController;
  [(PKDynamicCollectionViewController *)&v6 loadView];
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(PKDynamicCollectionViewController *)self collectionView];
  [v5 setKeyboardDismissMode:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKMemoIconChooserViewController;
  [(PKDynamicCollectionViewController *)&v6 viewDidAppear:a3];
  if (self->_mode == 1)
  {
    v4 = [[PKMemoItem alloc] initWithMemo:0 type:2];
    v5 = [(PKDynamicCollectionViewController *)self cellForItem:v4];
    [v5 showEmojiKeyboardIfNeeded];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKMemoIconChooserViewController;
  [(PKMemoIconChooserViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(PKMemoIconChooserViewController *)self view];
  [v3 bounds];
  v4 = [PKMemoIconChooserSectionController suggestedStyleForAvailableWidth:CGRectGetWidth(v6)];

  if ([(PKMemoIconChooserSectionController *)self->_section style]!= v4)
  {
    [(PKMemoIconChooserSectionController *)self->_section setStyle:v4];
  }
}

- (void)_doneTapped
{
  v3 = [(PKMemoIconChooserViewController *)self presentingViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PKMemoIconChooserViewController__doneTapped__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __46__PKMemoIconChooserViewController__doneTapped__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1072));
  v2 = [*(*(a1 + 32) + 1080) selectedMemo];
  [WeakRetained memoIconChooserDidChooseMemo:v2];
}

- (void)_cancelTapped
{
  v2 = [(PKMemoIconChooserViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)invalidateLayout
{
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  v2 = [v3 collectionViewLayout];
  [v2 invalidateLayout];
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!self->_mode)
  {
    [(UIBarButtonItem *)self->_doneButton setEnabled:1];
    v4 = v9;
  }

  if ([v4 type] == 1)
  {
    v5 = [(PKMemoIconChooserViewController *)self overrideUserInterfaceStyle];
    v6 = [[PKMemoIconChooserViewController alloc] initWithDelegate:self memo:0 context:self->_context mode:1];
    [(PKMemoIconChooserViewController *)v6 setOverrideUserInterfaceStyle:v5];
    v7 = [[PKNavigationController alloc] initWithRootViewController:v6];
    [(PKNavigationController *)v7 setOverrideUserInterfaceStyle:v5];
    if (self->_context == 9 && (PKIsPad() & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
      {
LABEL_10:
        [(PKMemoIconChooserViewController *)self presentViewController:v7 animated:1 completion:0];

        goto LABEL_11;
      }

      v8 = 16;
    }

    [(PKNavigationController *)v7 setModalPresentationStyle:v8];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)selectCellForItem:(id)a3
{
  v4 = a3;
  v5 = [(PKDynamicCollectionViewController *)self cellForItem:v4];
  [v5 setSelected:1];
  [(PKDynamicCollectionViewController *)self reloadItem:v4 animated:0];
}

- (void)cell:(id)a3 didUpdateText:(id)a4
{
  doneButton = self->_doneButton;
  v5 = [a4 length] != 0;

  [(UIBarButtonItem *)doneButton setEnabled:v5];
}

- (void)memoIconChooserDidChooseMemo:(id)a3
{
  v4 = a3;
  PKPeerPaymentAddRecurringPaymentRecentMemoIcon();
  [(PKMemoIconChooserSectionController *)self->_section reloadItems];
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:1 inSection:1];
  v5 = [(PKDynamicCollectionViewController *)self collectionView];
  [v5 selectItemAtIndexPath:v6 animated:1 scrollPosition:0];

  [(UIBarButtonItem *)self->_doneButton setEnabled:1];
  [(PKMemoIconChooserSectionController *)self->_section setMemoSelection:v4];
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  v2 = [(PKMemoIconChooserViewController *)self overrideUserInterfaceStyle]== 2;
  v3 = v2;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end