@interface PGPastSupersetMemoryTitleGenerator
- (PGPastSupersetMemoryTitleGenerator)initWithMomentNodes:(id)a3 supersetLocationNode:(id)a4 supersetDateInterval:(id)a5 titleGenerationContext:(id)a6;
- (id)_locationTitle;
- (id)_timeTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGPastSupersetMemoryTitleGenerator

- (id)_timeTitle
{
  v3 = objc_opt_new();
  v4 = [(PGTitleGenerator *)self momentNodes];
  [v3 setMomentNodes:v4];

  [v3 setAllowedFormats:4];
  [v3 setFilterDates:0];
  v5 = [PGTimeTitleUtility timeTitleWithOptions:v3];

  return v5;
}

- (id)_locationTitle
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [(PGTitleGenerator *)self titleGenerationContext];
  v4 = [v3 locationHelper];

  v5 = [v4 densestCloseLocationNodeFromLocationNode:self->_supersetLocationNode withDateInterval:self->_supersetDateInterval locationMask:208];
  if (v5)
  {
    v6 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:v4];
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

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v9 = a3;
  v4 = [(PGPastSupersetMemoryTitleGenerator *)self _locationTitle];
  v5 = [(PGPastSupersetMemoryTitleGenerator *)self _timeTitle];
  v6 = v5;
  if (v4)
  {
    v7 = [PGTitle titleWithString:v4 category:4];
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
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  if (v9)
  {
    v9[2](v9, v7, v8);
  }
}

- (PGPastSupersetMemoryTitleGenerator)initWithMomentNodes:(id)a3 supersetLocationNode:(id)a4 supersetDateInterval:(id)a5 titleGenerationContext:(id)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PGPastSupersetMemoryTitleGenerator;
  v13 = [(PGTitleGenerator *)&v16 initWithMomentNodes:a3 type:0 titleGenerationContext:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_supersetLocationNode, a4);
    objc_storeStrong(&v14->_supersetDateInterval, a5);
  }

  return v14;
}

@end