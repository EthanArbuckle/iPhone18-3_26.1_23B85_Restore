@interface TVPlaybackErrorMessage
- (id)defaultAlert;
- (id)getLocalizedErrorMessageForItems:(id)a3 :(id)a4;
- (id)logger;
- (id)metricsRecorder;
- (void)fetchLocalizedErrorMessageForItems:(NSDictionary *)a3 :(NSError *)a4 completionHandler:(id)a5;
@end

@implementation TVPlaybackErrorMessage

- (id)logger
{
  v2 = *(self + 8);
  v5[4] = *(self + 7);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26145AD2C;
  v5[3] = &block_descriptor_34;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)metricsRecorder
{
  v2 = *(self + 10);
  v5[4] = *(self + 9);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26145AE54;
  v5[3] = &block_descriptor_31;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)defaultAlert
{
  v2 = *(self + 12);
  v5[4] = *(self + 11);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26145AF78;
  v5[3] = &block_descriptor_0;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)getLocalizedErrorMessageForItems:(id)a3 :(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
  v6 = sub_2614648E0();
  v8 = *(self + 9);
  v7 = *(self + 10);
  sub_26145D4CC(v27);
  v23 = v27[8];
  v24 = v27[9];
  v25 = v27[10];
  v26 = v27[11];
  v19 = v27[4];
  v20 = v27[5];
  v21 = v27[6];
  v22 = v27[7];
  v15 = v27[0];
  v16 = v27[1];
  v17 = v27[2];
  v18 = v27[3];
  v9 = a4;

  v10 = sub_26145D654(v6, &v15, [v9 code], 1);

  v8(v10);

  v12 = *(self + 12);
  v13 = (*(self + 11))(v11);

  return v13;
}

- (void)fetchLocalizedErrorMessageForItems:(NSDictionary *)a3 :(NSError *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_261464B40();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_261467AD8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_261467AE8;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;

  sub_26145CC00(0, 0, v13, &unk_261467AF8, v18);
}

@end