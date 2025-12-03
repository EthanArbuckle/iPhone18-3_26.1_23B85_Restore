@interface SSCalculatorResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)currencyConversionAttributionImageWithSize:(CGSize)size;
- (SSCalculatorResultBuilder)initWithResult:(id)result;
- (id)buildBackgroundColor;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildCompactCardSection;
- (id)buildInlineCardSections;
- (id)buildPreviewButtonItems;
- (id)buildResult;
- (id)formattedInput;
@end

@implementation SSCalculatorResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SSCalculatorResultBuilder;
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

- (SSCalculatorResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = SSCalculatorResultBuilder;
  v5 = [(SSResultBuilder *)&v13 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:@"SSAttributeCalculatorInput" withType:objc_opt_class()];
    if (v6)
    {
      [(SSCalculatorResultBuilder *)v5 setInput:v6];
    }

    else
    {
      userInput = [resultCopy userInput];
      [(SSCalculatorResultBuilder *)v5 setInput:userInput];
    }

    v8 = [resultCopy valueForAttribute:@"SSAttributeCalculatorOutput" withType:objc_opt_class()];
    [(SSCalculatorResultBuilder *)v5 setOutput:v8];

    v9 = [resultCopy valueForAttribute:@"SSAttributeIsCurrencyConversion" withType:objc_opt_class()];
    -[SSCalculatorResultBuilder setIsCurrencyConversion:](v5, "setIsCurrencyConversion:", [v9 BOOLValue]);

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    -[SSCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [sectionBundleIdentifier isEqualToString:@"com.apple.conversion"] ^ 1);

    v11 = [resultCopy valueForAttribute:@"SSAttributeIsCalculation" withType:objc_opt_class()];
    -[SSCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [v11 BOOLValue]);
  }

  return v5;
}

- (id)buildResult
{
  isCalculation = [(SSCalculatorResultBuilder *)self isCalculation];
  v4 = @"com.apple.conversion";
  if (isCalculation)
  {
    v4 = @"com.apple.calculation";
  }

  v9.receiver = self;
  v9.super_class = SSCalculatorResultBuilder;
  if (isCalculation)
  {
    v5 = 6;
  }

  else
  {
    v5 = 7;
  }

  v6 = v4;
  buildResult = [(SSResultBuilder *)&v9 buildResult];
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
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INLINE_EQUATION_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
  formattedInput = [(SSCalculatorResultBuilder *)self formattedInput];
  v7 = [v3 stringWithFormat:v5, formattedInput];

  v8 = objc_opt_new();
  [v8 setTitle:v7];
  output = [(SSCalculatorResultBuilder *)self output];
  [v8 setSubtitle:output];

  [v8 setSubtitleIsEmphasized:1];
  buildCommand = [(SSCalculatorResultBuilder *)self buildCommand];
  [v8 setCommand:buildCommand];

  v11 = objc_opt_new();
  output2 = [(SSCalculatorResultBuilder *)self output];
  [v11 setCopyableString:output2];

  v13 = objc_opt_new();
  [v13 setCopyableItem:v11];
  v14 = objc_opt_new();
  [v14 setCommand:v13];
  buildButtonItems = [(SSCalculatorResultBuilder *)self buildButtonItems];
  [v8 setButtonItems:buildButtonItems];

  if ([(SSCalculatorResultBuilder *)self isCurrencyConversion])
  {
    [v8 setSeparatorStyle:1];
    v16 = objc_opt_new();
    v17 = [objc_opt_class() currencyConversionAttributionImageWithSize:{78.0, 12.0}];
    v27[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [v16 setIcons:v18];

    buildCommand2 = [(SSCalculatorResultBuilder *)self buildCommand];
    [buildCommand2 setShouldOpenCurrencyConversionProvider:1];
    v20 = objc_alloc_init(MEMORY[0x1E69C9EB0]);
    [v20 setTrailingAttribution:v16];
    [v20 setTrailingAttributionCommand:buildCommand2];
    command = [v8 command];
    [v20 setCommand:command];

    v26[0] = v8;
    v26[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  }

  else
  {
    v25 = v8;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)buildCompactCardSection
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"COMPACT_EQUATION_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];

  v5 = MEMORY[0x1E696AEC0];
  formattedInput = [(SSCalculatorResultBuilder *)self formattedInput];
  output = [(SSCalculatorResultBuilder *)self output];
  v8 = [v5 stringWithFormat:v4, formattedInput, output];

  v17.receiver = self;
  v17.super_class = SSCalculatorResultBuilder;
  buildCompactCardSection = [(SSResultBuilder *)&v17 buildCompactCardSection];
  v10 = [MEMORY[0x1E69CA3A0] textWithString:v8];
  [buildCompactCardSection setTitle:v10];

  if ([(SSCalculatorResultBuilder *)self isCurrencyConversion])
  {
    v11 = [MEMORY[0x1E69CA3A0] textWithString:@" "];
    v12 = [objc_opt_class() currencyConversionAttributionImageWithSize:{91.0, 15.0}];
    v19[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v11 setIcons:v13];

    v18 = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [buildCompactCardSection setDescriptions:v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return buildCompactCardSection;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  input = [(SSCalculatorResultBuilder *)self input];
  [v3 setInput:input];

  output = [(SSCalculatorResultBuilder *)self output];
  [v3 setOutput:output];

  return v3;
}

- (id)buildPreviewButtonItems
{
  if ([(SSCalculatorResultBuilder *)self isCalculation]&& (isMacOS() & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = SSCalculatorResultBuilder;
    buildPreviewButtonItems = [(SSResultBuilder *)&v5 buildPreviewButtonItems];
  }

  else
  {
    buildPreviewButtonItems = [(SSCalculatorResultBuilder *)self buildButtonItems];
  }

  return buildPreviewButtonItems;
}

- (id)buildButtonItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  output = [(SSCalculatorResultBuilder *)self output];
  [v3 setCopyableString:output];

  v5 = objc_opt_new();
  [v5 setCopyableItem:v3];
  v6 = objc_opt_new();
  [v6 setCommand:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x1E69E9840];

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
  input = [(SSCalculatorResultBuilder *)self input];
  v4 = [input length];

  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[=＝]\\s*$" options:0 error:&v11];
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
      input2 = [(SSCalculatorResultBuilder *)self input];
      input3 = [(SSCalculatorResultBuilder *)self input];
      input4 = [v5 stringByReplacingMatchesInString:input2 options:0 range:0 withTemplate:{objc_msgSend(input3, "length"), &stru_1F556FE60}];
    }
  }

  else
  {
    input4 = [(SSCalculatorResultBuilder *)self input];
  }

  return input4;
}

@end