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
    v10 = [a1 vui_applyChangeSet:v8 destinationObjects:v9 updateObjectBlock:0];
  }

  else if (a5)
  {
    [a1 removeAllObjects];
    [a1 addObjectsFromArray:v9];
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
  v10 = [a1 vui_applyChangeSet:a3 destinationObjectsBlock:v12 updateObjectBlock:a5];

  return v10;
}

- (BOOL)vui_applyChangeSet:()VideosUICore destinationObjectsBlock:updateObjectBlock:
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v55 = a4;
  v53 = a5;
  v8 = [MEMORY[0x277CCAB58] indexSet];
  v9 = [v7 deleteChange];
  v10 = [v9 sourceIndexes];

  if (v10)
  {
    [v8 addIndexes:v10];
  }

  v52 = v10;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = v7;
  v12 = [v7 moveChanges];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v63 objects:v68 count:16];
  v14 = v8;
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
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v63 + 1) + 8 * i);
        v19 = [v18 sourceIndexes];
        v20 = [v19 firstIndex];

        v21 = [a1 objectAtIndex:v20];
        v22 = [v18 destinationIndexes];
        v23 = [v22 firstIndex];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
        [v11 setObject:v21 forKey:v24];

        v8 = v14;
        [v14 addIndex:v20];
      }

      v15 = [v12 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v15);
  }

  v25 = [v8 count];
  v26 = v25 != 0;
  if (v25)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __93__NSMutableArray_VideosUICore__vui_applyChangeSet_destinationObjectsBlock_updateObjectBlock___block_invoke;
    v62[3] = &unk_279E22038;
    v62[4] = a1;
    v27 = [v8 indexesPassingTest:v62];
    [a1 removeObjectsAtIndexes:v27];
  }

  v28 = [v54 insertChange];
  v29 = [v28 destinationIndexes];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = [MEMORY[0x277CCAA78] indexSet];
  }

  v56 = v31;

  v32 = [MEMORY[0x277CCAB58] indexSet];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v33 = v12;
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

        v38 = [*(*(&v58 + 1) + 8 * j) destinationIndexes];
        v39 = [v38 firstIndex];

        [v32 addIndex:v39];
      }

      v35 = [v33 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v35);
  }

  if ([v32 count] || objc_msgSend(v56, "count"))
  {
    v40 = [v56 firstIndex];
    v41 = [v32 firstIndex];
    v42 = v41;
    v43 = v41 != 0x7FFFFFFFFFFFFFFFLL;
    v44 = v40 != 0x7FFFFFFFFFFFFFFFLL;
    for (k = v54; v40 != 0x7FFFFFFFFFFFFFFFLL || v42 != 0x7FFFFFFFFFFFFFFFLL; v44 = v40 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v44 && (v43 & 1) != 0)
      {
        if (v40 > v42)
        {
          goto LABEL_34;
        }
      }

      else if ((v44 & ~v43 & 1) == 0)
      {
LABEL_34:
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
        v47 = [v11 objectForKey:v49];

        if (v47 && v42 <= [a1 count])
        {
          [a1 insertObject:v47 atIndex:v42];
        }

        v42 = [v32 indexGreaterThanIndex:v42];
        goto LABEL_38;
      }

      v46 = [MEMORY[0x277CCAA78] indexSetWithIndex:v40];
      v47 = v55[2](v55, v46);

      v48 = [v47 firstObject];
      if (v48 && v40 <= [a1 count])
      {
        [a1 insertObject:v48 atIndex:v40];
      }

      v40 = [v56 indexGreaterThanIndex:v40];

LABEL_38:
      v43 = v42 != 0x7FFFFFFFFFFFFFFFLL;
    }

    v26 = 1;
  }

  else
  {
    k = v54;
  }

  v50 = [k updateChanges];
  if (v50)
  {
    [a1 _vui_applyUpdateChanges:v50 destinationObjectsBlock:v55 updateObjectBlock:v53];
    v26 = 1;
  }

  return v26;
}

- (uint64_t)vui_addObjectIfNotNil:()VideosUICore
{
  v4 = a3;
  if (v4)
  {
    [a1 addObject:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)vui_addObjectsFromArrayIfNotNil:()VideosUICore
{
  v4 = a3;
  if (v4)
  {
    [a1 addObjectsFromArray:v4];
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
        v15 = [v14 sourceIndexes];
        v16 = [v14 destinationIndexes];
        v17 = [v16 firstIndex];
        v18 = [a1 objectAtIndex:v17];
        if (v9)
        {
          v19 = [v14 updateChangeSet];
          v9[2](v9, v19, v18, v17);
        }

        else
        {
          v19 = v23[2](v23, v16);
          [v19 firstObject];
          v20 = v11;
          v22 = v21 = v12;
          [a1 replaceObjectAtIndex:v17 withObject:v22];

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