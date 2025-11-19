@interface UITextField(PKUIUtilities)
- (void)pkui_attachDoneToolbarWithAdditionalItems:()PKUIUtilities;
- (void)pkui_attachDoneToolbarWithAdditionalItems:()PKUIUtilities doneAction:;
@end

@implementation UITextField(PKUIUtilities)

- (void)pkui_attachDoneToolbarWithAdditionalItems:()PKUIUtilities
{
  v4 = a3;
  objc_initWeak(&location, a1);
  v5 = MEMORY[0x1E69DC628];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __72__UITextField_PKUIUtilities__pkui_attachDoneToolbarWithAdditionalItems___block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v6 = [v5 actionWithHandler:&v7];
  [a1 pkui_attachDoneToolbarWithAdditionalItems:v4 doneAction:{v6, v7, v8, v9, v10}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)pkui_attachDoneToolbarWithAdditionalItems:()PKUIUtilities doneAction:
{
  v15 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = v7;
  if (v15)
  {
    [v7 addObjectsFromArray:v15];
  }

  if ((PKUIKeyboardIsHardwareKeyboardActive() & 1) == 0)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [v8 addObject:v9];

    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = PKLocalizedString(&cfstr_Close.isa);
    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
    v13 = [v10 initWithTitle:v11 image:v12 target:0 action:0 menu:0];

    [v13 setPrimaryAction:v6];
    [v8 addObject:v13];
  }

  if ([v8 count])
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DD180]);
    [v14 setItems:v8];
    [v14 sizeToFit];
    [v14 frame];
    [v14 setFrame:?];
    [a1 setInputAccessoryView:v14];
  }

  else
  {
    [a1 setInputAccessoryView:0];
  }

  if ([a1 isFirstResponder])
  {
    [a1 reloadInputViews];
  }
}

@end