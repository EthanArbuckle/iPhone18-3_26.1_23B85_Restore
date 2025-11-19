@interface UIPinnedNonOverlappingFramesForContentFrameVisibleFrame
@end

@implementation UIPinnedNonOverlappingFramesForContentFrameVisibleFrame

void ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke(uint64_t a1, double *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2[10];
    v6 = a2[11];
    v7 = a2[12];
    v8 = a2[13];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v5 = 0.0;
  }

  v11 = [MEMORY[0x1E696B098] valueWithCGRect:{v5, v6, v7, v8}];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v9 setObject:v11 forKeyedSubscript:v10];
}

BOOL ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(_UICollectionLayoutFramesQueryResult *)a2 auxillaryItem];
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<_UICollectionLayoutFramesQueryResult *> * _Nonnull _UIPinnedNonOverlappingFramesForContentFrameVisibleFrame(NSArray<_UICollectionLayoutFramesQueryResult *> *const __strong _Nonnull, CGRect, CGRect, BOOL)_block_invoke_2"}];
    [v8 handleFailureInFunction:v9 file:@"_UICollectionLayoutHelpers.m" lineNumber:2088 description:{@"Invalid parameter not satisfying: %@", @"auxillaryItem"}];
  }

  v5 = [v4 containerAnchor];
  v6 = ([v5 edges] & a3) != 0;

  return v6;
}

double ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if ((*(*(a1 + 40) + 16))(*(a1 + 40)))
        {
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          if (CGRectIsEmpty(v24))
          {
            if (v11)
            {
              x = v11[10];
              y = v11[11];
              width = v11[12];
              height = v11[13];
            }

            else
            {
              height = 0.0;
              width = 0.0;
              y = 0.0;
              x = 0.0;
            }
          }

          else
          {
            if (v11)
            {
              v12 = *(v11 + 10);
              v13 = *(v11 + 11);
              v14 = *(v11 + 12);
              v15 = *(v11 + 13);
            }

            else
            {
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v12 = 0;
            }

            v26.origin.x = x;
            v26.origin.y = y;
            v26.size.width = width;
            v26.size.height = height;
            v25 = CGRectUnion(*&v12, v26);
            x = v25.origin.x;
            y = v25.origin.y;
            width = v25.size.width;
            height = v25.size.height;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v16;
    }

    while (v16);
  }

  return x;
}

BOOL ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_4(CGRect *a1, char a2)
{
  if ((a2 & 8) != 0)
  {
    v4 = ceil(CGRectGetMaxX(a1[1]));
    MaxX = CGRectGetMaxX(a1[2]);
    return v4 >= floor(MaxX);
  }

  if ((a2 & 1) == 0)
  {
    if ((a2 & 4) == 0)
    {
      if ((a2 & 2) == 0)
      {
        return 0;
      }

      v6 = floor(CGRectGetMinX(a1[1]));
      MinX = CGRectGetMinX(a1[2]);
      return v6 <= ceil(MinX);
    }

    v4 = ceil(CGRectGetMaxY(a1[1]));
    MaxX = CGRectGetMaxY(a1[2]);
    return v4 >= floor(MaxX);
  }

  v6 = floor(CGRectGetMinY(a1[1]));
  MinX = CGRectGetMinY(a1[2]);
  return v6 <= ceil(MinX);
}

void ___UIPinnedNonOverlappingFramesForContentFrameVisibleFrame_block_invoke_561(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (a2)
  {
    v15 = *(a2 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = [(_UICollectionLayoutFramesQueryResult *)a2 copyWithFrame:v15 index:v8, v10, v12, v14];
  [*(a1 + 40) addObject:v16];
}

@end