@interface _UIMagicMorphDestination
- (NSString)debugDescription;
- (UIEdgeInsets)insets;
- (_UIAssertion)backgroundSuppressionAssertion;
- (_UIMagicMorphDestination)init;
- (_UIMagicMorphDestination)initWithPreview:(id)preview;
- (_UIMagicMorphDestination)initWithView:(id)view;
- (void)setBackgroundSuppressionAssertion:(id)assertion;
- (void)setHidingAssertion:(id)assertion;
- (void)setPreview:(id)preview;
- (void)setShadowPath:(id)path;
- (void)setShadowProperties:(id)properties;
- (void)unhideImmediately;
@end

@implementation _UIMagicMorphDestination

- (void)setPreview:(id)preview
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_preview);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_preview) = preview;
  previewCopy = preview;
}

- (void)setShadowProperties:(id)properties
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowProperties);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowProperties) = properties;
  propertiesCopy = properties;
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

- (void)setHidingAssertion:(id)assertion
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_hidingAssertion);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_hidingAssertion) = assertion;
  assertionCopy = assertion;
}

- (_UIAssertion)backgroundSuppressionAssertion
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBackgroundSuppressionAssertion:(id)assertion
{
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_backgroundSuppressionAssertion) = assertion;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setShadowPath:(id)path
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowPath);
  *(&self->super.isa + OBJC_IVAR____UIMagicMorphDestination_shadowPath) = path;
  pathCopy = path;
}

- (_UIMagicMorphDestination)initWithPreview:(id)preview
{
  previewCopy = preview;
  v4 = sub_188D626CC(previewCopy);

  return v4;
}

- (_UIMagicMorphDestination)initWithView:(id)view
{
  v5 = objc_allocWithZone(UITargetedPreview);
  viewCopy = view;
  initWithView_ = [v5 initWithView_];
  v8 = [(_UIMagicMorphDestination *)self initWithPreview:initWithView_];

  return v8;
}

- (void)unhideImmediately
{
  selfCopy = self;
  sub_1890DEC38();
}

- (NSString)debugDescription
{
  selfCopy = self;
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