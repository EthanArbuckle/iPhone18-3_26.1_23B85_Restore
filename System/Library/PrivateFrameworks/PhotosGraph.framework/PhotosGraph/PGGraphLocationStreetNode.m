@interface PGGraphLocationStreetNode
+ (id)filter;
- (PGGraphLocationStreetNodeCollection)collection;
@end

@implementation PGGraphLocationStreetNode

- (PGGraphLocationStreetNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationStreetNodeCollection alloc] initWithNode:self];

  return v2;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Street" domain:200];

  return v2;
}

@end