@interface UIAnimatablePropertyWrapper
+ (id)makeSwiftFloatAnimatablePropertyWithView:(id)a3;
+ (id)makeSwiftVectorAnimatablePropertyWithView:(id)a3;
- (BOOL)isInvalidated;
- (BOOL)isVelocityUsableForVFD;
- (UIAnimatablePropertyWrapper)initWithAnimatableProperty:(id)a3;
- (id)__swiftTransformer;
- (id)view;
- (void)dealloc;
- (void)invalidate;
- (void)setVelocityUsableForVFD:(BOOL)a3;
- (void)set__swiftTransformer:(id)a3;
@end

@implementation UIAnimatablePropertyWrapper

+ (id)makeSwiftFloatAnimatablePropertyWithView:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D60);
  swift_allocObject();
  v4 = a3;
  v5 = sub_188A6DB3C(a3, signpost_c2_entryLock_start, 0, &qword_1EA940D70, 0.0, &unk_18A676BA8, &qword_1EA940D78, &unk_18A676BB0);
  v6 = sub_188A5EB48(&qword_1ED48FC50, &unk_1EA940D60);
  v7 = type metadata accessor for BridgedProperty();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  *v9 = v5;
  v9[1] = v6;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

- (void)invalidate
{
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v2 invalidateAndStopImmediately:1];
}

- (void)dealloc
{
  v3 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v3 invalidateAndStopImmediately:0];

  v4.receiver = self;
  v4.super_class = UIAnimatablePropertyWrapper;
  [(UIAnimatablePropertyWrapper *)&v4 dealloc];
}

+ (id)makeSwiftVectorAnimatablePropertyWithView:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D80);
  swift_allocObject();
  v4 = a3;
  v5 = sub_188C84FFC(MEMORY[0x1E69E7CC0], a3, signpost_c2_entryLock_start, 0);
  v6 = sub_188A5EB48(&qword_1EA930FF8, &unk_1EA940D80);
  v7 = type metadata accessor for BridgedProperty();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC5UIKit15BridgedProperty_property];
  *v9 = v5;
  v9[1] = v6;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

- (BOOL)isInvalidated
{
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v3 = [v2 isInvalidated];

  return v3;
}

- (UIAnimatablePropertyWrapper)initWithAnimatableProperty:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIAnimatablePropertyWrapper;
  v6 = [(UIAnimatablePropertyWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animatableProperty, a3);
  }

  return v7;
}

- (id)view
{
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v3 = [v2 view];

  return v3;
}

- (void)set__swiftTransformer:(id)a3
{
  v4 = a3;
  v5 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v5 setTransformer:v4];
}

- (id)__swiftTransformer
{
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v3 = [v2 transformer];

  return v3;
}

- (BOOL)isVelocityUsableForVFD
{
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v3 = [v2 isVelocityUsableForVFD];

  return v3;
}

- (void)setVelocityUsableForVFD:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v4 setIsVelocityUsableForVFD:v3];
}

@end