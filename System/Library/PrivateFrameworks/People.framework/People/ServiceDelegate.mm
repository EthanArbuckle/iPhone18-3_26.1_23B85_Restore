@interface ServiceDelegate
- (void)sendMessageWith:(id)with completion:(id)completion;
@end

@implementation ServiceDelegate

- (void)sendMessageWith:(id)with completion:(id)completion
{
  v5 = _Block_copy(completion);
  withCopy = with;

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_10002B508(v7, v9, sub_10002C460, v10);

  sub_10002C290(v7, v9);
}

@end