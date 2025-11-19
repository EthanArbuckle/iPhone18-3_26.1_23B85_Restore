@interface StoryColorGradeEditorOverlayContentLayout
- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)a5;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (id)layout:(id)a3 navigationObjectReferenceForSublayoutAtIndex:(int64_t)a4;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)referenceSizeDidChange;
- (void)update;
@end

@implementation StoryColorGradeEditorOverlayContentLayout

- (void)update
{
  v2 = self;
  sub_1B37A2634();
}

- (void)referenceSizeDidChange
{
  v2 = self;
  sub_1B37A2820();
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  v9 = sub_1B37A2C3C(v11, a4, a5);

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v9;
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1B37A4630(v6, a4);

  return v8;
}

- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)a5
{
  CGSizeMake(a3);
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)layout:(id)a3 navigationObjectReferenceForSublayoutAtIndex:(int64_t)a4
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