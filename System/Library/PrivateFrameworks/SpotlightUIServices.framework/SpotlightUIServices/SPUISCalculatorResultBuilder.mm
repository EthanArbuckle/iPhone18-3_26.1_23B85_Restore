@interface SPUISCalculatorResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)currencyConversionAttributionImageWithSize:(CGSize)a3;
- (SPUISCalculatorResultBuilder)initWithResult:(id)a3;
- (id)buildBackgroundColor;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildCompactCardSection;
- (id)buildInlineCardSections;
- (id)buildPreviewButtonItems;
- (id)buildResult;
- (id)formattedInput;
@end

@implementation SPUISCalculatorResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SPUISCalculatorResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 sectionBundleIdentifier];
    v5 = [v6 isEqual:@"com.apple.conversion"];
  }

  return v5;
}

+ (id)currencyConversionAttributionImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_opt_new();
  [v5 setLocalImageType:3];
  [v5 setSize:{width, height}];

  return v5;
}

- (SPUISCalculatorResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SPUISCalculatorResultBuilder;
  v5 = [(SPUISResultBuilder *)&v13 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:@"SSAttributeCalculatorInput" withType:objc_opt_class()];
    if (v6)
    {
      [(SPUISCalculatorResultBuilder *)v5 setInput:v6];
    }

    else
    {
      v7 = [v4 userInput];
      [(SPUISCalculatorResultBuilder *)v5 setInput:v7];
    }

    v8 = [v4 valueForAttribute:@"SSAttributeCalculatorOutput" withType:objc_opt_class()];
    [(SPUISCalculatorResultBuilder *)v5 setOutput:v8];

    v9 = [v4 valueForAttribute:@"SSAttributeIsCurrencyConversion" withType:objc_opt_class()];
    -[SPUISCalculatorResultBuilder setIsCurrencyConversion:](v5, "setIsCurrencyConversion:", [v9 BOOLValue]);

    v10 = [v4 sectionBundleIdentifier];
    -[SPUISCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [v10 isEqualToString:@"com.apple.conversion"] ^ 1);

    v11 = [v4 valueForAttribute:@"SSAttributeIsCalculation" withType:objc_opt_class()];
    -[SPUISCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [v11 BOOLValue]);
  }

  return v5;
}

- (id)buildResult
{
  v3 = [(SPUISCalculatorResultBuilder *)self isCalculation];
  v4 = @"com.apple.conversion";
  if (v3)
  {
    v4 = @"com.apple.calculation";
  }

  v9.receiver = self;
  v9.super_class = SPUISCalculatorResultBuilder;
  if (v3)
  {
    v5 = 6;
  }

  else
  {
    v5 = 7;
  }

  v6 = v4;
  v7 = [(SPUISResultBuilder *)&v9 buildResult];
  [v7 setResultBundleId:{v6, v9.receiver, v9.super_class}];
  [v7 setSectionBundleIdentifier:v6];
  [v7 setApplicationBundleIdentifier:@"com.apple.calculation"];
  [v7 setPlacement:3];
  [v7 setType:v5];
  [v7 setIdentifier:v6];

  return v7;
}

- (id)buildInlineCardSections
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [SPUISUtilities localizedStringForKey:@"INLINE_EQUATION_FORMAT"];
  v5 = [(SPUISCalculatorResultBuilder *)self formattedInput];
  v6 = [v3 stringWithFormat:v4, v5];

  v7 = objc_opt_new();
  [v7 setTitle:v6];
  v8 = [(SPUISCalculatorResultBuilder *)self output];
  [v7 setSubtitle:v8];

  [v7 setSubtitleIsEmphasized:1];
  v9 = [(SPUISCalculatorResultBuilder *)self buildCommand];
  [v7 setCommand:v9];

  v10 = objc_opt_new();
  v11 = [(SPUISCalculatorResultBuilder *)self output];
  [v10 setCopyableString:v11];

  v12 = objc_opt_new();
  [v12 setCopyableItem:v10];
  v13 = objc_opt_new();
  [v13 setCommand:v12];
  v14 = [(SPUISCalculatorResultBuilder *)self buildButtonItems];
  [v7 setButtonItems:v14];

  if ([(SPUISCalculatorResultBuilder *)self isCurrencyConversion])
  {
    [v7 setSeparatorStyle:1];
    v15 = objc_opt_new();
    v16 = [objc_opt_class() currencyConversionAttributionImageWithSize:{78.0, 12.0}];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v15 setIcons:v17];

    v18 = [(SPUISCalculatorResultBuilder *)self buildCommand];
    [v18 setShouldOpenCurrencyConversionProvider:1];
    v19 = objc_alloc_init(MEMORY[0x277D4C1D8]);
    [v19 setTrailingAttribution:v15];
    [v19 setTrailingAttributionCommand:v18];
    v20 = [v7 command];
    [v19 setCommand:v20];

    v25[0] = v7;
    v25[1] = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  }

  else
  {
    v24 = v7;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)buildCompactCardSection
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [SPUISUtilities localizedStringForKey:@"COMPACT_EQUATION_FORMAT"];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(SPUISCalculatorResultBuilder *)self formattedInput];
  v6 = [(SPUISCalculatorResultBuilder *)self output];
  v7 = [v4 stringWithFormat:v3, v5, v6];

  v16.receiver = self;
  v16.super_class = SPUISCalculatorResultBuilder;
  v8 = [(SPUISResultBuilder *)&v16 buildCompactCardSection];
  v9 = [MEMORY[0x277D4C598] textWithString:v7];
  [v8 setTitle:v9];

  if ([(SPUISCalculatorResultBuilder *)self isCurrencyConversion])
  {
    v10 = [MEMORY[0x277D4C598] textWithString:@" "];
    v11 = [objc_opt_class() currencyConversionAttributionImageWithSize:{91.0, 15.0}];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v10 setIcons:v12];

    v17 = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v8 setDescriptions:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = [(SPUISCalculatorResultBuilder *)self input];
  [v3 setInput:v4];

  v5 = [(SPUISCalculatorResultBuilder *)self output];
  [v3 setOutput:v5];

  return v3;
}

- (id)buildPreviewButtonItems
{
  if ([(SPUISCalculatorResultBuilder *)self isCalculation]&& !+[SPUISUtilities isMacOS])
  {
    v5.receiver = self;
    v5.super_class = SPUISCalculatorResultBuilder;
    v3 = [(SPUISResultBuilder *)&v5 buildPreviewButtonItems];
  }

  else
  {
    v3 = [(SPUISCalculatorResultBuilder *)self buildButtonItems];
  }

  return v3;
}

- (id)buildButtonItems
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISCalculatorResultBuilder *)self output];
  [v3 setCopyableString:v4];

  v5 = objc_opt_new();
  [v5 setCopyableItem:v3];
  v6 = objc_opt_new();
  [v6 setCommand:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)buildBackgroundColor
{
  v2 = objc_opt_new();
  [v2 setApplicationBundleIdentifier:@"com.apple.calculator"];

  return v2;
}

- (id)formattedInput
{
  v3 = [(SPUISCalculatorResultBuilder *)self input];
  v4 = [v3 length];

  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[=＝]\\s*$" options:0 error:&v11];
    v6 = 0;
    if (v5)
    {
      v7 = v11 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [(SPUISCalculatorResultBuilder *)self input];
      v9 = [(SPUISCalculatorResultBuilder *)self input];
      v6 = [v5 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v9, "length"), &stru_287C50EE8}];
    }
  }

  else
  {
    v6 = [(SPUISCalculatorResultBuilder *)self input];
  }

  return v6;
}

@end