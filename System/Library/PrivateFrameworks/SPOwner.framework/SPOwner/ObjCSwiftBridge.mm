@interface ObjCSwiftBridge
+ (void)bootstrapWithContext:(NSString *)a3 completionHandler:(id)a4;
- (_TtC7SPOwner15ObjCSwiftBridge)init;
@end

@implementation ObjCSwiftBridge

+ (void)bootstrapWithContext:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB58, &qword_264459768);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_26444702C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_264459778;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264459788;
  v15[5] = v14;
  v16 = a3;
  sub_264443EAC(0, 0, v10, &unk_264459798, v15);
}

- (_TtC7SPOwner15ObjCSwiftBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ObjCSwiftBridge();
  return [(ObjCSwiftBridge *)&v3 init];
}

@end