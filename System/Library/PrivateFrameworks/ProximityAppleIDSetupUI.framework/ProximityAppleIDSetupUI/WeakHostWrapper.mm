@interface WeakHostWrapper
- (void)extensionDidFinishWith:(id)a3 context:(id)a4 completion:(id)a5;
- (void)promptForFlowCancelWithCompletion:(id)a3;
@end

@implementation WeakHostWrapper

- (void)extensionDidFinishWith:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;

  sub_26114BB70(v9, v10, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)promptForFlowCancelWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_26114BD20(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

@end