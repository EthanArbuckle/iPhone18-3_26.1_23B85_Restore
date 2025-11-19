@interface ShadableShaderModifierObserver
- (_TtC3VFX30ShadableShaderModifierObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ShadableShaderModifierObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable);
  v3 = self;
  swift_unknownObjectRetain();
  v4 = sub_1AFDFCEC8();
  [v2 removeObserver:v3 forKeyPath:v4];

  swift_unknownObjectRelease();
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ShadableShaderModifierObserver();
  [(ShadableShaderModifierObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v8 = self;
  }

  sub_1AFC723FC(v9, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  *(&self->super.isa + OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache) = MEMORY[0x1E69E7CC0];
}

- (_TtC3VFX30ShadableShaderModifierObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end