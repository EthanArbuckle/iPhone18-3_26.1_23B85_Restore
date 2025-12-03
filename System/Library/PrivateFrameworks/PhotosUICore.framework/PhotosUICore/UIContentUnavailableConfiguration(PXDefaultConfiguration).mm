@interface UIContentUnavailableConfiguration(PXDefaultConfiguration)
+ (id)px_containerized_defaultConfiguration;
@end

@implementation UIContentUnavailableConfiguration(PXDefaultConfiguration)

+ (id)px_containerized_defaultConfiguration
{
  emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8]];
  imageProperties = [emptyConfiguration imageProperties];
  [imageProperties setPreferredSymbolConfiguration:v1];

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  imageProperties2 = [emptyConfiguration imageProperties];
  [imageProperties2 setTintColor:tertiaryLabelColor];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  textProperties = [emptyConfiguration textProperties];
  [textProperties setFont:v5];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  textProperties2 = [emptyConfiguration textProperties];
  [textProperties2 setColor:secondaryLabelColor];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  secondaryTextProperties = [emptyConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v9];

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

  return emptyConfiguration;
}

@end