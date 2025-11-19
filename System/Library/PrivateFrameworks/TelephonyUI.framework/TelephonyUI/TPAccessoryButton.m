@interface TPAccessoryButton
- (void)configureForImage:(id)a3;
@end

@implementation TPAccessoryButton

- (void)configureForImage:(id)a3
{
  v4 = MEMORY[0x1E69DC740];
  v5 = a3;
  v13 = [v4 filledButtonConfiguration];
  [v13 setImage:v5];

  v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  [v13 setPreferredSymbolConfigurationForImage:v6];

  [v13 setCornerStyle:4];
  [v13 contentInsets];
  [v13 setContentInsets:{v7 + 2.0, v8 + 2.0, v9 + 2.0, v10 + 2.0}];
  v11 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [v13 setBaseBackgroundColor:v11];

  v12 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v13 setBaseForegroundColor:v12];

  [(TPAccessoryButton *)self setConfiguration:v13];
}

@end