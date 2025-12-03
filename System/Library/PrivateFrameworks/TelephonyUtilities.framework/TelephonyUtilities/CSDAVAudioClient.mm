@interface CSDAVAudioClient
- (BOOL)setMuted:(BOOL)muted error:(id *)error;
- (void)setAudioSessionPropertiesWithProperties:(id)properties completion:(id)completion;
@end

@implementation CSDAVAudioClient

- (BOOL)setMuted:(BOOL)muted error:(id *)error
{

  sub_1002BB2C4(muted);

  return 1;
}

- (void)setAudioSessionPropertiesWithProperties:(id)properties completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);

  sub_1002BB354(v6, self, v5);
  _Block_release(v5);
}

@end