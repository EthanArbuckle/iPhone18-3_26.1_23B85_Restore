@interface PGGraphLocationDistrictEdge
+ (id)filter;
- (id)initFromLocationNode:(id)a3 toDistrictNode:(id)a4;
@end

@implementation PGGraphLocationDistrictEdge

- (id)initFromLocationNode:(id)a3 toDistrictNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphLocationDistrictEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"DISTRICT" domain:200];

  return v2;
}

@end