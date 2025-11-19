@interface TTSAudioBuffer
- (AVAudioPCMBuffer)avBuffer;
- (TTSAudioBuffer)init;
- (TTSAudioBuffer)initWithFormat:(id)a3 frameCapacity:(unsigned int)a4;
- (unsigned)frameLength;
- (void)setFrameLength:(unsigned int)a3;
@end

@implementation TTSAudioBuffer

- (unsigned)frameLength
{
  v3 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFrameLength:(unsigned int)a3
{
  v5 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (TTSAudioBuffer)initWithFormat:(id)a3 frameCapacity:(unsigned int)a4
{
  v5 = a3;
  v6 = sub_1A938451C(v5, a4);

  return v6;
}

- (AVAudioPCMBuffer)avBuffer
{
  v2 = self;
  sub_1A9383E18();
  v4 = v3;

  return v4;
}

- (TTSAudioBuffer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end