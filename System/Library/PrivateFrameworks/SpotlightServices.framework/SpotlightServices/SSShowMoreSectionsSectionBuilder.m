@interface SSShowMoreSectionsSectionBuilder
+ (id)supportedBundleId;
- (id)buildBridgedResult;
- (id)buildCardSections;
- (id)buildSection;
@end

@implementation SSShowMoreSectionsSectionBuilder

+ (id)supportedBundleId
{
  if (isMacOS())
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___SSShowMoreSectionsSectionBuilder;
    v3 = objc_msgSendSuper2(&v5, sel_supportedBundleId);
  }

  else
  {
    v3 = @"com.apple.other:show_more";
  }

  return v3;
}

- (id)buildSection
{
  v3 = objc_opt_new();
  v4 = [(SSShowMoreSectionsSectionBuilder *)self buildCardSections];
  [v3 setCardSections:v4];

  v5 = objc_opt_new();
  [v5 setBundleIdentifier:@"com.apple.other:show_more"];
  v6 = [(SSShowMoreSectionsSectionBuilder *)self buildBridgedResult];
  [v5 addResults:v6];

  return v5;
}

- (id)buildBridgedResult
{
  v3 = [(SSSectionBuilder *)self queryContext];
  v4 = [v3 queryIdent];

  v5 = objc_opt_new();
  v6 = [(SSShowMoreSectionsSectionBuilder *)self buildCardSections];
  [v5 setCardSections:v6];

  [v5 setQueryId:v4];
  v7 = objc_opt_new();
  [v7 setType:2];
  [v7 setIdentifier:@"com.apple.other:show_more"];
  [v7 setResultBundleId:@"com.apple.other:show_more"];
  [v7 setSectionBundleIdentifier:@"com.apple.other:show_more"];
  v8 = MEMORY[0x1E69CA4F0];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SHOW_MORE_RESULTS" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v11 = [v8 textWithString:v10];
  [v7 setTitle:v11];

  [v7 setInlineCard:v5];
  [v7 setQueryId:v4];

  return v7;
}

- (id)buildCardSections
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = MEMORY[0x1E69CA3A0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SHOW_MORE_RESULTS" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v6 = [v3 textWithString:v5];
  [v2 setTitle:v6];

  v10[0] = v2;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end