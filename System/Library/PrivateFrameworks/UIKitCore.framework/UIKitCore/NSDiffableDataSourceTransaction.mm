@interface NSDiffableDataSourceTransaction
+ (id)_computeReorderingTransactionWithInitialSnapshot:(id)a3 reorderingUpdate:(id)a4 sectionSnapshotProvider:(id)a5;
+ (id)applyTransactionWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 difference:(id)a5 sectionTransactions:(id)a6;
+ (id)reorderingTransactionWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 difference:(id)a5 sectionTransactions:(id)a6;
- (BOOL)_containsItemIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 source:(int64_t)a5 difference:(id)a6 finalSectionSnapshots:(id)a7;
- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 source:(int64_t)a5 reorderedItemIdentifiers:(id)a6 difference:(id)a7 sectionTransactions:(id)a8;
- (NSDiffableDataSourceTransaction)transactionWithSectionTransactions:(id)a3;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)a3;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3;
- (id)_spiCopy;
- (id)description;
- (id)finalDataSourceSnapshotter;
- (id)finalIndexPathForInitialIndexPath:(id)a3;
- (id)initialDataSourceSnapshotter;
- (id)initialIndexPathForFinalIndexPath:(id)a3;
- (id)performDiffGeneratingUpdates;
- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)a3;
- (int64_t)finalSectionCount;
- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)a3;
- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)a3;
- (int64_t)initialSectionCount;
- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)a3;
@end

@implementation NSDiffableDataSourceTransaction

- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 source:(int64_t)a5 reorderedItemIdentifiers:(id)a6 difference:(id)a7 sectionTransactions:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = NSDiffableDataSourceTransaction;
  v18 = [(NSDiffableDataSourceTransaction *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_initialSnapshot, a3);
    objc_storeStrong(&v19->_finalSnapshot, a4);
    v19->_source = a5;
    objc_storeStrong(&v19->_reorderedItemIdentifiers, a6);
    objc_storeStrong(&v19->_difference, a7);
    objc_storeStrong(&v19->_sectionTransactions, a8);
  }

  return v19;
}

- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 source:(int64_t)a5 difference:(id)a6 finalSectionSnapshots:(id)a7
{
  v24 = self;
  v35 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v27 = a4;
  v25 = a6;
  v10 = a7;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v10 keyEnumerator];
  v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    v15 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v10 objectForKey:{v17, v24}];
        v19 = [NSDiffableDataSourceSectionTransaction alloc];
        v20 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v15];
        v21 = [(NSDiffableDataSourceSectionTransaction *)v19 initWithSectionIdentifier:v17 initialSnapshot:v18 finalSnapshot:v18 difference:v20];

        [v11 addObject:v21];
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  v22 = [(NSDiffableDataSourceTransaction *)v24 initWithInitialSnapshot:v28 finalSnapshot:v27 source:a5 reorderedItemIdentifiers:MEMORY[0x1E695E0F0] difference:v25 sectionTransactions:v11];
  return v22;
}

+ (id)applyTransactionWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 difference:(id)a5 sectionTransactions:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithInitialSnapshot:v12 finalSnapshot:v11 source:0 reorderedItemIdentifiers:MEMORY[0x1E695E0F0] difference:v10 sectionTransactions:v9];

  return v13;
}

+ (id)reorderingTransactionWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 difference:(id)a5 sectionTransactions:(id)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [v11 insertions];
  v16 = [v15 count];
  v17 = [v11 removals];
  v18 = [v17 count] + v16;

  if (v18 >= 3)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"NSDiffableDataSourceTransaction.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"difference.insertions.count + difference.removals.count <= 2"}];
  }

  if ([v11 hasChanges] && (objc_msgSend(v11, "insertions"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), objc_msgSend(v11, "removals"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v19, v20 == v22))
  {
    v23 = [v11 insertions];
    v24 = [v23 objectAtIndexedSubscript:0];

    v25 = [v24 object];
    v30[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  v27 = [objc_alloc(objc_opt_class()) initWithInitialSnapshot:v14 finalSnapshot:v13 source:1 reorderedItemIdentifiers:v26 difference:v11 sectionTransactions:v12];

  return v27;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  v7 = [v3 stringWithFormat:@"<%@: %p - source=%@ initialSnapshot=%p; finalSnapshot=%p; difference=%@; sectionTransactions=%p>", v5, self, v6, self->_initialSnapshot, self->_finalSnapshot, self->_difference, self->_sectionTransactions];;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v16 = 1;
    }

    else
    {
      v6 = v4;
      source = self->_source;
      if (source == [(NSDiffableDataSourceTransaction *)v6 source]&& (difference = self->_difference, [(NSDiffableDataSourceTransaction *)v6 difference], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(difference) = [(NSOrderedCollectionDifference *)difference isEqual:v9], v9, difference) && (initialSnapshot = self->_initialSnapshot, [(NSDiffableDataSourceTransaction *)v6 initialSnapshot], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(initialSnapshot) = [(NSDiffableDataSourceSnapshot *)initialSnapshot isEqual:v11], v11, initialSnapshot) && (finalSnapshot = self->_finalSnapshot, [(NSDiffableDataSourceTransaction *)v6 finalSnapshot], v13 = objc_claimAutoreleasedReturnValue(), LODWORD(finalSnapshot) = [(NSDiffableDataSourceSnapshot *)finalSnapshot isEqual:v13], v13, finalSnapshot))
      {
        sectionTransactions = self->_sectionTransactions;
        v15 = [(NSDiffableDataSourceTransaction *)v6 sectionTransactions];
        v16 = [(NSArray *)sectionTransactions isEqualToArray:v15];
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_containsItemIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSDiffableDataSourceSnapshot *)self->_finalSnapshot indexOfItemIdentifier:v4]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_sectionTransactions;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) finalSnapshot];
          v10 = [v9 containsItem:v4];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)_spiCopy
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(NSDiffableDataSourceTransaction *)self sectionTransactions];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) _spiCopy];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = [_UIDiffableDataSourceTransaction alloc];
  v11 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v12 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v13 = [(NSDiffableDataSourceTransaction *)self source];
  v14 = [(NSDiffableDataSourceTransaction *)self reorderedItemIdentifiers];
  v15 = [(NSDiffableDataSourceTransaction *)self difference];
  v16 = [(_UIDiffableDataSourceTransaction *)v10 initWithInitialSnapshot:v11 finalSnapshot:v12 source:v13 reorderedItemIdentifiers:v14 difference:v15 sectionTransactions:v3];

  return v16;
}

- (NSDiffableDataSourceTransaction)transactionWithSectionTransactions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v7 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v8 = [(NSDiffableDataSourceTransaction *)self source];
  v9 = [(NSDiffableDataSourceTransaction *)self reorderedItemIdentifiers];
  v10 = [(NSDiffableDataSourceTransaction *)self difference];
  v11 = [v5 initWithInitialSnapshot:v6 finalSnapshot:v7 source:v8 reorderedItemIdentifiers:v9 difference:v10 sectionTransactions:v4];

  return v11;
}

+ (id)_computeReorderingTransactionWithInitialSnapshot:(id)a3 reorderingUpdate:(id)a4 sectionSnapshotProvider:(id)a5
{
  v81[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_42:
    v65 = [MEMORY[0x1E696AAA8] currentHandler];
    [v65 handleFailureInMethod:a2 object:a1 file:@"NSDiffableDataSourceTransaction.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"reorderingUpdate"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_43;
  }

  v64 = [MEMORY[0x1E696AAA8] currentHandler];
  [v64 handleFailureInMethod:a2 object:a1 file:@"NSDiffableDataSourceTransaction.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot"}];

  if (!v10)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_43:
  v66 = [MEMORY[0x1E696AAA8] currentHandler];
  [v66 handleFailureInMethod:a2 object:a1 file:@"NSDiffableDataSourceTransaction.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"sectionSnapshotProvider"}];

LABEL_4:
  v12 = [v10 indexPathBeforeUpdate];
  v13 = [v10 indexPathAfterUpdate];
  if ([v12 isEqual:v13])
  {
    v14 = objc_alloc(MEMORY[0x1E696ADD8]);
    v15 = MEMORY[0x1E695E0F0];
    v16 = [v14 initWithChanges:MEMORY[0x1E695E0F0]];
    v17 = [NSDiffableDataSourceTransaction applyTransactionWithInitialSnapshot:v9 finalSnapshot:v9 difference:v16 sectionTransactions:v15];

    goto LABEL_38;
  }

  v75 = [v9 copy];
  v72 = v10;
  if (v13)
  {
    v18 = [v9 identifierForIndexPath:v13];
  }

  else
  {
    v18 = 0;
  }

  v71 = v12;
  v19 = [v9 identifierForIndexPath:v12];
  v20 = [v9 sectionIdentifierForSectionContainingItemIdentifier:v19];
  v73 = v20;
  v74 = v11;
  v70 = v18;
  if (v18)
  {
    v21 = v20;
    v22 = [v75 indexOfItemIdentifier:v19];
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = v22;
      v24 = [v75 indexOfItemIdentifier:v18];
      v25 = [v75 sectionIdentifierForSectionContainingItemIdentifier:v18];
      if (v24 <= v23)
      {
        v81[0] = v19;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
        [v75 deleteItemsWithIdentifiers:v36];
      }

      else
      {
        v26 = [v21 isEqual:v25];
        v81[0] = v19;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
        [v75 deleteItemsWithIdentifiers:v27];

        if (v26)
        {
          v80 = v19;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
          [v75 insertItemsWithIdentifiers:v28 afterItemWithIdentifier:v18];
LABEL_22:
          v35 = v25;

          goto LABEL_23;
        }
      }

      v79 = v19;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
      [v75 insertItemsWithIdentifiers:v28 beforeItemWithIdentifier:v18];
      goto LABEL_22;
    }
  }

  else
  {
    v29 = [v13 section];
    if ([v13 length] >= 2)
    {
      v30 = [v9 sectionIdentifiers];
      v31 = [v30 count];

      if (v29 < v31)
      {
        v32 = [v13 item];
        v33 = [v75 sectionIdentifiers];
        v25 = [v33 objectAtIndexedSubscript:{objc_msgSend(v13, "section")}];

        if (v32 > [v9 numberOfItemsInSection:v25])
        {
          v67 = [MEMORY[0x1E696AAA8] currentHandler];
          [v67 handleFailureInMethod:a2 object:a1 file:@"NSDiffableDataSourceTransaction.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex <= [initialSnapshot numberOfItemsInSection:destinationSectionIdentifier]"}];
        }

        v78 = v19;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
        [v75 deleteItemsWithIdentifiers:v34];

        v77 = v19;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
        [v75 appendItemsWithIdentifiers:v28 intoSectionWithIdentifier:v25];
        goto LABEL_22;
      }
    }
  }

  v35 = 0;
LABEL_23:
  v37 = [v9 indexOfItemIdentifier:v19];
  v38 = [v75 indexOfItemIdentifier:v19];
  v39 = [MEMORY[0x1E696ADD0] changeWithObject:v19 type:1 index:v37 associatedIndex:v38];
  v40 = [MEMORY[0x1E696ADD0] changeWithObject:v19 type:0 index:v38 associatedIndex:v37];
  v41 = objc_alloc(MEMORY[0x1E696ADD8]);
  v76[0] = v39;
  v76[1] = v40;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v69 = [v41 initWithChanges:v42];

  v43 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v44 = v35;
  if (v73 && v35)
  {
    v45 = [v73 isEqual:v35];
    v46 = v74;
    if (v45)
    {
      v47 = v74[2](v74, v73);
      if (v47)
      {
        v48 = v43;
        v49 = v47;
        v50 = v73;
LABEL_35:
        [v48 setObject:v49 forKey:v50];
        goto LABEL_36;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v46 = v74;
    if (!v73)
    {
      goto LABEL_32;
    }
  }

  v51 = v46[2](v46, v73);
  if (v51)
  {
    [v43 setObject:v51 forKey:v73];
  }

LABEL_32:
  if (v44)
  {
    v47 = v46[2](v46, v44);
    if (v47)
    {
      v48 = v43;
      v49 = v47;
      v50 = v44;
      goto LABEL_35;
    }

LABEL_36:
  }

  v52 = [_UIIdentifierDiffer alloc];
  [v9 state];
  v68 = v19;
  v54 = v53 = v44;
  v55 = [v54 identifiers];
  v56 = [v75 state];
  v57 = [v56 identifiers];
  v58 = [(_UIIdentifierDiffer *)&v52->super.isa initWithBeforeIdentifiers:v55 afterIdentifiers:v57 collectionDifference:v69];

  v59 = [v9 state];
  v60 = [v75 state];
  v61 = [_UIDiffableDataSourceDiffer differWithBeforeDataSourceState:v59 afterDataSourceState:v60 itemIdentifierDiffer:v58];

  v62 = [[_UIDiffableDataSourceSectionSnapshotRebaser alloc] initWithInitialSnapshot:v9 finalSnapshot:v75 initialSectionSnapshots:v43 dataSourceDiffer:v61 shouldPerformChildSnapshotMoves:1];
  v17 = [(_UIDiffableDataSourceSectionSnapshotRebaser *)v62 computeReorderingTransaction];

  v11 = v74;
  v12 = v71;
  v10 = v72;
LABEL_38:

  return v17;
}

- (id)initialDataSourceSnapshotter
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__NSDiffableDataSourceTransaction_initialDataSourceSnapshotter__block_invoke;
  v4[3] = &unk_1E70FA518;
  v4[4] = self;
  v2 = [off_1E70ECC48 snapshotterForSectionCountsProvider:v4];

  return v2;
}

uint64_t __63__NSDiffableDataSourceTransaction_initialDataSourceSnapshotter__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) initialSnapshot];
  v5 = v4;
  if (a2 < 0)
  {
    v9 = [v4 numberOfSections];
  }

  else
  {
    v6 = [*(a1 + 32) initialSnapshot];
    v7 = [v6 sectionIdentifiers];
    v8 = [v7 objectAtIndexedSubscript:a2];
    v9 = [v5 numberOfItemsInSection:v8];
  }

  return v9;
}

- (id)finalDataSourceSnapshotter
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__NSDiffableDataSourceTransaction_finalDataSourceSnapshotter__block_invoke;
  v4[3] = &unk_1E70FA518;
  v4[4] = self;
  v2 = [off_1E70ECC48 snapshotterForSectionCountsProvider:v4];

  return v2;
}

uint64_t __61__NSDiffableDataSourceTransaction_finalDataSourceSnapshotter__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) finalSnapshot];
  v5 = v4;
  if (a2 < 0)
  {
    v9 = [v4 numberOfSections];
  }

  else
  {
    v6 = [*(a1 + 32) finalSnapshot];
    v7 = [v6 sectionIdentifiers];
    v8 = [v7 objectAtIndexedSubscript:a2];
    v9 = [v5 numberOfItemsInSection:v8];
  }

  return v9;
}

- (id)performDiffGeneratingUpdates
{
  v3 = [(NSDiffableDataSourceSnapshot *)self->_initialSnapshot state];
  v4 = [(NSDiffableDataSourceSnapshot *)self->_finalSnapshot state];
  v5 = [_UIDiffableDataSourceDiffer differWithBeforeDataSourceState:v3 afterDataSourceState:v4];

  if (v5)
  {
    v6 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)a3
{
  v6 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v7 = [v6 numberOfItems];

  if (v7 <= a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"initialGlobalIndex < self.initialSnapshot.numberOfItems"}];
  }

  v8 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v9 = [v8 itemIdentifiers];
  v10 = [v9 objectAtIndexedSubscript:a3];

  v11 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v12 = [v11 indexOfItemIdentifier:v10];

  return v12;
}

- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)a3
{
  v6 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v7 = [v6 numberOfItems];

  if (v7 <= a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"finalGlobalIndex < self.finalSnapshot.numberOfItems"}];
  }

  v8 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v9 = [v8 itemIdentifiers];
  v10 = [v9 objectAtIndexedSubscript:a3];

  v11 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v12 = [v11 indexOfItemIdentifier:v10];

  return v12;
}

- (id)finalIndexPathForInitialIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 2)
  {
    v6 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
    v7 = [v6 identifierForIndexPath:v4];

    if (v7)
    {
      v8 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
      v5 = [v8 indexPathForIdentifier:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initialIndexPathForFinalIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 2)
  {
    v6 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
    v7 = [v6 identifierForIndexPath:v4];

    if (v7)
    {
      v8 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
      v5 = [v8 indexPathForIdentifier:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)a3
{
  v6 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"initialSectionIndex < self.initialSnapshot.sectionIdentifiers.count"}];
  }

  v9 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v10 = [v9 sectionIdentifiers];
  v11 = [v10 objectAtIndexedSubscript:a3];

  v12 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v13 = [v12 indexOfSectionIdentifier:v11];

  return v13;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)a3
{
  v6 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"finalSectionIndex < self.finalSnapshot.sectionIdentifiers.count"}];
  }

  v9 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v10 = [v9 sectionIdentifiers];
  v11 = [v10 objectAtIndexedSubscript:a3];

  v12 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v13 = [v12 indexOfSectionIdentifier:v11];

  return v13;
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3
{
  v4 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v5 = [v4 sectionGlobalItemRangeForSection:a3];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)a3
{
  v4 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v5 = [v4 sectionGlobalItemRangeForSection:a3];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (int64_t)initialSectionCount
{
  v2 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v3 = [v2 numberOfSections];

  return v3;
}

- (int64_t)finalSectionCount
{
  v2 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v3 = [v2 numberOfSections];

  return v3;
}

@end