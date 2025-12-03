@interface SPUISAskSiriResultBuilder
+ (BOOL)supportsResult:(id)result;
- (id)buildCommand;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SPUISAskSiriResultBuilder

+ (BOOL)supportsResult:(id)result
{
  identifier = [result identifier];
  v4 = [identifier isEqualToString:@"com.apple.AskSiri"];

  return v4;
}

- (id)buildTitle
{
  v2 = MEMORY[0x277D4C598];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Ask Siri" value:0 table:0];
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
  queryContext = [(SPUISResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  [v3 setUtteranceText:searchString];

  return v3;
}

@end