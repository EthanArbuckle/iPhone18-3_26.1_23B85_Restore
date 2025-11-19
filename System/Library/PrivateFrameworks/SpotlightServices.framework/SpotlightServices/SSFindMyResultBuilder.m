@interface SSFindMyResultBuilder
- (id)buildHorizontallyScrollingCardSection;
- (id)buildInlineCard;
- (id)buildResult;
- (id)resultIdentifier;
@end

@implementation SSFindMyResultBuilder

- (id)resultIdentifier
{
  v3 = [(SSContactResultBuilder *)self contact];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(SSContactResultBuilder *)self personIdentifier];
  }

  v7 = v6;

  return v7;
}

- (id)buildResult
{
  v13.receiver = self;
  v13.super_class = SSFindMyResultBuilder;
  v3 = [(SSContactResultBuilder *)&v13 buildResult];
  [v3 setResultBundleId:@"com.apple.people.findMy"];
  [v3 setApplicationBundleIdentifier:@"com.apple.findmy"];
  v4 = [(SSContactResultBuilder *)self contact];
  v5 = [v4 identifier];
  [v3 setContactIdentifier:v5];

  v6 = [(SSContactResultBuilder *)self personIdentifier];
  [v3 setPersonIdentifier:v6];

  v7 = [(SSFindMyResultBuilder *)self buildInlineCard];
  [v3 setInlineCard:v7];

  v8 = [(SSFindMyResultBuilder *)self resultIdentifier];
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
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(SSFindMyResultBuilder *)self buildHorizontallyScrollingCardSection];
  v3 = objc_opt_new();
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v3 setCardSections:v4];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildHorizontallyScrollingCardSection
{
  v3 = objc_opt_new();
  v4 = [(SSContactResultBuilder *)self contact];
  v5 = [v4 identifier];
  [v3 setContactIdentifier:v5];

  v6 = [(SSContactResultBuilder *)self personIdentifier];
  [v3 setPersonIdentifier:v6];

  v7 = [(SSContactResultBuilder *)self fullName];
  [v3 setDisplayName:v7];

  v8 = objc_opt_new();
  [v8 setPerson:v3];
  [v8 setCardSectionId:@"com.apple.people.findMy"];
  v9 = [(SSFindMyResultBuilder *)self resultIdentifier];
  [v8 setResultIdentifier:v9];

  return v8;
}

@end