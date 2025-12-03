@interface SSNewsResultBuilder
+ (id)newsFootnoteWithNewsSource:(id)source publishedDate:(id)date;
- (SSNewsResultBuilder)initWithResult:(id)result;
- (id)buildInlineCardSection;
@end

@implementation SSNewsResultBuilder

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
    v9 = [SSDateFormatManager dynamicCompactStringFromDate:dateCopy];
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

- (SSNewsResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SSNewsResultBuilder;
  v5 = [(SSResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSNewsResultBuilder *)v5 setPublishedDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSNewsResultBuilder *)v5 setTitle:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6964600] withType:objc_opt_class()];
    [(SSNewsResultBuilder *)v5 setNewsSource:v8];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v5.receiver = self;
  v5.super_class = SSNewsResultBuilder;
  buildInlineCardSection = [(SSResultBuilder *)&v5 buildInlineCardSection];
  title = [buildInlineCardSection title];
  [title setMaxLines:2];

  return buildInlineCardSection;
}

@end