@interface NSIndexPath(SBIconIndex)
+ (id)indexPathWithFolderIconIndex:()SBIconIndex folderListIndex:iconIndex:listIndex:;
+ (id)indexPathWithIconIndex:()SBIconIndex listIndex:;
+ (id)sb_indexPathWithFolderIconIndex:()SBIconIndex folderListIndex:listIndex:;
- (id)sb_firstIconPathComponent;
- (id)sb_iconPathDescription;
- (id)sb_iconRelativePathComponents;
- (id)sb_indexPathByAddingIndexPath:()SBIconIndex;
- (id)sb_indexPathByAddingPathComponentWithListIndex:()SBIconIndex iconIndex:;
- (id)sb_indexPathByRemovingFirstIconPathComponent;
- (id)sb_indexPathByRemovingLastIconIndex;
- (id)sb_indexPathByRemovingLastIconPathComponent;
- (id)sb_indexPathByReplacingLastIconIndex:()SBIconIndex;
- (id)sb_lastIconPathComponent;
- (uint64_t)sbIconIndex;
- (uint64_t)sbListIndex;
- (uint64_t)sb_isOnSameListAsIndexPath:()SBIconIndex;
- (uint64_t)sb_lastIconIndex;
- (uint64_t)sb_lastListIndex;
@end

@implementation NSIndexPath(SBIconIndex)

- (uint64_t)sbListIndex
{
  if (![self length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [self indexAtPosition:0];
}

- (id)sb_iconRelativePathComponents
{
  v2 = [self length];
  v3 = malloc_type_calloc(v2, 8uLL, 0x100004000313F17uLL);
  if (v3)
  {
    v4 = v3;
    [self getIndexes:v3 range:{0, v2}];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v2)
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (v2 - 1 == v6)
        {
          [MEMORY[0x1E696AC88] indexPathWithIndex:*v7];
        }

        else
        {
          [MEMORY[0x1E696AC88] indexPathWithIndexes:v7 length:2];
        }
        v8 = ;
        [v5 addObject:v8];

        v6 += 2;
        v7 += 2;
      }

      while (v6 < v2);
    }

    free(v4);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (uint64_t)sbIconIndex
{
  if ([self length] < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [self indexAtPosition:1];
}

+ (id)indexPathWithIconIndex:()SBIconIndex listIndex:
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a4;
  v6[1] = a3;
  v4 = [self indexPathWithIndexes:v6 length:2];

  return v4;
}

+ (id)indexPathWithFolderIconIndex:()SBIconIndex folderListIndex:iconIndex:listIndex:
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = a4;
  v8[1] = a3;
  v8[2] = a6;
  v8[3] = a5;
  v6 = [self indexPathWithIndexes:v8 length:4];

  return v6;
}

+ (id)sb_indexPathWithFolderIconIndex:()SBIconIndex folderListIndex:listIndex:
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = a4;
  v7[1] = a3;
  v7[2] = a5;
  v5 = [self indexPathWithIndexes:v7 length:3];

  return v5;
}

- (uint64_t)sb_lastListIndex
{
  v2 = [self length];

  return [self indexAtPosition:v2 + (v2 | 0xFFFFFFFFFFFFFFFELL)];
}

- (uint64_t)sb_lastIconIndex
{
  v2 = [self length];
  if (v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [self indexAtPosition:v2 - 1];
}

- (id)sb_firstIconPathComponent
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [self length];
  if (v2 == 2)
  {
    selfCopy = self;
  }

  else if (v2 >= 2)
  {
    [self getIndexes:v5 range:{0, 2}];
    selfCopy = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndexes:v5 length:2];
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)sb_indexPathByRemovingFirstIconPathComponent
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [self length];
  v3 = v2 - 2;
  if (v2 > 2)
  {
    if (v2 >= 0x10)
    {
      v6 = malloc_type_calloc(v2, 8uLL, 0x100004000313F17uLL);
      v5 = v6;
    }

    else
    {
      v5 = 0;
      v6 = &v8;
    }

    [self getIndexes:v6 range:{2, v3}];
    v4 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndexes:v6 length:v3];
    free(v5);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AC88]);
  }

  return v4;
}

- (id)sb_indexPathByRemovingLastIconPathComponent
{
  indexPathByRemovingLastIndex = [self indexPathByRemovingLastIndex];
  v1IndexPathByRemovingLastIndex = [indexPathByRemovingLastIndex indexPathByRemovingLastIndex];

  return v1IndexPathByRemovingLastIndex;
}

- (id)sb_indexPathByRemovingLastIconIndex
{
  if ([self length])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self indexPathByRemovingLastIndex];
  }

  return selfCopy;
}

- (id)sb_lastIconPathComponent
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [self length];
  if (v2 == 2)
  {
    selfCopy = self;
  }

  else if (v2 >= 2)
  {
    [self getIndexes:v5 range:{v2 - 2, 2}];
    selfCopy = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndexes:v5 length:2];
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)sb_indexPathByAddingIndexPath:()SBIconIndex
{
  v4 = a3;
  v5 = [self length];
  v6 = [v4 length];
  v7 = v5 + v6;
  if (__CFADD__(v5, v6) || (v8 = v6, (v9 = malloc_type_calloc(v5 + v6, 8uLL, 0x100004000313F17uLL)) == 0))
  {
    v11 = 0;
  }

  else
  {
    v10 = v9;
    [self getIndexes:v9 range:{0, v5}];
    [v4 getIndexes:&v10[8 * v5] range:{0, v8}];
    v11 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndexes:v10 length:v7];
    free(v10);
  }

  return v11;
}

- (id)sb_indexPathByAddingPathComponentWithListIndex:()SBIconIndex iconIndex:
{
  v5 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:a4 listIndex:a3];
  v6 = [self sb_indexPathByAddingIndexPath:v5];

  return v6;
}

- (uint64_t)sb_isOnSameListAsIndexPath:()SBIconIndex
{
  v4 = a3;
  sb_indexPathByRemovingLastIconIndex = [self sb_indexPathByRemovingLastIconIndex];
  sb_indexPathByRemovingLastIconIndex2 = [v4 sb_indexPathByRemovingLastIconIndex];

  v7 = [sb_indexPathByRemovingLastIconIndex isEqual:sb_indexPathByRemovingLastIconIndex2];
  return v7;
}

- (id)sb_indexPathByReplacingLastIconIndex:()SBIconIndex
{
  sb_indexPathByRemovingLastIconIndex = [self sb_indexPathByRemovingLastIconIndex];
  v5 = [sb_indexPathByRemovingLastIconIndex indexPathByAddingIndex:a3];

  return v5;
}

- (id)sb_iconPathDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = [self length];
  v4 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
  if (v4)
  {
    v5 = v4;
    [self getIndexes:v4 range:{0, v3}];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        if (i)
        {
          v7 = @" - %lu";
        }

        else
        {
          v7 = @" / %lu";
        }

        if (i)
        {
          v8 = v7;
        }

        else
        {
          v8 = @"%lu";
        }

        [string appendFormat:v8, v5[i]];
      }
    }

    free(v5);
  }

  return string;
}

@end