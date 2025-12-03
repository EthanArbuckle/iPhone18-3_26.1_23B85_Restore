@interface PGGraphPersonActivityMeaningEdge
+ (id)filter;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toPersonActivityMeaningNode:(id)meaningNode;
- (id)meaningLabel;
@end

@implementation PGGraphPersonActivityMeaningEdge

- (id)meaningLabel
{
  targetNode = [(MAEdge *)self targetNode];
  label = [targetNode label];

  return label;
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGGraphPersonActivityMeaningEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v8 edgeDescription];
  meaningLabel = [(PGGraphPersonActivityMeaningEdge *)self meaningLabel];
  v6 = [v3 stringWithFormat:@"%@ (%@)", edgeDescription, meaningLabel];

  return v6;
}

- (id)initFromMomentNode:(id)node toPersonActivityMeaningNode:(id)meaningNode
{
  v5.receiver = self;
  v5.super_class = PGGraphPersonActivityMeaningEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:meaningNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PERSON_ACTIVITY_MEANING" domain:701];

  return v2;
}

@end