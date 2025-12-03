@interface AudioCaptureConfig
- (AudioCaptureConfig)init;
- (NSString)description;
- (int64_t)leftOfStartFrameOffset;
- (int64_t)rightOfEndFrameOffset;
- (void)setLeftOfStartFrameOffset:(int64_t)offset;
- (void)setRightOfEndFrameOffset:(int64_t)offset;
@end

@implementation AudioCaptureConfig

- (int64_t)leftOfStartFrameOffset
{
  v3 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLeftOfStartFrameOffset:(int64_t)offset
{
  v5 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  swift_beginAccess();
  *(&self->super.isa + v5) = offset;
}

- (int64_t)rightOfEndFrameOffset
{
  v3 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRightOfEndFrameOffset:(int64_t)offset
{
  v5 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  swift_beginAccess();
  *(&self->super.isa + v5) = offset;
}

- (AudioCaptureConfig)init
{
  *(&self->super.isa + OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset) = 1;
  *(&self->super.isa + OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset) = 8;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioCapture();
  return [(AudioCaptureConfig *)&v3 init];
}

- (NSString)description
{
  v3 = sub_27237788C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  selfCopy = self;
  sub_272376B2C();
  type metadata accessor for AudioCapture();
  sub_27227DA80(&qword_280882318, v9, type metadata accessor for AudioCapture);
  v10 = sub_272376B1C();
  v12 = v11;

  sub_27237787C();
  sub_27237784C();
  if (v13)
  {
    sub_2721F05C8(v10, v12);

    v14 = sub_2723777FC();

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

@end