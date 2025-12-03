@interface SiriUIObjectPickerViewController
+ (id)pickerControllerWithPicker:(id)picker;
- (SiriUIObjectPickerViewController)initWithPicker:(id)picker;
- (SiriUIObjectPickerViewControllerDelegate)pickerDelegate;
@end

@implementation SiriUIObjectPickerViewController

+ (id)pickerControllerWithPicker:(id)picker
{
  pickerCopy = picker;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SiriUIObjectPickerViewController *)[SiriUIPersonPickerViewController alloc] initWithPicker:pickerCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SiriUIObjectPickerViewController)initWithPicker:(id)picker
{
  pickerCopy = picker;
  v9.receiver = self;
  v9.super_class = SiriUIObjectPickerViewController;
  v6 = [(SiriUIObjectPickerViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, picker);
  }

  return v7;
}

- (SiriUIObjectPickerViewControllerDelegate)pickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  return WeakRetained;
}

@end