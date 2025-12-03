@interface UIImageSymbolConfiguration(TelephonyUI)
+ (id)hierarchicalTpConfigurationWithStaticTextStyle:()TelephonyUI scale:color:;
+ (id)paletteTpConfigurationWithStaticTextStyle:()TelephonyUI scale:colors:;
+ (id)tpConfigurationWithStaticTextStyle:()TelephonyUI scale:;
+ (id)tpConfigurationWithStaticTextStyle:()TelephonyUI scale:symbolWeight:;
@end

@implementation UIImageSymbolConfiguration(TelephonyUI)

+ (id)tpConfigurationWithStaticTextStyle:()TelephonyUI scale:
{
  v6 = MEMORY[0x1E69DB880];
  v7 = MEMORY[0x1E69DD1B8];
  v8 = *MEMORY[0x1E69DDC78];
  v9 = a3;
  v10 = [v7 traitCollectionWithPreferredContentSizeCategory:v8];
  v11 = [v6 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v10];

  fontAttributes = [v11 fontAttributes];
  v13 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB8F0]];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
  [v14 floatValue];
  v16 = v15;

  v17 = MEMORY[0x1B8C79DB0](v16);
  [v11 pointSize];
  v18 = [self configurationWithPointSize:v17 weight:a4 scale:?];

  return v18;
}

+ (id)hierarchicalTpConfigurationWithStaticTextStyle:()TelephonyUI scale:color:
{
  v8 = MEMORY[0x1E69DB880];
  v9 = MEMORY[0x1E69DD1B8];
  v10 = *MEMORY[0x1E69DDC78];
  v11 = a5;
  v12 = a3;
  v13 = [v9 traitCollectionWithPreferredContentSizeCategory:v10];
  v14 = [v8 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:v13];

  fontAttributes = [v14 fontAttributes];
  v16 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB8F0]];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
  [v17 floatValue];
  v19 = v18;

  v20 = MEMORY[0x1B8C79DB0](v19);
  [v14 pointSize];
  v21 = [self configurationWithPointSize:v20 weight:a4 scale:?];
  v22 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v11];

  v23 = [v22 configurationByApplyingConfiguration:v21];

  return v23;
}

+ (id)paletteTpConfigurationWithStaticTextStyle:()TelephonyUI scale:colors:
{
  v7 = MEMORY[0x1E69DB880];
  v8 = *MEMORY[0x1E69DDDB8];
  v9 = MEMORY[0x1E69DD1B8];
  v10 = *MEMORY[0x1E69DDC78];
  v11 = a5;
  v12 = [v9 traitCollectionWithPreferredContentSizeCategory:v10];
  v13 = [v7 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v12];

  fontAttributes = [v13 fontAttributes];
  v15 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB8F0]];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
  [v16 floatValue];
  v18 = v17;

  v19 = MEMORY[0x1B8C79DB0](v18);
  [v13 pointSize];
  v20 = [self configurationWithPointSize:v19 weight:a4 scale:?];
  v21 = [MEMORY[0x1E69DCAD8] configurationWithPaletteColors:v11];

  v22 = [v21 configurationByApplyingConfiguration:v20];

  return v22;
}

+ (id)tpConfigurationWithStaticTextStyle:()TelephonyUI scale:symbolWeight:
{
  v8 = MEMORY[0x1E69DB880];
  v9 = MEMORY[0x1E69DD1B8];
  v10 = *MEMORY[0x1E69DDC78];
  v11 = a3;
  v12 = [v9 traitCollectionWithPreferredContentSizeCategory:v10];
  v13 = [v8 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v12];

  [v13 pointSize];
  v14 = [self configurationWithPointSize:a5 weight:a4 scale:?];

  return v14;
}

@end