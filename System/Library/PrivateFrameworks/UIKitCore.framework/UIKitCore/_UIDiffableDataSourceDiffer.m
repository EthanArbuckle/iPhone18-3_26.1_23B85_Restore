@interface _UIDiffableDataSourceDiffer
+ (id)differWithBeforeDataSourceState:(void *)a3 afterDataSourceState:;
+ (id)differWithBeforeDataSourceState:(void *)a3 afterDataSourceState:(void *)a4 itemIdentifierDiffer:;
- (BOOL)_verifyForUpdates:(id)a3;
- (id)description;
- (id)initWithBeforeDataSource:(void *)a3 afterDataSource:(void *)a4 itemIdentifierDiffer:;
@end

@implementation _UIDiffableDataSourceDiffer

- (id)initWithBeforeDataSource:(void *)a3 afterDataSource:(void *)a4 itemIdentifierDiffer:
{
  v149 = *MEMORY[0x1E69E9840];
  v112 = a2;
  v113 = a3;
  v114 = a4;
  if (a1 && (v129.receiver = a1, v129.super_class = _UIDiffableDataSourceDiffer, v8 = objc_msgSendSuper2(&v129, sel_init), (v119 = v8) != 0))
  {
    objc_storeStrong(v8 + 2, a2);
    objc_storeStrong(v119 + 3, a3);
    objc_storeStrong(v119 + 4, a4);
    v9 = v119[4];
    if (!v9)
    {
      v10 = [_UIIdentifierDiffer alloc];
      v11 = v119[2];
      v12 = [v11 identifiers];
      v13 = [v119[3] identifiers];
      v9 = [(_UIIdentifierDiffer *)&v10->super.isa initWithBeforeIdentifiers:v12 afterIdentifiers:v13];

      if (v9)
      {
        [(_UIIdentifierDiffer *)v9 _performDiffWithOptions:?];
      }
    }

    v111 = v9;
    v127 = v9;
    v14 = [_UIDiffableSectionBoundaryMoveDetector alloc];
    v15 = v119[3];
    v16 = v119[2];
    v17 = [(_UIDiffableSectionBoundaryMoveDetector *)v14 initWithItemDiffer:v127 beforeDataSourceState:v16 afterDataSourceState:v15];

    v121 = [(_UIDiffableSectionBoundaryMoveDetector *)v17 movePairs];

    v18 = [_UIIdentifierDiffer alloc];
    v19 = v119[2];
    v20 = [v19 sections];
    v21 = [v119[3] sections];
    v116 = [(_UIIdentifierDiffer *)&v18->super.isa initWithBeforeIdentifiers:v20 afterIdentifiers:v21];

    if (v116)
    {
      [(_UIIdentifierDiffer *)v116 _performDiffWithOptions:?];
    }

    v22 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v23 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v24 = v116;
    v25 = v22;
    v26 = v23;
    v118 = v24;
    v27 = [(_UIIdentifierDiffer *)v24 insertedIndexes];
    v28 = [v27 count];
    v29 = [(_UIIdentifierDiffer *)v24 deletedIndexes];
    v30 = [v29 count];
    v31 = [(_UIIdentifierDiffer *)v24 movePairs];
    v32 = [v31 count];

    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v30 + v28 + v32];
    v34 = [(_UIIdentifierDiffer *)v24 insertedIndexes];
    v134 = MEMORY[0x1E69E9820];
    v135 = 3221225472;
    v136 = __94___UIDiffableDataSourceDiffer__sectionUpdatesForDiffResults_deletedSections_insertedSections___block_invoke;
    v137 = &unk_1E70F43F0;
    v35 = v33;
    v138 = v35;
    v123 = v26;
    v139 = v123;
    [v34 enumerateIndexesUsingBlock:&v134];

    v36 = [(_UIIdentifierDiffer *)v24 deletedIndexes];
    *&v130 = MEMORY[0x1E69E9820];
    *(&v130 + 1) = 3221225472;
    *&v131 = __94___UIDiffableDataSourceDiffer__sectionUpdatesForDiffResults_deletedSections_insertedSections___block_invoke_2;
    *(&v131 + 1) = &unk_1E70F43F0;
    v37 = v35;
    *&v132 = v37;
    v125 = v25;
    *(&v132 + 1) = v125;
    [v36 enumerateIndexesUsingBlock:&v130];

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v38 = [(_UIIdentifierDiffer *)v24 movePairs];
    v39 = [v38 countByEnumeratingWithState:&v143 objects:v148 count:16];
    if (v39)
    {
      v40 = *v144;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v144 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v143 + 1) + 8 * i);
          if (v42)
          {
            v43 = *(v42 + 8) == *(v42 + 16);
          }

          else
          {
            v43 = 1;
          }

          v44 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:?];
          if (v42)
          {
            v45 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:*(v42 + 16)];
            if (v43)
            {
              [v125 addIndex:*(v42 + 8)];
              v46 = *(v42 + 16);
LABEL_18:
              [v123 addIndex:v46];
              v47 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v44 finalIndexPath:0 updateAction:1];
              [v37 addObject:v47];
              v48 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:0 finalIndexPath:v45 updateAction:0];
              [v37 addObject:v48];

              goto LABEL_23;
            }
          }

          else
          {
            v45 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0];
            if (v43)
            {
              [v125 addIndex:0];
              v46 = 0;
              goto LABEL_18;
            }
          }

          v47 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v44 finalIndexPath:v45 updateAction:3];
          [v37 addObject:v47];
LABEL_23:
        }

        v39 = [v38 countByEnumeratingWithState:&v143 objects:v148 count:16];
      }

      while (v39);
    }

    v49 = *(&v132 + 1);
    v115 = v37;

    v128 = v127;
    v117 = v121;
    v50 = v125;
    v51 = v123;
    v52 = v119[2];
    v53 = [v52 dataSourceSnapshot];

    v54 = v119[3];
    v55 = [v54 dataSourceSnapshot];

    LOBYTE(v54) = [v117 count] == 0;
    v56 = [(_UIIdentifierDiffer *)v128 movePairs];
    v57 = v56;
    if ((v54 & 1) == 0)
    {
      v58 = [v56 setByAddingObjectsFromSet:v117];

      v57 = v58;
    }

    v59 = [(_UIIdentifierDiffer *)v128 insertedIndexes];
    v60 = [v59 count];
    v61 = [(_UIIdentifierDiffer *)v128 deletedIndexes];
    v62 = [v61 count];
    v63 = [v57 count];

    v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v62 + v60 + v63];
    v65 = [(_UIIdentifierDiffer *)v128 insertedIndexes];
    *&v143 = MEMORY[0x1E69E9820];
    *(&v143 + 1) = 3221225472;
    *&v144 = __112___UIDiffableDataSourceDiffer__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections___block_invoke;
    *(&v144 + 1) = &unk_1E70FCF90;
    v66 = v55;
    v147 = sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_;
    v124 = v66;
    *&v145 = v66;
    *(&v145 + 1) = v119;
    v67 = v51;
    *&v146 = v67;
    v68 = v64;
    *(&v146 + 1) = v68;
    [v65 enumerateIndexesUsingBlock:&v143];

    v69 = [(_UIIdentifierDiffer *)v128 deletedIndexes];
    v134 = MEMORY[0x1E69E9820];
    v135 = 3221225472;
    v136 = __112___UIDiffableDataSourceDiffer__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections___block_invoke_2;
    v137 = &unk_1E70FCF90;
    v70 = v53;
    v142 = sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_;
    v126 = v70;
    v138 = v70;
    v139 = v119;
    v71 = v50;
    v140 = v71;
    v122 = v68;
    v141 = v122;
    [v69 enumerateIndexesUsingBlock:&v134];

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    obj = v57;
    v72 = [obj countByEnumeratingWithState:&v130 objects:v148 count:16];
    if (v72)
    {
      v73 = *v131;
      do
      {
        v74 = 0;
        do
        {
          if (*v131 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v130 + 1) + 8 * v74);
          if (v75)
          {
            v76 = [v126 indexPathForGlobalIndex:*(v75 + 8)];
            v77 = *(v75 + 16);
          }

          else
          {
            v76 = [v126 indexPathForGlobalIndex:0];
            v77 = 0;
          }

          v78 = [v124 indexPathForGlobalIndex:v77];
          if (!v76)
          {
            v92 = [MEMORY[0x1E696AAA8] currentHandler];
            [v92 handleFailureInMethod:sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_ object:v119 file:@"_UIDiffableDataSourceDiffer.m" lineNumber:202 description:@"Failed to convert global index to indexPath."];
          }

          if (!v78)
          {
            v93 = [MEMORY[0x1E696AAA8] currentHandler];
            [v93 handleFailureInMethod:sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_ object:v119 file:@"_UIDiffableDataSourceDiffer.m" lineNumber:203 description:@"Failed to convert global index to indexPath."];
          }

          v79 = [v71 containsIndex:{objc_msgSend(v76, "section")}];
          v80 = [v67 containsIndex:{objc_msgSend(v78, "section")}];
          if ((dyld_program_sdk_at_least() & 1) != 0 || ![v76 isEqual:v78])
          {
            v83 = [(_UIIdentifierDiffer *)v128 insertedIndexes];
            v84 = v83;
            if (v75)
            {
              v85 = *(v75 + 16);
            }

            else
            {
              v85 = 0;
            }

            v86 = [v83 containsIndex:v85];

            if (!v86)
            {
              v82 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v76 finalIndexPath:v78 updateAction:3];
              goto LABEL_52;
            }

            v87 = [(_UIIdentifierDiffer *)v128 deletedIndexes];
            v88 = v87;
            if (v75)
            {
              v89 = *(v75 + 8);
            }

            else
            {
              v89 = 0;
            }

            v90 = [v87 containsIndex:v89];

            if ((v90 & 1) == 0)
            {
              v82 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v76 finalIndexPath:0 updateAction:1];
              goto LABEL_52;
            }
          }

          else
          {
            if ((v79 & 1) == 0)
            {
              v81 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v76 finalIndexPath:0 updateAction:1];
              [v122 addObject:v81];
            }

            if ((v80 & 1) == 0)
            {
              v82 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:0 finalIndexPath:v78 updateAction:0];
LABEL_52:
              v91 = v82;
              [v122 addObject:v82];
            }
          }

          ++v74;
        }

        while (v72 != v74);
        v94 = [obj countByEnumeratingWithState:&v130 objects:v148 count:16];
        v72 = v94;
      }

      while (v94);
    }

    v95 = v141;
    v96 = v122;

    v97 = [v96 arrayByAddingObjectsFromArray:v115];
    objc_storeStrong(v119 + 4, v111);
    objc_storeStrong(v119 + 5, v116);
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v98 = [(_UIIdentifierDiffer *)v118 movePairs];
    v99 = [v98 countByEnumeratingWithState:&v143 objects:v148 count:16];
    if (v99)
    {
      v100 = *v144;
      do
      {
        v101 = 0;
        do
        {
          if (*v144 != v100)
          {
            objc_enumerationMutation(v98);
          }

          v102 = *(*(&v143 + 1) + 8 * v101);
          if (v102)
          {
            v103 = *(v102 + 8);
            v104 = *(v102 + 16);
          }

          else
          {
            v103 = 0;
            v104 = 0;
          }

          [v71 removeIndex:v103];
          [v67 removeIndex:v104];
          ++v101;
        }

        while (v99 != v101);
        v105 = [v98 countByEnumeratingWithState:&v143 objects:v148 count:16];
        v99 = v105;
      }

      while (v105);
    }

    v106 = v119[8];
    v119[8] = v67;
    v107 = v67;

    v108 = v119[7];
    v119[7] = v71;

    v109 = v119[1];
    v119[1] = v97;
  }

  else
  {
    v119 = 0;
  }

  return v119;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p: ", v5, self];

  if (self)
  {
    beforeDataSourceState = self->_beforeDataSourceState;
  }

  else
  {
    beforeDataSourceState = 0;
  }

  v8 = beforeDataSourceState;
  v9 = [(_UIDiffableDataSourceState *)v8 dataSourceSnapshot];
  if (self)
  {
    v10 = [(_UIDiffableDataSourceState *)self->_afterDataSourceState dataSourceSnapshot];
    [v6 appendFormat:@"before: %@; after:%@;", v9, v10];

    [v6 appendString:@"\n\nBefore:\n"];
    v11 = self->_beforeDataSourceState;
  }

  else
  {
    v30 = [0 dataSourceSnapshot];
    [v6 appendFormat:@"before: %@; after:%@;", v9, v30];

    [v6 appendString:@"\n\nBefore:\n"];
    v11 = 0;
  }

  v12 = [(_UIDiffableDataSourceState *)v11 dataSourceSnapshot];
  if ([v12 numberOfSections] >= 1)
  {
    v13 = 0;
    do
    {
      if (self)
      {
        v14 = self->_beforeDataSourceState;
      }

      else
      {
        v14 = 0;
      }

      v15 = [(_UIDiffableDataSourceState *)v14 sections];
      v16 = [v15 objectAtIndexedSubscript:v13];

      if (self)
      {
        v17 = self->_beforeDataSourceState;
      }

      else
      {
        v17 = 0;
      }

      v18 = [(_UIDiffableDataSourceState *)v17 identifiers];
      v19 = __42___UIDiffableDataSourceDiffer_description__block_invoke(v12, v18, v13, v16);

      [v6 appendString:v19];
      ++v13;
    }

    while (v13 < [v12 numberOfSections]);
  }

  [v6 appendString:@"\n\nAfter:\n"];
  if (self)
  {
    afterDataSourceState = self->_afterDataSourceState;
  }

  else
  {
    afterDataSourceState = 0;
  }

  v21 = [(_UIDiffableDataSourceState *)afterDataSourceState dataSourceSnapshot];
  if ([v21 numberOfSections] >= 1)
  {
    v22 = 0;
    do
    {
      if (self)
      {
        v23 = self->_afterDataSourceState;
      }

      else
      {
        v23 = 0;
      }

      v24 = [(_UIDiffableDataSourceState *)v23 sections];
      v25 = [v24 objectAtIndexedSubscript:v22];

      if (self)
      {
        v26 = self->_afterDataSourceState;
      }

      else
      {
        v26 = 0;
      }

      v27 = [(_UIDiffableDataSourceState *)v26 identifiers];
      v28 = __42___UIDiffableDataSourceDiffer_description__block_invoke(v21, v27, v22, v25);

      [v6 appendString:v28];
      ++v22;
    }

    while (v22 < [v21 numberOfSections]);
  }

  [v6 appendFormat:@"\nidentifierDiffer: %@", self->_itemIdentifierDiffer];
  [v6 appendFormat:@"\nUpdates: %@>", self->_updates];

  return v6;
}

+ (id)differWithBeforeDataSourceState:(void *)a3 afterDataSourceState:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [[_UIDiffableDataSourceDiffer alloc] initWithBeforeDataSource:v5 afterDataSource:v4 itemIdentifierDiffer:0];

  return v6;
}

+ (id)differWithBeforeDataSourceState:(void *)a3 afterDataSourceState:(void *)a4 itemIdentifierDiffer:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = [[_UIDiffableDataSourceDiffer alloc] initWithBeforeDataSource:v8 afterDataSource:v7 itemIdentifierDiffer:v6];

  return v9;
}

- (BOOL)_verifyForUpdates:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v50 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v51 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v5)
  {
    v6 = *v74;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v74 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v73 + 1) + 8 * i);
        if (v8 && *(v8 + 48) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = *(v8 + 80);
          if (v9 == 1)
          {
            v10 = 8;
            v11 = v50;
          }

          else
          {
            if (v9)
            {
              continue;
            }

            v10 = 24;
            v11 = v51;
          }

          [v11 addIndex:*(v8 + v10)];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v5);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (!v14)
  {
    goto LABEL_42;
  }

  v15 = *v70;
  do
  {
    v16 = 0;
    do
    {
      if (*v70 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v69 + 1) + 8 * v16);
      if (!v17)
      {
        v19 = [0 indexPathAfterUpdate];
        goto LABEL_30;
      }

      v18 = v17[10];
      if (!v18)
      {
        v19 = [*(*(&v69 + 1) + 8 * v16) indexPathAfterUpdate];
        if (v17[6] != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_30:
          if ([v51 containsIndex:{objc_msgSend(v19, "section")}])
          {
            goto LABEL_37;
          }
        }

LABEL_28:
        [v12 addObject:v17];
        goto LABEL_37;
      }

      if (v18 == 1)
      {
        v21 = [*(*(&v69 + 1) + 8 * v16) indexPathBeforeUpdate];
        v19 = v21;
        if (v17[6] != 0x7FFFFFFFFFFFFFFFLL && ([v50 containsIndex:{objc_msgSend(v21, "section")}] & 1) != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

      if (v18 != 3)
      {
        goto LABEL_38;
      }

      v19 = [*(*(&v69 + 1) + 8 * v16) indexPathBeforeUpdate];
      v20 = [v17 indexPathAfterUpdate];
      if (v17[6] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 addObject:v17];
      }

      else
      {
        if (([v50 containsIndex:{objc_msgSend(v19, "section")}] & 1) == 0)
        {
          v22 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v19 finalIndexPath:0 updateAction:1];
          [v12 addObject:v22];
        }

        if (([v51 containsIndex:{objc_msgSend(v20, "section")}] & 1) == 0)
        {
          v23 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:0 finalIndexPath:v20 updateAction:0];
          [v12 addObject:v23];
        }
      }

LABEL_37:
LABEL_38:
      ++v16;
    }

    while (v14 != v16);
    v24 = [v13 countByEnumeratingWithState:&v69 objects:v78 count:16];
    v14 = v24;
  }

  while (v24);
LABEL_42:

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v27 = v12;
  v28 = [v27 countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (!v28)
  {
    goto LABEL_54;
  }

  v29 = *v66;
  while (2)
  {
    v30 = 0;
    while (2)
    {
      if (*v66 != v29)
      {
        objc_enumerationMutation(v27);
      }

      v31 = *(*(&v65 + 1) + 8 * v30);
      v32 = v26;
      if (v31 && (v33 = *(v31 + 80), v32 = v26, v33))
      {
        if (v33 == 1)
        {
          v32 = v25;
          goto LABEL_51;
        }
      }

      else
      {
LABEL_51:
        [v32 addObject:?];
      }

      if (v28 != ++v30)
      {
        continue;
      }

      break;
    }

    v28 = [v27 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_54:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke;
  aBlock[3] = &unk_1E70FCFB8;
  aBlock[4] = self;
  aBlock[5] = a2;
  v34 = _Block_copy(aBlock);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke_2;
  v62[3] = &unk_1E70FCFE0;
  v35 = v34;
  v63 = v35;
  v36 = _Block_copy(v62);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke_3;
  v60[3] = &unk_1E70FCFE0;
  v48 = v35;
  v61 = v48;
  v37 = _Block_copy(v60);
  [v25 sortUsingComparator:v36];
  [v26 sortUsingComparator:v37];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__35;
  v58 = __Block_byref_object_dispose__35;
  beforeDataSourceState = self;
  if (self)
  {
    beforeDataSourceState = self->_beforeDataSourceState;
  }

  v39 = beforeDataSourceState;
  v40 = [v39 dataSourceSnapshot];
  v41 = [off_1E70ECC48 snapshotterForSnapshot:v40];

  v59 = v41;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke_52;
  v53[3] = &unk_1E70FAD48;
  v53[4] = &v54;
  [v25 enumerateObjectsUsingBlock:v53];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __49___UIDiffableDataSourceDiffer__verifyForUpdates___block_invoke_2_54;
  v52[3] = &unk_1E70FD008;
  v52[4] = self;
  v52[5] = &v54;
  [v26 enumerateObjectsUsingBlock:v52];
  if (self)
  {
    afterDataSourceState = self->_afterDataSourceState;
  }

  else
  {
    afterDataSourceState = 0;
  }

  v43 = afterDataSourceState;
  v44 = [(_UIDiffableDataSourceState *)v43 dataSourceSnapshot];
  v45 = [off_1E70ECC48 snapshotterForSnapshot:v44];

  LOBYTE(v43) = [v55[5] isEqual:v45];
  _Block_object_dispose(&v54, 8);

  return v43;
}

@end