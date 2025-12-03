@interface NSExtension(UIViewControllerAdditions)
- (id)__UIKit_upcall_icons;
- (void)_instantiateViewControllerWithInputItems:()UIViewControllerAdditions asAccessory:traitCollection:listenerEndpoint:connectionHandler:;
@end

@implementation NSExtension(UIViewControllerAdditions)

- (void)_instantiateViewControllerWithInputItems:()UIViewControllerAdditions asAccessory:traitCollection:listenerEndpoint:connectionHandler:
{
  v13 = a5;
  v14 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __146__NSExtension_UIViewControllerAdditions___instantiateViewControllerWithInputItems_asAccessory_traitCollection_listenerEndpoint_connectionHandler___block_invoke;
  aBlock[3] = &unk_1E7106FD8;
  v24 = a4;
  aBlock[4] = self;
  v21 = v13;
  v22 = v14;
  v23 = a2;
  v15 = v14;
  v16 = v13;
  v17 = a6;
  v18 = a3;
  v19 = _Block_copy(aBlock);
  [self beginExtensionRequestWithOptions:2 inputItems:v18 listenerEndpoint:v17 completion:v19];
}

- (id)__UIKit_upcall_icons
{
  v2 = objc_getAssociatedObject(self, &kNSExtensionIconsKey);
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = MEMORY[0x1E6963678];
    _plugIn = [self _plugIn];
    v5 = [_plugIn valueForKey:@"uuid"];
    v6 = [v3 pluginKitProxyForUUID:v5];

    containingBundle = [v6 containingBundle];
    v8 = containingBundle;
    if (containingBundle)
    {
      bundleIdentifier = [containingBundle bundleIdentifier];
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      v11 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:10 scale:?];

      if (v11)
      {
        [v2 addObject:v11];
      }
    }

    objc_setAssociatedObject(self, &kNSExtensionIconsKey, v2, 1);
  }

  return v2;
}

@end