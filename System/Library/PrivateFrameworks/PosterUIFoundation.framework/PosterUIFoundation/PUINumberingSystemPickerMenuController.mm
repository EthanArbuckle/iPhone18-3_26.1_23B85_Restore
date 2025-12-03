@interface PUINumberingSystemPickerMenuController
- (NSLocale)displayLocale;
- (PUINumberingSystemPickerControllerDelegate)delegate;
- (PUINumberingSystemPickerMenuController)initWithNumberingSystem:(id)system font:(id)font;
- (UIMenu)menu;
- (void)didSelectNumberingSystem:(id)system;
@end

@implementation PUINumberingSystemPickerMenuController

- (PUINumberingSystemPickerMenuController)initWithNumberingSystem:(id)system font:(id)font
{
  systemCopy = system;
  fontCopy = font;
  v16.receiver = self;
  v16.super_class = PUINumberingSystemPickerMenuController;
  v8 = [(PUINumberingSystemPickerMenuController *)&v16 init];
  if (v8)
  {
    v9 = [systemCopy copy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = +[PUINumberingSystem systemDefaultNumberingSystem];
    }

    selectedNumberingSystem = v8->_selectedNumberingSystem;
    v8->_selectedNumberingSystem = v11;

    if (fontCopy)
    {
      v13 = fontCopy;
    }

    else
    {
      v13 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    }

    font = v8->_font;
    v8->_font = v13;
  }

  return v8;
}

- (UIMenu)menu
{
  p_menu = &self->_menu;
  menu = self->_menu;
  if (menu)
  {
    v4 = menu;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DCC60];
    v6 = +[PUINumberingSystem supportedNumberingSystemTypes];
    array = [v6 array];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __46__PUINumberingSystemPickerMenuController_menu__block_invoke;
    v13 = &unk_1E7854798;
    objc_copyWeak(&v14, &location);
    v8 = [array bs_mapNoNulls:&v10];
    v4 = [v5 menuWithChildren:{v8, v10, v11, v12, v13}];

    objc_storeStrong(p_menu, v4);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v4;
}

id __46__PUINumberingSystemPickerMenuController_menu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PUINumberingSystem alloc] initWithNumberingSystemType:v3];
  v5 = MEMORY[0x1E69DC628];
  v6 = [(PUINumberingSystem *)v4 localizedDisplayName];
  v7 = [(PUINumberingSystem *)v4 image];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __46__PUINumberingSystemPickerMenuController_menu__block_invoke_2;
  v17 = &unk_1E7854770;
  objc_copyWeak(&v19, (a1 + 32));
  v8 = v4;
  v18 = v8;
  v9 = [v5 actionWithTitle:v6 image:v7 identifier:v3 handler:&v14];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ([(PUINumberingSystem *)v8 isEqual:*(WeakRetained + 2), v14, v15, v16, v17])
    {
      [v9 setState:1];
    }

    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  objc_destroyWeak(&v19);

  return v12;
}

void __46__PUINumberingSystemPickerMenuController_menu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSelectNumberingSystem:*(a1 + 32)];
}

- (NSLocale)displayLocale
{
  selectedNumberingSystem = [(PUINumberingSystemPickerMenuController *)self selectedNumberingSystem];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v5 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:localeIdentifier];
  v6 = [v5 mutableCopy];

  systemName = [selectedNumberingSystem systemName];
  [v6 setObject:systemName forKey:@"numbers"];

  v8 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v6];
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v8];

  return v9;
}

- (void)didSelectNumberingSystem:(id)system
{
  systemCopy = system;
  if (![(PUINumberingSystem *)self->_selectedNumberingSystem isEqual:?])
  {
    objc_storeStrong(&self->_selectedNumberingSystem, system);
    menu = self->_menu;
    self->_menu = 0;

    delegate = [(PUINumberingSystemPickerMenuController *)self delegate];
    [delegate numberingSystemPickerMenuController:self didSelectNumberingSystem:systemCopy];
  }
}

- (PUINumberingSystemPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end