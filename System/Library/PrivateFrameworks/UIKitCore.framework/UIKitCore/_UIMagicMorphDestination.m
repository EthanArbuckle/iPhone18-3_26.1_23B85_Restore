@interface _UIMagicMorphDestination
- (NSString)debugDescription;
- (UIEdgeInsets)insets;
- (_UIAssertion)backgroundSuppressionAssertion;
- (_UIMagicMorphDestination)init;
- (_UIMagicMorphDestination)initWithPreview:(id)a3;
- (_UIMagicMorphDestination)initWithView:(id)a3;
- (void)setBackgroundSuppressionAssertion:(id)a3;
- (void)setHidingAssertion:(id)a3;
- (void)setPreview:(id)a3;
- (void)setShadowPath:(id)a3;
- (void)setShadowProperties:(id)a3;
- (void)unhideImmediately;
@end

@implementation _UIMagicMorphDestination

- (void)setPreview:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_preview);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_preview) = a3;
  v3 = a3;
}

- (void)setShadowProperties:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowProperties);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowProperties) = a3;
  v3 = a3;
}

- (UIEdgeInsets)insets
{
  v2 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_insets);
  v3 = *(&self->preview + OBJC_IVAR____UIMagicMorphDestination_insets);
  v4 = *(&self->shadowProperties + OBJC_IVAR____UIMagicMorphDestination_insets);
  v5 = *(&self->hidesSourceView + OBJC_IVAR____UIMagicMorphDestination_insets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setHidingAssertion:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_hidingAssertion);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_hidingAssertion) = a3;
  v3 = a3;
}

- (_UIAssertion)backgroundSuppressionAssertion
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBackgroundSuppressionAssertion:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_backgroundSuppressionAssertion) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setShadowPath:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowPath);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowPath) = a3;
  v3 = a3;
}

- (_UIMagicMorphDestination)initWithPreview:(id)a3
{
  v3 = a3;
  v4 = sub_188D626CC(v3);

  return v4;
}

- (_UIMagicMorphDestination)initWithView:(id)a3
{
  v5 = objc_allocWithZone(UITargetedPreview);
  v6 = a3;
  v7 = [v5 initWithView_];
  v8 = [(_UIMagicMorphDestination *)self initWithPreview:v7];

  return v8;
}

- (void)unhideImmediately
{
  v2 = self;
  sub_1890DEC38();
}

- (NSString)debugDescription
{
  v2 = self;
  sub_1890DED60();

  v3 = sub_18A4A7258();

  return v3;
}

- (_UIMagicMorphDestination)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end