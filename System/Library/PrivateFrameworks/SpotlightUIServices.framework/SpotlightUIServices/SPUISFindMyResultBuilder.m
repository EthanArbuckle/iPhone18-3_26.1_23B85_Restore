@interface SPUISFindMyResultBuilder
- (id)buildHorizontallyScrollingCardSection;
- (id)buildInlineCard;
- (id)buildResult;
- (id)resultIdentifier;
@end

@implementation SPUISFindMyResultBuilder

- (id)resultIdentifier
{
  v3 = [(SPUISContactResultBuilder *)self contact];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(SPUISContactResultBuilder *)self personIdentifier];
  }

  v7 = v6;

  return v7;
}

- (id)buildResult
{
  v13.receiver = self;
  v13.super_class = SPUISFindMyResultBuilder;
  v3 = [(SPUISContactResultBuilder *)&v13 buildResult];
  [v3 setResultBundleId:@"com.apple.people.findMy"];
  [v3 setApplicationBundleIdentifier:@"com.apple.findmy"];
  v4 = [(SPUISContactResultBuilder *)self contact];
  v5 = [v4 identifier];
  [v3 setContactIdentifier:v5];

  v6 = [(SPUISContactResultBuilder *)self personIdentifier];
  [v3 setPersonIdentifier:v6];

  v7 = [(SPUISFindMyResultBuilder *)self buildInlineCard];
  [v3 setInlineCard:v7];

  v8 = [(SPUISFindMyResultBuilder *)self resultIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"unknown";
  }

  v11 = [@"com.apple.findmy" stringByAppendingString:v10];
  [v3 setIdentifier:v11];

  return v3;
}

- (id)buildInlineCard
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(SPUISFindMyResultBuilder *)self buildHorizontallyScrollingCardSection];
  v3 = objc_opt_new();
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v3 setCardSections:v4];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildHorizontallyScrollingCardSection
{
  v3 = objc_opt_new();
  v4 = [(SPUISContactResultBuilder *)self contact];
  v5 = [v4 identifier];
  [v3 setContactIdentifier:v5];

  v6 = [(SPUISContactResultBuilder *)self personIdentifier];
  [v3 setPersonIdentifier:v6];

  v7 = [(SPUISContactResultBuilder *)self fullName];
  [v3 setDisplayName:v7];

  v8 = objc_opt_new();
  [v8 setPerson:v3];
  [v8 setCardSectionId:@"com.apple.people.findMy"];
  v9 = [(SPUISFindMyResultBuilder *)self resultIdentifier];
  [v8 setResultIdentifier:v9];

  return v8;
}

@end