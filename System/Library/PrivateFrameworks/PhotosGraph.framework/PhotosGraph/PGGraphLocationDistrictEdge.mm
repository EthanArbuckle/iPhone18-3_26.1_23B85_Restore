@interface PGGraphLocationDistrictEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toDistrictNode:(id)districtNode;
@end

@implementation PGGraphLocationDistrictEdge

- (id)initFromLocationNode:(id)node toDistrictNode:(id)districtNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationDistrictEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:districtNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"DISTRICT" domain:200];

  return v2;
}

@end