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
- (_UIViewGlass)initWithVariant:(int64_t)variant;
- (_UIViewGlass)initWithVariant:(int64_t)variant smoothness:(double)smoothness;
- (double)smoothness;
- (id)_identityGlass;
- (int64_t)_flexVariant;
- (int64_t)identifier;
- (int64_t)size;
- (int64_t)variant;
- (void)_setFlexVariant:(int64_t)variant;
- (void)setAdaptive:(BOOL)adaptive;
- (void)setAdaptiveFixedLuminance:(double)luminance;
- (void)setAdaptiveInitialLuminance:(double)luminance;
- (void)setAdaptiveStyle:(int64_t)style;
- (void)setAllowsGrouping:(BOOL)grouping;
- (void)setBackdropGroupName:(id)name;
- (void)setBoostWhitePoint:(BOOL)point;
- (void)setControlTintColor:(id)color;
- (void)setFixedBackgroundColor:(id)color;
- (void)setFlexible:(BOOL)flexible;
- (void)setIdentifier:(int64_t)identifier;
- (void)setMeshed:(BOOL)meshed;
- (void)setSharpTinting:(BOOL)tinting;
- (void)setSmoothness:(double)smoothness;
- (void)setSubvariant:(id)subvariant;
- (void)setTintColor:(id)color;
@end

@implementation _UIViewGlass

- (void)setFlexible:(BOOL)flexible
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7[*(v5 + 52)] = flexible;
  v13 = v5;
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(self + v8);
  sub_188A5EBAC(&v12, self + v8);
  swift_endAccess();
}

- (_UIViewGlass)initWithVariant:(int64_t)variant
{
  v5 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188AFE79C(variant, v7);
  v13 = type metadata accessor for _Glass(0);
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  _Glass.init(_:smoothness:)(v7, boxed_opaque_existential_0, 0.0);
  sub_188A5EBAC(&v12, self + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v11.receiver = self;
  v11.super_class = _UIViewGlass;
  return [(_UIViewGlass *)&v11 init];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_188BEBA60(color);
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

- (_UIViewGlass)initWithVariant:(int64_t)variant smoothness:(double)smoothness
{
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188AFE79C(variant, v9);
  v15 = type metadata accessor for _Glass(0);
  v16 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
  _Glass.init(_:smoothness:)(v9, boxed_opaque_existential_0, smoothness);
  sub_188A5EBAC(&v14, self + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v13.receiver = self;
  v13.super_class = _UIViewGlass;
  return [(_UIViewGlass *)&v13 init];
}

- (id)_identityGlass
{
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setIdentifier:(int64_t)identifier
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  *&v7[*(v5 + 40)] = identifier;
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

- (void)setSmoothness:(double)smoothness
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  *&v7[*(v5 + 48)] = smoothness;
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

- (void)setControlTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_188F6A9A4(color);
}

- (void)setSubvariant:(id)subvariant
{
  if (subvariant)
  {
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_188F6AB9C(v4, v6);
}

- (BOOL)contentLensing
{
  selfCopy = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A70]);

  return v3 & 1;
}

- (BOOL)highlightsDisplayAngle
{
  selfCopy = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A38]);

  return v3 & 1;
}

- (BOOL)excludingPlatter
{
  selfCopy = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86AB8]);

  return v3 & 1;
}

- (BOOL)excludingForeground
{
  selfCopy = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86AD8]);

  return v3 & 1;
}

- (BOOL)excludingShadow
{
  selfCopy = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A68]);

  return v3 & 1;
}

- (BOOL)excludingControlLensing
{
  selfCopy = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A98]);

  return v3 & 1;
}

- (BOOL)excludingControlDisplacement
{
  selfCopy = self;
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

- (void)_setFlexVariant:(int64_t)variant
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  *&v7[*(v5 + 60)] = variant;
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
  selfCopy = self;
  v3 = sub_188F6B66C(MEMORY[0x1EEE86A88]);

  return v3 & 1;
}

- (void)setBoostWhitePoint:(BOOL)point
{
  pointCopy = point;
  selfCopy = self;
  sub_188F6B8D4(pointCopy);
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

- (void)setAllowsGrouping:(BOOL)grouping
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(self + v8, &v12);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7[*(v5 + 28)] = grouping;
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

- (void)setBackdropGroupName:(id)name
{
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (name)
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
  selfCopy = self;
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

- (void)setAdaptive:(BOOL)adaptive
{
  adaptiveCopy = adaptive;
  selfCopy = self;
  sub_188F6CBC8(adaptiveCopy, MEMORY[0x1EEE869A0]);
}

- (void)setAdaptiveStyle:(int64_t)style
{
  selfCopy = self;
  sub_188F6C0C8(style);
}

- (void)setAdaptiveInitialLuminance:(double)luminance
{
  selfCopy = self;
  sub_188F6C3D0(MEMORY[0x1EEE86920], luminance);
}

- (void)setAdaptiveFixedLuminance:(double)luminance
{
  selfCopy = self;
  sub_188F6C3D0(MEMORY[0x1EEE86918], luminance);
}

- (void)setFixedBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_188F6C748(color);
}

- (void)setSharpTinting:(BOOL)tinting
{
  tintingCopy = tinting;
  selfCopy = self;
  sub_188F6CBC8(tintingCopy, MEMORY[0x1EEE868F0]);
}

- (void)setMeshed:(BOOL)meshed
{
  meshedCopy = meshed;
  selfCopy = self;
  sub_188F6CBC8(meshedCopy, MEMORY[0x1EEE86950]);
}

@end