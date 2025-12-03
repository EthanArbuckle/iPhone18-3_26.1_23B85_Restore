@interface NSMutableArray(VideosUICore)
- (BOOL)vui_applyChangeSet:()VideosUICore destinationObjectsBlock:updateObjectBlock:;
- (uint64_t)vui_addObjectIfNotNil:()VideosUICore;
- (uint64_t)vui_addObjectsFromArrayIfNotNil:()VideosUICore;
- (uint64_t)vui_applyChangeSet:()VideosUICore destinationObjects:updateObjectBlock:;
- (uint64_t)vui_applyChangeSetIfAvailable:()VideosUICore destinationObjects:replaceContentsOnNilChanges:;
- (void)_vui_applyUpdateChanges:()VideosUICore destinationObjectsBlock:updateObjectBlock:;
@end

@implementation NSMutableArray(VideosUICore)

- (uint64_t)vui_applyChangeSetIfAvailable:()VideosUICore destinationObjects:replaceContentsOnNilChanges:
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [self vui_applyChangeSet:v8 destinationObjects:v9 updateObjectBlock:0];
  }

  else if (a5)
  {
    [self removeAllObjects];
    [self addObjectsFromArray:v9];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)vui_applyChangeSet:()VideosUICore destinationObjects:updateObjectBlock:
{
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__NSMutableArray_VideosUICore__vui_applyChangeSet_destinationObjects_updateObjectBlock___block_invoke;
  v12[3] = &unk_279E21520;
  v13 = v8;
  v9 = v8;
  v10 = [self vui_applyChangeSet:a3 destinationObjectsBlock:v12 updateObjectBlock:a5];

  return v10;
}

- (BOOL)vui_applyChangeSet:()VideosUICore destinationObjectsBlock:updateObjectBlock:
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v55 = a4;
  v53 = a5;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  deleteChange = [v7 deleteChange];
  sourceIndexes = [deleteChange sourceIndexes];

  if (sourceIndexes)
  {
    [indexSet addIndexes:sourceIndexes];
  }

  v52 = sourceIndexes;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = v7;
  moveChanges = [v7 moveChanges];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = [moveChanges countByEnumeratingWithState:&v63 objects:v68 count:16];
  v14 = indexSet;
  if (v13)
  {
    v15 = v13;
    v16 = *v64;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(moveChanges);
        }

        v18 = *(*(&v63 + 1) + 8 * i);
        sourceIndexes2 = [v18 sourceIndexes];
        firstIndex = [sourceIndexes2 firstIndex];

        v21 = [self objectAtIndex:firstIndex];
        destinationIndexes = [v18 destinationIndexes];
        firstIndex2 = [destinationIndexes firstIndex];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:firstIndex2];
        [v11 setObject:v21 forKey:v24];

        indexSet = v14;
        [v14 addIndex:firstIndex];
      }

      v15 = [moveChanges countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v15);
  }

  v25 = [indexSet count];
  v26 = v25 != 0;
  if (v25)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __93__NSMutableArray_VideosUICore__vui_applyChangeSet_destinationObjectsBlock_updateObjectBlock___block_invoke;
    v62[3] = &unk_279E22038;
    v62[4] = self;
    v27 = [indexSet indexesPassingTest:v62];
    [self removeObjectsAtIndexes:v27];
  }

  insertChange = [v54 insertChange];
  destinationIndexes2 = [insertChange destinationIndexes];
  v30 = destinationIndexes2;
  if (destinationIndexes2)
  {
    indexSet2 = destinationIndexes2;
  }

  else
  {
    indexSet2 = [MEMORY[0x277CCAA78] indexSet];
  }

  v56 = indexSet2;

  indexSet3 = [MEMORY[0x277CCAB58] indexSet];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v33 = moveChanges;
  v34 = [v33 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v59;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(v33);
        }

        destinationIndexes3 = [*(*(&v58 + 1) + 8 * j) destinationIndexes];
        firstIndex3 = [destinationIndexes3 firstIndex];

        [indexSet3 addIndex:firstIndex3];
      }

      v35 = [v33 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v35);
  }

  if ([indexSet3 count] || objc_msgSend(v56, "count"))
  {
    firstIndex4 = [v56 firstIndex];
    firstIndex5 = [indexSet3 firstIndex];
    v42 = firstIndex5;
    v43 = firstIndex5 != 0x7FFFFFFFFFFFFFFFLL;
    v44 = firstIndex4 != 0x7FFFFFFFFFFFFFFFLL;
    for (k = v54; firstIndex4 != 0x7FFFFFFFFFFFFFFFLL || v42 != 0x7FFFFFFFFFFFFFFFLL; v44 = firstIndex4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v44 && (v43 & 1) != 0)
      {
        if (firstIndex4 > v42)
        {
          goto LABEL_34;
        }
      }

      else if ((v44 & ~v43 & 1) == 0)
      {
LABEL_34:
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
        v47 = [v11 objectForKey:v49];

        if (v47 && v42 <= [self count])
        {
          [self insertObject:v47 atIndex:v42];
        }

        v42 = [indexSet3 indexGreaterThanIndex:v42];
        goto LABEL_38;
      }

      v46 = [MEMORY[0x277CCAA78] indexSetWithIndex:firstIndex4];
      v47 = v55[2](v55, v46);

      firstObject = [v47 firstObject];
      if (firstObject && firstIndex4 <= [self count])
      {
        [self insertObject:firstObject atIndex:firstIndex4];
      }

      firstIndex4 = [v56 indexGreaterThanIndex:firstIndex4];

LABEL_38:
      v43 = v42 != 0x7FFFFFFFFFFFFFFFLL;
    }

    v26 = 1;
  }

  else
  {
    k = v54;
  }

  updateChanges = [k updateChanges];
  if (updateChanges)
  {
    [self _vui_applyUpdateChanges:updateChanges destinationObjectsBlock:v55 updateObjectBlock:v53];
    v26 = 1;
  }

  return v26;
}

- (uint64_t)vui_addObjectIfNotNil:()VideosUICore
{
  v4 = a3;
  if (v4)
  {
    [self addObject:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)vui_addObjectsFromArrayIfNotNil:()VideosUICore
{
  v4 = a3;
  if (v4)
  {
    [self addObjectsFromArray:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_vui_applyUpdateChanges:()VideosUICore destinationObjectsBlock:updateObjectBlock:
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v23 = a4;
  v9 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v8;
  v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        sourceIndexes = [v14 sourceIndexes];
        destinationIndexes = [v14 destinationIndexes];
        firstIndex = [destinationIndexes firstIndex];
        v18 = [self objectAtIndex:firstIndex];
        if (v9)
        {
          updateChangeSet = [v14 updateChangeSet];
          v9[2](v9, updateChangeSet, v18, firstIndex);
        }

        else
        {
          updateChangeSet = v23[2](v23, destinationIndexes);
          [updateChangeSet firstObject];
          v20 = v11;
          v22 = v21 = v12;
          [self replaceObjectAtIndex:firstIndex withObject:v22];

          v12 = v21;
          v11 = v20;
          v9 = 0;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

@end