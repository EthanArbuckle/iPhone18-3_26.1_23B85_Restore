@interface VUICollectionComparator
+ (id)_identifiersWithObjects:(id)a3 identifierBlock:(id)a4;
+ (id)_indexByIdentifierDictionaryWithIdentifiers:(id)a3;
+ (id)_movedIdentifiersWithSourceIdentifiers:(id)a3 destinationIdentifiers:(id)a4;
- (id)_changeSetWithSourceObjects:(id)a3 destinationObjects:(id)a4 identifierBlock:(id)a5 isEqualBlock:(id)a6 updateChangeSetBlock:(id)a7;
@end

@implementation VUICollectionComparator

- (id)_changeSetWithSourceObjects:(id)a3 destinationObjects:(id)a4 identifierBlock:(id)a5 isEqualBlock:(id)a6 updateChangeSetBlock:(id)a7
{
  v70 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v37 = a4;
  v12 = a5;
  *&v36 = a6;
  *(&v36 + 1) = a7;
  v38 = objc_alloc_init(VUICollectionChangeSet);
  v33 = v11;
  v35 = v12;
  v42 = [objc_opt_class() _identifiersWithObjects:v11 identifierBlock:v12];
  v41 = [objc_opt_class() _identifiersWithObjects:v37 identifierBlock:v12];
  [v41 count];
  v13 = [objc_opt_class() _indexByIdentifierDictionaryWithIdentifiers:v42];
  v14 = [objc_opt_class() _indexByIdentifierDictionaryWithIdentifiers:v41];
  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v42, "count")}];
  v16 = [MEMORY[0x277CCAB58] indexSet];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __124__VUICollectionComparator__changeSetWithSourceObjects_destinationObjects_identifierBlock_isEqualBlock_updateChangeSetBlock___block_invoke;
  v65[3] = &unk_279E215C8;
  v44 = v14;
  v66 = v44;
  v39 = v16;
  v67 = v39;
  v34 = v15;
  v68 = v34;
  [v42 enumerateObjectsUsingBlock:v65];
  [v42 removeObjectsAtIndexes:v39];
  if ([v39 count])
  {
    v17 = [[VUICollectionChange alloc] initWithChangeKind:2 sourceIndexes:v39 destinationIndexes:0];
    [(VUICollectionChangeSet *)v38 setDeleteChange:v17];
  }

  v18 = [MEMORY[0x277CCAB58] indexSet];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __124__VUICollectionComparator__changeSetWithSourceObjects_destinationObjects_identifierBlock_isEqualBlock_updateChangeSetBlock___block_invoke_2;
  v62[3] = &unk_279E215F0;
  v45 = v13;
  v63 = v45;
  v40 = v18;
  v64 = v40;
  [v41 enumerateObjectsUsingBlock:v62];
  v19 = [v41 objectsAtIndexes:v40];
  [v42 insertObjects:v19 atIndexes:v40];

  if ([v40 count])
  {
    v20 = [[VUICollectionChange alloc] initWithChangeKind:1 sourceIndexes:0 destinationIndexes:v40];
    [(VUICollectionChangeSet *)v38 setInsertChange:v20];
  }

  v21 = [objc_opt_class() _movedIdentifiersWithSourceIdentifiers:v42 destinationIdentifiers:v41];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0u;
  obj = v21;
  v23 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v23)
  {
    v24 = *v59;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v59 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v58 + 1) + 8 * i);
        v27 = [v45 objectForKey:v26];
        v28 = [v44 objectForKey:v26];
        v29 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v27, "unsignedIntegerValue")}];
        v30 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v28, "unsignedIntegerValue")}];
        v31 = [[VUICollectionChange alloc] initWithChangeKind:3 sourceIndexes:v29 destinationIndexes:v30];
        [v22 addObject:v31];
      }

      v23 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    }

    while (v23);
  }

  if ([v22 count])
  {
    [(VUICollectionChangeSet *)v38 setMoveChanges:v22];
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy_;
  v56 = __Block_byref_object_dispose_;
  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v36 != 0)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __124__VUICollectionComparator__changeSetWithSourceObjects_destinationObjects_identifierBlock_isEqualBlock_updateChangeSetBlock___block_invoke_37;
    v46[3] = &unk_279E21618;
    v47 = v33;
    v48 = v37;
    v49 = *(&v36 + 1);
    v50 = v36;
    v51 = &v52;
    [v34 enumerateKeysAndObjectsUsingBlock:v46];
  }

  if ([v53[5] count])
  {
    [(VUICollectionChangeSet *)v38 setUpdateChanges:v53[5]];
  }

  _Block_object_dispose(&v52, 8);

  return v38;
}

void __124__VUICollectionComparator__changeSetWithSourceObjects_destinationObjects_identifierBlock_isEqualBlock_updateChangeSetBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(a1 + 32) objectForKey:a2];
  if (v7)
  {
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v5 setObject:v6 forKey:v7];
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }
}

void __124__VUICollectionComparator__changeSetWithSourceObjects_destinationObjects_identifierBlock_isEqualBlock_updateChangeSetBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKey:a2];

  if (!v5)
  {
    v6 = *(a1 + 40);

    [v6 addIndex:a3];
  }
}

void __124__VUICollectionComparator__changeSetWithSourceObjects_destinationObjects_identifierBlock_isEqualBlock_updateChangeSetBlock___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedIntegerValue];
  v7 = [v5 unsignedIntegerValue];

  v14 = [*(a1 + 32) objectAtIndex:v6];
  v8 = [*(a1 + 40) objectAtIndex:v7];
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = (*(v9 + 16))(v9, v14, v8);
    if (([v10 hasChanges] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(*(a1 + 56) + 16))())
    {
      goto LABEL_8;
    }

    v10 = 0;
  }

  v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:v6];
  v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:v7];
  v13 = [[VUICollectionChange alloc] initWithChangeKind:4 sourceIndexes:v11 destinationIndexes:v12];
  [(VUICollectionChange *)v13 setUpdateChangeSet:v10];
  [*(*(*(a1 + 64) + 8) + 40) addObject:v13];

LABEL_7:
LABEL_8:
}

+ (id)_identifiersWithObjects:(id)a3 identifierBlock:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__VUICollectionComparator__identifiersWithObjects_identifierBlock___block_invoke;
  v16[3] = &unk_279E21640;
  v19 = v5;
  v17 = v8;
  v10 = v9;
  v18 = v10;
  v11 = v8;
  v12 = v5;
  [v7 enumerateObjectsUsingBlock:v16];

  v13 = v18;
  v14 = v10;

  return v10;
}

void __67__VUICollectionComparator__identifiersWithObjects_identifierBlock___block_invoke(uint64_t a1)
{
  v7 = (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) objectForKey:v7];
  v3 = [v2 unsignedIntegerValue];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  [v4 setObject:v5 forKey:v7];

  v6 = [[VUICollisionSafeIdentifier alloc] initWithRootIdentifier:v7 collisionCount:v3 + 1];
  [*(a1 + 40) addObject:v6];
}

+ (id)_indexByIdentifierDictionaryWithIdentifiers:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__VUICollectionComparator__indexByIdentifierDictionaryWithIdentifiers___block_invoke;
  v9[3] = &unk_279E21668;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __71__VUICollectionComparator__indexByIdentifierDictionaryWithIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [v4 setObject:v7 forKey:v6];
}

+ (id)_movedIdentifiersWithSourceIdentifiers:(id)a3 destinationIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  v35 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v7];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v7];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [v5 objectAtIndex:i];
      v11 = [v6 objectAtIndex:i];
      if (([v10 isEqual:v11] & 1) == 0)
      {
        v12 = [v8 objectForKey:v10];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 integerValue];
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i - v14];
          v16 = v35;
        }

        else
        {
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
          v16 = v8;
        }

        [v16 setObject:v15 forKey:v10];

        v17 = [v8 objectForKey:v11];

        if (v17)
        {
          v18 = [v17 integerValue];
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i - v18];
          v20 = v35;
        }

        else
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
          v20 = v8;
        }

        [v20 setObject:v19 forKey:v11];
      }
    }
  }

  v21 = [MEMORY[0x277CBEB58] setWithCapacity:v7];
  v22 = v21;
  if (v7)
  {
    v23 = 0;
    v24 = 0;
    v34 = v21;
    while (1)
    {
      if (v23 >= [v5 count])
      {
        v25 = 0;
      }

      else
      {
        v25 = [v5 objectAtIndex:v23];
      }

      if (v24 >= [v6 count])
      {
        break;
      }

      v26 = [v6 objectAtIndex:v24];
      v27 = v26;
      if (!v25 || !v26 || ([v25 isEqual:v26] & 1) != 0)
      {
        goto LABEL_24;
      }

      if ([v22 containsObject:v25])
      {
        goto LABEL_22;
      }

      if (![v22 containsObject:v27])
      {
        v28 = [v35 objectForKey:v25];
        v33 = [v28 integerValue];

        v29 = [v35 objectForKey:v27];
        v30 = [v29 integerValue];

        if (v33 > v30)
        {
          v22 = v34;
          [v34 addObject:v25];
LABEL_22:
          ++v23;
          goto LABEL_26;
        }

        v22 = v34;
        [v34 addObject:v27];
      }

LABEL_25:
      ++v24;
LABEL_26:

      if (v23 >= v7 && v24 >= v7)
      {
        goto LABEL_33;
      }
    }

    v27 = 0;
LABEL_24:
    ++v23;
    goto LABEL_25;
  }

LABEL_33:
  v31 = [v22 copy];

  return v31;
}

@end