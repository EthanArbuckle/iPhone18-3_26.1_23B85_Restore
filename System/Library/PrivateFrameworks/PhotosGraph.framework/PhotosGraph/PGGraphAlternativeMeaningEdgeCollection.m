@interface PGGraphAlternativeMeaningEdgeCollection
+ (id)meaningEdgesWithConfidenceThreshold:(double)a3 inGraph:(id)a4;
@end

@implementation PGGraphAlternativeMeaningEdgeCollection

+ (id)meaningEdgesWithConfidenceThreshold:(double)a3 inGraph:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = +[(PGGraphMeaningEdge *)PGGraphAlternativeMeaningEdge];
  v16 = @"confidence";
  v8 = objc_alloc(MEMORY[0x277D22B98]);
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v10 = [v8 initWithComparator:6 value:v9];
  v17[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v7 filterBySettingProperties:v11];

  v13 = [a1 edgesMatchingFilter:v12 inGraph:v6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end