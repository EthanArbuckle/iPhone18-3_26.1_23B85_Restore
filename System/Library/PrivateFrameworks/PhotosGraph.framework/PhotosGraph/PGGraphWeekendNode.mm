@interface PGGraphWeekendNode
+ (id)filter;
- (PGGraphWeekendNode)init;
- (PGGraphWeekendNodeCollection)collection;
@end

@implementation PGGraphWeekendNode

- (PGGraphWeekendNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphWeekendNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphWeekendNode)init
{
  v3.receiver = self;
  v3.super_class = PGGraphWeekendNode;
  return [(PGGraphNode *)&v3 init];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Weekend" domain:400];

  return v2;
}

@end