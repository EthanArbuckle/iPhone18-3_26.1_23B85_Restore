@interface SPUISNewsResultBuilder
+ (id)newsFootnoteWithNewsSource:(id)a3 publishedDate:(id)a4;
- (SPUISNewsResultBuilder)initWithResult:(id)a3;
- (id)buildInlineCardSection;
@end

@implementation SPUISNewsResultBuilder

+ (id)newsFootnoteWithNewsSource:(id)a3 publishedDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v5)
  {
    [v7 addObject:v5];
  }

  if (v6)
  {
    v9 = [SPUISDateFormatManager dynamicCompactStringFromDate:v6];
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

- (SPUISNewsResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SPUISNewsResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISNewsResultBuilder *)v5 setPublishedDate:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISNewsResultBuilder *)v5 setTitle:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC2DD0] withType:objc_opt_class()];
    [(SPUISNewsResultBuilder *)v5 setNewsSource:v8];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v5.receiver = self;
  v5.super_class = SPUISNewsResultBuilder;
  v2 = [(SPUISResultBuilder *)&v5 buildInlineCardSection];
  v3 = [v2 title];
  [v3 setMaxLines:2];

  return v2;
}

@end