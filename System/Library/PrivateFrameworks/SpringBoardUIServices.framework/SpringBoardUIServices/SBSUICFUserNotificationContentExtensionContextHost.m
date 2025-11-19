@interface SBSUICFUserNotificationContentExtensionContextHost
@end

@implementation SBSUICFUserNotificationContentExtensionContextHost

void __81___SBSUICFUserNotificationContentExtensionContextHost__allowedItemPayloadClasses__block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:7];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9}];
  v3 = _allowedItemPayloadClasses_allowedItemPayloadClasses;
  _allowedItemPayloadClasses_allowedItemPayloadClasses = v2;
}

@end