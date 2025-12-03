@interface NSManagedObjectContext(OFNSManagedObjectContextExtensions)
- (uint64_t)objectWithURI:()OFNSManagedObjectContextExtensions;
@end

@implementation NSManagedObjectContext(OFNSManagedObjectContextExtensions)

- (uint64_t)objectWithURI:()OFNSManagedObjectContextExtensions
{
  v4 = [objc_msgSend(self "persistentStoreCoordinator")];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [self objectWithID:v4];
  if (![v6 isFault])
  {
    return v6;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v7 setEntity:{objc_msgSend(v5, "entity")}];
  v8 = MEMORY[0x277CCA918];
  expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v7 setPredicate:{objc_msgSend(v8, "predicateWithLeftExpression:rightExpression:modifier:type:options:", expressionForEvaluatedObject, objc_msgSend(MEMORY[0x277CCA9C0], "expressionForConstantValue:", v6), 0, 4, 0)}];
  v10 = [self executeFetchRequest:v7 error:0];
  if (![v10 count])
  {
    return 0;
  }

  return [v10 objectAtIndex:0];
}

@end