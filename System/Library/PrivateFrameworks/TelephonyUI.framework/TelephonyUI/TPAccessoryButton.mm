@interface TPAccessoryButton
- (void)configureForImage:(id)image;
@end

@implementation TPAccessoryButton

- (void)configureForImage:(id)image
{
  v4 = MEMORY[0x1E69DC740];
  imageCopy = image;
  filledButtonConfiguration = [v4 filledButtonConfiguration];
  [filledButtonConfiguration setImage:imageCopy];

  v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  [filledButtonConfiguration setPreferredSymbolConfigurationForImage:v6];

  [filledButtonConfiguration setCornerStyle:4];
  [filledButtonConfiguration contentInsets];
  [filledButtonConfiguration setContentInsets:{v7 + 2.0, v8 + 2.0, v9 + 2.0, v10 + 2.0}];
  secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [filledButtonConfiguration setBaseBackgroundColor:secondarySystemFillColor];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [filledButtonConfiguration setBaseForegroundColor:systemBlueColor];

  [(TPAccessoryButton *)self setConfiguration:filledButtonConfiguration];
}

@end