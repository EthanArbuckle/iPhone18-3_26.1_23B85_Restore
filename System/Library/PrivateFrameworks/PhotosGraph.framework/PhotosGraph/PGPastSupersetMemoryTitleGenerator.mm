@interface PGPastSupersetMemoryTitleGenerator
- (PGPastSupersetMemoryTitleGenerator)initWithMomentNodes:(id)nodes supersetLocationNode:(id)node supersetDateInterval:(id)interval titleGenerationContext:(id)context;
- (id)_locationTitle;
- (id)_timeTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGPastSupersetMemoryTitleGenerator

- (id)_timeTitle
{
  v3 = objc_opt_new();
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [v3 setMomentNodes:momentNodes];

  [v3 setAllowedFormats:4];
  [v3 setFilterDates:0];
  v5 = [PGTimeTitleUtility timeTitleWithOptions:v3];

  return v5;
}

- (id)_locationTitle
{
  v16[1] = *MEMORY[0x277D85DE8];
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  locationHelper = [titleGenerationContext locationHelper];

  v5 = [locationHelper densestCloseLocationNodeFromLocationNode:self->_supersetLocationNode withDateInterval:self->_supersetDateInterval locationMask:208];
  if (v5)
  {
    v6 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:locationHelper];
    v7 = v6;
    if (v6 && [v6 length])
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"PGPastSupersetMemoryTitleFormatWithLocation %@" value:@"PGPastSupersetMemoryTitleFormatWithLocation %@" table:@"Localizable"];
      v11 = [v8 localizedStringWithFormat:v10, v7];

      v16[0] = v7;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v13 = [PGCommonTitleUtility titleWithLineBreakForTitle:v11 andUsedNames:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  _locationTitle = [(PGPastSupersetMemoryTitleGenerator *)self _locationTitle];
  _timeTitle = [(PGPastSupersetMemoryTitleGenerator *)self _timeTitle];
  v6 = _timeTitle;
  if (_locationTitle)
  {
    v7 = [PGTitle titleWithString:_locationTitle category:4];
    if (v6)
    {
LABEL_3:
      v8 = [PGTitle titleWithString:v6 category:5];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (_timeTitle)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  if (resultCopy)
  {
    resultCopy[2](resultCopy, v7, v8);
  }
}

- (PGPastSupersetMemoryTitleGenerator)initWithMomentNodes:(id)nodes supersetLocationNode:(id)node supersetDateInterval:(id)interval titleGenerationContext:(id)context
{
  nodeCopy = node;
  intervalCopy = interval;
  v16.receiver = self;
  v16.super_class = PGPastSupersetMemoryTitleGenerator;
  v13 = [(PGTitleGenerator *)&v16 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_supersetLocationNode, node);
    objc_storeStrong(&v14->_supersetDateInterval, interval);
  }

  return v14;
}

@end