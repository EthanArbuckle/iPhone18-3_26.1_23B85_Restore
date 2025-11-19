@interface TTSAudioFormat
- (AVAudioFormat)avFormat;
- (AudioStreamBasicDescription)streamDescription;
- (BOOL)isEqual:(id)a3;
- (TTSAudioFormat)init;
- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)a3;
- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)a3 channelLayoutTag:(unsigned int)a4;
- (unsigned)channelLayoutTag;
- (void)setChannelLayoutTag:(unsigned int)a3;
- (void)setStreamDescription:(AudioStreamBasicDescription *)a3;
@end

@implementation TTSAudioFormat

- (AudioStreamBasicDescription)streamDescription
{
  v4 = (self + OBJC_IVAR___TTSAudioFormat_streamDescription);
  result = swift_beginAccess();
  *retstr = *v4;
  return result;
}

- (void)setStreamDescription:(AudioStreamBasicDescription *)a3
{
  mSampleRate = a3->mSampleRate;
  v4 = self + OBJC_IVAR___TTSAudioFormat_streamDescription;
  v5 = *&a3->mBytesPerFrame;
  v6 = *&a3->mFormatID;
  swift_beginAccess();
  *v4 = mSampleRate;
  *(v4 + 8) = v6;
  *(v4 + 24) = v5;
}

- (unsigned)channelLayoutTag
{
  v3 = OBJC_IVAR___TTSAudioFormat_channelLayoutTag;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setChannelLayoutTag:(unsigned int)a3
{
  v5 = OBJC_IVAR___TTSAudioFormat_channelLayoutTag;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (AVAudioFormat)avFormat
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = self;
  [(TTSAudioFormat *)v2 streamDescription];
  v3 = [objc_allocWithZone(MEMORY[0x1E6958420]) initWithStreamDescription_];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)a3
{
  v3 = self + OBJC_IVAR___TTSAudioFormat_streamDescription;
  v4 = *&a3->mFormatID;
  v5 = *&a3->mBytesPerFrame;
  *v3 = a3->mSampleRate;
  *(v3 + 8) = v4;
  *(v3 + 24) = v5;
  *(&self->super.isa + OBJC_IVAR___TTSAudioFormat_channelLayoutTag) = 42;
  v7.receiver = self;
  v7.super_class = TTSAudioFormat;
  return [(TTSAudioFormat *)&v7 init];
}

- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)a3 channelLayoutTag:(unsigned int)a4
{
  v4 = self + OBJC_IVAR___TTSAudioFormat_streamDescription;
  v5 = *&a3->mFormatID;
  v6 = *&a3->mBytesPerFrame;
  *v4 = a3->mSampleRate;
  *(v4 + 8) = v5;
  *(v4 + 24) = v6;
  *(&self->super.isa + OBJC_IVAR___TTSAudioFormat_channelLayoutTag) = a4;
  v8.receiver = self;
  v8.super_class = TTSAudioFormat;
  return [(TTSAudioFormat *)&v8 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A957CD58();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = TTSAudioFormat.isEqual(_:)(v8);

  sub_1A93929C4(v8);
  return v6;
}

- (TTSAudioFormat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end