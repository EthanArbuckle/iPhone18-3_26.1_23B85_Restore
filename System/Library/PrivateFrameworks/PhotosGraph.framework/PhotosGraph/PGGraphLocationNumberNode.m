@interface PGGraphLocationNumberNode
+ (id)filter;
- (PGGraphLocationNumberNodeCollection)collection;
@end

@implementation PGGraphLocationNumberNode

- (PGGraphLocationNumberNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationNumberNodeCollection alloc] initWithNode:self];

  return v2;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Number" domain:200];

  return v2;
}

@end