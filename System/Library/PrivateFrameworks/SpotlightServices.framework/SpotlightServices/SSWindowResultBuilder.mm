@interface SSWindowResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SSWindowResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildWindowAppImage;
- (id)buildWindowSymbolImage;
@end

@implementation SSWindowResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  contentTypeTree = [resultCopy contentTypeTree];
  if ([contentTypeTree containsObject:@"com.apple.window-tab"])
  {
    bOOLValue = 1;
  }

  else
  {
    contentTypeTree2 = [resultCopy contentTypeTree];
    if ([contentTypeTree2 containsObject:@"com.apple.UIIntelligenceIntents.windowTab"])
    {
      bOOLValue = 1;
    }

    else
    {
      v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6964508] withType:objc_opt_class()];
      bOOLValue = [v7 BOOLValue];
    }
  }

  return bOOLValue;
}

- (SSWindowResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SSWindowResultBuilder;
  v5 = [(SSResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6964CE8] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6964CF0] withType:objc_opt_class()];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v7];
    [(SSWindowResultBuilder *)v5 setProcessInstanceIdentifier:v8];
  }

  return v5;
}

- (id)buildWindowAppImage
{
  v3 = objc_opt_new();
  result = [(SSResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  [v3 setBundleIdentifier:applicationBundleIdentifier];

  return v3;
}

- (id)buildDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69CA3A0];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Window" value:0 table:0];
  v5 = [v2 textWithString:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)buildCommand
{
  resultAppBundleId = [(SSResultBuilder *)self resultAppBundleId];
  processInstanceIdentifier = [(SSWindowResultBuilder *)self processInstanceIdentifier];
  coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
  v6 = [_TtC17SpotlightServices20SSWindowTabUtilities openWindowCommandWithAppBundleId:resultAppBundleId processInstanceIdentifier:processInstanceIdentifier entityIdentifier:coreSpotlightId];
  v7 = v6;
  if (v6)
  {
    buildCommand = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SSWindowResultBuilder;
    buildCommand = [(SSResultBuilder *)&v11 buildCommand];
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