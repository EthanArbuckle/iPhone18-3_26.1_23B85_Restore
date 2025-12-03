@interface SPUISFindMyResultBuilder
- (id)buildHorizontallyScrollingCardSection;
- (id)buildInlineCard;
- (id)buildResult;
- (id)resultIdentifier;
@end

@implementation SPUISFindMyResultBuilder

- (id)resultIdentifier
{
  contact = [(SPUISContactResultBuilder *)self contact];
  identifier = [contact identifier];
  v5 = identifier;
  if (identifier)
  {
    personIdentifier = identifier;
  }

  else
  {
    personIdentifier = [(SPUISContactResultBuilder *)self personIdentifier];
  }

  v7 = personIdentifier;

  return v7;
}

- (id)buildResult
{
  v13.receiver = self;
  v13.super_class = SPUISFindMyResultBuilder;
  buildResult = [(SPUISContactResultBuilder *)&v13 buildResult];
  [buildResult setResultBundleId:@"com.apple.people.findMy"];
  [buildResult setApplicationBundleIdentifier:@"com.apple.findmy"];
  contact = [(SPUISContactResultBuilder *)self contact];
  identifier = [contact identifier];
  [buildResult setContactIdentifier:identifier];

  personIdentifier = [(SPUISContactResultBuilder *)self personIdentifier];
  [buildResult setPersonIdentifier:personIdentifier];

  buildInlineCard = [(SPUISFindMyResultBuilder *)self buildInlineCard];
  [buildResult setInlineCard:buildInlineCard];

  resultIdentifier = [(SPUISFindMyResultBuilder *)self resultIdentifier];
  v9 = resultIdentifier;
  if (resultIdentifier)
  {
    v10 = resultIdentifier;
  }

  else
  {
    v10 = @"unknown";
  }

  v11 = [@"com.apple.findmy" stringByAppendingString:v10];
  [buildResult setIdentifier:v11];

  return buildResult;
}

- (id)buildInlineCard
{
  v7[1] = *MEMORY[0x277D85DE8];
  buildHorizontallyScrollingCardSection = [(SPUISFindMyResultBuilder *)self buildHorizontallyScrollingCardSection];
  v3 = objc_opt_new();
  if (buildHorizontallyScrollingCardSection)
  {
    v7[0] = buildHorizontallyScrollingCardSection;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v3 setCardSections:v4];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildHorizontallyScrollingCardSection
{
  v3 = objc_opt_new();
  contact = [(SPUISContactResultBuilder *)self contact];
  identifier = [contact identifier];
  [v3 setContactIdentifier:identifier];

  personIdentifier = [(SPUISContactResultBuilder *)self personIdentifier];
  [v3 setPersonIdentifier:personIdentifier];

  fullName = [(SPUISContactResultBuilder *)self fullName];
  [v3 setDisplayName:fullName];

  v8 = objc_opt_new();
  [v8 setPerson:v3];
  [v8 setCardSectionId:@"com.apple.people.findMy"];
  resultIdentifier = [(SPUISFindMyResultBuilder *)self resultIdentifier];
  [v8 setResultIdentifier:resultIdentifier];

  return v8;
}

@end