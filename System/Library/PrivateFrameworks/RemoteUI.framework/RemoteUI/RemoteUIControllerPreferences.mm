@interface RemoteUIControllerPreferences
- (RemoteUIControllerPreferences)initWithSpinner:(BOOL)spinner spinnerLabel:(id)label navBarImage:(id)image navBarImageLabel:(id)imageLabel;
@end

@implementation RemoteUIControllerPreferences

- (RemoteUIControllerPreferences)initWithSpinner:(BOOL)spinner spinnerLabel:(id)label navBarImage:(id)image navBarImageLabel:(id)imageLabel
{
  labelCopy = label;
  imageCopy = image;
  imageLabelCopy = imageLabel;
  v17.receiver = self;
  v17.super_class = RemoteUIControllerPreferences;
  v14 = [(RemoteUIControllerPreferences *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_showSpinner = spinner;
    objc_storeStrong(&v14->_spinnerLabel, label);
    objc_storeStrong(&v15->_navBarImage, image);
    objc_storeStrong(&v15->_navBarImageLabel, imageLabel);
  }

  return v15;
}

@end