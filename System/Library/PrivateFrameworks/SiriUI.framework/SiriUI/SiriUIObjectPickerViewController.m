@interface SiriUIObjectPickerViewController
+ (id)pickerControllerWithPicker:(id)a3;
- (SiriUIObjectPickerViewController)initWithPicker:(id)a3;
- (SiriUIObjectPickerViewControllerDelegate)pickerDelegate;
@end

@implementation SiriUIObjectPickerViewController

+ (id)pickerControllerWithPicker:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SiriUIObjectPickerViewController *)[SiriUIPersonPickerViewController alloc] initWithPicker:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SiriUIObjectPickerViewController)initWithPicker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriUIObjectPickerViewController;
  v6 = [(SiriUIObjectPickerViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, a3);
  }

  return v7;
}

- (SiriUIObjectPickerViewControllerDelegate)pickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  return WeakRetained;
}

@end