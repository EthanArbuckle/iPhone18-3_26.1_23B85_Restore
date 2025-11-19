@interface SSBookResultBuilder
- (SSBookResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
@end

@implementation SSBookResultBuilder

- (SSBookResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SSBookResultBuilder;
  v5 = [(SSResultBuilder *)&v13 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963EB8] withType:objc_opt_class()];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 firstObject];
      [(SSBookResultBuilder *)v5 setAuthor:v8];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"NO_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
      [(SSBookResultBuilder *)v5 setAuthor:v9];
    }

    v10 = [v4 valueForAttribute:*MEMORY[0x1E69643E0] withType:objc_opt_class()];
    [(SSBookResultBuilder *)v5 setGenre:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    [(SSBookResultBuilder *)v5 setDate:v11];
  }

  return v5;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  v4 = [(SSBookResultBuilder *)self author];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SSBookResultBuilder *)self genre];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(SSBookResultBuilder *)self date];
  v7 = [(SSBookResultBuilder *)self date];

  if (v7)
  {
    v8 = [SSDateFormatManager stringsFromDate:v6 toDate:v6 isAllDay:0];
    [v3 addObjectsFromArray:v8];
  }

  v12.receiver = self;
  v12.super_class = SSBookResultBuilder;
  v9 = [(SSResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [v9 setDescriptions:v10];

  return v9;
}

@end