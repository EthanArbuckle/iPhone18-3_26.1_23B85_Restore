@interface SmartShortcutPickerUserLibraryDataSource
- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed;
@end

@implementation SmartShortcutPickerUserLibraryDataSource

- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed
{
  sub_27471CF08(0, &qword_280967A00);
  sub_2747DE510(&qword_280969120, &qword_280967A00);
  sub_2749FD154();
  sub_2749FD154();
  sub_2749FD154();
  changeCopy = change;

  SmartShortcutPickerUserLibraryDataSource.databaseDidChange(_:modified:inserted:removed:)();
}

@end