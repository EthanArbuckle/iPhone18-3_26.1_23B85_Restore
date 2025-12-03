@interface SkipContentIntentHandler
- (void)handleSkipContent:(id)content completion:(id)completion;
@end

@implementation SkipContentIntentHandler

- (void)handleSkipContent:(id)content completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  contentCopy = content;
  selfCopy = self;
  sub_26895480C();
}

@end