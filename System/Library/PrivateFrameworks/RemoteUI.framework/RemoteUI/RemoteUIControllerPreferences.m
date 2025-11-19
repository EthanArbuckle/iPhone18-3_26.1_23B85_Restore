@interface RemoteUIControllerPreferences
- (RemoteUIControllerPreferences)initWithSpinner:(BOOL)a3 spinnerLabel:(id)a4 navBarImage:(id)a5 navBarImageLabel:(id)a6;
@end

@implementation RemoteUIControllerPreferences

- (RemoteUIControllerPreferences)initWithSpinner:(BOOL)a3 spinnerLabel:(id)a4 navBarImage:(id)a5 navBarImageLabel:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = RemoteUIControllerPreferences;
  v14 = [(RemoteUIControllerPreferences *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_showSpinner = a3;
    objc_storeStrong(&v14->_spinnerLabel, a4);
    objc_storeStrong(&v15->_navBarImage, a5);
    objc_storeStrong(&v15->_navBarImageLabel, a6);
  }

  return v15;
}

@end