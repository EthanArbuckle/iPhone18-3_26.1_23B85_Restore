@interface CSDAVAudioClient
- (BOOL)setMuted:(BOOL)a3 error:(id *)a4;
- (void)setAudioSessionPropertiesWithProperties:(id)a3 completion:(id)a4;
@end

@implementation CSDAVAudioClient

- (BOOL)setMuted:(BOOL)a3 error:(id *)a4
{

  sub_1002BB2C4(a3);

  return 1;
}

- (void)setAudioSessionPropertiesWithProperties:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);

  sub_1002BB354(v6, self, v5);
  _Block_release(v5);
}

@end