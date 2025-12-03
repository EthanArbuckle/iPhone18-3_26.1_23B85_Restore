@interface PGGraphOverTheYearsNode
+ (id)filter;
- (NSString)featureIdentifier;
- (PGGraphOverTheYearsNode)init;
- (id)collection;
@end

@implementation PGGraphOverTheYearsNode

- (id)collection
{
  v2 = [(MANodeCollection *)[PGGraphOverTheYearsNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphOverTheYearsNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, label];

  return v7;
}

- (PGGraphOverTheYearsNode)init
{
  v3.receiver = self;
  v3.super_class = PGGraphOverTheYearsNode;
  return [(PGGraphNode *)&v3 init];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"OverTheYears" domain:402];

  return v2;
}

@end