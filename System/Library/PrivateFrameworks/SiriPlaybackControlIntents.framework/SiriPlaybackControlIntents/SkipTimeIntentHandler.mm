@interface SkipTimeIntentHandler
- (void)handleSkipTime:(id)time completion:(id)completion;
@end

@implementation SkipTimeIntentHandler

- (void)handleSkipTime:(id)time completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  timeCopy = time;
  selfCopy = self;
  sub_26898C364();
}

@end