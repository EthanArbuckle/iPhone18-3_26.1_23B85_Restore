@interface UIUserNotificationCategoryFromUNNotificationCategory
@end

@implementation UIUserNotificationCategoryFromUNNotificationCategory

UIMutableUserNotificationAction *___UIUserNotificationCategoryFromUNNotificationCategory_block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(UIMutableUserNotificationAction);
  v4 = [v2 identifier];
  [(UIUserNotificationAction *)v3 setIdentifier:v4];

  v5 = [v2 title];
  [(UIUserNotificationAction *)v3 setTitle:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIUserNotificationAction *)v3 setBehavior:1];
    v6 = [v2 textInputButtonTitle];
    v7 = v6;
    if (v6)
    {
      v10 = @"UIUserNotificationTextInputActionButtonTitleKey";
      v11[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [(UIUserNotificationAction *)v3 setParameters:v8];
    }
  }

  else
  {
    [(UIUserNotificationAction *)v3 setBehavior:0];
  }

  -[UIUserNotificationAction setActivationMode:](v3, "setActivationMode:", ~([v2 options] >> 2) & 1);
  -[UIUserNotificationAction setAuthenticationRequired:](v3, "setAuthenticationRequired:", [v2 options] & 1);
  -[UIUserNotificationAction setDestructive:](v3, "setDestructive:", ([v2 options] >> 1) & 1);

  return v3;
}

@end