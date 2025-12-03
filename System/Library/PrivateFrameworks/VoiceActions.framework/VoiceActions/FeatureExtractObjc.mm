@interface FeatureExtractObjc
- (FeatureExtractObjc)init;
- (id)audioForKeywordWithStartFrame:(int64_t)frame endFrame:(int64_t)endFrame actualEndFrame:(int64_t *)actualEndFrame;
- (id)saveAudioBufferToFileWithPcmBuffer:(id)buffer keyword:(id)keyword score:(id)score duration:(int)duration;
- (id)saveStandaloneDebugSamplesToFileWithDebugAudioSamples:(id)samples keyword:(id)keyword score:(id)score duration:(int)duration;
- (void)addCallbackForAcousticModelOutputAvailableWithCallback:(id)callback;
- (void)addFloatSamples:(const float *)samples count:(int64_t)count;
- (void)addSamples:(const signed __int16 *)samples count:(int64_t)count;
- (void)reset;
- (void)setCmvnMinWindowLengthWithCmvnMinWindowLength:(int64_t)length;
@end

@implementation FeatureExtractObjc

- (void)addCallbackForAcousticModelOutputAvailableWithCallback:(id)callback
{
  v4 = _Block_copy(callback);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v7 = *(&self->super.isa + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v8 = *&self->audioSampleIngestionBuffer[OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable];
  *v6 = sub_2722C30B8;
  v6[1] = v5;
  selfCopy = self;
  sub_272273524(v7);
}

- (void)setCmvnMinWindowLengthWithCmvnMinWindowLength:(int64_t)length
{
  v4 = *(&self->super.isa + OBJC_IVAR___FeatureExtractObjc_config);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  selfCopy = self;
  v7 = v4;
  v8 = v6();

  (*((*v5 & *v8) + 0xA8))(length);
}

- (void)reset
{
  selfCopy = self;
  sub_2722BA430();
}

- (id)audioForKeywordWithStartFrame:(int64_t)frame endFrame:(int64_t)endFrame actualEndFrame:(int64_t *)actualEndFrame
{
  selfCopy = self;
  v9 = sub_2722BA5DC(frame, endFrame, actualEndFrame);

  return v9;
}

- (void)addFloatSamples:(const float *)samples count:(int64_t)count
{
  selfCopy = self;
  sub_2722BB58C(samples, count);
}

- (void)addSamples:(const signed __int16 *)samples count:(int64_t)count
{
  selfCopy = self;
  sub_2722BB96C(samples, count);
}

- (id)saveAudioBufferToFileWithPcmBuffer:(id)buffer keyword:(id)keyword score:(id)score duration:(int)duration
{
  v9 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_27237782C();
  v15 = v14;
  v16 = sub_27237782C();
  v18 = v17;
  bufferCopy = buffer;
  selfCopy = self;
  sub_2722BC1D0(bufferCopy, v13, v15, v16, v18, duration, v12);

  v21 = sub_272376D5C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v12, 1, v21);
  v24 = 0;
  if (v23 != 1)
  {
    v25 = sub_272376CCC();
    (*(v22 + 8))(v12, v21);
    v24 = v25;
  }

  return v24;
}

- (id)saveStandaloneDebugSamplesToFileWithDebugAudioSamples:(id)samples keyword:(id)keyword score:(id)score duration:(int)duration
{
  v8 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_272377AFC();
  v13 = sub_27237782C();
  v15 = v14;
  v16 = sub_27237782C();
  v18 = v17;
  selfCopy = self;
  sub_2722BD170(v12, v13, v15, v16, v18, duration, v11);

  v20 = sub_272376D5C();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v11, 1, v20);
  v23 = 0;
  if (v22 != 1)
  {
    v24 = sub_272376CCC();
    (*(v21 + 8))(v11, v20);
    v23 = v24;
  }

  return v23;
}

- (FeatureExtractObjc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end