@interface SPUISShowMoreSectionsSectionBuilder
+ (id)supportedBundleId;
- (id)buildBridgedResult;
- (id)buildCardSections;
- (id)buildSection;
@end

@implementation SPUISShowMoreSectionsSectionBuilder

+ (id)supportedBundleId
{
  if (+[SPUISUtilities isMacOS])
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___SPUISShowMoreSectionsSectionBuilder;
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
  v4 = [(SPUISShowMoreSectionsSectionBuilder *)self buildCardSections];
  [v3 setCardSections:v4];

  v5 = objc_opt_new();
  [v5 setBundleIdentifier:@"com.apple.other:show_more"];
  v6 = [(SPUISShowMoreSectionsSectionBuilder *)self buildBridgedResult];
  [v5 addResults:v6];

  return v5;
}

- (id)buildBridgedResult
{
  v3 = [(SPUISSectionBuilder *)self queryContext];
  v4 = [v3 queryIdent];

  v5 = objc_opt_new();
  v6 = [(SPUISShowMoreSectionsSectionBuilder *)self buildCardSections];
  [v5 setCardSections:v6];

  [v5 setQueryId:v4];
  v7 = objc_opt_new();
  [v7 setType:2];
  [v7 setIdentifier:@"com.apple.other:show_more"];
  [v7 setResultBundleId:@"com.apple.other:show_more"];
  [v7 setSectionBundleIdentifier:@"com.apple.other:show_more"];
  v8 = MEMORY[0x277D4C690];
  v9 = [SPUISUtilities localizedStringForKey:@"SHOW_MORE_RESULTS"];
  v10 = [v8 textWithString:v9];
  [v7 setTitle:v10];

  [v7 setInlineCard:v5];
  [v7 setQueryId:v4];

  return v7;
}

- (id)buildCardSections
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D4C598];
  v4 = [SPUISUtilities localizedStringForKey:@"SHOW_MORE_RESULTS"];
  v5 = [v3 textWithString:v4];
  [v2 setTitle:v5];

  v9[0] = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end