@interface ObjCSwiftBridge
+ (void)bootstrapWithContext:(NSString *)a3 completionHandler:(id)a4;
- (_TtC8SPFinder15ObjCSwiftBridge)init;
@end

@implementation ObjCSwiftBridge

+ (void)bootstrapWithContext:(NSString *)a3 completionHandler:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6B6B0, &qword_2643CB2C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2643C92FC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643CB2D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643CB2E8;
  v14[5] = v13;
  v15 = a3;
  sub_2643C8524(0, 0, v9, &unk_2643CB2F8, v14);
}

- (_TtC8SPFinder15ObjCSwiftBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ObjCSwiftBridge();
  return [(ObjCSwiftBridge *)&v3 init];
}

@end