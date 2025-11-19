@interface StoryColorGradeEditorItemLayout
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)referenceSizeDidChange;
- (void)update;
@end

@implementation StoryColorGradeEditorItemLayout

- (void)update
{
  v2 = self;
  sub_1B3892A10();
}

- (void)referenceSizeDidChange
{
  v2 = self;
  sub_1B3893560(v2, type metadata accessor for StoryColorGradeEditorItemLayout, &selRef_referenceSizeDidChange, sub_1B3892990);
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  v9 = sub_1B3892C08(v11, v8, a5);

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v9;
}

@end