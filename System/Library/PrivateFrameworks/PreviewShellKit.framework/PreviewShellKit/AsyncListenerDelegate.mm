@interface AsyncListenerDelegate
- (_TtC15PreviewShellKit21AsyncListenerDelegate)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation AsyncListenerDelegate

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_25F17932C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = connection;
  v13[6] = context;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_25F0CD9E8(0, 0, v11, &unk_25F17C928, v13);
}

- (_TtC15PreviewShellKit21AsyncListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end