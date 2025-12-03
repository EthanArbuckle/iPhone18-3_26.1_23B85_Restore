@interface NSArray(QueryUtils)
- (id)mapNonEmpty:()QueryUtils;
@end

@implementation NSArray(QueryUtils)

- (id)mapNonEmpty:()QueryUtils
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__NSArray_QueryUtils__mapNonEmpty___block_invoke;
  v11[3] = &unk_1E85A37A0;
  v6 = v5;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

@end