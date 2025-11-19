@interface UIContentUnavailableConfiguration(PXDefaultConfiguration)
+ (id)px_containerized_defaultConfiguration;
@end

@implementation UIContentUnavailableConfiguration(PXDefaultConfiguration)

+ (id)px_containerized_defaultConfiguration
{
  v0 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8]];
  v2 = [v0 imageProperties];
  [v2 setPreferredSymbolConfiguration:v1];

  v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v4 = [v0 imageProperties];
  [v4 setTintColor:v3];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v6 = [v0 textProperties];
  [v6 setFont:v5];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v8 = [v0 textProperties];
  [v8 setColor:v7];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v10 = [v0 secondaryTextProperties];
  [v10 setFont:v9];

  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12 = [v0 secondaryTextProperties];
  [v12 setColor:v11];

  [v0 setImageToTextPadding:8.0];
  [v0 setTextToSecondaryTextPadding:4.0];
  [v0 setTextToButtonPadding:12.0];
  [v0 setButtonToSecondaryButtonPadding:12.0];
  if (objc_opt_respondsToSelector())
  {
    [v0 setDirectionalLayoutMargins:{20.0, 20.0, 20.0, 20.0}];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v14 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [v13 setBackgroundColor:v14];

    [v0 setBackground:v13];
  }

  return v0;
}

@end