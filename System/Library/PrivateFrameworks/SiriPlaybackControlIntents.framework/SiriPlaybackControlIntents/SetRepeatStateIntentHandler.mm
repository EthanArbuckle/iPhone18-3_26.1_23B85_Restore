@interface SetRepeatStateIntentHandler
- (void)handleSetRepeatState:(id)state completion:(id)completion;
@end

@implementation SetRepeatStateIntentHandler

- (void)handleSetRepeatState:(id)state completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  stateCopy = state;
  selfCopy = self;
  sub_268966070();
}

@end