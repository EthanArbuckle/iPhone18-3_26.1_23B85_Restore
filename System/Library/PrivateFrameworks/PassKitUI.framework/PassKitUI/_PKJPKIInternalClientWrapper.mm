@interface _PKJPKIInternalClientWrapper
+ (void)instantiateWithPass:(PKPass *)a3 completionHandler:(id)a4;
- (_PKJPKIInternalClientWrapper)init;
@end

@implementation _PKJPKIInternalClientWrapper

+ (void)instantiateWithPass:(PKPass *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_1BE0528D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1BE0FEDA0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BE107FA0;
  v15[5] = v14;
  v16 = a3;
  sub_1BD992D04(0, 0, v10, &unk_1BE0C7F30, v15);
}

- (_PKJPKIInternalClientWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end