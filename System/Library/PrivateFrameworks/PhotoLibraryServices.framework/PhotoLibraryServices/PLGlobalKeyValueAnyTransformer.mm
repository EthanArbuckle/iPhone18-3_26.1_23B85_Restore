@interface PLGlobalKeyValueAnyTransformer
+ (id)allowedTopLevelClasses;
@end

@implementation PLGlobalKeyValueAnyTransformer

+ (id)allowedTopLevelClasses
{
  v2 = MEMORY[0x1E695DFA8];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___PLGlobalKeyValueAnyTransformer;
  v3 = objc_msgSendSuper2(&v8, sel_allowedTopLevelClasses);
  v4 = [v2 setWithArray:v3];

  v5 = +[PLGlobalKeyValue allDecodeClasses];
  [v4 unionSet:v5];

  allObjects = [v4 allObjects];

  return allObjects;
}

@end