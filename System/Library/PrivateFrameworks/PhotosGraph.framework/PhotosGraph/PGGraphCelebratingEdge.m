@interface PGGraphCelebratingEdge
+ (id)filter;
- (id)initFromMomentNode:(id)a3 toHolidayNode:(id)a4;
@end

@implementation PGGraphCelebratingEdge

- (id)initFromMomentNode:(id)a3 toHolidayNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphCelebratingEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CELEBRATING" domain:401];

  return v2;
}

@end