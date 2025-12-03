@interface PGGraphCelebratingEdge
+ (id)filter;
- (id)initFromMomentNode:(id)node toHolidayNode:(id)holidayNode;
@end

@implementation PGGraphCelebratingEdge

- (id)initFromMomentNode:(id)node toHolidayNode:(id)holidayNode
{
  v5.receiver = self;
  v5.super_class = PGGraphCelebratingEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:holidayNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CELEBRATING" domain:401];

  return v2;
}

@end