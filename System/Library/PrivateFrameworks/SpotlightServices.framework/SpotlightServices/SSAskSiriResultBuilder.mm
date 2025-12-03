@interface SSAskSiriResultBuilder
+ (BOOL)supportsResult:(id)result;
- (id)buildCommand;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SSAskSiriResultBuilder

+ (BOOL)supportsResult:(id)result
{
  identifier = [result identifier];
  v4 = [identifier isEqualToString:@"com.apple.AskSiri"];

  return v4;
}

- (id)buildTitle
{
  v2 = MEMORY[0x1E69CA3A0];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ASK_SIRI" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v5 = [v2 textWithString:v4];

  return v5;
}

- (id)buildThumbnail
{
  v2 = objc_opt_new();
  [v2 setBundleIdentifier:@"com.apple.siri"];

  return v2;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  queryContext = [(SSResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  [v3 setUtteranceText:searchString];

  return v3;
}

@end