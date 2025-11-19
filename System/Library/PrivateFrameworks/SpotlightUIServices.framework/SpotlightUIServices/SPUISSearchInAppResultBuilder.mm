@interface SPUISSearchInAppResultBuilder
- (id)buildCommand;
- (id)buildInlineCardSections;
- (id)buildResult;
@end

@implementation SPUISSearchInAppResultBuilder

- (id)buildResult
{
  v3 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  v4 = [v3 componentsSeparatedByString:@"."];
  v5 = [v4 lastObject];

  v6 = [@"com.apple.other:search_" stringByAppendingString:v5];
  v7 = objc_alloc(MEMORY[0x277D4C5D8]);
  v8 = [(SPUISSearchInAppResultBuilder *)self searchString];
  v9 = [(SPUISSearchInAppResultBuilder *)self searchString];
  v10 = [v7 initWithSuggestion:v8 query:v9 score:13 type:0.0];

  v11 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [v10 setBundleIdentifier:v11];

  v15.receiver = self;
  v15.super_class = SPUISSearchInAppResultBuilder;
  v12 = [(SPUISResultBuilder *)&v15 buildResult];
  [v12 setResultBundleId:v6];
  [v12 setIdentifier:v6];
  [v12 setType:16];
  [v12 setSuggestion:v10];
  v13 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [v12 setApplicationBundleIdentifier:v13];

  return v12;
}

- (id)buildInlineCardSections
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  v4 = [v3 isEqual:@"com.apple.AppStore"];

  if (v4)
  {
    v5 = [SPUISUtilities localizedStringForKey:@"SEARCH_APP_STORE"];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [SPUISUtilities localizedStringForKey:@"SEARCH_IN_APP"];
    v8 = [(SPUISSearchInAppResultBuilder *)self appName];
    v5 = [v6 stringWithFormat:v7, v8];
  }

  v9 = [MEMORY[0x277D4C3A0] textWithString:v5];
  [v9 setIsEmphasized:1];
  v10 = objc_opt_new();
  v20[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v10 setFormattedTextPieces:v11];

  v12 = objc_opt_new();
  v13 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [v12 setBundleIdentifier:v13];

  v14 = objc_opt_new();
  [v14 setSuggestionText:v10];
  [v14 setSuggestionType:2];
  [v14 setThumbnail:v12];
  v15 = [(SPUISSearchInAppResultBuilder *)self buildCommand];
  [v14 setCommand:v15];

  v19 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = [(SPUISSearchInAppResultBuilder *)self searchString];
  [v3 setSearchString:v4];

  v5 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [v3 setApplicationBundleIdentifier:v5];

  [v3 setSearchInAppType:{-[SPUISSearchInAppResultBuilder searchInAppType](self, "searchInAppType")}];

  return v3;
}

@end