@interface PGGraphPartOfWeekNode
+ (id)filter;
@end

@implementation PGGraphPartOfWeekNode

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Weekend", @"Weekday", 0}];
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  v4 = [v3 initWithLabels:v2 domain:400 properties:MEMORY[0x277CBEC10]];

  return v4;
}

@end