@interface PGGraphPersonActivityMeaningEdge
+ (id)filter;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)a3 toPersonActivityMeaningNode:(id)a4;
- (id)meaningLabel;
@end

@implementation PGGraphPersonActivityMeaningEdge

- (id)meaningLabel
{
  v2 = [(MAEdge *)self targetNode];
  v3 = [v2 label];

  return v3;
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGGraphPersonActivityMeaningEdge;
  v4 = [(PGGraphOptimizedEdge *)&v8 edgeDescription];
  v5 = [(PGGraphPersonActivityMeaningEdge *)self meaningLabel];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (id)initFromMomentNode:(id)a3 toPersonActivityMeaningNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphPersonActivityMeaningEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PERSON_ACTIVITY_MEANING" domain:701];

  return v2;
}

@end