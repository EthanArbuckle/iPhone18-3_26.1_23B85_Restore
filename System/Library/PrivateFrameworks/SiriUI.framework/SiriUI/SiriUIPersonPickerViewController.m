@interface SiriUIPersonPickerViewController
- (id)_pickerResponseForPerson:(id)a3;
- (void)_dismissPicker;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)showPicker:(id)a3;
@end

@implementation SiriUIPersonPickerViewController

- (void)showPicker:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBDC18]);
  [v4 setDelegate:self];
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  [v4 setPredicateForSelectionOfContact:v5];

  [(SiriUIPersonPickerViewController *)self _dismissPicker];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __47__SiriUIPersonPickerViewController_showPicker___block_invoke;
  v14 = &unk_279C5A220;
  v15 = self;
  v6 = v4;
  v16 = v6;
  v7 = MEMORY[0x26D63F900](&v11);
  v8 = [(SiriUIObjectPickerViewController *)self pickerDelegate:v11];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [v10 pickerViewController:self shouldPresentPicker:v6 completion:v7];
  }

  else
  {
    v7[2](v7, 1);
  }
}

void __47__SiriUIPersonPickerViewController_showPicker___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) pickerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) pickerDelegate];
      [v5 pickerViewController:*(a1 + 32) willPresentPicker:*(a1 + 40)];
    }

    v6 = [*(a1 + 32) pickerDelegate];
    v7 = [v6 viewControllerForPickerPresentation:*(a1 + 32)];
    objc_storeWeak((*(a1 + 32) + 1008), v7);

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1008));
    [WeakRetained presentViewController:*(a1 + 40) animated:1 completion:0];

    v9 = [*(a1 + 32) pickerDelegate];
    LOBYTE(v7) = objc_opt_respondsToSelector();

    if (v7)
    {
      v10 = [*(a1 + 32) pickerDelegate];
      [v10 pickerViewController:*(a1 + 32) didRequestKeyboardWithVisibility:0];
    }
  }
}

- (id)_pickerResponseForPerson:(id)a3
{
  v4 = [MEMORY[0x277CFBC48] createSAPersonFromCNContact:a3];
  v5 = objc_alloc_init(MEMORY[0x277D47A68]);
  v6 = [(SiriUIObjectPickerViewController *)self _picker];
  [v5 setDomainObjectPicker:v6];

  [v5 setSelectedItem:v4];

  return v5;
}

- (void)_dismissPicker
{
  v3 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [v5 pickerViewController:self willDismissPicker:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SiriUIPersonPickerViewController__dismissPicker__block_invoke;
  v7[3] = &unk_279C59D78;
  v7[4] = self;
  [WeakRetained dismissViewControllerAnimated:1 completion:v7];

  objc_storeWeak(&self->_presentingViewController, 0);
}

void __50__SiriUIPersonPickerViewController__dismissPicker__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pickerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) pickerDelegate];
    [v4 pickerViewController:*(a1 + 32) didDismissPicker:0];
  }
}

- (void)contactPickerDidCancel:(id)a3
{
  [(SiriUIPersonPickerViewController *)self _dismissPicker];
  v4 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [v6 pickerViewController:self didRequestKeyboardWithVisibility:1];
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v13 = a3;
  v6 = [(SiriUIPersonPickerViewController *)self _pickerResponseForPerson:a4];
  if (v6)
  {
    v7 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
      [v9 pickerViewController:self didSelectObject:v6 fromPicker:v13];
    }
  }

  [(SiriUIPersonPickerViewController *)self _dismissPicker];
  v10 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [v12 pickerViewController:self didRequestKeyboardWithVisibility:1];
  }
}

@end