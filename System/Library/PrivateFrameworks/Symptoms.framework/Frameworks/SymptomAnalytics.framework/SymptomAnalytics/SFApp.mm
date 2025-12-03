@interface SFApp
+ (id)fetchRequest;
- (void)insertObject:(id)object inHasTypicalUsageAtIndex:(unint64_t)index;
@end

@implementation SFApp

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[SFApp entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

- (void)insertObject:(id)object inHasTypicalUsageAtIndex:(unint64_t)index
{
  v6 = MEMORY[0x277CCAA78];
  objectCopy = object;
  v9 = [[v6 alloc] initWithIndex:index];
  [(SFApp *)self willChange:2 valuesAtIndexes:v9 forKey:@"hasTypicalUsage"];
  v8 = [(SFApp *)self primitiveValueForKey:@"hasTypicalUsage"];
  [v8 insertObject:objectCopy atIndex:index];

  [(SFApp *)self didChange:2 valuesAtIndexes:v9 forKey:@"hasTypicalUsage"];
}

@end