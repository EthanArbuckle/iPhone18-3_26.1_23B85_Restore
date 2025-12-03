@interface SPUISWindowResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISWindowResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildWindowAppImage;
- (id)buildWindowSymbolImage;
@end

@implementation SPUISWindowResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  uniformContentType = [resultCopy uniformContentType];
  v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.window-tab"];
  if ([uniformContentType conformsToType:v5])
  {
    bOOLValue = 1;
  }

  else
  {
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2CC8] withType:objc_opt_class()];
    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (SPUISWindowResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SPUISWindowResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC32A8] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC32B0] withType:objc_opt_class()];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v7];
    [(SPUISWindowResultBuilder *)v5 setProcessInstanceIdentifier:v8];
  }

  return v5;
}

- (id)buildWindowAppImage
{
  v3 = objc_opt_new();
  result = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  [v3 setBundleIdentifier:applicationBundleIdentifier];

  return v3;
}

- (id)buildDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D4C598];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Window" value:0 table:0];
  v5 = [v2 textWithString:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildCommand
{
  resultAppBundleId = [(SPUISResultBuilder *)self resultAppBundleId];
  processInstanceIdentifier = [(SPUISWindowResultBuilder *)self processInstanceIdentifier];
  coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
  v6 = [_TtC19SpotlightUIServices23SPUISWindowTabUtilities openWindowCommandWithAppBundleId:resultAppBundleId processInstanceIdentifier:processInstanceIdentifier entityIdentifier:coreSpotlightId];
  v7 = v6;
  if (v6)
  {
    buildCommand = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SPUISWindowResultBuilder;
    buildCommand = [(SPUISResultBuilder *)&v11 buildCommand];
  }

  v9 = buildCommand;

  return v9;
}

- (id)buildWindowSymbolImage
{
  v2 = objc_opt_new();
  [v2 setIsTemplate:1];
  [v2 setSymbolName:@"macwindow"];

  return v2;
}

@end