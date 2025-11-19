@interface _UISceneKeyValueStorageComponent
- (_TtC5UIKit32_UISceneKeyValueStorageComponent)init;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneKeyValueStorageComponent

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1890F6C94;
  *(v7 + 24) = v6;
  v11[4] = sub_1890F6CF4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1890F616C;
  v11[3] = &block_descriptor_62_3;
  v8 = _Block_copy(v11);
  v9 = self;
  swift_unknownObjectRetain();
  v10 = a4;

  [v10 inspectStorage_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();
  swift_unknownObjectRelease();

  if (v8)
  {
    __break(1u);
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1890F6C80;
  *(v7 + 24) = v6;
  v11[4] = sub_188C3B270;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1890F616C;
  v11[3] = &block_descriptor_46_0;
  v8 = _Block_copy(v11);
  v9 = self;
  swift_unknownObjectRetain();
  v10 = a4;

  [v10 inspectStorage_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();
  swift_unknownObjectRelease();

  if (v8)
  {
    __break(1u);
  }
}

- (_TtC5UIKit32_UISceneKeyValueStorageComponent)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___hostInterface) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___clientInterface) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UISceneKeyValueStorageComponent();
  return [(_UISceneKeyValueStorageComponent *)&v3 init];
}

@end