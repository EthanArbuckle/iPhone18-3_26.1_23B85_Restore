@interface TKVibrationRecorderViewController
- (TKVibrationRecorderViewController)initWithVibratorController:(id)a3;
- (void)dealloc;
@end

@implementation TKVibrationRecorderViewController

- (TKVibrationRecorderViewController)initWithVibratorController:(id)a3
{
  v4 = a3;
  v5 = [[TKVibrationRecorderContentViewController alloc] initWithVibratorController:v4];

  v6 = [(TKVibrationRecorderViewController *)self initWithRootViewController:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vibrationRecorderContentViewController, v5);
    [(TKVibrationRecorderContentViewController *)v7->_vibrationRecorderContentViewController setParentVibrationRecorderViewController:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(TKVibrationRecorderContentViewController *)self->_vibrationRecorderContentViewController setParentVibrationRecorderViewController:0];
  v3.receiver = self;
  v3.super_class = TKVibrationRecorderViewController;
  [(TKVibrationRecorderViewController *)&v3 dealloc];
}

@end