@interface TTSAudioFormat
- (AVAudioFormat)avFormat;
- (AudioStreamBasicDescription)streamDescription;
- (BOOL)isEqual:(id)equal;
- (TTSAudioFormat)init;
- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)description;
- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)description channelLayoutTag:(unsigned int)tag;
- (unsigned)channelLayoutTag;
- (void)setChannelLayoutTag:(unsigned int)tag;
- (void)setStreamDescription:(AudioStreamBasicDescription *)description;
@end

@implementation TTSAudioFormat

- (AudioStreamBasicDescription)streamDescription
{
  v4 = (self + OBJC_IVAR___TTSAudioFormat_streamDescription);
  result = swift_beginAccess();
  *retstr = *v4;
  return result;
}

- (void)setStreamDescription:(AudioStreamBasicDescription *)description
{
  mSampleRate = description->mSampleRate;
  v4 = self + OBJC_IVAR___TTSAudioFormat_streamDescription;
  v5 = *&description->mBytesPerFrame;
  v6 = *&description->mFormatID;
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

- (void)setChannelLayoutTag:(unsigned int)tag
{
  v5 = OBJC_IVAR___TTSAudioFormat_channelLayoutTag;
  swift_beginAccess();
  *(&self->super.isa + v5) = tag;
}

- (AVAudioFormat)avFormat
{
  v6[5] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  [(TTSAudioFormat *)selfCopy streamDescription];
  initWithStreamDescription_ = [objc_allocWithZone(MEMORY[0x1E6958420]) initWithStreamDescription_];

  v4 = *MEMORY[0x1E69E9840];

  return initWithStreamDescription_;
}

- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)description
{
  v3 = self + OBJC_IVAR___TTSAudioFormat_streamDescription;
  v4 = *&description->mFormatID;
  v5 = *&description->mBytesPerFrame;
  *v3 = description->mSampleRate;
  *(v3 + 8) = v4;
  *(v3 + 24) = v5;
  *(&self->super.isa + OBJC_IVAR___TTSAudioFormat_channelLayoutTag) = 42;
  v7.receiver = self;
  v7.super_class = TTSAudioFormat;
  return [(TTSAudioFormat *)&v7 init];
}

- (TTSAudioFormat)initWithStreamDescription:(AudioStreamBasicDescription *)description channelLayoutTag:(unsigned int)tag
{
  v4 = self + OBJC_IVAR___TTSAudioFormat_streamDescription;
  v5 = *&description->mFormatID;
  v6 = *&description->mBytesPerFrame;
  *v4 = description->mSampleRate;
  *(v4 + 8) = v5;
  *(v4 + 24) = v6;
  *(&self->super.isa + OBJC_IVAR___TTSAudioFormat_channelLayoutTag) = tag;
  v8.receiver = self;
  v8.super_class = TTSAudioFormat;
  return [(TTSAudioFormat *)&v8 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A957CD58();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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