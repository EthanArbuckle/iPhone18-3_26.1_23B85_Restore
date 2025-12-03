@interface SPUISCalculatorResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)currencyConversionAttributionImageWithSize:(CGSize)size;
- (SPUISCalculatorResultBuilder)initWithResult:(id)result;
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

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SPUISCalculatorResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    v5 = [sectionBundleIdentifier isEqual:@"com.apple.conversion"];
  }

  return v5;
}

+ (id)currencyConversionAttributionImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_opt_new();
  [v5 setLocalImageType:3];
  [v5 setSize:{width, height}];

  return v5;
}

- (SPUISCalculatorResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = SPUISCalculatorResultBuilder;
  v5 = [(SPUISResultBuilder *)&v13 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:@"SSAttributeCalculatorInput" withType:objc_opt_class()];
    if (v6)
    {
      [(SPUISCalculatorResultBuilder *)v5 setInput:v6];
    }

    else
    {
      userInput = [resultCopy userInput];
      [(SPUISCalculatorResultBuilder *)v5 setInput:userInput];
    }

    v8 = [resultCopy valueForAttribute:@"SSAttributeCalculatorOutput" withType:objc_opt_class()];
    [(SPUISCalculatorResultBuilder *)v5 setOutput:v8];

    v9 = [resultCopy valueForAttribute:@"SSAttributeIsCurrencyConversion" withType:objc_opt_class()];
    -[SPUISCalculatorResultBuilder setIsCurrencyConversion:](v5, "setIsCurrencyConversion:", [v9 BOOLValue]);

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    -[SPUISCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [sectionBundleIdentifier isEqualToString:@"com.apple.conversion"] ^ 1);

    v11 = [resultCopy valueForAttribute:@"SSAttributeIsCalculation" withType:objc_opt_class()];
    -[SPUISCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [v11 BOOLValue]);
  }

  return v5;
}

- (id)buildResult
{
  isCalculation = [(SPUISCalculatorResultBuilder *)self isCalculation];
  v4 = @"com.apple.conversion";
  if (isCalculation)
  {
    v4 = @"com.apple.calculation";
  }

  v9.receiver = self;
  v9.super_class = SPUISCalculatorResultBuilder;
  if (isCalculation)
  {
    v5 = 6;
  }

  else
  {
    v5 = 7;
  }

  v6 = v4;
  buildResult = [(SPUISResultBuilder *)&v9 buildResult];
  [buildResult setResultBundleId:{v6, v9.receiver, v9.super_class}];
  [buildResult setSectionBundleIdentifier:v6];
  [buildResult setApplicationBundleIdentifier:@"com.apple.calculation"];
  [buildResult setPlacement:3];
  [buildResult setType:v5];
  [buildResult setIdentifier:v6];

  return buildResult;
}

- (id)buildInlineCardSections
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [SPUISUtilities localizedStringForKey:@"INLINE_EQUATION_FORMAT"];
  formattedInput = [(SPUISCalculatorResultBuilder *)self formattedInput];
  v6 = [v3 stringWithFormat:v4, formattedInput];

  v7 = objc_opt_new();
  [v7 setTitle:v6];
  output = [(SPUISCalculatorResultBuilder *)self output];
  [v7 setSubtitle:output];

  [v7 setSubtitleIsEmphasized:1];
  buildCommand = [(SPUISCalculatorResultBuilder *)self buildCommand];
  [v7 setCommand:buildCommand];

  v10 = objc_opt_new();
  output2 = [(SPUISCalculatorResultBuilder *)self output];
  [v10 setCopyableString:output2];

  v12 = objc_opt_new();
  [v12 setCopyableItem:v10];
  v13 = objc_opt_new();
  [v13 setCommand:v12];
  buildButtonItems = [(SPUISCalculatorResultBuilder *)self buildButtonItems];
  [v7 setButtonItems:buildButtonItems];

  if ([(SPUISCalculatorResultBuilder *)self isCurrencyConversion])
  {
    [v7 setSeparatorStyle:1];
    v15 = objc_opt_new();
    v16 = [objc_opt_class() currencyConversionAttributionImageWithSize:{78.0, 12.0}];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v15 setIcons:v17];

    buildCommand2 = [(SPUISCalculatorResultBuilder *)self buildCommand];
    [buildCommand2 setShouldOpenCurrencyConversionProvider:1];
    v19 = objc_alloc_init(MEMORY[0x277D4C1D8]);
    [v19 setTrailingAttribution:v15];
    [v19 setTrailingAttributionCommand:buildCommand2];
    command = [v7 command];
    [v19 setCommand:command];

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
  formattedInput = [(SPUISCalculatorResultBuilder *)self formattedInput];
  output = [(SPUISCalculatorResultBuilder *)self output];
  v7 = [v4 stringWithFormat:v3, formattedInput, output];

  v16.receiver = self;
  v16.super_class = SPUISCalculatorResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v16 buildCompactCardSection];
  v9 = [MEMORY[0x277D4C598] textWithString:v7];
  [buildCompactCardSection setTitle:v9];

  if ([(SPUISCalculatorResultBuilder *)self isCurrencyConversion])
  {
    v10 = [MEMORY[0x277D4C598] textWithString:@" "];
    v11 = [objc_opt_class() currencyConversionAttributionImageWithSize:{91.0, 15.0}];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v10 setIcons:v12];

    v17 = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [buildCompactCardSection setDescriptions:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return buildCompactCardSection;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  input = [(SPUISCalculatorResultBuilder *)self input];
  [v3 setInput:input];

  output = [(SPUISCalculatorResultBuilder *)self output];
  [v3 setOutput:output];

  return v3;
}

- (id)buildPreviewButtonItems
{
  if ([(SPUISCalculatorResultBuilder *)self isCalculation]&& !+[SPUISUtilities isMacOS])
  {
    v5.receiver = self;
    v5.super_class = SPUISCalculatorResultBuilder;
    buildPreviewButtonItems = [(SPUISResultBuilder *)&v5 buildPreviewButtonItems];
  }

  else
  {
    buildPreviewButtonItems = [(SPUISCalculatorResultBuilder *)self buildButtonItems];
  }

  return buildPreviewButtonItems;
}

- (id)buildButtonItems
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  output = [(SPUISCalculatorResultBuilder *)self output];
  [v3 setCopyableString:output];

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
  input = [(SPUISCalculatorResultBuilder *)self input];
  v4 = [input length];

  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[=＝]\\s*$" options:0 error:&v11];
    input4 = 0;
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
      input2 = [(SPUISCalculatorResultBuilder *)self input];
      input3 = [(SPUISCalculatorResultBuilder *)self input];
      input4 = [v5 stringByReplacingMatchesInString:input2 options:0 range:0 withTemplate:{objc_msgSend(input3, "length"), &stru_287C50EE8}];
    }
  }

  else
  {
    input4 = [(SPUISCalculatorResultBuilder *)self input];
  }

  return input4;
}

@end