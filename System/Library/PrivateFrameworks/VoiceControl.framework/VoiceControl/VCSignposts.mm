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
  v2 = self;
  VCSignposts.synthesizedAudioInputFirstSample()();
}

- (void)synthesizedAudioInputLastSample
{
  v2 = self;
  VCSignposts.synthesizedAudioInputLastSample()();
}

- (void)asrPartialResultReceived
{
  v2 = self;
  VCSignposts.asrPartialResultReceived()();
}

- (void)asrFinalResultReceived
{
  v2 = self;
  VCSignposts.asrFinalResultReceived()();
}

- (void)partialCommandReceivedInUI
{
  v2 = self;
  VCSignposts.partialCommandReceivedInUI()();
}

- (void)finalCommandReceivedInUI
{
  v2 = self;
  VCSignposts.finalCommandReceivedInUI()();
}

- (void)axPartialTextInsertion
{
  v2 = self;
  VCSignposts.axPartialTextInsertion()();
}

- (void)axFinalTextInsertion
{
  v2 = self;
  VCSignposts.axFinalTextInsertion()();
}

- (void)axPress
{
  v2 = self;
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