@interface FontPicker.Coordinator
- (void)fontPickerViewControllerDidCancel:(id)a3;
- (void)fontPickerViewControllerDidPickFont:(id)a3;
@end

@implementation FontPicker.Coordinator

- (void)fontPickerViewControllerDidPickFont:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274463D90(v4);
}

- (void)fontPickerViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274463E60();
}

@end