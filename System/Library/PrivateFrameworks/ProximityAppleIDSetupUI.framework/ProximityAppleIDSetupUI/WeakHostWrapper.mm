@interface WeakHostWrapper
- (void)extensionDidFinishWith:(id)with context:(id)context completion:(id)completion;
- (void)promptForFlowCancelWithCompletion:(id)completion;
@end

@implementation WeakHostWrapper

- (void)extensionDidFinishWith:(id)with context:(id)context completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  withCopy = with;
  contextCopy = context;

  sub_26114BB70(withCopy, contextCopy, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)promptForFlowCancelWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  _Block_copy(v3);

  sub_26114BD20(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

@end