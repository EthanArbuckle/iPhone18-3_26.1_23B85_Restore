@interface UIKBAutoFillMenus
+ (id)updatedSystemAutoFillMenuWithMenuElements:(id)a3 hideUnavailableItems:(BOOL)a4;
+ (id)updatedSystemAutoFillMenuWithMenuElements:(id)a3 hideUnavailableItems:(BOOL)a4 isSecureTextField:(BOOL)a5;
@end

@implementation UIKBAutoFillMenus

+ (id)updatedSystemAutoFillMenuWithMenuElements:(id)a3 hideUnavailableItems:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 textInputTraits];
  v9 = [a1 updatedSystemAutoFillMenuWithMenuElements:v6 hideUnavailableItems:v4 isSecureTextField:{objc_msgSend(v8, "isSecureTextEntry")}];

  return v9;
}

+ (id)updatedSystemAutoFillMenuWithMenuElements:(id)a3 hideUnavailableItems:(BOOL)a4 isSecureTextField:(BOOL)a5
{
  v8 = a3;
  if (+[UIKeyboard supportsAutoFillPanel](UIKeyboard, "supportsAutoFillPanel") && [UIApp isProtectedDataAvailable] && (+[UIKeyboard keyboardBundleIdentifier](UIKeyboard, "keyboardBundleIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.purplebuddy"), v9, (v10 & 1) == 0))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__UIKBAutoFillMenus_updatedSystemAutoFillMenuWithMenuElements_hideUnavailableItems_isSecureTextField___block_invoke_2;
    v13[3] = &__block_descriptor_42_e25___NSArray_16__0__UIMenu_8l;
    v14 = a4;
    v15 = a5;
    v13[4] = a1;
    v11 = _UIMenuReplacingElementMatchingPredicate(v8, &__block_literal_global_663, v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __102__UIKBAutoFillMenus_updatedSystemAutoFillMenuWithMenuElements_hideUnavailableItems_isSecureTextField___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 identifier];
    v4 = [v3 isEqualToString:@"com.apple.menu.insert-from-external-sources"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __102__UIKBAutoFillMenus_updatedSystemAutoFillMenuWithMenuElements_hideUnavailableItems_isSecureTextField___block_invoke_2(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 isCurrentEditResponderInEditingMode];

  if (*(a1 + 40))
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  v8 = _UILocalizedString(@"AUTOFILL_MENU_CONTACT", @"Contact label in system AutoFill menu", @"Contact");
  v9 = [UIImage systemImageNamed:@"person.crop.circle"];
  v10 = [UIAction actionWithTitle:v8 image:v9 identifier:@"com.apple.action.insert.contacts" handler:&__block_literal_global_33_11];

  if ((*(a1 + 41) & 1) != 0 || !v6)
  {
    [v10 setAttributes:{objc_msgSend(v10, "attributes") | v7}];
  }

  [v4 addObject:v10];
  v11 = _UILocalizedString(@"AUTOFILL_MENU_PASSWORDS", @"Passwords label in system AutoFill menu", @"Passwords");
  v12 = [UIImage _systemImageNamed:@"key.dots"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__UIKBAutoFillMenus_updatedSystemAutoFillMenuWithMenuElements_hideUnavailableItems_isSecureTextField___block_invoke_4;
  v20[3] = &__block_descriptor_40_e18_v16__0__UIAction_8l;
  v20[4] = *(a1 + 32);
  v13 = [UIAction actionWithTitle:v11 image:v12 identifier:@"com.apple.action.insert.passwords" handler:v20];

  if ((v6 & 1) == 0)
  {
    [v13 setAttributes:{objc_msgSend(v13, "attributes") | v7}];
  }

  [v4 addObject:v13];
  if (_os_feature_enabled_impl())
  {
    v14 = _UILocalizedString(@"AUTOFILL_MENU_CREDIT_CARD", @"Credit Card label in system AutoFill menu", @"Credit Card");
    v15 = [UIImage systemImageNamed:@"creditcard"];
    v16 = [UIAction actionWithTitle:v14 image:v15 identifier:@"com.apple.action.insert.creditcards" handler:&__block_literal_global_64_1];

    if ((v6 & 1) == 0)
    {
      [v16 setAttributes:{objc_msgSend(v16, "attributes") | v7}];
    }

    [v4 addObject:v16];
  }

  v17 = [v3 menuByReplacingChildren:v4];
  v21[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

  return v18;
}

void __102__UIKBAutoFillMenus_updatedSystemAutoFillMenuWithMenuElements_hideUnavailableItems_isSecureTextField___block_invoke_3()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 handleAutoFillContactPopoverCommand];
}

void __102__UIKBAutoFillMenus_updatedSystemAutoFillMenuWithMenuElements_hideUnavailableItems_isSecureTextField___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.SafariViewService"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"AutoFillPasswordsInvokedFromSystemAutoFillMenu" object:*(a1 + 32)];
  }

  else
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 handleAutoFillPasswordPopoverCommand];
  }
}

void __102__UIKBAutoFillMenus_updatedSystemAutoFillMenuWithMenuElements_hideUnavailableItems_isSecureTextField___block_invoke_5()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 handleAutoFillCreditCardPopoverCommand];
}

@end