@interface FontPicker.Coordinator
- (void)fontPickerViewControllerDidCancel:(id)cancel;
- (void)fontPickerViewControllerDidPickFont:(id)font;
@end

@implementation FontPicker.Coordinator

- (void)fontPickerViewControllerDidPickFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_274463D90(fontCopy);
}

- (void)fontPickerViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_274463E60();
}

@end