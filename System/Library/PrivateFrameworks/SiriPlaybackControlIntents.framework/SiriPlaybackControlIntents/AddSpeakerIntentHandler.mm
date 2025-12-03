@interface AddSpeakerIntentHandler
- (void)confirmAddSpeaker:(id)speaker completion:(id)completion;
@end

@implementation AddSpeakerIntentHandler

- (void)confirmAddSpeaker:(id)speaker completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  speakerCopy = speaker;
  selfCopy = self;
  sub_268995E2C(speakerCopy, selfCopy, v6);
  _Block_release(v6);
}

@end