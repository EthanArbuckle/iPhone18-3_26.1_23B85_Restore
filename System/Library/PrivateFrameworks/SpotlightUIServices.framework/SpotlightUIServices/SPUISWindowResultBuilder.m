@interface SPUISWindowResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISWindowResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildWindowAppImage;
- (id)buildWindowSymbolImage;
@end

@implementation SPUISWindowResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = a3;
  v4 = [v3 uniformContentType];
  v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.window-tab"];
  if ([v4 conformsToType:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 valueForAttribute:*MEMORY[0x277CC2CC8] withType:objc_opt_class()];
    v6 = [v7 BOOLValue];
  }

  return v6;
}

- (SPUISWindowResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SPUISWindowResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC32A8] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC32B0] withType:objc_opt_class()];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v7];
    [(SPUISWindowResultBuilder *)v5 setProcessInstanceIdentifier:v8];
  }

  return v5;
}

- (id)buildWindowAppImage
{
  v3 = objc_opt_new();
  v4 = [(SPUISResultBuilder *)self result];
  v5 = [v4 applicationBundleIdentifier];
  [v3 setBundleIdentifier:v5];

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
  v3 = [(SPUISResultBuilder *)self resultAppBundleId];
  v4 = [(SPUISWindowResultBuilder *)self processInstanceIdentifier];
  v5 = [(SPUISResultBuilder *)self coreSpotlightId];
  v6 = [_TtC19SpotlightUIServices23SPUISWindowTabUtilities openWindowCommandWithAppBundleId:v3 processInstanceIdentifier:v4 entityIdentifier:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SPUISWindowResultBuilder;
    v8 = [(SPUISResultBuilder *)&v11 buildCommand];
  }

  v9 = v8;

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