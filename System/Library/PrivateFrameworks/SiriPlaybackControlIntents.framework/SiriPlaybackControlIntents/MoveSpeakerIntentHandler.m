@interface MoveSpeakerIntentHandler
- (void)confirmMoveSpeaker:(id)a3 completion:(id)a4;
@end

@implementation MoveSpeakerIntentHandler

- (void)confirmMoveSpeaker:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_268AA7F14(v7, v8, v6);
  _Block_release(v6);
}

@end