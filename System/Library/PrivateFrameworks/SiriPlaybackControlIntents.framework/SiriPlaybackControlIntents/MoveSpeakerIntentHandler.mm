@interface MoveSpeakerIntentHandler
- (void)confirmMoveSpeaker:(id)speaker completion:(id)completion;
@end

@implementation MoveSpeakerIntentHandler

- (void)confirmMoveSpeaker:(id)speaker completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  speakerCopy = speaker;
  selfCopy = self;
  sub_268AA7F14(speakerCopy, selfCopy, v6);
  _Block_release(v6);
}

@end