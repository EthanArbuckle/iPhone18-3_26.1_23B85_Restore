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
  v0 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v1 = [v0 background];
  [v1 setCornerRadius:0.0];

  return v0;
}

+ (void)pkui_createPlainMinimalButtonConfiguration
{
  v0 = [MEMORY[0x1E69DC740] pkui_createPlainButtonConfiguration];
  [v0 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  return v0;
}

+ (id)pkui_plainConfigurationWithTitle:()PKUIUtilities font:
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  v8 = [v5 pkui_createPlainButtonConfiguration];
  v9 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:v7 font:v6 paragraphStyle:0];

  [v8 setAttributedTitle:v9];

  return v8;
}

+ (id)pkui_plainConfigurationWithTitle:()PKUIUtilities font:lineBreakMode:textAlignment:
{
  v9 = MEMORY[0x1E69DC740];
  v10 = a4;
  v11 = a3;
  v12 = [v9 pkui_createPlainButtonConfiguration];
  v13 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v14 = [v13 mutableCopy];

  [v14 setLineBreakMode:a5];
  [v14 setAlignment:a6];
  v15 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:v11 font:v10 paragraphStyle:v14];

  [v12 setAttributedTitle:v15];

  return v12;
}

+ (id)pkui_plainConfigurationWithImage:()PKUIUtilities foregroundColor:
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  v8 = [v5 pkui_createPlainMinimalButtonConfiguration];
  [v8 setImage:v7];

  [v8 setBaseForegroundColor:v6];

  return v8;
}

+ (id)pkui_plainConfigurationWithImage:()PKUIUtilities imageConfiguration:foregroundColor:
{
  v7 = MEMORY[0x1E69DC740];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 pkui_createPlainMinimalButtonConfiguration];
  [v11 setImage:v10];

  [v11 setPreferredSymbolConfigurationForImage:v9];
  [v11 setBaseForegroundColor:v8];

  return v11;
}

+ (void)pkui_createSecondaryButtonConfiguration
{
  v0 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [v0 setCornerStyle:4];
  v1 = [MEMORY[0x1E69DC888] labelColor];
  [v0 setBaseForegroundColor:v1];

  return v0;
}

+ (id)pkui_secondaryConfigurationWithTitle:()PKUIUtilities font:
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  v8 = [v5 pkui_createSecondaryButtonConfiguration];
  v9 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:v7 font:v6 paragraphStyle:0];

  [v8 setAttributedTitle:v9];

  return v8;
}

@end