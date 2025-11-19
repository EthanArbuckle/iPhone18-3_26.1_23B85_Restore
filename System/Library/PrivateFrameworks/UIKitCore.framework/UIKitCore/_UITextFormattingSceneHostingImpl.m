@interface _UITextFormattingSceneHostingImpl
- (UITextFormattingViewController)delegateTextFormattingViewController;
- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4;
- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4;
- (void)_presentTypographySettingsForFont:(id)a3;
- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4;
- (void)_textFormattingDidFinish;
- (void)clientIsReady;
- (void)setRemoteConfiguration:(id)a3;
- (void)setRemoteFormattingDescriptor:(id)a3;
- (void)setupRemoteHosting;
- (void)setupSceneHosting;
@end

@implementation _UITextFormattingSceneHostingImpl

- (void)setupRemoteHosting
{
  if (!self->_hostingController)
  {
    v4 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
    [v4 _beginDelayingPresentation:&__block_literal_global_572 cancellationHandler:3.0];

    [(_UITextFormattingSceneHostingImpl *)self setupSceneHosting];
  }
}

- (void)setRemoteConfiguration:(id)a3
{
  hostingController = self->_hostingController;
  v4 = [_UITextFormattingActionHostToClient actionForConfiguration:a3];
  [(_UISceneHostingController *)hostingController sendAction:v4];
}

- (void)setRemoteFormattingDescriptor:(id)a3
{
  hostingController = self->_hostingController;
  v4 = [_UITextFormattingActionHostToClient actionForFormattingDescriptor:a3];
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
    v8 = [(_UISceneHostingController *)self->_hostingController sceneViewController];
    v9 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
    [v9 _setChildViewController:v8];

    v10 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
    v11 = [v10 configuration];
    [(_UITextFormattingSceneHostingImpl *)self setRemoteConfiguration:v11];
  }
}

- (void)clientIsReady
{
  v2 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [v2 _endDelayingPresentation];
}

- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [v8 _textFormattingDidChangeValue:v7 textAttributesData:v6];
}

- (void)_textFormattingDidFinish
{
  v2 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [v2 _textFormattingDidFinish];
}

- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [v10 _presentColorPicker:v9 selectedColor:{x, y, width, height}];
}

- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [v8 _presentFontPickerWithConfiguration:v7 selectedFonts:v6];
}

- (void)_presentTypographySettingsForFont:(id)a3
{
  v4 = a3;
  v5 = [(_UITextFormattingSceneHostingImpl *)self delegateTextFormattingViewController];
  [v5 _presentTypographySettingsForFont:v4];
}

- (UITextFormattingViewController)delegateTextFormattingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->delegateTextFormattingViewController);

  return WeakRetained;
}

@end