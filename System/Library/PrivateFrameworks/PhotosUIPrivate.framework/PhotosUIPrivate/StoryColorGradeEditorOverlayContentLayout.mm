@interface StoryColorGradeEditorOverlayContentLayout
- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)size;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
- (id)layout:(id)layout navigationObjectReferenceForSublayoutAtIndex:(int64_t)index;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)referenceSizeDidChange;
- (void)update;
@end

@implementation StoryColorGradeEditorOverlayContentLayout

- (void)update
{
  selfCopy = self;
  sub_1B37A2634();
}

- (void)referenceSizeDidChange
{
  selfCopy = self;
  sub_1B37A2820();
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  v9 = sub_1B37A2C3C(v11, options, objectReference);

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v9;
}

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  layoutCopy = layout;
  selfCopy = self;
  v8 = sub_1B37A4630(layoutCopy, index);

  return v8;
}

- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)size
{
  CGSizeMake(layout);
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)layout:(id)layout navigationObjectReferenceForSublayoutAtIndex:(int64_t)index
{
  sub_1B37A484C(&v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0Tm(&v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1B3C9D688();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(&v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end