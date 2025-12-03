@interface IdentityRegUIManager
- (void)registerWithCompletion:(id)completion;
@end

@implementation IdentityRegUIManager

- (void)registerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(*self + 312);

  v8 = v6(v7);
  if (v8)
  {
    v9 = v8;
    sub_26135934C(sub_26127DF5C, v5);
  }
}

@end