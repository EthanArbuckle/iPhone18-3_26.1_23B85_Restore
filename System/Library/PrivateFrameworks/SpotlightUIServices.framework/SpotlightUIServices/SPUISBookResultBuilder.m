@interface SPUISBookResultBuilder
- (SPUISBookResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
@end

@implementation SPUISBookResultBuilder

- (SPUISBookResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SPUISBookResultBuilder;
  v5 = [(SPUISResultBuilder *)&v12 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2690] withType:objc_opt_class()];
    v7 = v6;
    if (v6)
    {
      [v6 firstObject];
    }

    else
    {
      [SPUISUtilities localizedStringForKey:@"NO_TITLE"];
    }
    v8 = ;
    [(SPUISBookResultBuilder *)v5 setAuthor:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC2B68] withType:objc_opt_class()];
    [(SPUISBookResultBuilder *)v5 setGenre:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2D10] withType:objc_opt_class()];
    [(SPUISBookResultBuilder *)v5 setDate:v10];
  }

  return v5;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  v4 = [(SPUISBookResultBuilder *)self author];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SPUISBookResultBuilder *)self genre];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(SPUISBookResultBuilder *)self date];
  v7 = [(SPUISBookResultBuilder *)self date];

  if (v7)
  {
    v8 = [SPUISDateFormatManager stringsFromDate:v6 toDate:v6 isAllDay:0];
    [v3 addObjectsFromArray:v8];
  }

  v12.receiver = self;
  v12.super_class = SPUISBookResultBuilder;
  v9 = [(SPUISResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [v9 setDescriptions:v10];

  return v9;
}

@end