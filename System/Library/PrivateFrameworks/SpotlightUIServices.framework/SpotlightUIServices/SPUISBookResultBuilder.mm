@interface SPUISBookResultBuilder
- (SPUISBookResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
@end

@implementation SPUISBookResultBuilder

- (SPUISBookResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = SPUISBookResultBuilder;
  v5 = [(SPUISResultBuilder *)&v12 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2690] withType:objc_opt_class()];
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

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2B68] withType:objc_opt_class()];
    [(SPUISBookResultBuilder *)v5 setGenre:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2D10] withType:objc_opt_class()];
    [(SPUISBookResultBuilder *)v5 setDate:v10];
  }

  return v5;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  author = [(SPUISBookResultBuilder *)self author];
  if (author)
  {
    [v3 addObject:author];
  }

  genre = [(SPUISBookResultBuilder *)self genre];
  if (genre)
  {
    [v3 addObject:genre];
  }

  date = [(SPUISBookResultBuilder *)self date];
  date2 = [(SPUISBookResultBuilder *)self date];

  if (date2)
  {
    v8 = [SPUISDateFormatManager stringsFromDate:date toDate:date isAllDay:0];
    [v3 addObjectsFromArray:v8];
  }

  v12.receiver = self;
  v12.super_class = SPUISBookResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [buildCompactCardSection setDescriptions:v10];

  return buildCompactCardSection;
}

@end