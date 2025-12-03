@interface SeekTimeIntentHandler
- (void)handleSeekTime:(id)time completion:(id)completion;
@end

@implementation SeekTimeIntentHandler

- (void)handleSeekTime:(id)time completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  timeCopy = time;
  selfCopy = self;
  sub_268B12C2C();
}

@end