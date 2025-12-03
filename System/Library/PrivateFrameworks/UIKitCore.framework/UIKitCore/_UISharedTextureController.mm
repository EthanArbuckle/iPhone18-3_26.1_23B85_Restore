@interface _UISharedTextureController
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController)init;
- (void)dealloc;
@end

@implementation _UISharedTextureController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate] = 0;
  swift_unknownObjectWeakAssign();
  selfCopy = self;
  sub_188DED0E8();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(_UISharedTextureController *)&v5 dealloc];
}

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end