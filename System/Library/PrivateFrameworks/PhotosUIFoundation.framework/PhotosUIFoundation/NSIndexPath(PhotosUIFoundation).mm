@interface NSIndexPath(PhotosUIFoundation)
+ (id)px_indexPathForItem:()PhotosUIFoundation inSection:;
+ (id)px_indexPathForItem:()PhotosUIFoundation inSection:withKind:;
+ (id)px_indexPathsForItems:()PhotosUIFoundation inSection:;
- (id)px_alteredIndexPathAfterDeletingItemAtIndexPath:()PhotosUIFoundation;
- (id)px_alteredIndexPathAfterDeletingItemsAtIndexPaths:()PhotosUIFoundation;
- (id)px_alteredIndexPathAfterInsertingItemAtIndexPath:()PhotosUIFoundation;
- (id)px_alteredIndexPathAfterInsertingItemsAtIndexPaths:()PhotosUIFoundation;
- (id)px_alteredIndexPathAfterMovingItemAtIndexPath:()PhotosUIFoundation toIndexPath:;
- (id)px_indexPathAfterDeletingItemAtIndexPath:()PhotosUIFoundation;
- (id)px_indexPathAfterInsertingItemAtIndexPath:()PhotosUIFoundation;
- (id)px_indexPathByChangingIndexAtPosition:()PhotosUIFoundation toIndex:;
- (uint64_t)px_item;
- (uint64_t)px_kind;
@end

@implementation NSIndexPath(PhotosUIFoundation)

- (id)px_indexPathAfterDeletingItemAtIndexPath:()PhotosUIFoundation
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
      v17 = [v14 px_indexPathByChangingIndexAtPosition:v15 toIndex:v16];

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

- (id)px_indexPathAfterInsertingItemAtIndexPath:()PhotosUIFoundation
{
  v5 = a3;
  v6 = a1;
  if (![v5 length])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:v6 file:@"NSIndexPath+PhotosUIFoundation.m" lineNumber:109 description:@"can't insert zero-length index path"];
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

    [v6 px_indexPathByChangingIndexAtPosition:v9 toIndex:v13 + 1];
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

- (id)px_alteredIndexPathAfterMovingItemAtIndexPath:()PhotosUIFoundation toIndexPath:
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
      v10 = [v8 px_alteredIndexPathAfterDeletingItemAtIndexPath:v6];

      v9 = [v10 px_alteredIndexPathAfterInsertingItemAtIndexPath:v7];
      v8 = v10;
    }

    v8 = v9;
  }

  return v8;
}

- (id)px_alteredIndexPathAfterDeletingItemsAtIndexPaths:()PhotosUIFoundation
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

        v4 = [v10 px_alteredIndexPathAfterDeletingItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];

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

- (id)px_alteredIndexPathAfterDeletingItemAtIndexPath:()PhotosUIFoundation
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 px_section];
  if (v6 == [v5 px_section])
  {
    v7 = [v4 px_item];
    if (v7 == [v5 px_item])
    {
      v8 = MEMORY[0x1E696AC88];
      v9 = [v5 px_section];
      v10 = v8;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = [v4 px_item];
      if (v12 >= [v5 px_item])
      {
        goto LABEL_7;
      }

      v13 = MEMORY[0x1E696AC88];
      v14 = [v5 px_item] - 1;
      v9 = [v5 px_section];
      v10 = v13;
      v11 = v14;
    }

    v15 = [v10 px_indexPathForItem:v11 inSection:v9];

    v5 = v15;
  }

LABEL_7:

  return v5;
}

- (id)px_alteredIndexPathAfterInsertingItemsAtIndexPaths:()PhotosUIFoundation
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

        v5 = [v10 px_alteredIndexPathAfterInsertingItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];

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

- (id)px_alteredIndexPathAfterInsertingItemAtIndexPath:()PhotosUIFoundation
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 px_section];
  if (v6 == [v5 px_section])
  {
    v7 = [v4 px_item];
    if (v7 <= [v5 px_item])
    {
      v8 = [MEMORY[0x1E696AC88] px_indexPathForItem:objc_msgSend(v5 inSection:{"px_item") + 1, objc_msgSend(v5, "px_section")}];

      v5 = v8;
    }
  }

  return v5;
}

- (id)px_indexPathByChangingIndexAtPosition:()PhotosUIFoundation toIndex:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 length];
  v8 = v11 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 getIndexes:v8];
  *&v8[8 * a3] = a4;
  v9 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v8 length:v7];

  return v9;
}

- (uint64_t)px_kind
{
  if ([a1 length] < 3)
  {
    return 0;
  }

  return [a1 indexAtPosition:2];
}

- (uint64_t)px_item
{
  if ([a1 length] < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [a1 indexAtPosition:1];
}

+ (id)px_indexPathForItem:()PhotosUIFoundation inSection:withKind:
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = a4;
  v7[1] = a3;
  v7[2] = a5;
  v5 = [objc_opt_class() indexPathWithIndexes:v7 length:3];

  return v5;
}

+ (id)px_indexPathForItem:()PhotosUIFoundation inSection:
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a4;
  v6[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v6 length:2];

  return v4;
}

+ (id)px_indexPathsForItems:()PhotosUIFoundation inSection:
{
  if (a3)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = a3;
    v7 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__NSIndexPath_PhotosUIFoundation__px_indexPathsForItems_inSection___block_invoke;
    v10[3] = &unk_1E7BB5C38;
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