@interface XPCService
- (void)transport:(unsigned int)a3 completionHandler:(id)a4;
- (void)transport:(unsigned int)a3 data:(NSData *)a4 completionHandler:(id)a5;
@end

@implementation XPCService

- (void)transport:(unsigned int)a3 completionHandler:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F78, &qword_270FFA558) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_270FF8B58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_270FFA5B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_270FFA5B8;
  v14[5] = v13;

  sub_270FEB920(0, 0, v9, &unk_270FFA5C0, v14);
}

- (void)transport:(unsigned int)a3 data:(NSData *)a4 completionHandler:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F78, &qword_270FFA558) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_270FF8B58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_270FFA568;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_270FFA578;
  v16[5] = v15;
  v17 = a4;

  sub_270FEB920(0, 0, v11, &unk_270FFA588, v16);
}

@end