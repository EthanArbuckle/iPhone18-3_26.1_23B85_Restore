@interface NSArray(TelephonyUtilitiesAdditions)
- (BOOL)tu_containsObjectPassingTest:()TelephonyUtilitiesAdditions;
- (id)tu_firstObjectPassingTest:()TelephonyUtilitiesAdditions;
- (id)tu_mapAndFilterObjectsUsingBlock:()TelephonyUtilitiesAdditions;
@end

@implementation NSArray(TelephonyUtilitiesAdditions)

- (id)tu_mapAndFilterObjectsUsingBlock:()TelephonyUtilitiesAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__NSArray_TelephonyUtilitiesAdditions__tu_mapAndFilterObjectsUsingBlock___block_invoke;
  v11[3] = &unk_1E7426A28;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [self enumerateObjectsWithOptions:0 usingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (BOOL)tu_containsObjectPassingTest:()TelephonyUtilitiesAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__NSArray_TelephonyUtilitiesAdditions__tu_containsObjectPassingTest___block_invoke;
  v8[3] = &unk_1E7426A50;
  v9 = v4;
  v5 = v4;
  v6 = [self indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

- (id)tu_firstObjectPassingTest:()TelephonyUtilitiesAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__NSArray_TelephonyUtilitiesAdditions__tu_firstObjectPassingTest___block_invoke;
  v9[3] = &unk_1E7426A50;
  v5 = v4;
  v10 = v5;
  v6 = [self indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [self objectAtIndexedSubscript:v6];
  }

  return v7;
}

@end