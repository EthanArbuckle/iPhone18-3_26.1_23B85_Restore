@interface StickersDaemon
- (_TtC9stickersd14StickersDaemon)init;
- (void)runOn:(id)a3;
@end

@implementation StickersDaemon

- (void)runOn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006904(v4);
}

- (_TtC9stickersd14StickersDaemon)init
{
  Logger.init(subsystem:category:)();
  *(&self->super.isa + OBJC_IVAR____TtC9stickersd14StickersDaemon_services) = &_swiftEmptyArrayStorage;
  v4.receiver = self;
  v4.super_class = type metadata accessor for StickersDaemon();
  return [(StickersDaemon *)&v4 init];
}

@end