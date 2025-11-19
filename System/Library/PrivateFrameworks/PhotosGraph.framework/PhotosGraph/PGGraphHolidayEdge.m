@interface PGGraphHolidayEdge
+ (id)filter;
- (id)initFromDateNode:(id)a3 toHolidayNode:(id)a4;
@end

@implementation PGGraphHolidayEdge

- (id)initFromDateNode:(id)a3 toHolidayNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphHolidayEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"HOLIDAY" domain:401];

  return v2;
}

@end