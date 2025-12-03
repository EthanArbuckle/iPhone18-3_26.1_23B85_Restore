@interface SPUISNewsResultBuilder
+ (id)newsFootnoteWithNewsSource:(id)source publishedDate:(id)date;
- (SPUISNewsResultBuilder)initWithResult:(id)result;
- (id)buildInlineCardSection;
@end

@implementation SPUISNewsResultBuilder

+ (id)newsFootnoteWithNewsSource:(id)source publishedDate:(id)date
{
  sourceCopy = source;
  dateCopy = date;
  v7 = objc_opt_new();
  v8 = v7;
  if (sourceCopy)
  {
    [v7 addObject:sourceCopy];
  }

  if (dateCopy)
  {
    v9 = [SPUISDateFormatManager dynamicCompactStringFromDate:dateCopy];
    [v8 addObject:v9];
  }

  if ([v8 count])
  {
    v10 = [v8 componentsJoinedByString:@" - "];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SPUISNewsResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SPUISNewsResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISNewsResultBuilder *)v5 setPublishedDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISNewsResultBuilder *)v5 setTitle:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DD0] withType:objc_opt_class()];
    [(SPUISNewsResultBuilder *)v5 setNewsSource:v8];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v5.receiver = self;
  v5.super_class = SPUISNewsResultBuilder;
  buildInlineCardSection = [(SPUISResultBuilder *)&v5 buildInlineCardSection];
  title = [buildInlineCardSection title];
  [title setMaxLines:2];

  return buildInlineCardSection;
}

@end