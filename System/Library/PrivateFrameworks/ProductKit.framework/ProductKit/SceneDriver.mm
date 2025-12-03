@interface SceneDriver
- (_TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver)init;
- (void)handlePlayerItemFinished:(id)finished;
- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time;
@end

@implementation SceneDriver

- (void)handlePlayerItemFinished:(id)finished
{
  v4 = sub_260E68724();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68704();
  selfCopy = self;
  sub_260E132BC();

  (*(v5 + 8))(v8, v4);
}

- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time
{
  swift_unknownObjectRetain();
  sceneCopy = scene;
  selfCopy = self;
  sub_260E148F4(renderer);
  swift_unknownObjectRelease();
}

- (_TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end