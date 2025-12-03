@interface AVAudioSession
- (BOOL)setMuted:(BOOL)muted error:(id *)error;
- (void)setAudioSessionPropertiesWithProperties:(id)properties completion:(id)completion;
@end

@implementation AVAudioSession

- (BOOL)setMuted:(BOOL)muted error:(id *)error
{
  selfCopy = self;
  sub_10003F668(muted);

  return 1;
}

- (void)setAudioSessionPropertiesWithProperties:(id)properties completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_100350868(v6, selfCopy, v5);
  _Block_release(v5);
}

@end