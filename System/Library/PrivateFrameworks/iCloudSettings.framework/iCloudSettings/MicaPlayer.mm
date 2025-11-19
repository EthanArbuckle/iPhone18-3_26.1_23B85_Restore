@interface MicaPlayer
- (_TtC14iCloudSettings10MicaPlayer)init;
- (id)copyWithZone:(void *)a3;
- (void)dealloc;
@end

@implementation MicaPlayer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer);
  v5 = self;
  if (v4)
  {
    [v4 invalidate];
    v6 = *(&self->super.isa + v3);
    *(&self->super.isa + v3) = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MicaPlayer();
  [(MicaPlayer *)&v7 dealloc];
}

- (id)copyWithZone:(void *)a3
{
  v4 = sub_2759B8508();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  v10 = self;
  sub_2758607AC();
  v12 = v11;
  v13 = sub_2758647C4(*(&v10->super.isa + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_publishedObjects));
  (*(v5 + 16))(v8, v10 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_url, v4);
  v14 = objc_allocWithZone(type metadata accessor for MicaPlayer());
  v15 = sub_275864150(v8, v12, v13);

  return v15;
}

- (_TtC14iCloudSettings10MicaPlayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end