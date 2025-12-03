@interface CSDVoucherManagerImpl
- (void)sign:(id)sign as:(id)as completion:(id)completion;
- (void)verify:(id)verify completion:(id)completion;
@end

@implementation CSDVoucherManagerImpl

- (void)sign:(id)sign as:(id)as completion:(id)completion
{
  v8 = _Block_copy(completion);
  signCopy = sign;
  asCopy = as;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  _Block_copy(v8);
  sub_10036C594(v11, v13, asCopy, selfCopy, v8);
  _Block_release(v8);
  sub_100049B14(v11, v13);
}

- (void)verify:(id)verify completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  verifyCopy = verify;
  selfCopy = self;
  sub_10036D7B0(verifyCopy, selfCopy, v6);
  _Block_release(v6);
}

@end