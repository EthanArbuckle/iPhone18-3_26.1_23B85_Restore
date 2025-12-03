@interface SSBookResultBuilder
- (SSBookResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
@end

@implementation SSBookResultBuilder

- (SSBookResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = SSBookResultBuilder;
  v5 = [(SSResultBuilder *)&v13 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963EB8] withType:objc_opt_class()];
    v7 = v6;
    if (v6)
    {
      firstObject = [v6 firstObject];
      [(SSBookResultBuilder *)v5 setAuthor:firstObject];
    }

    else
    {
      firstObject = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [firstObject localizedStringForKey:@"NO_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
      [(SSBookResultBuilder *)v5 setAuthor:v9];
    }

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E69643E0] withType:objc_opt_class()];
    [(SSBookResultBuilder *)v5 setGenre:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    [(SSBookResultBuilder *)v5 setDate:v11];
  }

  return v5;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  author = [(SSBookResultBuilder *)self author];
  if (author)
  {
    [v3 addObject:author];
  }

  genre = [(SSBookResultBuilder *)self genre];
  if (genre)
  {
    [v3 addObject:genre];
  }

  date = [(SSBookResultBuilder *)self date];
  date2 = [(SSBookResultBuilder *)self date];

  if (date2)
  {
    v8 = [SSDateFormatManager stringsFromDate:date toDate:date isAllDay:0];
    [v3 addObjectsFromArray:v8];
  }

  v12.receiver = self;
  v12.super_class = SSBookResultBuilder;
  buildCompactCardSection = [(SSResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [buildCompactCardSection setDescriptions:v10];

  return buildCompactCardSection;
}

@end