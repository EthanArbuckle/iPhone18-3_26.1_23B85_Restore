@interface StoryColorGradeEditorItemLayout
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)referenceSizeDidChange;
- (void)update;
@end

@implementation StoryColorGradeEditorItemLayout

- (void)update
{
  selfCopy = self;
  sub_1B3892A10();
}

- (void)referenceSizeDidChange
{
  selfCopy = self;
  sub_1B3893560(selfCopy, type metadata accessor for StoryColorGradeEditorItemLayout, &selRef_referenceSizeDidChange, sub_1B3892990);
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  v9 = sub_1B3892C08(v11, v8, objectReference);

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v9;
}

@end