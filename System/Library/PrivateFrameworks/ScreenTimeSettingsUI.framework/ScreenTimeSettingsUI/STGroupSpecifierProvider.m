@interface STGroupSpecifierProvider
- (NSArray)specifiers;
- (STGroupSpecifierProvider)init;
- (STGroupSpecifierProviderDelegate)delegate;
- (id)specifiersAtIndexes:(id)a3;
- (void)_tableCellHeightDidChange:(id)a3;
- (void)beginUpdates;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3;
- (void)endUpdates;
- (void)insertSpecifiers:(id)a3 atIndexes:(id)a4;
- (void)lazyLoadBundle:(id)a3;
- (void)popToViewControllerAnimated:(BOOL)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)reloadSectionHeaderFootersWithAnimation:(int64_t)a3;
- (void)reloadSpecifier:(id)a3 animated:(BOOL)a4;
- (void)removeSpecifiersAtIndexes:(id)a3;
- (void)replaceObjectInSpecifiersAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceSpecifiersAtIndexes:(id)a3 withSpecifiers:(id)a4;
- (void)setIsHidden:(BOOL)a3;
- (void)showConfirmationViewForSpecifier:(id)a3;
- (void)showController:(id)a3 animated:(BOOL)a4;
- (void)showPINSheet:(id)a3 completion:(id)a4;
- (void)showStoreDemoAlert;
@end

@implementation STGroupSpecifierProvider

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STGroupSpecifierProvider.m" lineNumber:26 description:{@"%@ must be invalidated before deallocing", a2}];
}

- (STGroupSpecifierProvider)init
{
  v12.receiver = self;
  v12.super_class = STGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [(STGroupSpecifierProvider *)v2 description];
    v6 = [v4 groupSpecifierWithID:v5];
    groupSpecifier = v3->_groupSpecifier;
    v3->_groupSpecifier = v6;

    v8 = objc_opt_new();
    privateSpecifiers = v3->_privateSpecifiers;
    v3->_privateSpecifiers = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v3 selector:sel__tableCellHeightDidChange_ name:0x2876773C8 object:0];
  }

  return v3;
}

- (void)setIsHidden:(BOOL)a3
{
  if (self->_isHidden != a3)
  {
    [(STGroupSpecifierProvider *)self willChangeValueForKey:@"isHidden"];
    self->_isHidden = a3;

    [(STGroupSpecifierProvider *)self didChangeValueForKey:@"isHidden"];
  }
}

- (void)reloadSpecifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 specifierProvider:self reloadSpecifier:v7 animated:v4];
  }
}

- (void)reloadSectionHeaderFootersWithAnimation:(int64_t)a3
{
  if (![(STGroupSpecifierProvider *)self isHidden])
  {
    v5 = [(STGroupSpecifierProvider *)self delegate];
    [v5 specifierProvider:self reloadSectionHeaderFootersWithAnimation:a3];
  }
}

- (void)showController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 specifierProvider:self showController:v7 animated:v4];
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 specifierProvider:self presentViewController:v7 animated:v4];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 specifierProvider:self dismissViewControllerAnimated:v3];
  }
}

- (void)showConfirmationViewForSpecifier:(id)a3
{
  v5 = a3;
  v4 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 specifierProvider:self showConfirmationViewForSpecifier:v5];
  }
}

- (void)popToViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 specifierProvider:self popToViewControllerAnimated:v3];
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v10 = a3;
  v8 = a5;
  v9 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 specifierProvider:self presentViewController:v10 animated:v6 completion:v8];
  }
}

- (void)beginUpdates
{
  v3 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 specifierProviderBeginUpdates:self];
  }
}

- (void)endUpdates
{
  v3 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 specifierProviderEndUpdates:self];
  }
}

- (void)lazyLoadBundle:(id)a3
{
  v5 = a3;
  v4 = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 specifierProvider:self lazyLoadBundle:v5];
  }
}

- (void)showPINSheet:(id)a3 completion:(id)a4
{
  v8 = a3;
  if (a4)
  {
    v6 = _Block_copy(a4);
    [v8 setObject:v6 forKeyedSubscript:0x287675888];
  }

  v7 = [(STGroupSpecifierProvider *)self delegate];
  [v7 specifierProvider:self showPINSheet:v8];
}

- (void)showStoreDemoAlert
{
  v3 = [MEMORY[0x277D75110] alertControllerForFeatureNotAvailable];
  [(STGroupSpecifierProvider *)self presentViewController:v3 animated:1];
}

- (NSArray)specifiers
{
  v2 = [(STGroupSpecifierProvider *)self privateSpecifiers];
  v3 = [v2 copy];

  return v3;
}

- (id)specifiersAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(STGroupSpecifierProvider *)self privateSpecifiers];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (void)insertSpecifiers:(id)a3 atIndexes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [v8 insertObjects:v7 atIndexes:v6];
}

- (void)removeSpecifiersAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [v5 removeObjectsAtIndexes:v4];
}

- (void)replaceObjectInSpecifiersAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [v7 setObject:v6 atIndexedSubscript:a3];
}

- (void)replaceSpecifiersAtIndexes:(id)a3 withSpecifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [v8 replaceObjectsAtIndexes:v7 withObjects:v6];
}

- (void)_tableCellHeightDidChange:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 specifier];
  if (v4)
  {
    v5 = [(STGroupSpecifierProvider *)self specifiers];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      [(STGroupSpecifierProvider *)self reloadSpecifier:v4 animated:0];
    }
  }
}

- (STGroupSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end