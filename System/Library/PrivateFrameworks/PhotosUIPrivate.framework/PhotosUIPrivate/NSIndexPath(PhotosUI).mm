@interface NSIndexPath(PhotosUI)
+ (id)pu_indexPathForItem:()PhotosUI inSubSection:section:;
+ (id)pu_indexPathsForItems:()PhotosUI inSection:;
+ (id)pu_rootIndexPath;
- (BOOL)pu_isValid;
- (__CFString)pu_shortDescription;
- (id)pu_alteredIndexPathAfterDeletingItemAtIndexPath:()PhotosUI;
- (id)pu_alteredIndexPathAfterDeletingItemsAtIndexPaths:()PhotosUI;
- (id)pu_alteredIndexPathAfterInsertingItemAtIndexPath:()PhotosUI;
- (id)pu_alteredIndexPathAfterInsertingItemsAtIndexPaths:()PhotosUI;
- (id)pu_alteredIndexPathAfterMovingItemAtIndexPath:()PhotosUI toIndexPath:;
- (id)pu_indexPathAfterDeletingItemAtIndexPath:()PhotosUI;
- (id)pu_indexPathAfterInsertingItemAtIndexPath:()PhotosUI;
- (id)pu_indexPathAfterMovingItemFromIndexPath:()PhotosUI toIndexPath:;
- (id)pu_indexPathAfterReloadingItemAtIndexPath:()PhotosUI;
- (id)pu_indexPathByAppendingIndexPath:()PhotosUI;
- (id)pu_indexPathByChangingIndexAtPosition:()PhotosUI toIndex:;
- (uint64_t)pu_isParentOfIndexPath:()PhotosUI;
@end

@implementation NSIndexPath(PhotosUI)

- (__CFString)pu_shortDescription
{
  v2 = [a1 length];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
    for (i = 0; i != v3; ++i)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "indexAtPosition:", i)}];
      v8 = [v6 stringWithFormat:@"%@", v7];
      [v4 addObject:v8];
    }

    v9 = [v4 componentsJoinedByString:@"-"];
  }

  else
  {
    v9 = @"∅";
  }

  return v9;
}

- (id)pu_indexPathAfterReloadingItemAtIndexPath:()PhotosUI
{
  v4 = a3;
  v5 = a1;
  if ([v4 pu_isParentOfIndexPath:v5])
  {
    if ([v4 length])
    {
      v6 = [v4 length] - 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v5 pu_indexPathByChangingIndexAtPosition:v6 toIndex:0x7FFFFFFFFFFFFFFFLL];

    v5 = v7;
  }

  return v5;
}

- (id)pu_indexPathAfterMovingItemFromIndexPath:()PhotosUI toIndexPath:
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  if ([v6 isEqual:v7])
  {
    v9 = v8;
    goto LABEL_11;
  }

  if ([v8 isEqual:v6])
  {
    v9 = v7;
LABEL_10:

    goto LABEL_11;
  }

  if (![v6 pu_isParentOfIndexPath:v8])
  {
    v12 = [v8 pu_indexPathAfterDeletingItemAtIndexPath:v6];

    v9 = [v12 pu_indexPathAfterInsertingItemAtIndexPath:v7];
    v8 = v12;
    goto LABEL_10;
  }

  v10 = v7;

  v11 = [v6 length];
  if (v11 >= [v8 length])
  {
    v9 = v10;
  }

  else
  {
    do
    {
      v9 = [v10 indexPathByAddingIndex:{objc_msgSend(v8, "indexAtPosition:", v11)}];

      ++v11;
      v10 = v9;
    }

    while (v11 < [v8 length]);
  }

LABEL_11:

  return v9;
}

- (id)pu_indexPathAfterDeletingItemAtIndexPath:()PhotosUI
{
  v4 = a3;
  v5 = a1;
  if (![v4 length])
  {
    v14 = v5;
    v15 = 0;
    goto LABEL_11;
  }

  v6 = [v5 length];
  if (v6 < [v4 length])
  {
    goto LABEL_13;
  }

  v7 = [v4 length];
  v8 = v7 - 1;
  if (v7 == 1)
  {
LABEL_7:
    v11 = [v5 indexAtPosition:v8];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v12 = v11;
    v13 = [v4 indexAtPosition:v8];
    if (v12 != v13)
    {
      if (v12 <= v13)
      {
        goto LABEL_13;
      }

      v16 = v12 - 1;
      v14 = v5;
      v15 = v8;
LABEL_12:
      v17 = [v14 pu_indexPathByChangingIndexAtPosition:v15 toIndex:v16];

      v5 = v17;
      goto LABEL_13;
    }

    v14 = v5;
    v15 = v8;
LABEL_11:
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v9 = 0;
  while (1)
  {
    v10 = [v5 indexAtPosition:v9];
    if (v10 != [v4 indexAtPosition:v9])
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_7;
    }
  }

LABEL_13:

  return v5;
}

- (id)pu_indexPathAfterInsertingItemAtIndexPath:()PhotosUI
{
  v5 = a3;
  v6 = a1;
  if (![v5 length])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:v6 file:@"NSIndexPath+PhotosUI.m" lineNumber:148 description:@"can't insert zero-length index path"];
    goto LABEL_11;
  }

  v7 = [v6 length];
  if (v7 < [v5 length])
  {
    goto LABEL_12;
  }

  v8 = [v5 length];
  v9 = v8 - 1;
  if (v8 == 1)
  {
LABEL_7:
    v12 = [v6 indexAtPosition:v9];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v13 = v12;
    if (v12 < [v5 indexAtPosition:v9])
    {
      goto LABEL_12;
    }

    [v6 pu_indexPathByChangingIndexAtPosition:v9 toIndex:v13 + 1];
    v6 = v14 = v6;
LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
  while (1)
  {
    v11 = [v6 indexAtPosition:v10];
    if (v11 != [v5 indexAtPosition:v10])
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_7;
    }
  }

LABEL_12:

  return v6;
}

- (id)pu_alteredIndexPathAfterMovingItemAtIndexPath:()PhotosUI toIndexPath:
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  if (v6 && ([v6 isEqual:v7] & 1) == 0)
  {
    if ([v8 isEqual:v6])
    {
      v9 = v7;
    }

    else
    {
      v10 = [v8 pu_alteredIndexPathAfterDeletingItemAtIndexPath:v6];

      v9 = [v10 pu_alteredIndexPathAfterInsertingItemAtIndexPath:v7];
      v8 = v10;
    }

    v8 = v9;
  }

  return v8;
}

- (id)pu_alteredIndexPathAfterDeletingItemsAtIndexPaths:()PhotosUI
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [v10 pu_alteredIndexPathAfterDeletingItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)pu_alteredIndexPathAfterDeletingItemAtIndexPath:()PhotosUI
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 section];
  if (v6 == [v5 section])
  {
    v7 = [v4 item];
    if (v7 == [v5 item])
    {
      v8 = MEMORY[0x1E696AC88];
      v9 = [v5 section];
      v10 = v8;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = [v4 item];
      if (v12 >= [v5 item])
      {
        goto LABEL_7;
      }

      v13 = MEMORY[0x1E696AC88];
      v14 = [v5 item] - 1;
      v9 = [v5 section];
      v10 = v13;
      v11 = v14;
    }

    v15 = [v10 indexPathForItem:v11 inSection:v9];

    v5 = v15;
  }

LABEL_7:

  return v5;
}

- (id)pu_alteredIndexPathAfterInsertingItemsAtIndexPaths:()PhotosUI
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v5 = [v10 pu_alteredIndexPathAfterInsertingItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)pu_alteredIndexPathAfterInsertingItemAtIndexPath:()PhotosUI
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 section];
  if (v6 == [v5 section])
  {
    v7 = [v4 item];
    if (v7 <= [v5 item])
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v5 inSection:{"item") + 1, objc_msgSend(v5, "section")}];

      v5 = v8;
    }
  }

  return v5;
}

- (uint64_t)pu_isParentOfIndexPath:()PhotosUI
{
  v4 = a3;
  v5 = [a1 length];
  if (v5 <= [v4 length])
  {
    if ([a1 length])
    {
      v7 = 0;
      while (1)
      {
        v8 = [a1 indexAtPosition:v7];
        v9 = v8 == [v4 indexAtPosition:v7];
        v6 = v9;
        if (!v9)
        {
          break;
        }

        if (++v7 >= [a1 length])
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)pu_isValid
{
  if (![a1 length])
  {
    return 1;
  }

  v2 = 0;
  while (1)
  {
    v3 = [a1 indexAtPosition:v2];
    v4 = v3 == 0x7FFFFFFFFFFFFFFFLL;
    result = v3 != 0x7FFFFFFFFFFFFFFFLL;
    if (v4)
    {
      break;
    }

    if (++v2 >= [a1 length])
    {
      return 1;
    }
  }

  return result;
}

- (id)pu_indexPathByAppendingIndexPath:()PhotosUI
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 length];
  v6 = [v4 length] + v5;
  v7 = v13 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      *&v7[8 * i] = [a1 indexAtPosition:i];
    }
  }

  if ([v4 length])
  {
    v9 = 0;
    v10 = &v7[8 * v5];
    do
    {
      *&v10[8 * v9] = [v4 indexAtPosition:v9];
      ++v9;
    }

    while (v9 < [v4 length]);
  }

  v11 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v7 length:v6];

  return v11;
}

- (id)pu_indexPathByChangingIndexAtPosition:()PhotosUI toIndex:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 length];
  v8 = v13 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = a4;
      if (a3 != v9)
      {
        v10 = [a1 indexAtPosition:v9];
      }

      *&v8[8 * v9++] = v10;
    }

    while (v7 != v9);
  }

  v11 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v8 length:v7];

  return v11;
}

+ (id)pu_rootIndexPath
{
  v1 = [[a1 alloc] initWithIndexes:0 length:0];

  return v1;
}

+ (id)pu_indexPathForItem:()PhotosUI inSubSection:section:
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = a5;
  v7[1] = a4;
  v7[2] = a3;
  v5 = [objc_opt_class() indexPathWithIndexes:v7 length:3];

  return v5;
}

+ (id)pu_indexPathsForItems:()PhotosUI inSection:
{
  if (a3)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = a3;
    v7 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__NSIndexPath_PhotosUI__pu_indexPathsForItems_inSection___block_invoke;
    v10[3] = &unk_1E7B7C8F8;
    v12 = a4;
    v8 = v7;
    v11 = v8;
    [v6 enumerateIndexesUsingBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end