@interface SSCalculatorResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)currencyConversionAttributionImageWithSize:(CGSize)a3;
- (SSCalculatorResultBuilder)initWithResult:(id)a3;
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

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SSCalculatorResultBuilder;
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

- (SSCalculatorResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SSCalculatorResultBuilder;
  v5 = [(SSResultBuilder *)&v13 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:@"SSAttributeCalculatorInput" withType:objc_opt_class()];
    if (v6)
    {
      [(SSCalculatorResultBuilder *)v5 setInput:v6];
    }

    else
    {
      v7 = [v4 userInput];
      [(SSCalculatorResultBuilder *)v5 setInput:v7];
    }

    v8 = [v4 valueForAttribute:@"SSAttributeCalculatorOutput" withType:objc_opt_class()];
    [(SSCalculatorResultBuilder *)v5 setOutput:v8];

    v9 = [v4 valueForAttribute:@"SSAttributeIsCurrencyConversion" withType:objc_opt_class()];
    -[SSCalculatorResultBuilder setIsCurrencyConversion:](v5, "setIsCurrencyConversion:", [v9 BOOLValue]);

    v10 = [v4 sectionBundleIdentifier];
    -[SSCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [v10 isEqualToString:@"com.apple.conversion"] ^ 1);

    v11 = [v4 valueForAttribute:@"SSAttributeIsCalculation" withType:objc_opt_class()];
    -[SSCalculatorResultBuilder setIsCalculation:](v5, "setIsCalculation:", [v11 BOOLValue]);
  }

  return v5;
}

- (id)buildResult
{
  v3 = [(SSCalculatorResultBuilder *)self isCalculation];
  v4 = @"com.apple.conversion";
  if (v3)
  {
    v4 = @"com.apple.calculation";
  }

  v9.receiver = self;
  v9.super_class = SSCalculatorResultBuilder;
  if (v3)
  {
    v5 = 6;
  }

  else
  {
    v5 = 7;
  }

  v6 = v4;
  v7 = [(SSResultBuilder *)&v9 buildResult];
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
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INLINE_EQUATION_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v6 = [(SSCalculatorResultBuilder *)self formattedInput];
  v7 = [v3 stringWithFormat:v5, v6];

  v8 = objc_opt_new();
  [v8 setTitle:v7];
  v9 = [(SSCalculatorResultBuilder *)self output];
  [v8 setSubtitle:v9];

  [v8 setSubtitleIsEmphasized:1];
  v10 = [(SSCalculatorResultBuilder *)self buildCommand];
  [v8 setCommand:v10];

  v11 = objc_opt_new();
  v12 = [(SSCalculatorResultBuilder *)self output];
  [v11 setCopyableString:v12];

  v13 = objc_opt_new();
  [v13 setCopyableItem:v11];
  v14 = objc_opt_new();
  [v14 setCommand:v13];
  v15 = [(SSCalculatorResultBuilder *)self buildButtonItems];
  [v8 setButtonItems:v15];

  if ([(SSCalculatorResultBuilder *)self isCurrencyConversion])
  {
    [v8 setSeparatorStyle:1];
    v16 = objc_opt_new();
    v17 = [objc_opt_class() currencyConversionAttributionImageWithSize:{78.0, 12.0}];
    v27[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [v16 setIcons:v18];

    v19 = [(SSCalculatorResultBuilder *)self buildCommand];
    [v19 setShouldOpenCurrencyConversionProvider:1];
    v20 = objc_alloc_init(MEMORY[0x1E69C9EB0]);
    [v20 setTrailingAttribution:v16];
    [v20 setTrailingAttributionCommand:v19];
    v21 = [v8 command];
    [v20 setCommand:v21];

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
  v6 = [(SSCalculatorResultBuilder *)self formattedInput];
  v7 = [(SSCalculatorResultBuilder *)self output];
  v8 = [v5 stringWithFormat:v4, v6, v7];

  v17.receiver = self;
  v17.super_class = SSCalculatorResultBuilder;
  v9 = [(SSResultBuilder *)&v17 buildCompactCardSection];
  v10 = [MEMORY[0x1E69CA3A0] textWithString:v8];
  [v9 setTitle:v10];

  if ([(SSCalculatorResultBuilder *)self isCurrencyConversion])
  {
    v11 = [MEMORY[0x1E69CA3A0] textWithString:@" "];
    v12 = [objc_opt_class() currencyConversionAttributionImageWithSize:{91.0, 15.0}];
    v19[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v11 setIcons:v13];

    v18 = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v9 setDescriptions:v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = [(SSCalculatorResultBuilder *)self input];
  [v3 setInput:v4];

  v5 = [(SSCalculatorResultBuilder *)self output];
  [v3 setOutput:v5];

  return v3;
}

- (id)buildPreviewButtonItems
{
  if ([(SSCalculatorResultBuilder *)self isCalculation]&& (isMacOS() & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = SSCalculatorResultBuilder;
    v3 = [(SSResultBuilder *)&v5 buildPreviewButtonItems];
  }

  else
  {
    v3 = [(SSCalculatorResultBuilder *)self buildButtonItems];
  }

  return v3;
}

- (id)buildButtonItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(SSCalculatorResultBuilder *)self output];
  [v3 setCopyableString:v4];

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
  v3 = [(SSCalculatorResultBuilder *)self input];
  v4 = [v3 length];

  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[=＝]\\s*$" options:0 error:&v11];
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
      v8 = [(SSCalculatorResultBuilder *)self input];
      v9 = [(SSCalculatorResultBuilder *)self input];
      v6 = [v5 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v9, "length"), &stru_1F556FE60}];
    }
  }

  else
  {
    v6 = [(SSCalculatorResultBuilder *)self input];
  }

  return v6;
}

@end