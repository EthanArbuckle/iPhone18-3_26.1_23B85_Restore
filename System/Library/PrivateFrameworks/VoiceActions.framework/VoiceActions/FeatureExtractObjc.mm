@interface FeatureExtractObjc
- (FeatureExtractObjc)init;
- (id)audioForKeywordWithStartFrame:(int64_t)a3 endFrame:(int64_t)a4 actualEndFrame:(int64_t *)a5;
- (id)saveAudioBufferToFileWithPcmBuffer:(id)a3 keyword:(id)a4 score:(id)a5 duration:(int)a6;
- (id)saveStandaloneDebugSamplesToFileWithDebugAudioSamples:(id)a3 keyword:(id)a4 score:(id)a5 duration:(int)a6;
- (void)addCallbackForAcousticModelOutputAvailableWithCallback:(id)a3;
- (void)addFloatSamples:(const float *)a3 count:(int64_t)a4;
- (void)addSamples:(const signed __int16 *)a3 count:(int64_t)a4;
- (void)reset;
- (void)setCmvnMinWindowLengthWithCmvnMinWindowLength:(int64_t)a3;
@end

@implementation FeatureExtractObjc

- (void)addCallbackForAcousticModelOutputAvailableWithCallback:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v7 = *(&self->super.isa + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v8 = *&self->audioSampleIngestionBuffer[OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable];
  *v6 = sub_2722C30B8;
  v6[1] = v5;
  v9 = self;
  sub_272273524(v7);
}

- (void)setCmvnMinWindowLengthWithCmvnMinWindowLength:(int64_t)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___FeatureExtractObjc_config);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  v9 = self;
  v7 = v4;
  v8 = v6();

  (*((*v5 & *v8) + 0xA8))(a3);
}

- (void)reset
{
  v2 = self;
  sub_2722BA430();
}

- (id)audioForKeywordWithStartFrame:(int64_t)a3 endFrame:(int64_t)a4 actualEndFrame:(int64_t *)a5
{
  v8 = self;
  v9 = sub_2722BA5DC(a3, a4, a5);

  return v9;
}

- (void)addFloatSamples:(const float *)a3 count:(int64_t)a4
{
  v6 = self;
  sub_2722BB58C(a3, a4);
}

- (void)addSamples:(const signed __int16 *)a3 count:(int64_t)a4
{
  v6 = self;
  sub_2722BB96C(a3, a4);
}

- (id)saveAudioBufferToFileWithPcmBuffer:(id)a3 keyword:(id)a4 score:(id)a5 duration:(int)a6
{
  v9 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_27237782C();
  v15 = v14;
  v16 = sub_27237782C();
  v18 = v17;
  v19 = a3;
  v20 = self;
  sub_2722BC1D0(v19, v13, v15, v16, v18, a6, v12);

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

- (id)saveStandaloneDebugSamplesToFileWithDebugAudioSamples:(id)a3 keyword:(id)a4 score:(id)a5 duration:(int)a6
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
  v19 = self;
  sub_2722BD170(v12, v13, v15, v16, v18, a6, v11);

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