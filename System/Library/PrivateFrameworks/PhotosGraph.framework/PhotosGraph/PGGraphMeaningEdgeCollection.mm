@interface PGGraphMeaningEdgeCollection
+ (id)meaningEdgesWithConfidenceThreshold:(double)threshold inGraph:(id)graph;
@end

@implementation PGGraphMeaningEdgeCollection

+ (id)meaningEdgesWithConfidenceThreshold:(double)threshold inGraph:(id)graph
{
  v17[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = +[PGGraphMeaningEdge filter];
  v16 = @"confidence";
  v8 = objc_alloc(MEMORY[0x277D22B98]);
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:threshold];
  v10 = [v8 initWithComparator:6 value:v9];
  v17[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v7 filterBySettingProperties:v11];

  v13 = [self edgesMatchingFilter:v12 inGraph:graphCopy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end