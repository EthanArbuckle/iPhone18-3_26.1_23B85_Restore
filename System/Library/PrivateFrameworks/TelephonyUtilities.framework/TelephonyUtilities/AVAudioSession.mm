@interface AVAudioSession
- (BOOL)setMuted:(BOOL)a3 error:(id *)a4;
- (void)setAudioSessionPropertiesWithProperties:(id)a3 completion:(id)a4;
@end

@implementation AVAudioSession

- (BOOL)setMuted:(BOOL)a3 error:(id *)a4
{
  v5 = self;
  sub_10003F668(a3);

  return 1;
}

- (void)setAudioSessionPropertiesWithProperties:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_100350868(v6, v7, v5);
  _Block_release(v5);
}

@end