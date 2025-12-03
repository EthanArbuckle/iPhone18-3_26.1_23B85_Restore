@interface PASUIExtensionHostProxy.InfoProvider
- (void)helloWithCompletion:(id)completion;
@end

@implementation PASUIExtensionHostProxy.InfoProvider

- (void)helloWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  _Block_copy(v3);

  sub_261134AE0(v3);
  _Block_release(v3);
  _Block_release(v3);
}

@end