@interface STGroupSpecifierProvider
- (NSArray)specifiers;
- (STGroupSpecifierProvider)init;
- (STGroupSpecifierProviderDelegate)delegate;
- (id)specifiersAtIndexes:(id)indexes;
- (void)_tableCellHeightDidChange:(id)change;
- (void)beginUpdates;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated;
- (void)endUpdates;
- (void)insertSpecifiers:(id)specifiers atIndexes:(id)indexes;
- (void)lazyLoadBundle:(id)bundle;
- (void)popToViewControllerAnimated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)reloadSectionHeaderFootersWithAnimation:(int64_t)animation;
- (void)reloadSpecifier:(id)specifier animated:(BOOL)animated;
- (void)removeSpecifiersAtIndexes:(id)indexes;
- (void)replaceObjectInSpecifiersAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceSpecifiersAtIndexes:(id)indexes withSpecifiers:(id)specifiers;
- (void)setIsHidden:(BOOL)hidden;
- (void)showConfirmationViewForSpecifier:(id)specifier;
- (void)showController:(id)controller animated:(BOOL)animated;
- (void)showPINSheet:(id)sheet completion:(id)completion;
- (void)showStoreDemoAlert;
@end

@implementation STGroupSpecifierProvider

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"STGroupSpecifierProvider.m" lineNumber:26 description:{@"%@ must be invalidated before deallocing", a2}];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__tableCellHeightDidChange_ name:0x2876773C8 object:0];
  }

  return v3;
}

- (void)setIsHidden:(BOOL)hidden
{
  if (self->_isHidden != hidden)
  {
    [(STGroupSpecifierProvider *)self willChangeValueForKey:@"isHidden"];
    self->_isHidden = hidden;

    [(STGroupSpecifierProvider *)self didChangeValueForKey:@"isHidden"];
  }
}

- (void)reloadSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  specifierCopy = specifier;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self reloadSpecifier:specifierCopy animated:animatedCopy];
  }
}

- (void)reloadSectionHeaderFootersWithAnimation:(int64_t)animation
{
  if (![(STGroupSpecifierProvider *)self isHidden])
  {
    delegate = [(STGroupSpecifierProvider *)self delegate];
    [delegate specifierProvider:self reloadSectionHeaderFootersWithAnimation:animation];
  }
}

- (void)showController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self showController:controllerCopy animated:animatedCopy];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self presentViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self dismissViewControllerAnimated:animatedCopy];
  }
}

- (void)showConfirmationViewForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self showConfirmationViewForSpecifier:specifierCopy];
  }
}

- (void)popToViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self popToViewControllerAnimated:animatedCopy];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)beginUpdates
{
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProviderBeginUpdates:self];
  }
}

- (void)endUpdates
{
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProviderEndUpdates:self];
  }
}

- (void)lazyLoadBundle:(id)bundle
{
  bundleCopy = bundle;
  delegate = [(STGroupSpecifierProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate specifierProvider:self lazyLoadBundle:bundleCopy];
  }
}

- (void)showPINSheet:(id)sheet completion:(id)completion
{
  sheetCopy = sheet;
  if (completion)
  {
    v6 = _Block_copy(completion);
    [sheetCopy setObject:v6 forKeyedSubscript:0x287675888];
  }

  delegate = [(STGroupSpecifierProvider *)self delegate];
  [delegate specifierProvider:self showPINSheet:sheetCopy];
}

- (void)showStoreDemoAlert
{
  alertControllerForFeatureNotAvailable = [MEMORY[0x277D75110] alertControllerForFeatureNotAvailable];
  [(STGroupSpecifierProvider *)self presentViewController:alertControllerForFeatureNotAvailable animated:1];
}

- (NSArray)specifiers
{
  privateSpecifiers = [(STGroupSpecifierProvider *)self privateSpecifiers];
  v3 = [privateSpecifiers copy];

  return v3;
}

- (id)specifiersAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  privateSpecifiers = [(STGroupSpecifierProvider *)self privateSpecifiers];
  v6 = [privateSpecifiers objectsAtIndexes:indexesCopy];

  return v6;
}

- (void)insertSpecifiers:(id)specifiers atIndexes:(id)indexes
{
  indexesCopy = indexes;
  specifiersCopy = specifiers;
  privateSpecifiers = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [privateSpecifiers insertObjects:specifiersCopy atIndexes:indexesCopy];
}

- (void)removeSpecifiersAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  privateSpecifiers = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [privateSpecifiers removeObjectsAtIndexes:indexesCopy];
}

- (void)replaceObjectInSpecifiersAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  privateSpecifiers = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [privateSpecifiers setObject:objectCopy atIndexedSubscript:index];
}

- (void)replaceSpecifiersAtIndexes:(id)indexes withSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  indexesCopy = indexes;
  privateSpecifiers = [(STGroupSpecifierProvider *)self privateSpecifiers];
  [privateSpecifiers replaceObjectsAtIndexes:indexesCopy withObjects:specifiersCopy];
}

- (void)_tableCellHeightDidChange:(id)change
{
  object = [change object];
  specifier = [object specifier];
  if (specifier)
  {
    specifiers = [(STGroupSpecifierProvider *)self specifiers];
    v6 = [specifiers containsObject:specifier];

    if (v6)
    {
      [(STGroupSpecifierProvider *)self reloadSpecifier:specifier animated:0];
    }
  }
}

- (STGroupSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end