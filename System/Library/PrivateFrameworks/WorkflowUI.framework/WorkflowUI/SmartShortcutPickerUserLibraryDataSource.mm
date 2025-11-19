@interface SmartShortcutPickerUserLibraryDataSource
- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6;
@end

@implementation SmartShortcutPickerUserLibraryDataSource

- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6
{
  sub_27471CF08(0, &qword_280967A00);
  sub_2747DE510(&qword_280969120, &qword_280967A00);
  sub_2749FD154();
  sub_2749FD154();
  sub_2749FD154();
  v7 = a3;

  SmartShortcutPickerUserLibraryDataSource.databaseDidChange(_:modified:inserted:removed:)();
}

@end