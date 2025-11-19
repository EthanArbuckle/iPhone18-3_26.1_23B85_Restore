@interface PGGraphLocationDistrictNode
+ (id)filter;
- (PGGraphLocationDistrictNodeCollection)collection;
@end

@implementation PGGraphLocationDistrictNode

- (PGGraphLocationDistrictNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationDistrictNodeCollection alloc] initWithNode:self];

  return v2;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"District" domain:200];

  return v2;
}

@end