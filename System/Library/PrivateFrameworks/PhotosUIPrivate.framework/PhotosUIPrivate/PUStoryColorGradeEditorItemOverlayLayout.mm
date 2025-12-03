@interface PUStoryColorGradeEditorItemOverlayLayout
- (NSIndexSet)axSelectedSpriteIndexes;
- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)axContentInfoAtSpriteIndex:(unsigned int)index;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)objectReferenceForSpriteIndex:(unsigned int)index;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout;
- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)displayScaleDidChange;
- (void)referenceSizeDidChange;
- (void)update;
- (void)viewEnvironmentDidChange;
@end

@implementation PUStoryColorGradeEditorItemOverlayLayout

- (void)update
{
  selfCopy = self;
  sub_1B3893304();
}

- (void)referenceSizeDidChange
{
  selfCopy = self;
  sub_1B38934C0();
}

- (void)displayScaleDidChange
{
  selfCopy = self;
  sub_1B3893560(0, type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout, &selRef_displayScaleDidChange, sub_1B3893440);
}

- (void)viewEnvironmentDidChange
{
  selfCopy = self;
  sub_1B3893630();
}

- (id)objectReferenceForSpriteIndex:(unsigned int)index
{
  sub_1B3893700(index, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0Tm(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1B3C9D688();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  LODWORD(objectReference) = sub_1B3893888(v10, options, objectReference);

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return objectReference;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  selfCopy = self;
  v5 = sub_1B38941D0(v3);

  return v5;
}

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_1B3894274(index);

  v8 = sub_1B3C9C5A8();

  return v8;
}

- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  v8 = sub_1B3894380(index);

  if (v8)
  {
    type metadata accessor for Key(0);
    sub_1B37A4B80();
    v9 = sub_1B3C9C4A8();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = sub_1B3894640(index);

  return v4;
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  v8 = sub_1B38946E0(index);

  return v8;
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  v8 = sub_1B3894860(index);

  return v8;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  selfCopy = self;
  v5 = sub_1B3894B78(v3);

  return v5;
}

- (NSIndexSet)axSelectedSpriteIndexes
{
  v3 = sub_1B3C98248();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1B3894E84(v6);

  v8 = sub_1B3C981E8();
  (*(v4 + 8))(v6, v3);

  return v8;
}

@end