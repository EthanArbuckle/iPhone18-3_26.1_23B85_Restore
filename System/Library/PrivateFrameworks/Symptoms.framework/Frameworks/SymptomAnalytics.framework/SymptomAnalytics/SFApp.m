@interface SFApp
+ (id)fetchRequest;
- (void)insertObject:(id)a3 inHasTypicalUsageAtIndex:(unint64_t)a4;
@end

@implementation SFApp

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[SFApp entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

- (void)insertObject:(id)a3 inHasTypicalUsageAtIndex:(unint64_t)a4
{
  v6 = MEMORY[0x277CCAA78];
  v7 = a3;
  v9 = [[v6 alloc] initWithIndex:a4];
  [(SFApp *)self willChange:2 valuesAtIndexes:v9 forKey:@"hasTypicalUsage"];
  v8 = [(SFApp *)self primitiveValueForKey:@"hasTypicalUsage"];
  [v8 insertObject:v7 atIndex:a4];

  [(SFApp *)self didChange:2 valuesAtIndexes:v9 forKey:@"hasTypicalUsage"];
}

@end