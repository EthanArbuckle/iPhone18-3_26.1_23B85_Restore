@interface NSSet(PLAdditions)
- (uint64_t)pl_countOfObjectsPassingTest:()PLAdditions;
@end

@implementation NSSet(PLAdditions)

- (uint64_t)pl_countOfObjectsPassingTest:()PLAdditions
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__NSSet_PLAdditions__pl_countOfObjectsPassingTest___block_invoke;
  v9[3] = &unk_1E756DA90;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [self enumerateObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  objc_autoreleasePoolPop(v5);

  return v7;
}

@end