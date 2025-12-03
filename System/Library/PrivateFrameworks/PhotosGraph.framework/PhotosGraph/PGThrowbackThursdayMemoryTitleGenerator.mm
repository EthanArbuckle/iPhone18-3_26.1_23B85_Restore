@interface PGThrowbackThursdayMemoryTitleGenerator
- (PGThrowbackThursdayMemoryTitleGenerator)initWithMomentNode:(id)node numberOfYearsAgo:(int64_t)ago titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGThrowbackThursdayMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  anyObject = [momentNodes anyObject];
  universalStartDate = [anyObject universalStartDate];
  [universalStartDate timeIntervalSince1970];
  v8 = v7;

  if (v8)
  {
    v13 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v11 localizedStringForKey:@"PGMemoryTitleFormatWithNumberOfYears %lu" value:@"PGMemoryTitleFormatWithNumberOfYears %lu" table:@"Localizable"];
    v15 = [v13 localizedStringWithFormat:v14, self->_numberOfYearsAgo];
  }

  else
  {
    numberOfYearsAgo = self->_numberOfYearsAgo;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    if (numberOfYearsAgo < 6)
    {
      v12 = @"PGThrowbackThursdayTitleMoreRecent";
    }

    else
    {
      v12 = @"PGThrowbackThursdayTitleLongerAgo";
    }

    v15 = [v10 localizedStringForKey:v12 value:v12 table:@"Localizable"];
  }

  v16 = [PGTitle titleWithString:v15 category:1];
  v17 = objc_alloc_init(PGTimeTitleOptions);
  momentNodes2 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v17 setMomentNodes:momentNodes2];

  [(PGTimeTitleOptions *)v17 setAllowedFormats:1];
  v19 = [PGTimeTitleUtility timeTitleWithOptions:v17];
  if (v19)
  {
    v20 = [PGTitle titleWithString:v19 category:5];
  }

  else
  {
    v20 = 0;
  }

  if (resultCopy)
  {
    resultCopy[2](resultCopy, v16, v20);
  }
}

- (PGThrowbackThursdayMemoryTitleGenerator)initWithMomentNode:(id)node numberOfYearsAgo:(int64_t)ago titleGenerationContext:(id)context
{
  v7.receiver = self;
  v7.super_class = PGThrowbackThursdayMemoryTitleGenerator;
  result = [(PGTitleGenerator *)&v7 initWithMomentNode:node type:6 titleGenerationContext:context];
  if (result)
  {
    result->_numberOfYearsAgo = ago;
  }

  return result;
}

@end