@interface TPSTipKitContentManager
+ (void)updateContentWithMeta:(NSDictionary *)a3 documents:(NSDictionary *)a4 clientConditions:(NSSet *)a5 completionHandler:(id)a6;
- (TPSTipKitContentManager)init;
@end

@implementation TPSTipKitContentManager

+ (void)updateContentWithMeta:(NSDictionary *)a3 documents:(NSDictionary *)a4 clientConditions:(NSSet *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
  v17 = sub_232E016B0();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_232E08258;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_232E07ED0;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_232DF3F0C(0, 0, v14, &unk_232E07040, v19);
}

- (TPSTipKitContentManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TPSTipKitContentManager *)&v3 init];
}

@end