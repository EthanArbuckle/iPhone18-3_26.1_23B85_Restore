@interface VCSignposts
+ (VCSignposts)shared;
- (VCSignposts)init;
- (void)asrFinalResultReceived;
- (void)asrPartialResultReceived;
- (void)axFinalTextInsertion;
- (void)axPartialTextInsertion;
- (void)axPress;
- (void)finalCommandReceivedInUI;
- (void)partialCommandReceivedInUI;
- (void)synthesizedAudioInputFirstSample;
- (void)synthesizedAudioInputLastSample;
@end

@implementation VCSignposts

+ (VCSignposts)shared
{
  if (qword_280893E08 != -1)
  {
    swift_once();
  }

  v3 = qword_280895EF0;

  return v3;
}

- (void)synthesizedAudioInputFirstSample
{
  selfCopy = self;
  VCSignposts.synthesizedAudioInputFirstSample()();
}

- (void)synthesizedAudioInputLastSample
{
  selfCopy = self;
  VCSignposts.synthesizedAudioInputLastSample()();
}

- (void)asrPartialResultReceived
{
  selfCopy = self;
  VCSignposts.asrPartialResultReceived()();
}

- (void)asrFinalResultReceived
{
  selfCopy = self;
  VCSignposts.asrFinalResultReceived()();
}

- (void)partialCommandReceivedInUI
{
  selfCopy = self;
  VCSignposts.partialCommandReceivedInUI()();
}

- (void)finalCommandReceivedInUI
{
  selfCopy = self;
  VCSignposts.finalCommandReceivedInUI()();
}

- (void)axPartialTextInsertion
{
  selfCopy = self;
  VCSignposts.axPartialTextInsertion()();
}

- (void)axFinalTextInsertion
{
  selfCopy = self;
  VCSignposts.axFinalTextInsertion()();
}

- (void)axPress
{
  selfCopy = self;
  VCSignposts.axPress()();
}

- (VCSignposts)init
{
  v3 = (self + OBJC_IVAR___VCSignposts_sVCSignposter);
  v3[3] = sub_2723FE414();
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_2723FE404();
  v5.receiver = self;
  v5.super_class = VCSignposts;
  return [(VCSignposts *)&v5 init];
}

@end