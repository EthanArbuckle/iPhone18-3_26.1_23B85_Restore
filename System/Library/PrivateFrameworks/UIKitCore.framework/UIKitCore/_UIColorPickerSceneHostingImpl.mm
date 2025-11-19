@interface _UIColorPickerSceneHostingImpl
- (UIColorPickerViewController)delegateColorPickerViewController;
- (void)_pickerDidDismissEyedropper;
- (void)_pickerDidFinish;
- (void)_pickerDidFloatEyedropper;
- (void)_pickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5;
- (void)_pickerDidShowEyedropper;
- (void)clientIsReady;
- (void)dismissEyedropper:(BOOL)a3;
- (void)setRemoteConfiguration:(id)a3;
- (void)setRemoteSelectedColor:(id)a3;
- (void)setupRemoteHosting;
@end

@implementation _UIColorPickerSceneHostingImpl

- (void)setupRemoteHosting
{
  if (!self->_hostingController)
  {
    v4 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
    [v4 _beginDelayingPresentation:&__block_literal_global_465 cancellationHandler:3.0];

    v13 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.UIKit.ColorPickerUIService"];
    v5 = [_UISceneHostingController alloc];
    v6 = +[(FBSSceneSpecification *)_UISceneHostingSceneSpecification];
    v7 = [(_UISceneHostingController *)v5 initWithProcessIdentity:v13 sceneSpecification:v6];
    hostingController = self->_hostingController;
    self->_hostingController = v7;

    [(_UISceneHostingController *)self->_hostingController setDelegate:self];
    v9 = [(_UISceneHostingController *)self->_hostingController sceneViewController];
    v10 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
    [v10 _setChildViewController:v9];

    v11 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
    v12 = [v11 configuration];
    [(_UIColorPickerSceneHostingImpl *)self setRemoteConfiguration:v12];
  }
}

- (void)setRemoteSelectedColor:(id)a3
{
  v5 = a3;
  v6 = a3;
  ColorSpace = CGColorGetColorSpace([v6 CGColor]);
  v9 = CGColorSpaceGetName(ColorSpace);
  v8 = [_UIColorPickerActionHostToClient actionForSelectedColor:v6 withColorSpace:v9];

  [(_UISceneHostingController *)self->_hostingController sendAction:v8];
}

- (void)setRemoteConfiguration:(id)a3
{
  v4 = [_UIColorPickerActionHostToClient actionForConfiguration:a3];
  [(_UISceneHostingController *)self->_hostingController sendAction:v4];
}

- (void)dismissEyedropper:(BOOL)a3
{
  v4 = [_UIColorPickerActionHostToClient actionForDismissEyeDropper:a3];
  [(_UISceneHostingController *)self->_hostingController sendAction:v4];
}

- (void)clientIsReady
{
  v3 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  v4 = [v3 _selectedColor];
  [(_UIColorPickerSceneHostingImpl *)self setRemoteSelectedColor:v4];

  v5 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [v5 _endDelayingPresentation];
}

- (void)_pickerDidDismissEyedropper
{
  v3 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [v3 _pickerDidDismissEyedropper];

  [(BSInvalidatable *)self->_foregroundAssertion invalidate];
  foregroundAssertion = self->_foregroundAssertion;
  self->_foregroundAssertion = 0;
}

- (void)_pickerDidFinish
{
  v2 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [v2 _pickerDidFinish];
}

- (void)_pickerDidFloatEyedropper
{
  v2 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [v2 _pickerDidFloatEyedropper];
}

- (void)_pickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [v10 _pickerDidSelectColor:v9 colorSpace:v8 isVolatile:v5];
}

- (void)_pickerDidShowEyedropper
{
  v3 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [v3 _pickerDidShowEyedropper];

  v6 = [(_UISceneHostingController *)self->_hostingController activationStateComponent];
  v4 = [v6 foregroundAssertionForReason:@"eyedropper"];
  foregroundAssertion = self->_foregroundAssertion;
  self->_foregroundAssertion = v4;
}

- (UIColorPickerViewController)delegateColorPickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->delegateColorPickerViewController);

  return WeakRetained;
}

@end