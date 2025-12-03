@interface _UIDiffableDataSourceDiffer
+ (id)differWithBeforeDataSourceState:(void *)state afterDataSourceState:;
+ (id)differWithBeforeDataSourceState:(void *)state afterDataSourceState:(void *)sourceState itemIdentifierDiffer:;
- (BOOL)_verifyForUpdates:(id)updates;
- (id)description;
- (id)initWithBeforeDataSource:(void *)source afterDataSource:(void *)dataSource itemIdentifierDiffer:;
@end

@implementation _UIDiffableDataSourceDiffer

- (id)initWithBeforeDataSource:(void *)source afterDataSource:(void *)dataSource itemIdentifierDiffer:
{
  v149 = *MEMORY[0x1E69E9840];
  v112 = a2;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  if (self && (v129.receiver = self, v129.super_class = _UIDiffableDataSourceDiffer, v8 = objc_msgSendSuper2(&v129, sel_init), (v119 = v8) != 0))
  {
    objc_storeStrong(v8 + 2, a2);
    objc_storeStrong(v119 + 3, source);
    objc_storeStrong(v119 + 4, dataSource);
    v9 = v119[4];
    if (!v9)
    {
      v10 = [_UIIdentifierDiffer alloc];
      v11 = v119[2];
      identifiers = [v11 identifiers];
      identifiers2 = [v119[3] identifiers];
      v9 = [(_UIIdentifierDiffer *)&v10->super.isa initWithBeforeIdentifiers:identifiers afterIdentifiers:identifiers2];

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

    movePairs = [(_UIDiffableSectionBoundaryMoveDetector *)v17 movePairs];

    v18 = [_UIIdentifierDiffer alloc];
    v19 = v119[2];
    sections = [v19 sections];
    sections2 = [v119[3] sections];
    v116 = [(_UIIdentifierDiffer *)&v18->super.isa initWithBeforeIdentifiers:sections afterIdentifiers:sections2];

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
    insertedIndexes = [(_UIIdentifierDiffer *)v24 insertedIndexes];
    v28 = [insertedIndexes count];
    deletedIndexes = [(_UIIdentifierDiffer *)v24 deletedIndexes];
    v30 = [deletedIndexes count];
    movePairs2 = [(_UIIdentifierDiffer *)v24 movePairs];
    v32 = [movePairs2 count];

    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v30 + v28 + v32];
    insertedIndexes2 = [(_UIIdentifierDiffer *)v24 insertedIndexes];
    v134 = MEMORY[0x1E69E9820];
    v135 = 3221225472;
    v136 = __94___UIDiffableDataSourceDiffer__sectionUpdatesForDiffResults_deletedSections_insertedSections___block_invoke;
    v137 = &unk_1E70F43F0;
    v35 = v33;
    v138 = v35;
    v123 = v26;
    v139 = v123;
    [insertedIndexes2 enumerateIndexesUsingBlock:&v134];

    deletedIndexes2 = [(_UIIdentifierDiffer *)v24 deletedIndexes];
    *&v130 = MEMORY[0x1E69E9820];
    *(&v130 + 1) = 3221225472;
    *&v131 = __94___UIDiffableDataSourceDiffer__sectionUpdatesForDiffResults_deletedSections_insertedSections___block_invoke_2;
    *(&v131 + 1) = &unk_1E70F43F0;
    v37 = v35;
    *&v132 = v37;
    v125 = v25;
    *(&v132 + 1) = v125;
    [deletedIndexes2 enumerateIndexesUsingBlock:&v130];

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    movePairs3 = [(_UIIdentifierDiffer *)v24 movePairs];
    v39 = [movePairs3 countByEnumeratingWithState:&v143 objects:v148 count:16];
    if (v39)
    {
      v40 = *v144;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v144 != v40)
          {
            objc_enumerationMutation(movePairs3);
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

        v39 = [movePairs3 countByEnumeratingWithState:&v143 objects:v148 count:16];
      }

      while (v39);
    }

    v49 = *(&v132 + 1);
    v115 = v37;

    v128 = v127;
    v117 = movePairs;
    v50 = v125;
    v51 = v123;
    v52 = v119[2];
    dataSourceSnapshot = [v52 dataSourceSnapshot];

    v54 = v119[3];
    dataSourceSnapshot2 = [v54 dataSourceSnapshot];

    LOBYTE(v54) = [v117 count] == 0;
    movePairs4 = [(_UIIdentifierDiffer *)v128 movePairs];
    v57 = movePairs4;
    if ((v54 & 1) == 0)
    {
      v58 = [movePairs4 setByAddingObjectsFromSet:v117];

      v57 = v58;
    }

    insertedIndexes3 = [(_UIIdentifierDiffer *)v128 insertedIndexes];
    v60 = [insertedIndexes3 count];
    deletedIndexes3 = [(_UIIdentifierDiffer *)v128 deletedIndexes];
    v62 = [deletedIndexes3 count];
    v63 = [v57 count];

    v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v62 + v60 + v63];
    insertedIndexes4 = [(_UIIdentifierDiffer *)v128 insertedIndexes];
    *&v143 = MEMORY[0x1E69E9820];
    *(&v143 + 1) = 3221225472;
    *&v144 = __112___UIDiffableDataSourceDiffer__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections___block_invoke;
    *(&v144 + 1) = &unk_1E70FCF90;
    v66 = dataSourceSnapshot2;
    v147 = sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_;
    v124 = v66;
    *&v145 = v66;
    *(&v145 + 1) = v119;
    v67 = v51;
    *&v146 = v67;
    v68 = v64;
    *(&v146 + 1) = v68;
    [insertedIndexes4 enumerateIndexesUsingBlock:&v143];

    deletedIndexes4 = [(_UIIdentifierDiffer *)v128 deletedIndexes];
    v134 = MEMORY[0x1E69E9820];
    v135 = 3221225472;
    v136 = __112___UIDiffableDataSourceDiffer__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections___block_invoke_2;
    v137 = &unk_1E70FCF90;
    v70 = dataSourceSnapshot;
    v142 = sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_;
    v126 = v70;
    v138 = v70;
    v139 = v119;
    v71 = v50;
    v140 = v71;
    v122 = v68;
    v141 = v122;
    [deletedIndexes4 enumerateIndexesUsingBlock:&v134];

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
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_ object:v119 file:@"_UIDiffableDataSourceDiffer.m" lineNumber:202 description:@"Failed to convert global index to indexPath."];
          }

          if (!v78)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__itemUpdatesForDiffResults_sectionBoundaryMoves_deletedSections_insertedSections_ object:v119 file:@"_UIDiffableDataSourceDiffer.m" lineNumber:203 description:@"Failed to convert global index to indexPath."];
          }

          v79 = [v71 containsIndex:{objc_msgSend(v76, "section")}];
          v80 = [v67 containsIndex:{objc_msgSend(v78, "section")}];
          if ((dyld_program_sdk_at_least() & 1) != 0 || ![v76 isEqual:v78])
          {
            insertedIndexes5 = [(_UIIdentifierDiffer *)v128 insertedIndexes];
            v84 = insertedIndexes5;
            if (v75)
            {
              v85 = *(v75 + 16);
            }

            else
            {
              v85 = 0;
            }

            v86 = [insertedIndexes5 containsIndex:v85];

            if (!v86)
            {
              v82 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v76 finalIndexPath:v78 updateAction:3];
              goto LABEL_52;
            }

            deletedIndexes5 = [(_UIIdentifierDiffer *)v128 deletedIndexes];
            v88 = deletedIndexes5;
            if (v75)
            {
              v89 = *(v75 + 8);
            }

            else
            {
              v89 = 0;
            }

            v90 = [deletedIndexes5 containsIndex:v89];

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
    movePairs5 = [(_UIIdentifierDiffer *)v118 movePairs];
    v99 = [movePairs5 countByEnumeratingWithState:&v143 objects:v148 count:16];
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
            objc_enumerationMutation(movePairs5);
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
        v105 = [movePairs5 countByEnumeratingWithState:&v143 objects:v148 count:16];
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
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)v8 dataSourceSnapshot];
  if (self)
  {
    dataSourceSnapshot2 = [(_UIDiffableDataSourceState *)self->_afterDataSourceState dataSourceSnapshot];
    [v6 appendFormat:@"before: %@; after:%@;", dataSourceSnapshot, dataSourceSnapshot2];

    [v6 appendString:@"\n\nBefore:\n"];
    v11 = self->_beforeDataSourceState;
  }

  else
  {
    dataSourceSnapshot3 = [0 dataSourceSnapshot];
    [v6 appendFormat:@"before: %@; after:%@;", dataSourceSnapshot, dataSourceSnapshot3];

    [v6 appendString:@"\n\nBefore:\n"];
    v11 = 0;
  }

  dataSourceSnapshot4 = [(_UIDiffableDataSourceState *)v11 dataSourceSnapshot];
  if ([dataSourceSnapshot4 numberOfSections] >= 1)
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

      sections = [(_UIDiffableDataSourceState *)v14 sections];
      v16 = [sections objectAtIndexedSubscript:v13];

      if (self)
      {
        v17 = self->_beforeDataSourceState;
      }

      else
      {
        v17 = 0;
      }

      identifiers = [(_UIDiffableDataSourceState *)v17 identifiers];
      v19 = __42___UIDiffableDataSourceDiffer_description__block_invoke(dataSourceSnapshot4, identifiers, v13, v16);

      [v6 appendString:v19];
      ++v13;
    }

    while (v13 < [dataSourceSnapshot4 numberOfSections]);
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

  dataSourceSnapshot5 = [(_UIDiffableDataSourceState *)afterDataSourceState dataSourceSnapshot];
  if ([dataSourceSnapshot5 numberOfSections] >= 1)
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

      sections2 = [(_UIDiffableDataSourceState *)v23 sections];
      v25 = [sections2 objectAtIndexedSubscript:v22];

      if (self)
      {
        v26 = self->_afterDataSourceState;
      }

      else
      {
        v26 = 0;
      }

      identifiers2 = [(_UIDiffableDataSourceState *)v26 identifiers];
      v28 = __42___UIDiffableDataSourceDiffer_description__block_invoke(dataSourceSnapshot5, identifiers2, v22, v25);

      [v6 appendString:v28];
      ++v22;
    }

    while (v22 < [dataSourceSnapshot5 numberOfSections]);
  }

  [v6 appendFormat:@"\nidentifierDiffer: %@", self->_itemIdentifierDiffer];
  [v6 appendFormat:@"\nUpdates: %@>", self->_updates];

  return v6;
}

+ (id)differWithBeforeDataSourceState:(void *)state afterDataSourceState:
{
  stateCopy = state;
  v5 = a2;
  objc_opt_self();
  v6 = [[_UIDiffableDataSourceDiffer alloc] initWithBeforeDataSource:v5 afterDataSource:stateCopy itemIdentifierDiffer:0];

  return v6;
}

+ (id)differWithBeforeDataSourceState:(void *)state afterDataSourceState:(void *)sourceState itemIdentifierDiffer:
{
  sourceStateCopy = sourceState;
  stateCopy = state;
  v8 = a2;
  objc_opt_self();
  v9 = [[_UIDiffableDataSourceDiffer alloc] initWithBeforeDataSource:v8 afterDataSource:stateCopy itemIdentifierDiffer:sourceStateCopy];

  return v9;
}

- (BOOL)_verifyForUpdates:(id)updates
{
  v80 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v50 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v51 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v4 = updatesCopy;
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
        indexPathAfterUpdate = [0 indexPathAfterUpdate];
        goto LABEL_30;
      }

      v18 = v17[10];
      if (!v18)
      {
        indexPathAfterUpdate = [*(*(&v69 + 1) + 8 * v16) indexPathAfterUpdate];
        if (v17[6] != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_30:
          if ([v51 containsIndex:{objc_msgSend(indexPathAfterUpdate, "section")}])
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
        indexPathBeforeUpdate = [*(*(&v69 + 1) + 8 * v16) indexPathBeforeUpdate];
        indexPathAfterUpdate = indexPathBeforeUpdate;
        if (v17[6] != 0x7FFFFFFFFFFFFFFFLL && ([v50 containsIndex:{objc_msgSend(indexPathBeforeUpdate, "section")}] & 1) != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

      if (v18 != 3)
      {
        goto LABEL_38;
      }

      indexPathAfterUpdate = [*(*(&v69 + 1) + 8 * v16) indexPathBeforeUpdate];
      indexPathAfterUpdate2 = [v17 indexPathAfterUpdate];
      if (v17[6] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 addObject:v17];
      }

      else
      {
        if (([v50 containsIndex:{objc_msgSend(indexPathAfterUpdate, "section")}] & 1) == 0)
        {
          v22 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:indexPathAfterUpdate finalIndexPath:0 updateAction:1];
          [v12 addObject:v22];
        }

        if (([v51 containsIndex:{objc_msgSend(indexPathAfterUpdate2, "section")}] & 1) == 0)
        {
          v23 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:0 finalIndexPath:indexPathAfterUpdate2 updateAction:0];
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
  dataSourceSnapshot = [v39 dataSourceSnapshot];
  v41 = [off_1E70ECC48 snapshotterForSnapshot:dataSourceSnapshot];

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
  dataSourceSnapshot2 = [(_UIDiffableDataSourceState *)v43 dataSourceSnapshot];
  v45 = [off_1E70ECC48 snapshotterForSnapshot:dataSourceSnapshot2];

  LOBYTE(v43) = [v55[5] isEqual:v45];
  _Block_object_dispose(&v54, 8);

  return v43;
}

@end