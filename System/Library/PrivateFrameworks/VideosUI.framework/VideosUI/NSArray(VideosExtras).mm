@interface NSArray(VideosExtras)
- (id)ikAssetAttributes;
- (uint64_t)ikAssetArraysEqual:()VideosExtras;
@end

@implementation NSArray(VideosExtras)

- (uint64_t)ikAssetArraysEqual:()VideosExtras
{
  v4 = a3;
  if (v4 && (v5 = [self count], v5 == objc_msgSend(v4, "count")))
  {
    ikAssetAttributes = [self ikAssetAttributes];
    if (v5 == [ikAssetAttributes count])
    {
      ikAssetAttributes2 = [v4 ikAssetAttributes];
      if (v5 == [ikAssetAttributes2 count])
      {
        v8 = [ikAssetAttributes isEqualToArray:ikAssetAttributes2];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)ikAssetAttributes
{
  array = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__NSArray_VideosExtras__ikAssetAttributes__block_invoke;
  v6[3] = &unk_1E8736FE8;
  v7 = array;
  v3 = array;
  [self enumerateObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

@end