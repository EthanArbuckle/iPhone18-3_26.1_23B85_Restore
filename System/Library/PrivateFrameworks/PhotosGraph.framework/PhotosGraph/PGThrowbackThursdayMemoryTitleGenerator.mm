@interface PGThrowbackThursdayMemoryTitleGenerator
- (PGThrowbackThursdayMemoryTitleGenerator)initWithMomentNode:(id)a3 numberOfYearsAgo:(int64_t)a4 titleGenerationContext:(id)a5;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGThrowbackThursdayMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v21 = a3;
  v4 = [(PGTitleGenerator *)self momentNodes];
  v5 = [v4 anyObject];
  v6 = [v5 universalStartDate];
  [v6 timeIntervalSince1970];
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
  v18 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v17 setMomentNodes:v18];

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

  if (v21)
  {
    v21[2](v21, v16, v20);
  }
}

- (PGThrowbackThursdayMemoryTitleGenerator)initWithMomentNode:(id)a3 numberOfYearsAgo:(int64_t)a4 titleGenerationContext:(id)a5
{
  v7.receiver = self;
  v7.super_class = PGThrowbackThursdayMemoryTitleGenerator;
  result = [(PGTitleGenerator *)&v7 initWithMomentNode:a3 type:6 titleGenerationContext:a5];
  if (result)
  {
    result->_numberOfYearsAgo = a4;
  }

  return result;
}

@end