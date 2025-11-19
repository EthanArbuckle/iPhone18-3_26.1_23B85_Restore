@interface SUScriptFamilySetupViewController
- (id)newNativeViewController;
@end

@implementation SUScriptFamilySetupViewController

- (id)newNativeViewController
{
  v2 = objc_alloc_init(ISWeakLinkedClassForString());
  v3 = [objc_alloc(ISWeakLinkedClassForString()) initWithAccount:objc_msgSend(v2 store:{"aa_primaryAppleAccount"), v2}];

  v4 = objc_alloc_init(SUScriptFamilySetupDelegate);
  objc_setAssociatedObject(v3, "com.apple.iTunesStoreUI.SUScriptFamilySetupDelegate", v4, 1);
  [v3 setDelegate:v4];

  return v3;
}

@end