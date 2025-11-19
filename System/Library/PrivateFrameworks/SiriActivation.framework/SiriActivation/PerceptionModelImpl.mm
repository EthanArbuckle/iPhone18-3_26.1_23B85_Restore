@interface PerceptionModelImpl
- (void)performQuery:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation PerceptionModelImpl

- (void)performQuery:(int64_t)a3 completionHandler:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2989A8, &qword_1C818FE08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1C81889FC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C818FE18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C818FE28;
  v14[5] = v13;

  sub_1C8184A70(0, 0, v9, &unk_1C818FE38, v14);
}

@end