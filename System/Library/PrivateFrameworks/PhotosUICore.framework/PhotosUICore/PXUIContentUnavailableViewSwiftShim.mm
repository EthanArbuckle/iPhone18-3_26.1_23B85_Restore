@interface PXUIContentUnavailableViewSwiftShim
+ (id)lemonade_defaultFeedConfigurationWithTitle:(id)title subtitle:(id)subtitle systemImageName:(id)name buttonTitle:(id)buttonTitle buttonIsEnabled:(BOOL)enabled buttonAction:(id)action;
+ (id)lemonade_defaultRowConfigurationWithTitle:(id)title subtitle:(id)subtitle systemImageName:(id)name buttonTitle:(id)buttonTitle buttonIsEnabled:(BOOL)enabled buttonAction:(id)action;
- (PXUIContentUnavailableViewSwiftShim)init;
- (UIContentUnavailableView)unavailableView;
- (void)updateConfiguration:(id)configuration;
@end

@implementation PXUIContentUnavailableViewSwiftShim

- (void)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  unavailableView = [(PXUIContentUnavailableViewSwiftShim *)self unavailableView];
  [unavailableView setConfiguration:configurationCopy];
}

- (UIContentUnavailableView)unavailableView
{
  view = self->_view;
  if (!view)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC8D0]);
    v5 = [PXUIContentUnavailableViewSwiftShim lemonade_defaultRowConfigurationWithTitle:0 subtitle:0 systemImageName:0 buttonTitle:0 buttonIsEnabled:0 buttonAction:0];
    v6 = [v4 initWithConfiguration:v5];
    v7 = self->_view;
    self->_view = v6;

    view = self->_view;
  }

  return view;
}

- (PXUIContentUnavailableViewSwiftShim)init
{
  v3.receiver = self;
  v3.super_class = PXUIContentUnavailableViewSwiftShim;
  return [(PXUIContentUnavailableViewSwiftShim *)&v3 init];
}

+ (id)lemonade_defaultFeedConfigurationWithTitle:(id)title subtitle:(id)subtitle systemImageName:(id)name buttonTitle:(id)buttonTitle buttonIsEnabled:(BOOL)enabled buttonAction:(id)action
{
  v8 = [self lemonade_defaultRowConfigurationWithTitle:title subtitle:subtitle systemImageName:name buttonTitle:buttonTitle buttonIsEnabled:enabled buttonAction:action];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  imageProperties = [v8 imageProperties];
  [imageProperties setTintColor:labelColor];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  textProperties = [v8 textProperties];
  [textProperties setColor:labelColor2];

  labelColor3 = [MEMORY[0x1E69DC888] labelColor];
  secondaryTextProperties = [v8 secondaryTextProperties];
  [secondaryTextProperties setColor:labelColor3];

  if (objc_opt_respondsToSelector())
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [v8 setBackground:clearConfiguration];
  }

  return v8;
}

+ (id)lemonade_defaultRowConfigurationWithTitle:(id)title subtitle:(id)subtitle systemImageName:(id)name buttonTitle:(id)buttonTitle buttonIsEnabled:(BOOL)enabled buttonAction:(id)action
{
  enabledCopy = enabled;
  titleCopy = title;
  nameCopy = name;
  buttonTitleCopy = buttonTitle;
  actionCopy = action;
  v16 = MEMORY[0x1E69DC8C8];
  subtitleCopy = subtitle;
  emptyConfiguration = [v16 emptyConfiguration];
  v19 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8]];
  imageProperties = [emptyConfiguration imageProperties];
  [imageProperties setPreferredSymbolConfiguration:v19];

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  imageProperties2 = [emptyConfiguration imageProperties];
  [imageProperties2 setTintColor:tertiaryLabelColor];

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  textProperties = [emptyConfiguration textProperties];
  [textProperties setFont:v23];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  textProperties2 = [emptyConfiguration textProperties];
  [textProperties2 setColor:secondaryLabelColor];

  v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  secondaryTextProperties = [emptyConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v27];

  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondaryTextProperties2 = [emptyConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setColor:secondaryLabelColor2];

  [emptyConfiguration setImageToTextPadding:8.0];
  [emptyConfiguration setTextToSecondaryTextPadding:4.0];
  [emptyConfiguration setTextToButtonPadding:12.0];
  [emptyConfiguration setButtonToSecondaryButtonPadding:12.0];
  if (objc_opt_respondsToSelector())
  {
    [emptyConfiguration setDirectionalLayoutMargins:{20.0, 20.0, 20.0, 20.0}];
  }

  if (objc_opt_respondsToSelector())
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [clearConfiguration setBackgroundColor:systemGroupedBackgroundColor];

    [emptyConfiguration setBackground:clearConfiguration];
  }

  [emptyConfiguration setText:titleCopy];
  [emptyConfiguration setSecondaryText:subtitleCopy];

  if (nameCopy)
  {
    v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy];
    [emptyConfiguration setImage:v33];
  }

  else
  {
    [emptyConfiguration setImage:0];
  }

  buttonProperties = [emptyConfiguration buttonProperties];
  configuration = [buttonProperties configuration];
  v36 = configuration;
  if (actionCopy)
  {
    [configuration setTitle:buttonTitleCopy];

    buttonProperties2 = [emptyConfiguration buttonProperties];
    [buttonProperties2 setEnabled:enabledCopy];

    buttonProperties3 = [emptyConfiguration buttonProperties];
    v39 = buttonProperties3;
    v40 = actionCopy;
  }

  else
  {
    [configuration setTitle:0];

    buttonProperties4 = [emptyConfiguration buttonProperties];
    [buttonProperties4 setEnabled:1];

    buttonProperties3 = [emptyConfiguration buttonProperties];
    v39 = buttonProperties3;
    v40 = 0;
  }

  [buttonProperties3 setPrimaryAction:v40];

  return emptyConfiguration;
}

@end