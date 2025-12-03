@interface UIKeyboardEmojiGenerationPresenter
+ (id)sharedInstance;
- (void)presentEmojiGenerationControllerWithInputString:(id)string;
@end

@implementation UIKeyboardEmojiGenerationPresenter

+ (id)sharedInstance
{
  if (qword_1ED4A0910 != -1)
  {
    dispatch_once(&qword_1ED4A0910, &__block_literal_global_515);
  }

  v3 = _MergedGlobals_1279;

  return v3;
}

void __52__UIKeyboardEmojiGenerationPresenter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardEmojiGenerationPresenter);
  v1 = _MergedGlobals_1279;
  _MergedGlobals_1279 = v0;
}

- (void)presentEmojiGenerationControllerWithInputString:(id)string
{
  stringCopy = string;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = qword_1ED4A0918;
  v15 = qword_1ED4A0918;
  if (!qword_1ED4A0918)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getSTKStickerRemoteSearchViewControllerClass_block_invoke;
    v11[3] = &unk_1E70F2F20;
    v11[4] = &v12;
    __getSTKStickerRemoteSearchViewControllerClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v6 = objc_alloc_init(v4);
  v7 = +[UIPeripheralHost sharedInstance];
  transformedContainerView = [v7 transformedContainerView];

  window = [transformedContainerView window];
  rootViewController = [window rootViewController];
  [rootViewController addChildViewController:v6];
  [v6 presentEmojiGenerationControllerWithInputString:stringCopy];
}

@end