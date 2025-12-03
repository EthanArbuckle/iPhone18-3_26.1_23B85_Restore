@interface _UISceneConnectionOptionsContext
- (uint64_t)connectionValues;
- (void)_addCleanupBlock:(uint64_t)block;
@end

@implementation _UISceneConnectionOptionsContext

- (void)_addCleanupBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    v4 = *(block + 32);
    v9 = v3;
    if (v4)
    {
      v5 = _Block_copy(v3);
      [v4 setByAddingObject:v5];
    }

    else
    {
      v7 = MEMORY[0x1E695DFD8];
      v5 = _Block_copy(v3);
      [v7 setWithObject:v5];
    }
    v6 = ;
    v8 = *(block + 32);
    *(block + 32) = v6;

    v3 = v9;
  }
}

- (uint64_t)connectionValues
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

@end