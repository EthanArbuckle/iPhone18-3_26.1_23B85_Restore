@interface SAModelInfo
+ (void)gatherModelInfoWithStartDate:(NSDate *)a3 endDate:(NSDate *)a4 completionHandler:(id)a5;
- (_TtC8SAHelper11SAModelInfo)init;
@end

@implementation SAModelInfo

+ (void)gatherModelInfoWithStartDate:(NSDate *)a3 endDate:(NSDate *)a4 completionHandler:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_2647EF344();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2647EFA58;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2647EFA68;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  sub_2647E78DC(0, 0, v11, &unk_2647EFA78, v16);
}

- (_TtC8SAHelper11SAModelInfo)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SAModelInfo();
  return [(SAModelInfo *)&v3 init];
}

@end