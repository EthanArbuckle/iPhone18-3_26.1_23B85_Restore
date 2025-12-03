@interface PreviewPlayerDataProvider
- (_TtC9SeymourUI25PreviewPlayerDataProvider)init;
- (void)playerFinished:(id)finished;
@end

@implementation PreviewPlayerDataProvider

- (void)playerFinished:(id)finished
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  v8 = self + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_display;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 40);
    selfCopy = self;
    v11(ObjectType, v9);

    swift_unknownObjectRelease();
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC9SeymourUI25PreviewPlayerDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end