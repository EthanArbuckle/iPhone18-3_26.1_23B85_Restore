@interface ResumeMediaIntentHandler
- (void)handleResumeMedia:(id)media completion:(id)completion;
@end

@implementation ResumeMediaIntentHandler

- (void)handleResumeMedia:(id)media completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  mediaCopy = media;
  selfCopy = self;
  sub_2689D2690();
}

@end