@interface SASelfLogger
- (SASelfLogger)init;
- (id)collectVMCPUStatsWithStage:(int64_t)a3 requestId:(id)a4;
- (id)getSiriRequestUUIDFor:(id)a3;
- (void)emitMWTCheckPointWithMwtCheckpoint:(int64_t)a3 requestId:(id)a4 timeStamp:(unint64_t)a5;
- (void)emitMWTMusicMetadata:(id)a3 requestId:(id)a4;
- (void)emitVMCPUStatsWithVmCpuStatsData:(id)a3;
@end

@implementation SASelfLogger

- (void)emitMWTCheckPointWithMwtCheckpoint:(int64_t)a3 requestId:(id)a4 timeStamp:(unint64_t)a5
{
  v8 = sub_2664DE4A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  v13 = self;
  v14 = sub_266475DC8(a3, v12);
  if (v14)
  {
    v15 = v14;
    [(*((*MEMORY[0x277D85000] & v13->super.isa) + 0x50))() emitMessage:v14 timestamp:a5];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
}

- (id)getSiriRequestUUIDFor:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_2664E02C8();
  sub_2664DE448();

  v7 = sub_2664DE4A8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2664DE478();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (void)emitMWTMusicMetadata:(id)a3 requestId:(id)a4
{
  v6 = sub_2664DE4A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  v11 = a3;
  v12 = self;
  sub_26646C500(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)emitVMCPUStatsWithVmCpuStatsData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_2664DE2F8();
  v7 = v6;

  sub_26646DD6C();
  sub_266348774(v5, v7);
}

- (id)collectVMCPUStatsWithStage:(int64_t)a3 requestId:(id)a4
{
  v5 = sub_2664DE4A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  v10 = sub_2664765F8(a3, v9);
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v13 = 0;
  if (v12 >> 60 != 15)
  {
    v14 = sub_2664DE2E8();
    sub_2662B79A8(v10, v12);
    v13 = v14;
  }

  return v13;
}

- (SASelfLogger)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriAudioSelfLogger();
  return [(SASelfLogger *)&v3 init];
}

@end