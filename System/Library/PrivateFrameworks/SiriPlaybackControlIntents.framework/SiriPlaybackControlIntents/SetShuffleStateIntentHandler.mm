@interface SetShuffleStateIntentHandler
- (void)handleSetShuffleState:(id)state completion:(id)completion;
@end

@implementation SetShuffleStateIntentHandler

- (void)handleSetShuffleState:(id)state completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  stateCopy = state;
  selfCopy = self;
  sub_2689F3BA0();
}

@end