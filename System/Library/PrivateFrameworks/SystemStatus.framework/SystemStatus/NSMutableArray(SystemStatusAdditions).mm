@interface NSMutableArray(SystemStatusAdditions)
- (uint64_t)st_removeFirstOccurrenceOfObject:()SystemStatusAdditions;
- (void)st_subtractArray:()SystemStatusAdditions;
@end

@implementation NSMutableArray(SystemStatusAdditions)

- (uint64_t)st_removeFirstOccurrenceOfObject:()SystemStatusAdditions
{
  result = [self indexOfObject:?];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {

    return [self removeObjectAtIndex:result];
  }

  return result;
}

- (void)st_subtractArray:()SystemStatusAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self st_removeFirstOccurrenceOfObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end