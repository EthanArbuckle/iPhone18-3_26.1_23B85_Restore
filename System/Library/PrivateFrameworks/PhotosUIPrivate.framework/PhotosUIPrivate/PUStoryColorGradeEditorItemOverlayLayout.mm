@interface PUStoryColorGradeEditorItemOverlayLayout
- (NSIndexSet)axSelectedSpriteIndexes;
- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)axContentInfoAtSpriteIndex:(unsigned int)a3;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)objectReferenceForSpriteIndex:(unsigned int)a3;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)displayScaleDidChange;
- (void)referenceSizeDidChange;
- (void)update;
- (void)viewEnvironmentDidChange;
@end

@implementation PUStoryColorGradeEditorItemOverlayLayout

- (void)update
{
  v2 = self;
  sub_1B3893304();
}

- (void)referenceSizeDidChange
{
  v2 = self;
  sub_1B38934C0();
}

- (void)displayScaleDidChange
{
  v2 = self;
  sub_1B3893560(0, type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout, &selRef_displayScaleDidChange, sub_1B3893440);
}

- (void)viewEnvironmentDidChange
{
  v2 = self;
  sub_1B3893630();
}

- (id)objectReferenceForSpriteIndex:(unsigned int)a3
{
  sub_1B3893700(a3, v11);
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

- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  LODWORD(a5) = sub_1B3893888(v10, a4, a5);

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return a5;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = self;
  v5 = sub_1B38941D0(v3);

  return v5;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_1B3894274(a3);

  v8 = sub_1B3C9C5A8();

  return v8;
}

- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = sub_1B3894380(a3);

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

- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = sub_1B3894640(a3);

  return v4;
}

- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = sub_1B38946E0(a3);

  return v8;
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = sub_1B3894860(a3);

  return v8;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = self;
  v5 = sub_1B3894B78(v3);

  return v5;
}

- (NSIndexSet)axSelectedSpriteIndexes
{
  v3 = sub_1B3C98248();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_1B3894E84(v6);

  v8 = sub_1B3C981E8();
  (*(v4 + 8))(v6, v3);

  return v8;
}

@end