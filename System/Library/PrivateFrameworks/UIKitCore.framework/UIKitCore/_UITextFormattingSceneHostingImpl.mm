@interface _UITextFormattingSceneHostingImpl
- (UITextFormattingViewController)delegateTextFormattingViewController;
- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color;
- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts;
- (void)_presentTypographySettingsForFont:(id)font;
- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data;
- (void)_textFormattingDidFinish;
- (void)clientIsReady;
- (void)setRemoteConfiguration:(id)configuration;
- (void)setRemoteFormattingDescriptor:(id)descriptor;
- (void)setupRemoteHosting;
- (void)setupSceneHosting;
@end

@implementation _UITextFormattingSceneHostingImpl

- (void)setupRemoteHosting
{
  if (!self->_hostingController)
  {
    delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
    [delegateTextFormattingViewController _beginDelayingPresentation:&__block_literal_global_572 cancellationHandler:3.0];

    [(_UITextFormattingSceneHostingImpl *)self setupSceneHosting];
  }
}

- (void)setRemoteConfiguration:(id)configuration
{
  hostingController = self->_hostingController;
  v4 = [_UITextFormattingActionHostToClient actionForConfiguration:configuration];
  [(_UISceneHostingController *)hostingController sendAction:v4];
}

- (void)setRemoteFormattingDescriptor:(id)descriptor
{
  hostingController = self->_hostingController;
  v4 = [_UITextFormattingActionHostToClient actionForFormattingDescriptor:descriptor];
  [(_UISceneHostingController *)hostingController sendAction:v4];
}

- (void)setupSceneHosting
{
  if (!self->_hostingController)
  {
    v12 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.UIKit.FontPickerUIService"];
    v4 = [_UISceneHostingController alloc];
    v5 = +[(FBSSceneSpecification *)_UITextFormattingSceneSpecification];
    v6 = [(_UISceneHostingController *)v4 initWithProcessIdentity:v12 sceneSpecification:v5];
    hostingController = self->_hostingController;
    self->_hostingController = v6;

    [(_UISceneHostingController *)self->_hostingController setDelegate:self];
    sceneViewController = [(_UISceneHostingController *)self->_hostingController sceneViewController];
    delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
    [delegateTextFormattingViewController _setChildViewController:sceneViewController];

    delegateTextFormattingViewController2 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
    configuration = [delegateTextFormattingViewController2 configuration];
    [(_UITextFormattingSceneHostingImpl *)self setRemoteConfiguration:configuration];
  }
}

- (void)clientIsReady
{
  delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [delegateTextFormattingViewController _endDelayingPresentation];
}

- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data
{
  dataCopy = data;
  valueCopy = value;
  delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [delegateTextFormattingViewController _textFormattingDidChangeValue:valueCopy textAttributesData:dataCopy];
}

- (void)_textFormattingDidFinish
{
  delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [delegateTextFormattingViewController _textFormattingDidFinish];
}

- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color
{
  height = picker.size.height;
  width = picker.size.width;
  y = picker.origin.y;
  x = picker.origin.x;
  colorCopy = color;
  delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [delegateTextFormattingViewController _presentColorPicker:colorCopy selectedColor:{x, y, width, height}];
}

- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts
{
  fontsCopy = fonts;
  configurationCopy = configuration;
  delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [delegateTextFormattingViewController _presentFontPickerWithConfiguration:configurationCopy selectedFonts:fontsCopy];
}

- (void)_presentTypographySettingsForFont:(id)font
{
  fontCopy = font;
  delegateTextFormattingViewController = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [delegateTextFormattingViewController _presentTypographySettingsForFont:fontCopy];
}

- (UITextFormattingViewController)delegateTextFormattingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->delegateTextFormattingViewController);

  return WeakRetained;
}

@end