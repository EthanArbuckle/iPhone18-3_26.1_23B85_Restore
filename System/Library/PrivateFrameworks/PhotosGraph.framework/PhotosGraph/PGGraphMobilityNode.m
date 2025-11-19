@interface PGGraphMobilityNode
+ (id)filter;
+ (unint64_t)mobilityTypeForMobilityLabel:(id)a3;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (PGGraphMobilityNode)initWithLabel:(id)a3;
- (unint64_t)mobilityType;
@end

@implementation PGGraphMobilityNode

- (unint64_t)mobilityType
{
  v2 = [(PGGraphMobilityNode *)self label];
  v3 = [objc_opt_class() mobilityTypeForMobilityLabel:v2];

  return v3;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:self->_label domain:203];

  return v2;
}

- (PGGraphMobilityNode)initWithLabel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphMobilityNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (unint64_t)mobilityTypeForMobilityLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D274E0]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D274D0]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D274D8]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D274E8]])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:203];

  return v2;
}

@end