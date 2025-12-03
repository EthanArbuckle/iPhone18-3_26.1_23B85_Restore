@interface UIButtonConfiguration(PKUIUtilities)
+ (id)pkui_plainConfigurationWithImage:()PKUIUtilities foregroundColor:;
+ (id)pkui_plainConfigurationWithImage:()PKUIUtilities imageConfiguration:foregroundColor:;
+ (id)pkui_plainConfigurationWithTitle:()PKUIUtilities font:;
+ (id)pkui_plainConfigurationWithTitle:()PKUIUtilities font:lineBreakMode:textAlignment:;
+ (id)pkui_secondaryConfigurationWithTitle:()PKUIUtilities font:;
+ (void)pkui_createPlainButtonConfiguration;
+ (void)pkui_createPlainMinimalButtonConfiguration;
+ (void)pkui_createSecondaryButtonConfiguration;
@end

@implementation UIButtonConfiguration(PKUIUtilities)

+ (void)pkui_createPlainButtonConfiguration
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  background = [plainButtonConfiguration background];
  [background setCornerRadius:0.0];

  return plainButtonConfiguration;
}

+ (void)pkui_createPlainMinimalButtonConfiguration
{
  pkui_createPlainButtonConfiguration = [MEMORY[0x1E69DC740] pkui_createPlainButtonConfiguration];
  [pkui_createPlainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  return pkui_createPlainButtonConfiguration;
}

+ (id)pkui_plainConfigurationWithTitle:()PKUIUtilities font:
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  pkui_createPlainButtonConfiguration = [v5 pkui_createPlainButtonConfiguration];
  v9 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:v7 font:v6 paragraphStyle:0];

  [pkui_createPlainButtonConfiguration setAttributedTitle:v9];

  return pkui_createPlainButtonConfiguration;
}

+ (id)pkui_plainConfigurationWithTitle:()PKUIUtilities font:lineBreakMode:textAlignment:
{
  v9 = MEMORY[0x1E69DC740];
  v10 = a4;
  v11 = a3;
  pkui_createPlainButtonConfiguration = [v9 pkui_createPlainButtonConfiguration];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v14 = [defaultParagraphStyle mutableCopy];

  [v14 setLineBreakMode:a5];
  [v14 setAlignment:a6];
  v15 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:v11 font:v10 paragraphStyle:v14];

  [pkui_createPlainButtonConfiguration setAttributedTitle:v15];

  return pkui_createPlainButtonConfiguration;
}

+ (id)pkui_plainConfigurationWithImage:()PKUIUtilities foregroundColor:
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  pkui_createPlainMinimalButtonConfiguration = [v5 pkui_createPlainMinimalButtonConfiguration];
  [pkui_createPlainMinimalButtonConfiguration setImage:v7];

  [pkui_createPlainMinimalButtonConfiguration setBaseForegroundColor:v6];

  return pkui_createPlainMinimalButtonConfiguration;
}

+ (id)pkui_plainConfigurationWithImage:()PKUIUtilities imageConfiguration:foregroundColor:
{
  v7 = MEMORY[0x1E69DC740];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  pkui_createPlainMinimalButtonConfiguration = [v7 pkui_createPlainMinimalButtonConfiguration];
  [pkui_createPlainMinimalButtonConfiguration setImage:v10];

  [pkui_createPlainMinimalButtonConfiguration setPreferredSymbolConfigurationForImage:v9];
  [pkui_createPlainMinimalButtonConfiguration setBaseForegroundColor:v8];

  return pkui_createPlainMinimalButtonConfiguration;
}

+ (void)pkui_createSecondaryButtonConfiguration
{
  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [grayButtonConfiguration setCornerStyle:4];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [grayButtonConfiguration setBaseForegroundColor:labelColor];

  return grayButtonConfiguration;
}

+ (id)pkui_secondaryConfigurationWithTitle:()PKUIUtilities font:
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  pkui_createSecondaryButtonConfiguration = [v5 pkui_createSecondaryButtonConfiguration];
  v9 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:v7 font:v6 paragraphStyle:0];

  [pkui_createSecondaryButtonConfiguration setAttributedTitle:v9];

  return pkui_createSecondaryButtonConfiguration;
}

@end