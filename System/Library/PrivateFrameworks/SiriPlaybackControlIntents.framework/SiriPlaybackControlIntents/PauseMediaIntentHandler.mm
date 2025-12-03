@interface PauseMediaIntentHandler
- (void)handlePauseMedia:(id)media completion:(id)completion;
@end

@implementation PauseMediaIntentHandler

- (void)handlePauseMedia:(id)media completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  mediaCopy = media;
  selfCopy = self;
  sub_268AEE8D8();
}

@end