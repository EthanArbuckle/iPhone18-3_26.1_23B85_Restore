@interface SearchUITTSUtilities
+ (id)ttsAudioDataWithSfAudioData:(id)a3;
+ (void)playWithAudioData:(SiriTTSAudioData *)a3 completionHandler:(id)a4;
+ (void)stopWithCompletionHandler:(id)a3;
- (_TtC8SearchUI20SearchUITTSUtilities)init;
@end

@implementation SearchUITTSUtilities

+ (id)ttsAudioDataWithSfAudioData:(id)a3
{
  v3 = a3;
  v4 = sub_1DA2558E8(v3);

  return v4;
}

+ (void)playWithAudioData:(SiriTTSAudioData *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_1DA25F3C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DA275DD8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DA275DE0;
  v14[5] = v13;
  v15 = a3;
  sub_1DA2599D4(0, 0, v9, &unk_1DA275DE8, v14);
}

+ (void)stopWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_1DA25F3C4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DA275DC8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DA275AD0;
  v12[5] = v11;
  sub_1DA2599D4(0, 0, v7, &unk_1DA275860, v12);
}

- (_TtC8SearchUI20SearchUITTSUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUITTSUtilities();
  return [(SearchUITTSUtilities *)&v3 init];
}

@end