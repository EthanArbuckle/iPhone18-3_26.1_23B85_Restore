@interface NSManagedObject(MTAdditions)
+ (id)aggregateOperation:()MTAdditions attribute:predicate:managedObjectContext:;
- (id)dictionaryRepresentationWithNullAttributeValueProvider:()MTAdditions;
- (id)dictionaryRepresentationWithObjectId;
@end

@implementation NSManagedObject(MTAdditions)

- (id)dictionaryRepresentationWithNullAttributeValueProvider:()MTAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  entity = [self entity];
  attributesByName = [entity attributesByName];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__NSManagedObject_MTAdditions__dictionaryRepresentationWithNullAttributeValueProvider___block_invoke;
  v13[3] = &unk_1E8569400;
  v13[4] = self;
  v15 = v4;
  v8 = v5;
  v14 = v8;
  v9 = v4;
  [attributesByName enumerateKeysAndObjectsUsingBlock:v13];

  v10 = v14;
  v11 = v8;

  return v8;
}

- (id)dictionaryRepresentationWithObjectId
{
  dictionaryRepresentation = [self dictionaryRepresentation];
  objectID = [self objectID];
  [dictionaryRepresentation setObject:objectID forKey:@"objectID"];

  return dictionaryRepresentation;
}

+ (id)aggregateOperation:()MTAdditions attribute:predicate:managedObjectContext:
{
  v9 = a5;
  v10 = MEMORY[0x1E696ABC8];
  v11 = MEMORY[0x1E695DEC8];
  v12 = a6;
  v13 = a3;
  v14 = [v10 expressionForKeyPath:a4];
  v15 = [v11 arrayWithObject:v14];
  v16 = [v10 expressionForFunction:v13 arguments:v15];

  v17 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v17 setName:@"result"];
  [v17 setExpression:v16];
  [v17 setExpressionResultType:300];
  v18 = [MEMORY[0x1E695DEC8] arrayWithObject:v17];
  v19 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v19 setPropertiesToFetch:v18];
  [v19 setResultType:2];
  if (v9)
  {
    [v19 setPredicate:v9];
  }

  v20 = MEMORY[0x1E695D5B8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v20 entityForName:v22 inManagedObjectContext:v12];

  [v19 setEntity:v23];
  v24 = [v12 executeFetchRequest:v19 error:0];

  lastObject = [v24 lastObject];
  v26 = [lastObject objectForKey:@"result"];

  return v26;
}

@end