@interface _UIColorPickerSceneHostingImpl
- (UIColorPickerViewController)delegateColorPickerViewController;
- (void)_pickerDidDismissEyedropper;
- (void)_pickerDidFinish;
- (void)_pickerDidFloatEyedropper;
- (void)_pickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile;
- (void)_pickerDidShowEyedropper;
- (void)clientIsReady;
- (void)dismissEyedropper:(BOOL)eyedropper;
- (void)setRemoteConfiguration:(id)configuration;
- (void)setRemoteSelectedColor:(id)color;
- (void)setupRemoteHosting;
@end

@implementation _UIColorPickerSceneHostingImpl

- (void)setupRemoteHosting
{
  if (!self->_hostingController)
  {
    delegateColorPickerViewController = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
    [delegateColorPickerViewController _beginDelayingPresentation:&__block_literal_global_465 cancellationHandler:3.0];

    v13 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.UIKit.ColorPickerUIService"];
    v5 = [_UISceneHostingController alloc];
    v6 = +[(FBSSceneSpecification *)_UISceneHostingSceneSpecification];
    v7 = [(_UISceneHostingController *)v5 initWithProcessIdentity:v13 sceneSpecification:v6];
    hostingController = self->_hostingController;
    self->_hostingController = v7;

    [(_UISceneHostingController *)self->_hostingController setDelegate:self];
    sceneViewController = [(_UISceneHostingController *)self->_hostingController sceneViewController];
    delegateColorPickerViewController2 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
    [delegateColorPickerViewController2 _setChildViewController:sceneViewController];

    delegateColorPickerViewController3 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
    configuration = [delegateColorPickerViewController3 configuration];
    [(_UIColorPickerSceneHostingImpl *)self setRemoteConfiguration:configuration];
  }
}

- (void)setRemoteSelectedColor:(id)color
{
  colorCopy = color;
  colorCopy2 = color;
  ColorSpace = CGColorGetColorSpace([colorCopy2 CGColor]);
  v9 = CGColorSpaceGetName(ColorSpace);
  v8 = [_UIColorPickerActionHostToClient actionForSelectedColor:colorCopy2 withColorSpace:v9];

  [(_UISceneHostingController *)self->_hostingController sendAction:v8];
}

- (void)setRemoteConfiguration:(id)configuration
{
  v4 = [_UIColorPickerActionHostToClient actionForConfiguration:configuration];
  [(_UISceneHostingController *)self->_hostingController sendAction:v4];
}

- (void)dismissEyedropper:(BOOL)eyedropper
{
  v4 = [_UIColorPickerActionHostToClient actionForDismissEyeDropper:eyedropper];
  [(_UISceneHostingController *)self->_hostingController sendAction:v4];
}

- (void)clientIsReady
{
  delegateColorPickerViewController = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  _selectedColor = [delegateColorPickerViewController _selectedColor];
  [(_UIColorPickerSceneHostingImpl *)self setRemoteSelectedColor:_selectedColor];

  delegateColorPickerViewController2 = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [delegateColorPickerViewController2 _endDelayingPresentation];
}

- (void)_pickerDidDismissEyedropper
{
  delegateColorPickerViewController = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [delegateColorPickerViewController _pickerDidDismissEyedropper];

  [(BSInvalidatable *)self->_foregroundAssertion invalidate];
  foregroundAssertion = self->_foregroundAssertion;
  self->_foregroundAssertion = 0;
}

- (void)_pickerDidFinish
{
  delegateColorPickerViewController = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [delegateColorPickerViewController _pickerDidFinish];
}

- (void)_pickerDidFloatEyedropper
{
  delegateColorPickerViewController = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [delegateColorPickerViewController _pickerDidFloatEyedropper];
}

- (void)_pickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile
{
  volatileCopy = volatile;
  spaceCopy = space;
  colorCopy = color;
  delegateColorPickerViewController = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [delegateColorPickerViewController _pickerDidSelectColor:colorCopy colorSpace:spaceCopy isVolatile:volatileCopy];
}

- (void)_pickerDidShowEyedropper
{
  delegateColorPickerViewController = [(_UIColorPickerSceneHostingImpl *)self delegateColorPickerViewController];
  [delegateColorPickerViewController _pickerDidShowEyedropper];

  activationStateComponent = [(_UISceneHostingController *)self->_hostingController activationStateComponent];
  v4 = [activationStateComponent foregroundAssertionForReason:@"eyedropper"];
  foregroundAssertion = self->_foregroundAssertion;
  self->_foregroundAssertion = v4;
}

- (UIColorPickerViewController)delegateColorPickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->delegateColorPickerViewController);

  return WeakRetained;
}

@end