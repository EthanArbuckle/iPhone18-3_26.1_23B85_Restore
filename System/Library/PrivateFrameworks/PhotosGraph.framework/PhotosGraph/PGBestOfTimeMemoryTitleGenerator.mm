@interface PGBestOfTimeMemoryTitleGenerator
- (PGBestOfTimeMemoryTitleGenerator)initWithStartDate:(id)date endDate:(id)endDate titleGenerationContext:(id)context;
- (PGBestOfTimeMemoryTitleGenerator)initWithYear:(int64_t)year titleGenerationContext:(id)context;
- (id)_bestOfPastTimeTitle;
- (id)_bestOfYearTitle;
- (id)_generateSubtitle;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGBestOfTimeMemoryTitleGenerator

- (id)_generateSubtitle
{
  startDate = self->_startDate;
  if (startDate)
  {
    if (self->_endDate)
    {
      v4 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:self->_startDate endDate:self->_endDate];
      v5 = 7;
      goto LABEL_7;
    }

    v7 = startDate;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setDay:1];
    [v6 setMonth:1];
    [v6 setYear:self->_year];
    v7 = [MEMORY[0x277D27690] dateFromComponents:v6 inTimeZone:0];
  }

  v4 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 duration:0.0];

  v5 = 4;
LABEL_7:
  v8 = [PGTimeTitleUtility timeTitleWithDateInterval:v4 allowedFormats:v5];
  v9 = [PGTitle titleWithString:v8 category:5];

  return v9;
}

- (id)_bestOfYearTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGBestOfTheYearMemoryTitleFormat" value:@"PGBestOfTheYearMemoryTitleFormat" table:@"Localizable"];

  v4 = [PGTitle titleWithString:v3 category:1];

  return v4;
}

- (id)_bestOfPastTimeTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGRecentHighlightsTitleFormat" value:@"PGRecentHighlightsTitleFormat" table:@"Localizable"];

  v4 = [PGTitle titleWithString:v3 category:1];

  return v4;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  if (self->_startDate && self->_endDate)
  {
    resultCopy = result;
    _bestOfPastTimeTitle = [(PGBestOfTimeMemoryTitleGenerator *)self _bestOfPastTimeTitle];
  }

  else
  {
    resultCopy2 = result;
    _bestOfPastTimeTitle = [(PGBestOfTimeMemoryTitleGenerator *)self _bestOfYearTitle];
  }

  v9 = _bestOfPastTimeTitle;
  _generateSubtitle = [(PGBestOfTimeMemoryTitleGenerator *)self _generateSubtitle];
  (*(result + 2))(result, v9, _generateSubtitle);
}

- (PGBestOfTimeMemoryTitleGenerator)initWithYear:(int64_t)year titleGenerationContext:(id)context
{
  v6 = MEMORY[0x277CBEB98];
  contextCopy = context;
  v8 = [v6 set];
  v11.receiver = self;
  v11.super_class = PGBestOfTimeMemoryTitleGenerator;
  v9 = [(PGTitleGenerator *)&v11 initWithMomentNodes:v8 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:contextCopy];

  if (v9)
  {
    v9->_year = year;
  }

  return v9;
}

- (PGBestOfTimeMemoryTitleGenerator)initWithStartDate:(id)date endDate:(id)endDate titleGenerationContext:(id)context
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = MEMORY[0x277CBEB98];
  contextCopy = context;
  v13 = [v11 set];
  v16.receiver = self;
  v16.super_class = PGBestOfTimeMemoryTitleGenerator;
  v14 = [(PGTitleGenerator *)&v16 initWithMomentNodes:v13 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:contextCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_startDate, date);
    objc_storeStrong(&v14->_endDate, endDate);
    v14->_year = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

@end