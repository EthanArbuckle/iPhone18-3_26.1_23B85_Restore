@interface ISDialog(SUDialogAdditions)
+ (id)ITunesStoreNotAvailableDialog;
@end

@implementation ISDialog(SUDialogAdditions)

+ (id)ITunesStoreNotAvailableDialog
{
  v1 = objc_alloc_init(self);
  [v1 setButtons:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E69E4758], "buttonWithTitle:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OK", &stru_1F41B3660, 0)))}];
  [v1 setMessage:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "localizedStringForKey:value:table:", @"NO_STORE_SUPPORTED_ALERT_BODY", &stru_1F41B3660, 0)}];
  [v1 setTitle:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "localizedStringForKey:value:table:", @"NO_STORE_SUPPORTED_ALERT_TITLE", &stru_1F41B3660, 0)}];

  return v1;
}

@end