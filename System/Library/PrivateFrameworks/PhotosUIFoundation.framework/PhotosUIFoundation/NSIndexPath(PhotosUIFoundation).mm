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
  selfCopy = self;
  if (![v4 length])
  {
    v14 = selfCopy;
    v15 = 0;
    goto LABEL_11;
  }

  v6 = [selfCopy length];
  if (v6 < [v4 length])
  {
    goto LABEL_13;
  }

  v7 = [v4 length];
  v8 = v7 - 1;
  if (v7 == 1)
  {
LABEL_7:
    v11 = [selfCopy indexAtPosition:v8];
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
      v14 = selfCopy;
      v15 = v8;
LABEL_12:
      v17 = [v14 px_indexPathByChangingIndexAtPosition:v15 toIndex:v16];

      selfCopy = v17;
      goto LABEL_13;
    }

    v14 = selfCopy;
    v15 = v8;
LABEL_11:
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v9 = 0;
  while (1)
  {
    v10 = [selfCopy indexAtPosition:v9];
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

  return selfCopy;
}

- (id)px_indexPathAfterInsertingItemAtIndexPath:()PhotosUIFoundation
{
  v5 = a3;
  selfCopy = self;
  if (![v5 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"NSIndexPath+PhotosUIFoundation.m" lineNumber:109 description:@"can't insert zero-length index path"];
    goto LABEL_11;
  }

  v7 = [selfCopy length];
  if (v7 < [v5 length])
  {
    goto LABEL_12;
  }

  v8 = [v5 length];
  v9 = v8 - 1;
  if (v8 == 1)
  {
LABEL_7:
    v12 = [selfCopy indexAtPosition:v9];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v13 = v12;
    if (v12 < [v5 indexAtPosition:v9])
    {
      goto LABEL_12;
    }

    [selfCopy px_indexPathByChangingIndexAtPosition:v9 toIndex:v13 + 1];
    selfCopy = currentHandler = selfCopy;
LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
  while (1)
  {
    v11 = [selfCopy indexAtPosition:v10];
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

  return selfCopy;
}

- (id)px_alteredIndexPathAfterMovingItemAtIndexPath:()PhotosUIFoundation toIndexPath:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  if (v6 && ([v6 isEqual:v7] & 1) == 0)
  {
    if ([selfCopy isEqual:v6])
    {
      v9 = v7;
    }

    else
    {
      v10 = [selfCopy px_alteredIndexPathAfterDeletingItemAtIndexPath:v6];

      v9 = [v10 px_alteredIndexPathAfterInsertingItemAtIndexPath:v7];
      selfCopy = v10;
    }

    selfCopy = v9;
  }

  return selfCopy;
}

- (id)px_alteredIndexPathAfterDeletingItemsAtIndexPaths:()PhotosUIFoundation
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reverseObjectEnumerator = [a3 reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        selfCopy = [v10 px_alteredIndexPathAfterDeletingItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return selfCopy;
}

- (id)px_alteredIndexPathAfterDeletingItemAtIndexPath:()PhotosUIFoundation
{
  v4 = a3;
  selfCopy = self;
  px_section = [v4 px_section];
  if (px_section == [selfCopy px_section])
  {
    px_item = [v4 px_item];
    if (px_item == [selfCopy px_item])
    {
      v8 = MEMORY[0x1E696AC88];
      px_section2 = [selfCopy px_section];
      v10 = v8;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      px_item2 = [v4 px_item];
      if (px_item2 >= [selfCopy px_item])
      {
        goto LABEL_7;
      }

      v13 = MEMORY[0x1E696AC88];
      v14 = [selfCopy px_item] - 1;
      px_section2 = [selfCopy px_section];
      v10 = v13;
      v11 = v14;
    }

    v15 = [v10 px_indexPathForItem:v11 inSection:px_section2];

    selfCopy = v15;
  }

LABEL_7:

  return selfCopy;
}

- (id)px_alteredIndexPathAfterInsertingItemsAtIndexPaths:()PhotosUIFoundation
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
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
      v10 = selfCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        selfCopy = [v10 px_alteredIndexPathAfterInsertingItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return selfCopy;
}

- (id)px_alteredIndexPathAfterInsertingItemAtIndexPath:()PhotosUIFoundation
{
  v4 = a3;
  selfCopy = self;
  px_section = [v4 px_section];
  if (px_section == [selfCopy px_section])
  {
    px_item = [v4 px_item];
    if (px_item <= [selfCopy px_item])
    {
      v8 = [MEMORY[0x1E696AC88] px_indexPathForItem:objc_msgSend(selfCopy inSection:{"px_item") + 1, objc_msgSend(selfCopy, "px_section")}];

      selfCopy = v8;
    }
  }

  return selfCopy;
}

- (id)px_indexPathByChangingIndexAtPosition:()PhotosUIFoundation toIndex:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = [self length];
  v8 = v11 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [self getIndexes:v8];
  *&v8[8 * a3] = a4;
  v9 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v8 length:v7];

  return v9;
}

- (uint64_t)px_kind
{
  if ([self length] < 3)
  {
    return 0;
  }

  return [self indexAtPosition:2];
}

- (uint64_t)px_item
{
  if ([self length] < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [self indexAtPosition:1];
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