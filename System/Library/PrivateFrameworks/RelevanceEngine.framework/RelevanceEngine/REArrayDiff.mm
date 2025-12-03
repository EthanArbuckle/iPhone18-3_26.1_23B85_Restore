@interface REArrayDiff
+ (id)_createSetFromElementArray:(id)array equalComparator:(id)comparator hashGenerator:(id)generator;
+ (id)_indexSetFromSet:(id)set;
+ (id)diffFromElements:(id)elements toElements:(id)toElements equalComparator:(id)comparator hashGenerator:(id)generator changeComparator:(id)changeComparator;
- (void)enumerateOperationsUsingBlock:(id)block;
@end

@implementation REArrayDiff

+ (id)diffFromElements:(id)elements toElements:(id)toElements equalComparator:(id)comparator hashGenerator:(id)generator changeComparator:(id)changeComparator
{
  v129 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  toElementsCopy = toElements;
  comparatorCopy = comparator;
  generatorCopy = generator;
  changeComparatorCopy = changeComparator;
  v83 = objc_opt_new();
  v75 = elementsCopy;
  v16 = [self _createSetFromElementArray:elementsCopy equalComparator:comparatorCopy hashGenerator:generatorCopy];
  selfCopy = self;
  v79 = comparatorCopy;
  v81 = toElementsCopy;
  v77 = generatorCopy;
  v17 = [self _createSetFromElementArray:toElementsCopy equalComparator:comparatorCopy hashGenerator:generatorCopy];
  v18 = [MEMORY[0x277CBEB58] set];
  v19 = [MEMORY[0x277CBEB58] set];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v122 objects:v128 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v123;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v123 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v122 + 1) + 8 * i);
        if ([v17 containsObject:v25])
        {
          v26 = v19;
        }

        else
        {
          v26 = v18;
        }

        [v26 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v122 objects:v128 count:16];
    }

    while (v22);
  }

  v85 = v18;

  v27 = [MEMORY[0x277CBEB58] set];
  v28 = [MEMORY[0x277CBEB58] set];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v17;
  v29 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v119;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v119 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v118 + 1) + 8 * j);
        if ([v20 containsObject:v33])
        {
          v34 = v28;
        }

        else
        {
          v34 = v27;
        }

        [v34 addObject:v33];
      }

      v30 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
    }

    while (v30);
  }

  v70 = v28;
  v84 = v27;
  v82 = v20;

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v35 = v19;
  v36 = [v35 countByEnumeratingWithState:&v114 objects:v126 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v115;
    v86 = *MEMORY[0x277CBE658];
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v115 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v114 + 1) + 8 * k);
        v41 = [obj member:v40];
        if (!v41)
        {
          v42 = MEMORY[0x277CBEAD8];
          object = [v40 object];
          [v42 raise:v86 format:{@"Missing object %@ in toSet", object}];
        }

        object2 = [v40 object];
        object3 = [v41 object];
        v46 = changeComparatorCopy[2](changeComparatorCopy, object2, object3);

        index = [v40 index];
        if (v46)
        {
          [indexSet addIndex:index];
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v40, "index")}];
          [dictionary setObject:v41 forKeyedSubscript:v48];
        }

        else
        {
          [indexSet2 addIndex:index];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v114 objects:v126 count:16];
    }

    while (v37);
  }

  v72 = v35;

  v49 = [selfCopy _indexSetFromSet:v85];
  v69 = [selfCopy _indexSetFromSet:v84];
  v50 = [MEMORY[0x277CBEB58] set];
  v51 = [v49 mutableCopy];
  v52 = [v69 mutableCopy];
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke;
  v106[3] = &unk_2785FD558;
  v53 = v75;
  v112 = v79;
  v113 = v77;
  v107 = v53;
  v108 = v70;
  v109 = v51;
  v110 = v52;
  v111 = v50;
  v54 = v50;
  v87 = v52;
  v76 = v51;
  v74 = v70;
  v78 = v77;
  v80 = v79;
  v55 = MEMORY[0x22AABC5E0](v106);
  [indexSet enumerateIndexesUsingBlock:v55];
  [indexSet2 enumerateIndexesUsingBlock:v55];
  array = [MEMORY[0x277CBEB18] array];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_2;
  v103[3] = &unk_2785FD580;
  v104 = dictionary;
  v57 = array;
  v105 = v57;
  v89 = dictionary;
  [indexSet enumerateIndexesUsingBlock:v103];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_3;
  v100[3] = &unk_2785FD580;
  v101 = v53;
  v58 = v57;
  v102 = v58;
  v71 = v53;
  [v49 enumerateIndexesWithOptions:2 usingBlock:v100];
  allObjects = [v54 allObjects];
  v60 = [allObjects sortedArrayUsingComparator:&__block_literal_global_108];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_5;
  v97[3] = &unk_2785FD5C8;
  v61 = v81;
  v98 = v61;
  v62 = v58;
  v99 = v62;
  [v60 enumerateObjectsUsingBlock:v97];

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_6;
  v94[3] = &unk_2785FD580;
  v95 = v61;
  v63 = v62;
  v96 = v63;
  v64 = v61;
  [v69 enumerateIndexesUsingBlock:v94];
  v65 = v83[1];
  v83[1] = v63;
  v66 = v63;

  v67 = *MEMORY[0x277D85DE8];

  return v83;
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) objectAtIndex:a2];
  v5 = [_REDiffItem itemWithObject:v4 index:a2 comparator:*(a1 + 72) hashGenerator:*(a1 + 80)];

  v6 = [*(a1 + 40) member:v5];
  v7 = [v5 index];
  v8 = v7 - [*(a1 + 48) countOfIndexesInRange:{0, objc_msgSend(v5, "index")}];
  v9 = [v6 index];
  if (v8 != v9 - [*(a1 + 56) countOfIndexesInRange:{0, objc_msgSend(v6, "index")}])
  {
    v10 = [v5 index];
    if (v10 != [v6 index])
    {
      v11 = *(a1 + 64);
      v12 = MEMORY[0x277CCAA70];
      v15[0] = [v5 index];
      v15[1] = [v6 index];
      v13 = [v12 indexPathWithIndexes:v15 length:2];
      [v11 addObject:v13];

      [*(a1 + 48) addIndex:{objc_msgSend(v5, "index")}];
      [*(a1 + 56) addIndex:{objc_msgSend(v6, "index")}];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKeyedSubscript:v5];

  v6 = *(a1 + 40);
  v7 = [v9 object];
  v8 = [REDiffOperation reloadWithItem:v7 atIndex:a2];
  [v6 addObject:v8];
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) objectAtIndex:a2];
  v4 = *(a1 + 40);
  v5 = [REDiffOperation deleteWithItem:v6 atIndex:a2];
  [v4 addObject:v5];
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexAtPosition:0];
  v5 = [v3 indexAtPosition:1];

  v8 = [*(a1 + 32) objectAtIndex:v5];
  v6 = *(a1 + 40);
  v7 = [REDiffOperation moveWithItem:v8 fromIndex:v4 toIndex:v5];
  [v6 addObject:v7];
}

void __90__REArrayDiff_diffFromElements_toElements_equalComparator_hashGenerator_changeComparator___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) objectAtIndex:a2];
  v4 = *(a1 + 40);
  v5 = [REDiffOperation insertWithItem:v6 atIndex:a2];
  [v4 addObject:v5];
}

- (void)enumerateOperationsUsingBlock:(id)block
{
  blockCopy = block;
  allOperations = self->_allOperations;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__REArrayDiff_enumerateOperationsUsingBlock___block_invoke;
  v7[3] = &unk_2785FD5F0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)allOperations enumerateObjectsUsingBlock:v7];
}

void __45__REArrayDiff_enumerateOperationsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 type];
  v7 = [v3 item];
  v5 = [v3 toIndex];
  v6 = [v3 fromIndex];

  (*(v2 + 16))(v2, v4, v7, v5, v6);
}

+ (id)_indexSetFromSet:(id)set
{
  v17 = *MEMORY[0x277D85DE8];
  setCopy = set;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "index", v12)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return indexSet;
}

+ (id)_createSetFromElementArray:(id)array equalComparator:(id)comparator hashGenerator:(id)generator
{
  arrayCopy = array;
  comparatorCopy = comparator;
  generatorCopy = generator;
  v10 = [MEMORY[0x277CBEB58] set];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__REArrayDiff__createSetFromElementArray_equalComparator_hashGenerator___block_invoke;
  v24[3] = &unk_2785FD618;
  v26 = comparatorCopy;
  v27 = generatorCopy;
  v11 = v10;
  v25 = v11;
  v12 = generatorCopy;
  v13 = comparatorCopy;
  [arrayCopy enumerateObjectsUsingBlock:v24];
  v14 = [v11 count];
  if (v14 != [arrayCopy count])
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Items in array are not unique: %@", v15, v16, v17, v18, v19, v20, arrayCopy);
  }

  v21 = v25;
  v22 = v11;

  return v11;
}

void __72__REArrayDiff__createSetFromElementArray_equalComparator_hashGenerator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [_REDiffItem itemWithObject:a2 index:a3 comparator:*(a1 + 40) hashGenerator:*(a1 + 48)];
  [*(a1 + 32) addObject:v4];
}

@end