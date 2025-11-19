@interface SBHIconGridSizeClassSizeMap(SBUnitTests)
+ (id)sb_test_padGridSizeClassMap;
+ (id)sb_test_phoneGridSizeClassMap;
@end

@implementation SBHIconGridSizeClassSizeMap(SBUnitTests)

+ (id)sb_test_phoneGridSizeClassMap
{
  v0 = objc_alloc_init(MEMORY[0x277D66260]);
  [v0 setGridSize:65537 forGridSizeClass:*MEMORY[0x277D66508]];
  [v0 setGridSize:131074 forGridSizeClass:*MEMORY[0x277D66548]];
  [v0 setGridSize:131076 forGridSizeClass:*MEMORY[0x277D66520]];
  [v0 setGridSize:262148 forGridSizeClass:*MEMORY[0x277D66518]];
  [v0 setGridSize:393220 forGridSizeClass:*MEMORY[0x277D66528]];

  return v0;
}

+ (id)sb_test_padGridSizeClassMap
{
  v0 = objc_alloc_init(MEMORY[0x277D66260]);
  [v0 setGridSize:65537 forGridSizeClass:*MEMORY[0x277D66508]];
  [v0 setGridSize:65537 forGridSizeClass:*MEMORY[0x277D66548]];
  [v0 setGridSize:65538 forGridSizeClass:*MEMORY[0x277D66520]];
  [v0 setGridSize:131074 forGridSizeClass:*MEMORY[0x277D66518]];
  [v0 setGridSize:196610 forGridSizeClass:*MEMORY[0x277D66528]];
  [v0 setGridSize:131076 forGridSizeClass:*MEMORY[0x277D66510]];

  return v0;
}

@end