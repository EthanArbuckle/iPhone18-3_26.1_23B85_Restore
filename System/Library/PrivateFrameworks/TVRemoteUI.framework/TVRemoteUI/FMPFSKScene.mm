@interface FMPFSKScene
- (CGSize)size;
- (NSString)description;
- (_TtC10TVRemoteUI11FMPFSKScene)init;
- (_TtC10TVRemoteUI11FMPFSKScene)initWithSize:(CGSize)a3;
- (void)setSize:(CGSize)a3;
- (void)update:(double)a3;
@end

@implementation FMPFSKScene

- (NSString)description
{
  v2 = self;
  v3 = FMR1HapticsController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x26D6B1210](v3, v5);

  return v6;
}

- (void)update:(double)a3
{
  v4 = self;
  FMPFSKScene.update(_:)(a3);
}

- (CGSize)size
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMPFSKScene();
  [(SKScene *)&v4 size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  FMPFSKScene.size.setter(width, height);
}

- (_TtC10TVRemoteUI11FMPFSKScene)initWithSize:(CGSize)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10TVRemoteUI11FMPFSKScene)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end