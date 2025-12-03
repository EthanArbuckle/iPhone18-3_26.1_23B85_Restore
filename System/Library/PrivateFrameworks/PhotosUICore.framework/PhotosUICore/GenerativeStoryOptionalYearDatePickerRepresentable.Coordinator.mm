@interface GenerativeStoryOptionalYearDatePickerRepresentable.Coordinator
- (_TtCV12PhotosUICore50GenerativeStoryOptionalYearDatePickerRepresentable11Coordinator)init;
- (void)dateChanged:(id)changed;
@end

@implementation GenerativeStoryOptionalYearDatePickerRepresentable.Coordinator

- (void)dateChanged:(id)changed
{
  v5 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v5 - 8);
  changedCopy = changed;
  selfCopy = self;
  date = [changedCopy date];
  sub_1A52410F4();

  sub_1A46115F8(0);
  sub_1A524B904();
}

- (_TtCV12PhotosUICore50GenerativeStoryOptionalYearDatePickerRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end