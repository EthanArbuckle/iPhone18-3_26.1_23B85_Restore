@interface NSPredicate(MTAdditions)
+ (id)predicateForObjectIds:()MTAdditions;
+ (id)predicateForObjectIdsInSet:()MTAdditions;
- (id)AND:()MTAdditions;
- (id)OR:()MTAdditions;
@end

@implementation NSPredicate(MTAdditions)

- (id)AND:()MTAdditions
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E696AB28];
    v10[0] = self;
    v10[1] = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:v10 count:2];
    selfCopy = [v3 andPredicateWithSubpredicates:v6];
  }

  else
  {
    selfCopy = self;
  }

  v8 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)OR:()MTAdditions
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v10[0] = self;
  v10[1] = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v10 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)predicateForObjectIds:()MTAdditions
{
  v3 = MEMORY[0x1E696AB18];
  v4 = MEMORY[0x1E696ABC8];
  v5 = a3;
  expressionForEvaluatedObject = [v4 expressionForEvaluatedObject];
  v7 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];

  v8 = [v3 predicateWithLeftExpression:expressionForEvaluatedObject rightExpression:v7 modifier:0 type:10 options:0];

  return v8;
}

+ (id)predicateForObjectIdsInSet:()MTAdditions
{
  v3 = MEMORY[0x1E696AB18];
  v4 = MEMORY[0x1E696ABC8];
  v5 = a3;
  expressionForEvaluatedObject = [v4 expressionForEvaluatedObject];
  v7 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];

  v8 = [v3 predicateWithLeftExpression:expressionForEvaluatedObject rightExpression:v7 modifier:0 type:10 options:0];

  return v8;
}

@end