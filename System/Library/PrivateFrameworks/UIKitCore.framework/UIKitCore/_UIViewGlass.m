@interface _UIViewGlass
- (BOOL)allowsGrouping;
- (BOOL)boostWhitePoint;
- (BOOL)contentLensing;
- (BOOL)excludingControlDisplacement;
- (BOOL)excludingControlLensing;
- (BOOL)excludingForeground;
- (BOOL)excludingPlatter;
- (BOOL)excludingShadow;
- (BOOL)flexible;
- (BOOL)highlightsDisplayAngle;
- (NSString)backdropGroupName;
- (UIColor)controlTintColor;
- (UIColor)tintColor;
- (_UIViewGlass)init;
- (_UIViewGlass)initWithVariant:(int64_t)a3;
- (_UIViewGlass)initWithVariant:(int64_t)a3 smoothness:(double)a4;
- (double)smoothness;
- (id)_identityGlass;
- (int64_t)_flexVariant;
- (int64_t)identifier;
- (int64_t)size;
- (int64_t)variant;
- (void)_setFlexVariant:(int64_t)a3;
- (void)setAdaptive:(BOOL)a3;
- (void)setAdaptiveFixedLuminance:(double)a3;
- (void)setAdaptiveInitialLuminance:(double)a3;
- (void)setAdaptiveStyle:(int64_t)a3;
- (void)setAllowsGrouping:(BOOL)a3;
- (void)setBackdropGroupName:(id)a3;
- (void)setBoostWhitePoint:(BOOL)a3;
- (void)setControlTintColor:(id)a3;
- (void)setFixedBackgroundColor:(id)a3;
- (void)setFlexible:(BOOL)a3;
- (void)setIdentifier:(int64_t)a3;
- (void)setMeshed:(BOOL)a3;
- (void)setSharpTinting:(BOOL)a3;
- (void)setSmoothness:(double)a3;
- (void)setSubvariant:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation _UIViewGlass

- (void)setFlexible:(BOOL)a3
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  v9 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7[*(v5 + 52)] = a3;
  v13 = v5;
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v8);
  sub_188A5EBAC(&v12, self + v8);
  swift_endAccess();
}

- (_UIViewGlass)initWithVariant:(int64_t)a3
{
  v5 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188AFE79C(a3, v7);
  v13 = type metadata accessor for _Glass(0);
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  _Glass.init(_:smoothness:)(v7, boxed_opaque_existential_0, 0.0);
  sub_188A5EBAC(&v12, self + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v11.receiver = self;
  v11.super_class = _UIViewGlass;
  return [(_UIViewGlass *)&v11 init];
}

- (void)setTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188BEBA60(a3);
}

- (_UIViewGlass)init
{
  v3 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED48E920 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1ED48E930);
  sub_188AD8C44(v7, v6, type metadata accessor for _Glass._GlassVariant);
  v14 = type metadata accessor for _Glass(0);
  v15 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  _Glass.init(_:smoothness:)(v6, boxed_opaque_existential_0, 0.0);
  sub_188A5EBAC(&v13, self + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v12.receiver = self;
  v12.super_class = _UIViewGlass;
  return [(_UIViewGlass *)&v12 init];
}

- (_UIViewGlass)initWithVariant:(int64_t)a3 smoothness:(double)a4
{
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188AFE79C(a3, v9);
  v15 = type metadata accessor for _Glass(0);
  v16 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
  _Glass.init(_:smoothness:)(v9, boxed_opaque_existential_0, a4);
  sub_188A5EBAC(&v14, self + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v13.receiver = self;
  v13.super_class = _UIViewGlass;
  return [(_UIViewGlass *)&v13 init];
}

- (id)_identityGlass
{
  v2 = self;
  v3 = sub_188F69B84();

  return v3;
}

- (int64_t)variant
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  sub_188B0CD70(v5, type metadata accessor for _Glass);
  return 0;
}

- (int64_t)size
{
  v2 = self;
  v3 = sub_188F69FCC();

  return v3;
}

- (int64_t)identifier
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 40)];
  sub_188B0CD70(v5, type metadata accessor for _Glass);
  return v7;
}

- (void)setIdentifier:(int64_t)a3
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  v9 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  *&v7[*(v5 + 40)] = a3;
  v13 = v5;
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v8);
  sub_188A5EBAC(&v12, self + v8);
  swift_endAccess();
}

- (double)smoothness
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 48)];
  sub_188B0CD70(v5, type metadata accessor for _Glass);
  return v7;
}

- (void)setSmoothness:(double)a3
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  v9 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  *&v7[*(v5 + 48)] = a3;
  v13 = v5;
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v8);
  sub_188A5EBAC(&v12, self + v8);
  swift_endAccess();
}

- (UIColor)tintColor
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7 = *v5;
  sub_188B0CD70(v5, type metadata accessor for _Glass);

  return v7;
}

- (UIColor)controlTintColor
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 24) + *(type metadata accessor for _Glass._GlassVariant(0) + 28)];
  sub_188B0CD70(v5, type metadata accessor for _Glass);

  return v7;
}

- (void)setControlTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188F6A9A4(a3);
}

- (void)setSubvariant:(id)a3
{
  if (a3)
  {
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_188F6AB9C(v4, v6);
}

- (BOOL)contentLensing
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A70]);

  return v3 & 1;
}

- (BOOL)highlightsDisplayAngle
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A38]);

  return v3 & 1;
}

- (BOOL)excludingPlatter
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86AB8]);

  return v3 & 1;
}

- (BOOL)excludingForeground
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86AD8]);

  return v3 & 1;
}

- (BOOL)excludingShadow
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A68]);

  return v3 & 1;
}

- (BOOL)excludingControlLensing
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A98]);

  return v3 & 1;
}

- (BOOL)excludingControlDisplacement
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86AE0]);

  return v3 & 1;
}

- (BOOL)flexible
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  LOBYTE(self) = v5[*(v3 + 52)];
  sub_188B0CD70(v5, type metadata accessor for _Glass);
  return self;
}

- (int64_t)_flexVariant
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 60)];
  sub_188B0CD70(v5, type metadata accessor for _Glass);
  return v7;
}

- (void)_setFlexVariant:(int64_t)a3
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  v9 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  *&v7[*(v5 + 60)] = a3;
  v13 = v5;
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v8);
  sub_188A5EBAC(&v12, self + v8);
  swift_endAccess();
}

- (BOOL)boostWhitePoint
{
  v2 = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A88]);

  return v3 & 1;
}

- (void)setBoostWhitePoint:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188F6B8D4(v3);
}

- (BOOL)allowsGrouping
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  LOBYTE(self) = v5[*(v3 + 28)];
  sub_188B0CD70(v5, type metadata accessor for _Glass);
  return self;
}

- (void)setAllowsGrouping:(BOOL)a3
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  v9 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7[*(v5 + 28)] = a3;
  v13 = v5;
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v8);
  sub_188A5EBAC(&v12, self + v8);
  swift_endAccess();
}

- (NSString)backdropGroupName
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7 = *(v5 + 2);

  sub_188B0CD70(v5, type metadata accessor for _Glass);
  if (v7)
  {
    v8 = sub_18A4A7258();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setBackdropGroupName:(id)a3
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v8 = sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v11, &v15);
  v12 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  *(v7 + 1) = v8;
  *(v7 + 2) = v10;

  v16 = v5;
  v17 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v11);
  sub_188A5EBAC(&v15, self + v11);
  swift_endAccess();
}

- (void)setAdaptive:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188F6CBC8(v3, MEMORY[0x1EEE869A0]);
}

- (void)setAdaptiveStyle:(int64_t)a3
{
  v4 = self;
  sub_188F6C0C8(a3);
}

- (void)setAdaptiveInitialLuminance:(double)a3
{
  v4 = self;
  sub_188F6C3D0(MEMORY[0x1EEE86920], a3);
}

- (void)setAdaptiveFixedLuminance:(double)a3
{
  v4 = self;
  sub_188F6C3D0(MEMORY[0x1EEE86918], a3);
}

- (void)setFixedBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188F6C748(a3);
}

- (void)setSharpTinting:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188F6CBC8(v3, MEMORY[0x1EEE868F0]);
}

- (void)setMeshed:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188F6CBC8(v3, MEMORY[0x1EEE86950]);
}

@end