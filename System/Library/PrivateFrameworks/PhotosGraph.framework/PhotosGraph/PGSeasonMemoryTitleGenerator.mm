@interface PGSeasonMemoryTitleGenerator
+ (id)seasonSubtitleWithMomentNodes:(id)nodes seasonName:(id)name;
- (PGSeasonMemoryTitleGenerator)initWithMomentNodes:(id)nodes seasonName:(id)name titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGSeasonMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  v4 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"PGSeasonMemoryTitleFormat%@", self->_season];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:v4 table:@"Localizable"];

  v7 = [PGCommonTitleUtility titleWithLineBreakForTitle:v6];

  if (v7)
  {
    v8 = [PGTitle titleWithString:v7 category:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_class();
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  v11 = [v9 seasonSubtitleWithMomentNodes:momentNodes seasonName:0];

  if (resultCopy)
  {
    resultCopy[2](resultCopy, v8, v11);
  }
}

- (PGSeasonMemoryTitleGenerator)initWithMomentNodes:(id)nodes seasonName:(id)name titleGenerationContext:(id)context
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = PGSeasonMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_season, name);
  }

  return v11;
}

+ (id)seasonSubtitleWithMomentNodes:(id)nodes seasonName:(id)name
{
  nameCopy = name;
  v6 = [PGGraphMomentNode firstAndLastMomentNodesInMomentNodes:nodes];
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
  [v7 setMomentNodes:v8];

  [v7 setAllowedFormats:4];
  [v7 setFilterDates:0];
  v9 = [PGTimeTitleUtility timeTitleWithOptions:v7];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (nameCopy)
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PGSeasonMemoryTitleFormat%@Year", nameCopy];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:nameCopy value:nameCopy table:@"Localizable"];
    v17 = v10;
    v14 = PFStringWithValidatedFormat();

    if (!v14)
    {
LABEL_4:
      v15 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v14 = v9;
  }

  v15 = [PGTitle titleWithString:v14 category:5, v17];

LABEL_7:

  return v15;
}

@end