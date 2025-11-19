@interface _UIDialogForAddingKeyboard
+ (void)presentDialogForAddingKeyboard;
- (void)dismiss;
- (void)presentDialogForAddingKeyboard;
- (void)presentPrivacySheet;
@end

@implementation _UIDialogForAddingKeyboard

- (void)presentPrivacySheet
{
  v3 = [UITextView alloc];
  v22 = [(UITextView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = UIKeyboardSettingsBundle();
  v5 = [v4 localizedStringForKey:@"ABOUT_APP_KEYBOARDS_INFO_TEXT" value:&stru_1EFB14550 table:@"Keyboard"];
  [(UITextView *)v22 setText:v5];

  v6 = [off_1E70ECC18 systemFontOfSize:14.0];
  [(UITextView *)v22 setFont:v6];

  [(UITextView *)v22 setEditable:0];
  v7 = objc_alloc_init(UIViewController);
  v8 = UIKeyboardSettingsBundle();
  v9 = [v8 localizedStringForKey:@"ABOUT_APP_KEYBOARDS_TITLE" value:&stru_1EFB14550 table:@"Keyboard"];
  [(UIViewController *)v7 setTitle:v9];

  [(UIViewController *)v7 setView:v22];
  v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:sel_dismiss];
  v11 = [(UIViewController *)v7 navigationItem];
  [v11 setRightBarButtonItem:v10];

  v12 = [[UINavigationController alloc] initWithRootViewController:v7];
  privacySheetController = self->_privacySheetController;
  self->_privacySheetController = v12;

  [(UIViewController *)self->_privacySheetController setModalPresentationStyle:2];
  v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v15 = [v14 scene];

  v16 = [UIWindow alloc];
  v17 = [objc_opt_self() mainScreen];
  [v17 bounds];
  v18 = [(UIWindow *)v16 initWithFrame:?];
  presenterWindow = self->_presenterWindow;
  self->_presenterWindow = v18;

  [(UIWindow *)self->_presenterWindow _setRoleHint:@"_UIWindowRoleHintKeyboardPrivacySheet"];
  [(UIView *)self->_presenterWindow setOpaque:0];
  [(UIWindow *)self->_presenterWindow setWindowScene:v15];
  [(UIWindow *)self->_presenterWindow setWindowLevel:2000.0];
  [(UIWindow *)self->_presenterWindow setHidden:1];
  [(UIWindow *)self->_presenterWindow _setWindowControlsStatusBarOrientation:0];
  v20 = objc_alloc_init(UIViewController);
  [(UIWindow *)self->_presenterWindow setRootViewController:v20];

  [(UIWindow *)self->_presenterWindow makeKeyAndVisible];
  v21 = [(UIWindow *)self->_presenterWindow rootViewController];
  [v21 presentViewController:self->_privacySheetController animated:1 completion:0];
}

- (void)dismiss
{
  privacySheetController = self->_privacySheetController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37___UIDialogForAddingKeyboard_dismiss__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(UIViewController *)privacySheetController dismissViewControllerAnimated:1 completion:v3];
}

- (void)presentDialogForAddingKeyboard
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60___UIDialogForAddingKeyboard_presentDialogForAddingKeyboard__block_invoke;
  v2[3] = &unk_1E70F5DB8;
  v2[4] = self;
  [MEMORY[0x1E69D9560] presentDialogForType:1 withCompletionHandler:v2];
}

+ (void)presentDialogForAddingKeyboard
{
  v2 = presentDialogForAddingKeyboard___instance;
  if (!presentDialogForAddingKeyboard___instance)
  {
    v3 = objc_alloc_init(_UIDialogForAddingKeyboard);
    v4 = presentDialogForAddingKeyboard___instance;
    presentDialogForAddingKeyboard___instance = v3;

    v2 = presentDialogForAddingKeyboard___instance;
  }

  [v2 presentDialogForAddingKeyboard];
}

@end