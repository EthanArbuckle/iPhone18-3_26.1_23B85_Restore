@interface SiriUIPersonPickerViewController
- (id)_pickerResponseForPerson:(id)person;
- (void)_dismissPicker;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)showPicker:(id)picker;
@end

@implementation SiriUIPersonPickerViewController

- (void)showPicker:(id)picker
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
  selfCopy = self;
  v6 = v4;
  v16 = v6;
  v7 = MEMORY[0x26D63F900](&v11);
  v8 = [(SiriUIObjectPickerViewController *)self pickerDelegate:v11];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    pickerDelegate = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [pickerDelegate pickerViewController:self shouldPresentPicker:v6 completion:v7];
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

- (id)_pickerResponseForPerson:(id)person
{
  v4 = [MEMORY[0x277CFBC48] createSAPersonFromCNContact:person];
  v5 = objc_alloc_init(MEMORY[0x277D47A68]);
  _picker = [(SiriUIObjectPickerViewController *)self _picker];
  [v5 setDomainObjectPicker:_picker];

  [v5 setSelectedItem:v4];

  return v5;
}

- (void)_dismissPicker
{
  pickerDelegate = [(SiriUIObjectPickerViewController *)self pickerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    pickerDelegate2 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [pickerDelegate2 pickerViewController:self willDismissPicker:0];
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

- (void)contactPickerDidCancel:(id)cancel
{
  [(SiriUIPersonPickerViewController *)self _dismissPicker];
  pickerDelegate = [(SiriUIObjectPickerViewController *)self pickerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    pickerDelegate2 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [pickerDelegate2 pickerViewController:self didRequestKeyboardWithVisibility:1];
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  v6 = [(SiriUIPersonPickerViewController *)self _pickerResponseForPerson:contact];
  if (v6)
  {
    pickerDelegate = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      pickerDelegate2 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
      [pickerDelegate2 pickerViewController:self didSelectObject:v6 fromPicker:pickerCopy];
    }
  }

  [(SiriUIPersonPickerViewController *)self _dismissPicker];
  pickerDelegate3 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    pickerDelegate4 = [(SiriUIObjectPickerViewController *)self pickerDelegate];
    [pickerDelegate4 pickerViewController:self didRequestKeyboardWithVisibility:1];
  }
}

@end