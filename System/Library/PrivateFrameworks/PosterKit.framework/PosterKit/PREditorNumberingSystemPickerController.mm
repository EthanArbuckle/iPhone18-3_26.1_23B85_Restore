@interface PREditorNumberingSystemPickerController
- (NSLocale)displayLocale;
- (PREditorNumberingSystemPickerController)initWithSelectedNumberingSystem:(id)a3 selectedFont:(id)a4;
- (PREditorNumberingSystemPickerControllerDelegate)delegate;
- (id)menu;
- (void)didSelectNumberingSystem:(id)a3;
@end

@implementation PREditorNumberingSystemPickerController

- (PREditorNumberingSystemPickerController)initWithSelectedNumberingSystem:(id)a3 selectedFont:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PREditorNumberingSystemPickerController *)self init];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 copy];
      selectedNumberingSystem = v8->_selectedNumberingSystem;
      v8->_selectedNumberingSystem = v9;
    }

    else
    {
      selectedNumberingSystem = PRSystemNumberingSystem();
      v11 = [selectedNumberingSystem copy];
      v12 = v8->_selectedNumberingSystem;
      v8->_selectedNumberingSystem = v11;
    }

    if (v7)
    {
      v13 = v7;
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

- (id)menu
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF70] array];
  v3 = PRAllNumberingSystems();
  objc_initWeak(&location, self);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v21 + 1) + 8 * i) intValue];
        v8 = PRNumberingSystemStringForType(v7);
        v9 = PRNumberingSystemImageForType(v7);
        v10 = MEMORY[0x1E69DC628];
        v11 = PRNumberingSystemDisplayNameForType(v7);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __47__PREditorNumberingSystemPickerController_menu__block_invoke;
        v18[3] = &unk_1E7843398;
        objc_copyWeak(&v20, &location);
        v12 = v8;
        v19 = v12;
        v13 = [v10 actionWithTitle:v11 image:v9 identifier:v12 handler:v18];

        if ([v12 isEqualToString:self->_selectedNumberingSystem])
        {
          [v13 setState:1];
        }

        [v17 addObject:v13];

        objc_destroyWeak(&v20);
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v14 = [MEMORY[0x1E69DCC60] menuWithChildren:v17];
  objc_destroyWeak(&location);

  return v14;
}

void __47__PREditorNumberingSystemPickerController_menu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSelectNumberingSystem:*(a1 + 32)];
}

- (NSLocale)displayLocale
{
  v2 = [(PREditorNumberingSystemPickerController *)self selectedNumberingSystem];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 localeIdentifier];

  v5 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v4];
  v6 = [v5 mutableCopy];

  [v6 setObject:v2 forKey:@"numbers"];
  v7 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v6];
  v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];

  return v8;
}

- (void)didSelectNumberingSystem:(id)a3
{
  v5 = a3;
  p_selectedNumberingSystem = &self->_selectedNumberingSystem;
  if (self->_selectedNumberingSystem != v5)
  {
    v8 = v5;
    objc_storeStrong(p_selectedNumberingSystem, a3);
    v7 = [(PREditorNumberingSystemPickerController *)self delegate];
    [v7 numberingSystemPickerController:self didSelectNumberingSystem:v8];
  }

  MEMORY[0x1EEE66BE0](p_selectedNumberingSystem);
}

- (PREditorNumberingSystemPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end