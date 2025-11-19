@interface _UIDiffableDataSourceSectionSnapshotRebaser
- (_UIDiffableDataSourceSectionSnapshotRebaser)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 initialSectionSnapshots:(id)a5 dataSourceDiffer:(id)a6 shouldPerformChildSnapshotMoves:(BOOL)a7;
- (id)_computeSectionTransactionsIncludingSectionDifferences:(BOOL)a3;
- (id)_transactionIncludingSectionDifferences:(BOOL)a3 source:(int64_t)a4;
- (void)_rebaseForInitialSnapshot:(id)a3 finalSnapshot:(id)a4 initialSectionSnapshots:(id)a5 dataSourceDiffer:(id)a6 shouldPerformChildSnapshotMoves:(BOOL)a7;
@end

@implementation _UIDiffableDataSourceSectionSnapshotRebaser

- (_UIDiffableDataSourceSectionSnapshotRebaser)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 initialSectionSnapshots:(id)a5 dataSourceDiffer:(id)a6 shouldPerformChildSnapshotMoves:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = _UIDiffableDataSourceSectionSnapshotRebaser;
  v17 = [(_UIDiffableDataSourceSectionSnapshotRebaser *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_initialSnapshot, a3);
    objc_storeStrong(&v18->_finalSnapshot, a4);
    objc_storeStrong(&v18->_initialSectionSnapshots, a5);
    objc_storeStrong(&v18->_dataSourceDiffer, a6);
    [(_UIDiffableDataSourceSectionSnapshotRebaser *)v18 _rebaseForInitialSnapshot:v13 finalSnapshot:v14 initialSectionSnapshots:v15 dataSourceDiffer:v16 shouldPerformChildSnapshotMoves:v7];
  }

  return v18;
}

- (void)_rebaseForInitialSnapshot:(id)a3 finalSnapshot:(id)a4 initialSectionSnapshots:(id)a5 dataSourceDiffer:(id)a6 shouldPerformChildSnapshotMoves:(BOOL)a7
{
  v7 = a7;
  v152 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 count];
  v17 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  if (v16)
  {
    v100 = self;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke;
    aBlock[3] = &unk_1E70F3400;
    v112 = v17;
    v143 = v112;
    v94 = v14;
    v111 = v14;
    v144 = v111;
    v18 = _Block_copy(aBlock);
    if (v15 || ([v12 state], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "state"), v20 = objc_claimAutoreleasedReturnValue(), +[_UIDiffableDataSourceDiffer differWithBeforeDataSourceState:afterDataSourceState:](_UIDiffableDataSourceDiffer, v19, v20), v15 = objc_claimAutoreleasedReturnValue(), v20, v19, objc_storeStrong(&v100->_dataSourceDiffer, v15), v15))
    {
      v97 = v15[4];
      v21 = 0;
      v22 = v15[2];
    }

    else
    {
      v97 = 0;
      v22 = 0;
      v21 = 1;
    }

    v23 = v22;
    v113 = [v23 identifiers];
    v104 = [v113 count];
    v98 = v12;
    v95 = v13;
    v93 = v15;
    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v15[3];
    }

    v115 = v24;
    v25 = [v115 identifiers];
    v102 = [v25 count];
    v26 = [(_UIIdentifierDiffer *)v97 deletedIndexes];
    v27 = [(_UIIdentifierDiffer *)v97 insertedIndexes];
    v28 = [(_UIIdentifierDiffer *)v97 movePairs];
    v29 = [v28 count];

    if (!v29 || v7)
    {
      v30 = v26;
    }

    else
    {
      v106 = v25;
      v108 = v18;
      v110 = v7;
      v30 = [v26 mutableCopy];
      v31 = [v27 mutableCopy];
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v32 = [(_UIIdentifierDiffer *)v97 movePairs];
      v33 = [v32 countByEnumeratingWithState:&v138 objects:v151 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v139;
        do
        {
          v36 = 0;
          do
          {
            if (*v139 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v138 + 1) + 8 * v36);
            if (v37)
            {
              v38 = *(v37 + 8);
              v39 = *(v37 + 16);
            }

            else
            {
              v38 = 0;
              v39 = 0;
            }

            [v30 addIndex:v38];
            [v31 addIndex:v39];
            ++v36;
          }

          while (v34 != v36);
          v40 = [v32 countByEnumeratingWithState:&v138 objects:v151 count:16];
          v34 = v40;
        }

        while (v40);
      }

      v27 = v31;
      v7 = v110;
      v25 = v106;
      v18 = v108;
    }

    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_2;
    v132[3] = &unk_1E70F3450;
    v136 = v104;
    v137 = a2;
    v42 = v100;
    v132[4] = v100;
    v90 = v23;
    v133 = v90;
    v43 = v18;
    v135 = v43;
    v105 = v113;
    v134 = v105;
    v92 = v30;
    [v30 enumerateRangesUsingBlock:v132];
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __160___UIDiffableDataSourceSectionSnapshotRebaser__rebaseForInitialSnapshot_finalSnapshot_initialSectionSnapshots_dataSourceDiffer_shouldPerformChildSnapshotMoves___block_invoke_4;
    v125[3] = &unk_1E70F34A0;
    v130 = v102;
    v131 = a2;
    v125[4] = v100;
    v89 = v115;
    v126 = v89;
    v44 = v43;
    v129 = v44;
    v88 = v25;
    v127 = v88;
    v114 = v95;
    v128 = v114;
    v91 = v27;
    [v27 enumerateRangesUsingBlock:v125];
    v103 = v44;
    if (v7)
    {
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      obj = [(_UIIdentifierDiffer *)v97 movePairs];
      v45 = v98;
      v107 = [obj countByEnumeratingWithState:&v121 objects:v150 count:16];
      if (!v107)
      {
        goto LABEL_77;
      }

      v101 = *v122;
      while (1)
      {
        v46 = 0;
        do
        {
          if (*v122 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v121 + 1) + 8 * v46);
          if (v47)
          {
            v48 = *(v47 + 8);
            v49 = *(v47 + 16);
          }

          else
          {
            v48 = 0;
            v49 = 0;
          }

          if (v48 >= v104)
          {
            v68 = [MEMORY[0x1E696AAA8] currentHandler];
            [v68 handleFailureInMethod:a2 object:v42 file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"moveFromIndex < beforeIdentifiersCount", v88, v89, v90}];
          }

          if (v49 >= v102)
          {
            v69 = [MEMORY[0x1E696AAA8] currentHandler];
            [v69 handleFailureInMethod:a2 object:v42 file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"moveToIndex < afterIdentifiersCount"}];
          }

          v50 = [v105 objectAtIndexedSubscript:v48];
          v51 = [v45 sectionIdentifierForSectionContainingItemIdentifier:v50];
          v52 = [v114 sectionIdentifierForSectionContainingItemIdentifier:v50];
          v53 = v52;
          if (v51)
          {
            if (v52)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v70 = [MEMORY[0x1E696AAA8] currentHandler];
            [v70 handleFailureInMethod:a2 object:v42 file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

            if (v53)
            {
              goto LABEL_37;
            }
          }

          v71 = [MEMORY[0x1E696AAA8] currentHandler];
          [v71 handleFailureInMethod:a2 object:v42 file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

LABEL_37:
          v109 = v51;
          v54 = (*(v44 + 2))(v44, v51);
          v55 = v54;
          if (v54)
          {
            if ([v54 containsItem:v50])
            {
              v56 = [v55 levelOfItem:v50];
            }

            else
            {
              v56 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v57 = [v55 childSnapshotOfParent:v50 includingParent:0];
            v116 = [v55 parentOfChild:v50];
            v149 = v50;
            v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
            [v55 deleteItems:v58];
          }

          else
          {
            v57 = 0;
            v116 = 0;
            v56 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v59 = (*(v44 + 2))(v44, v53);
          if (!v59)
          {
            goto LABEL_69;
          }

          v60 = [v114 _identifierAfterIdentifier:v50];
          if (([v59 containsItem:v60] & 1) == 0)
          {

            v60 = 0;
          }

          v61 = [v114 _identifierBeforeIdentifier:v50];
          if (![v59 containsItem:v61] || v116 && objc_msgSend(v61, "isEqual:"))
          {

            v61 = 0;
          }

          if (v56 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v60 && v61)
            {
              v62 = [v59 levelOfItem:v61];
              v63 = [v59 levelOfItem:v60];
              if (v62 == v63)
              {
                goto LABEL_57;
              }

              if (v63 != v56)
              {
                if (v62 == v56)
                {

                  v60 = 0;
                }

LABEL_57:
                v64 = [v59 isExpanded:v61];
                v148 = v50;
                v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
                [v59 insertItems:v65 afterItem:v61 insertionMode:v64];

                v45 = v98;
                goto LABEL_67;
              }

              v45 = v98;
              goto LABEL_66;
            }

            if (v61 && !v60)
            {
              v66 = [v59 levelOfItem:v61];
              if (v56 || v66 < 1)
              {
                goto LABEL_57;
              }

              v45 = v98;
LABEL_63:
              v146 = v50;
              v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
              [v59 appendItems:v60];
              goto LABEL_67;
            }
          }

          if (v61)
          {
            goto LABEL_57;
          }

          if (!v60)
          {
            goto LABEL_63;
          }

LABEL_66:
          v147 = v50;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
          [v59 insertItems:v67 beforeItem:v60];

LABEL_67:
          v42 = v100;

          if (v57)
          {
            [v59 replaceChildrenOfParentItem:v50 withSnapshot:v57];
          }

LABEL_69:

          ++v46;
          v44 = v103;
        }

        while (v107 != v46);
        v72 = [obj countByEnumeratingWithState:&v121 objects:v150 count:16];
        v107 = v72;
        if (!v72)
        {
LABEL_77:

          break;
        }
      }
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v73 = [(NSMapTable *)v112 keyEnumerator];
    v74 = [v73 countByEnumeratingWithState:&v117 objects:v145 count:16];
    if (!v74)
    {
      goto LABEL_90;
    }

    v75 = v74;
    v76 = *v118;
LABEL_80:
    v77 = 0;
    while (1)
    {
      if (*v118 != v76)
      {
        objc_enumerationMutation(v73);
      }

      v78 = *(*(&v117 + 1) + 8 * v77);
      v79 = [v111 objectForKey:v78];
      v80 = [(NSMapTable *)v112 objectForKey:v78];
      v81 = v80;
      if (v79)
      {
        if (!v80)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v83 = [MEMORY[0x1E696AAA8] currentHandler];
        [v83 handleFailureInMethod:a2 object:v100 file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"initialSectionSnapshot"}];

        if (!v81)
        {
LABEL_88:
          v84 = [MEMORY[0x1E696AAA8] currentHandler];
          [v84 handleFailureInMethod:a2 object:v100 file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"rebasedSectionSnapshot"}];
        }
      }

      v82 = [v79 expandedItems];
      [v81 expandItems:v82];

      if (v75 == ++v77)
      {
        v85 = [v73 countByEnumeratingWithState:&v117 objects:v145 count:16];
        v75 = v85;
        if (!v85)
        {
LABEL_90:

          rebasedSectionSnapshots = v100->_rebasedSectionSnapshots;
          v100->_rebasedSectionSnapshots = v112;
          v87 = v112;

          v12 = v98;
          v14 = v94;
          v13 = v95;
          v15 = v93;
          goto LABEL_91;
        }

        goto LABEL_80;
      }
    }
  }

  v41 = self->_rebasedSectionSnapshots;
  self->_rebasedSectionSnapshots = v17;

LABEL_91:
}

- (id)_transactionIncludingSectionDifferences:(BOOL)a3 source:(int64_t)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = [(_UIDiffableDataSourceSectionSnapshotRebaser *)self _computeSectionTransactionsIncludingSectionDifferences:a3];
  dataSourceDiffer = self->_dataSourceDiffer;
  if (dataSourceDiffer)
  {
    dataSourceDiffer = dataSourceDiffer->_itemIdentifierDiffer;
  }

  v8 = dataSourceDiffer;
  v9 = [(_UIIdentifierDiffer *)v8 collectionDifference];

  v10 = MEMORY[0x1E695E0F0];
  if (a4 == 1 && v9 && [v9 hasChanges])
  {
    v11 = [v9 insertions];
    v12 = [v11 firstObject];

    if (v12)
    {
      v13 = [v12 object];
      v14 = v13;
      if (v13)
      {
        v23[0] = v13;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      }

      else
      {
        v10 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }
  }

  v15 = [NSDiffableDataSourceTransaction alloc];
  v16 = v15;
  initialSnapshot = self->_initialSnapshot;
  finalSnapshot = self->_finalSnapshot;
  if (v9)
  {
    v19 = [(NSDiffableDataSourceTransaction *)v15 initWithInitialSnapshot:initialSnapshot finalSnapshot:finalSnapshot source:a4 difference:v9 reorderedItemIdentifiers:v10 sectionTransactions:v6];
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ADD8]);
    v21 = [v20 initWithChanges:MEMORY[0x1E695E0F0]];
    v19 = [(NSDiffableDataSourceTransaction *)v16 initWithInitialSnapshot:initialSnapshot finalSnapshot:finalSnapshot source:a4 difference:v21 reorderedItemIdentifiers:v10 sectionTransactions:v6];
  }

  return v19;
}

- (id)_computeSectionTransactionsIncludingSectionDifferences:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(NSMapTable *)self->_rebasedSectionSnapshots keyEnumerator];
  v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    v6 = *v28;
    v24 = self;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_initialSectionSnapshots objectForKey:v8];
        v10 = [(NSMapTable *)self->_rebasedSectionSnapshots objectForKey:v8];
        v11 = v10;
        if (v9)
        {
          if (v10)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:440 description:{@"Invalid parameter not satisfying: %@", @"sectionSnapshot"}];

          if (v11)
          {
LABEL_8:
            if (v3)
            {
              goto LABEL_9;
            }

            goto LABEL_12;
          }
        }

        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceSectionSnapshotRebaser.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"modifiedSectionSnapshot"}];

        if (v3)
        {
LABEL_9:
          [v11 items];
          v12 = v6;
          v13 = v3;
          v15 = v14 = v5;
          v16 = [v9 items];
          v17 = [v15 differenceFromArray:v16 withOptions:4];

          v5 = v14;
          v3 = v13;
          v6 = v12;
          self = v24;
          goto LABEL_13;
        }

LABEL_12:
        v20 = objc_alloc(MEMORY[0x1E696ADD8]);
        v17 = [v20 initWithChanges:MEMORY[0x1E695E0F0]];
LABEL_13:
        v21 = [[NSDiffableDataSourceSectionTransaction alloc] initWithSectionIdentifier:v8 initialSnapshot:v9 finalSnapshot:v11 difference:v17];
        [v5 addObject:v21];
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  return v5;
}

@end