@interface _UIViewGlassGroup
- (BOOL)foreground;
- (BOOL)groupBackdrops;
- (_UIViewGlassGroup)init;
- (void)setForeground:(BOOL)foreground;
- (void)setGroupBackdrops:(BOOL)backdrops;
@end

@implementation _UIViewGlassGroup

- (_UIViewGlassGroup)init
{
  v2 = self + OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
  *(v2 + 3) = &type metadata for _GlassGroup;
  *(v2 + 4) = &protocol witness table for _GlassGroup;
  *v2 = 256;
  *(v2 + 1) = 0;
  *(v2 + 8) = 1;
  v4.receiver = self;
  v4.super_class = _UIViewGlassGroup;
  return [(_UIViewGlassGroup *)&v4 init];
}

- (BOOL)groupBackdrops
{
  v3 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  return v5[41];
}

- (void)setGroupBackdrops:(BOOL)backdrops
{
  v5 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v5, &v7);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  backdropsCopy = backdrops;
  v10 = &type metadata for _GlassGroup;
  v11 = &protocol witness table for _GlassGroup;
  LOBYTE(v7) = v12;
  BYTE1(v7) = backdrops;
  *(&v7 + 1) = v14;
  v8 = v15;
  v9 = v16;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v5);
  sub_188A5EBAC(&v7, self + v5);
  swift_endAccess();
}

- (BOOL)foreground
{
  v3 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  return v5[40];
}

- (void)setForeground:(BOOL)foreground
{
  v5 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v5, &v7);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  foregroundCopy = foreground;
  v10 = &type metadata for _GlassGroup;
  v11 = &protocol witness table for _GlassGroup;
  LOWORD(v7) = __PAIR16__(v13, foreground);
  *(&v7 + 1) = v14;
  v8 = v15;
  v9 = v16;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v5);
  sub_188A5EBAC(&v7, self + v5);
  swift_endAccess();
}

@end