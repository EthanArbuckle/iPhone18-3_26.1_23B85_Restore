@interface UIAnimatablePropertyWrapper
+ (id)makeSwiftFloatAnimatablePropertyWithView:(id)view;
+ (id)makeSwiftVectorAnimatablePropertyWithView:(id)view;
- (BOOL)isInvalidated;
- (BOOL)isVelocityUsableForVFD;
- (UIAnimatablePropertyWrapper)initWithAnimatableProperty:(id)property;
- (id)__swiftTransformer;
- (id)view;
- (void)dealloc;
- (void)invalidate;
- (void)setVelocityUsableForVFD:(BOOL)d;
- (void)set__swiftTransformer:(id)transformer;
@end

@implementation UIAnimatablePropertyWrapper

+ (id)makeSwiftFloatAnimatablePropertyWithView:(id)view
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D60);
  swift_allocObject();
  viewCopy = view;
  v5 = sub_188A6DB3C(view, signpost_c2_entryLock_start, 0, &qword_1EA940D70, 0.0, &unk_18A676BA8, &qword_1EA940D78, &unk_18A676BB0);
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
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty invalidateAndStopImmediately:1];
}

- (void)dealloc
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty invalidateAndStopImmediately:0];

  v4.receiver = self;
  v4.super_class = UIAnimatablePropertyWrapper;
  [(UIAnimatablePropertyWrapper *)&v4 dealloc];
}

+ (id)makeSwiftVectorAnimatablePropertyWithView:(id)view
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D80);
  swift_allocObject();
  viewCopy = view;
  v5 = sub_188C84FFC(MEMORY[0x1E69E7CC0], view, signpost_c2_entryLock_start, 0);
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
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  isInvalidated = [animatableProperty isInvalidated];

  return isInvalidated;
}

- (UIAnimatablePropertyWrapper)initWithAnimatableProperty:(id)property
{
  propertyCopy = property;
  v9.receiver = self;
  v9.super_class = UIAnimatablePropertyWrapper;
  v6 = [(UIAnimatablePropertyWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animatableProperty, property);
  }

  return v7;
}

- (id)view
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  view = [animatableProperty view];

  return view;
}

- (void)set__swiftTransformer:(id)transformer
{
  transformerCopy = transformer;
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty setTransformer:transformerCopy];
}

- (id)__swiftTransformer
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  transformer = [animatableProperty transformer];

  return transformer;
}

- (BOOL)isVelocityUsableForVFD
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  isVelocityUsableForVFD = [animatableProperty isVelocityUsableForVFD];

  return isVelocityUsableForVFD;
}

- (void)setVelocityUsableForVFD:(BOOL)d
{
  dCopy = d;
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty setIsVelocityUsableForVFD:dCopy];
}

@end