@interface PKExtension(PKUIAdditions)
- (void)beginRemoteViewControllerExtensionServiceWithInputItems:()PKUIAdditions completion:;
@end

@implementation PKExtension(PKUIAdditions)

- (void)beginRemoteViewControllerExtensionServiceWithInputItems:()PKUIAdditions completion:
{
  v6 = a4;
  v7 = a3;
  provider = [self provider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__PKExtension_PKUIAdditions__beginRemoteViewControllerExtensionServiceWithInputItems_completion___block_invoke;
  v10[3] = &unk_1E801C7E0;
  v11 = v6;
  v9 = v6;
  [provider _beginRemoteViewControllerExtensionServiceWithExtension:self inputItems:v7 completion:v10];
}

@end