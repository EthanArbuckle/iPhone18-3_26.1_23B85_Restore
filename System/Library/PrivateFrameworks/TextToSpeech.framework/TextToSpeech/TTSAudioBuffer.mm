@interface TTSAudioBuffer
- (AVAudioPCMBuffer)avBuffer;
- (TTSAudioBuffer)init;
- (TTSAudioBuffer)initWithFormat:(id)format frameCapacity:(unsigned int)capacity;
- (unsigned)frameLength;
- (void)setFrameLength:(unsigned int)length;
@end

@implementation TTSAudioBuffer

- (unsigned)frameLength
{
  v3 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFrameLength:(unsigned int)length
{
  v5 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  *(&self->super.isa + v5) = length;
}

- (TTSAudioBuffer)initWithFormat:(id)format frameCapacity:(unsigned int)capacity
{
  formatCopy = format;
  v6 = sub_1A938451C(formatCopy, capacity);

  return v6;
}

- (AVAudioPCMBuffer)avBuffer
{
  selfCopy = self;
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