@interface PGGraphMobilityNode
+ (id)filter;
+ (unint64_t)mobilityTypeForMobilityLabel:(id)label;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (PGGraphMobilityNode)initWithLabel:(id)label;
- (unint64_t)mobilityType;
@end

@implementation PGGraphMobilityNode

- (unint64_t)mobilityType
{
  label = [(PGGraphMobilityNode *)self label];
  v3 = [objc_opt_class() mobilityTypeForMobilityLabel:label];

  return v3;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:self->_label domain:203];

  return v2;
}

- (PGGraphMobilityNode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = PGGraphMobilityNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (unint64_t)mobilityTypeForMobilityLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:*MEMORY[0x277D274E0]])
  {
    v4 = 1;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277D274D0]])
  {
    v4 = 2;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277D274D8]])
  {
    v4 = 3;
  }

  else if ([labelCopy isEqualToString:*MEMORY[0x277D274E8]])
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