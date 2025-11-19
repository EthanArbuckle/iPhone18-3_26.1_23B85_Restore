@interface PGGraphWeekdayNode
+ (id)filter;
- (PGGraphWeekdayNode)init;
- (PGGraphWeekdayNodeCollection)collection;
@end

@implementation PGGraphWeekdayNode

- (PGGraphWeekdayNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphWeekdayNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphWeekdayNode)init
{
  v3.receiver = self;
  v3.super_class = PGGraphWeekdayNode;
  return [(PGGraphNode *)&v3 init];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Weekday" domain:400];

  return v2;
}

@end