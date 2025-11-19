@interface SSWindowResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SSWindowResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildWindowAppImage;
- (id)buildWindowSymbolImage;
@end

@implementation SSWindowResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = a3;
  v4 = [v3 contentTypeTree];
  if ([v4 containsObject:@"com.apple.window-tab"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 contentTypeTree];
    if ([v6 containsObject:@"com.apple.UIIntelligenceIntents.windowTab"])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 valueForAttribute:*MEMORY[0x1E6964508] withType:objc_opt_class()];
      v5 = [v7 BOOLValue];
    }
  }

  return v5;
}

- (SSWindowResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSWindowResultBuilder;
  v5 = [(SSResultBuilder *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6964CE8] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x1E6964CF0] withType:objc_opt_class()];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v7];
    [(SSWindowResultBuilder *)v5 setProcessInstanceIdentifier:v8];
  }

  return v5;
}

- (id)buildWindowAppImage
{
  v3 = objc_opt_new();
  v4 = [(SSResultBuilder *)self result];
  v5 = [v4 applicationBundleIdentifier];
  [v3 setBundleIdentifier:v5];

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
  v3 = [(SSResultBuilder *)self resultAppBundleId];
  v4 = [(SSWindowResultBuilder *)self processInstanceIdentifier];
  v5 = [(SSResultBuilder *)self coreSpotlightId];
  v6 = [_TtC17SpotlightServices20SSWindowTabUtilities openWindowCommandWithAppBundleId:v3 processInstanceIdentifier:v4 entityIdentifier:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SSWindowResultBuilder;
    v8 = [(SSResultBuilder *)&v11 buildCommand];
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