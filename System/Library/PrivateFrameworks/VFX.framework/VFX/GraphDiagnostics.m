@interface GraphDiagnostics
- (_TtC3VFX16GraphDiagnostics)init;
@end

@implementation GraphDiagnostics

- (_TtC3VFX16GraphDiagnostics)init
{
  v3 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID;
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID;
  v6 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + v5) = sub_1AF42B7E0(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GraphDiagnostics(0);
  return [(GraphDiagnostics *)&v8 init];
}

@end