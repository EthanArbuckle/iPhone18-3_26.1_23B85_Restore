@interface NSDiffableDataSourceTransaction
+ (id)_computeReorderingTransactionWithInitialSnapshot:(id)snapshot reorderingUpdate:(id)update sectionSnapshotProvider:(id)provider;
+ (id)applyTransactionWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference sectionTransactions:(id)transactions;
+ (id)reorderingTransactionWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference sectionTransactions:(id)transactions;
- (BOOL)_containsItemIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot source:(int64_t)source difference:(id)difference finalSectionSnapshots:(id)snapshots;
- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot source:(int64_t)source reorderedItemIdentifiers:(id)identifiers difference:(id)difference sectionTransactions:(id)transactions;
- (NSDiffableDataSourceTransaction)transactionWithSectionTransactions:(id)transactions;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)section;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section;
- (id)_spiCopy;
- (id)description;
- (id)finalDataSourceSnapshotter;
- (id)finalIndexPathForInitialIndexPath:(id)path;
- (id)initialDataSourceSnapshotter;
- (id)initialIndexPathForFinalIndexPath:(id)path;
- (id)performDiffGeneratingUpdates;
- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)index;
- (int64_t)finalSectionCount;
- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)index;
- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)index;
- (int64_t)initialSectionCount;
- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)index;
@end

@implementation NSDiffableDataSourceTransaction

- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot source:(int64_t)source reorderedItemIdentifiers:(id)identifiers difference:(id)difference sectionTransactions:(id)transactions
{
  snapshotCopy = snapshot;
  finalSnapshotCopy = finalSnapshot;
  identifiersCopy = identifiers;
  differenceCopy = difference;
  transactionsCopy = transactions;
  v23.receiver = self;
  v23.super_class = NSDiffableDataSourceTransaction;
  v18 = [(NSDiffableDataSourceTransaction *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_initialSnapshot, snapshot);
    objc_storeStrong(&v19->_finalSnapshot, finalSnapshot);
    v19->_source = source;
    objc_storeStrong(&v19->_reorderedItemIdentifiers, identifiers);
    objc_storeStrong(&v19->_difference, difference);
    objc_storeStrong(&v19->_sectionTransactions, transactions);
  }

  return v19;
}

- (NSDiffableDataSourceTransaction)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot source:(int64_t)source difference:(id)difference finalSectionSnapshots:(id)snapshots
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  finalSnapshotCopy = finalSnapshot;
  differenceCopy = difference;
  snapshotsCopy = snapshots;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [snapshotsCopy keyEnumerator];
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
        v18 = [snapshotsCopy objectForKey:{v17, selfCopy}];
        v19 = [NSDiffableDataSourceSectionTransaction alloc];
        v20 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v15];
        v21 = [(NSDiffableDataSourceSectionTransaction *)v19 initWithSectionIdentifier:v17 initialSnapshot:v18 finalSnapshot:v18 difference:v20];

        [v11 addObject:v21];
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  v22 = [(NSDiffableDataSourceTransaction *)selfCopy initWithInitialSnapshot:snapshotCopy finalSnapshot:finalSnapshotCopy source:source reorderedItemIdentifiers:MEMORY[0x1E695E0F0] difference:differenceCopy sectionTransactions:v11];
  return v22;
}

+ (id)applyTransactionWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference sectionTransactions:(id)transactions
{
  transactionsCopy = transactions;
  differenceCopy = difference;
  finalSnapshotCopy = finalSnapshot;
  snapshotCopy = snapshot;
  v13 = [objc_alloc(objc_opt_class()) initWithInitialSnapshot:snapshotCopy finalSnapshot:finalSnapshotCopy source:0 reorderedItemIdentifiers:MEMORY[0x1E695E0F0] difference:differenceCopy sectionTransactions:transactionsCopy];

  return v13;
}

+ (id)reorderingTransactionWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference sectionTransactions:(id)transactions
{
  v30[1] = *MEMORY[0x1E69E9840];
  differenceCopy = difference;
  transactionsCopy = transactions;
  finalSnapshotCopy = finalSnapshot;
  snapshotCopy = snapshot;
  insertions = [differenceCopy insertions];
  v16 = [insertions count];
  removals = [differenceCopy removals];
  v18 = [removals count] + v16;

  if (v18 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"difference.insertions.count + difference.removals.count <= 2"}];
  }

  if ([differenceCopy hasChanges] && (objc_msgSend(differenceCopy, "insertions"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), objc_msgSend(differenceCopy, "removals"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v19, v20 == v22))
  {
    insertions2 = [differenceCopy insertions];
    v24 = [insertions2 objectAtIndexedSubscript:0];

    object = [v24 object];
    v30[0] = object;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  v27 = [objc_alloc(objc_opt_class()) initWithInitialSnapshot:snapshotCopy finalSnapshot:finalSnapshotCopy source:1 reorderedItemIdentifiers:v26 difference:differenceCopy sectionTransactions:transactionsCopy];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v16 = 1;
    }

    else
    {
      v6 = equalCopy;
      source = self->_source;
      if (source == [(NSDiffableDataSourceTransaction *)v6 source]&& (difference = self->_difference, [(NSDiffableDataSourceTransaction *)v6 difference], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(difference) = [(NSOrderedCollectionDifference *)difference isEqual:v9], v9, difference) && (initialSnapshot = self->_initialSnapshot, [(NSDiffableDataSourceTransaction *)v6 initialSnapshot], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(initialSnapshot) = [(NSDiffableDataSourceSnapshot *)initialSnapshot isEqual:v11], v11, initialSnapshot) && (finalSnapshot = self->_finalSnapshot, [(NSDiffableDataSourceTransaction *)v6 finalSnapshot], v13 = objc_claimAutoreleasedReturnValue(), LODWORD(finalSnapshot) = [(NSDiffableDataSourceSnapshot *)finalSnapshot isEqual:v13], v13, finalSnapshot))
      {
        sectionTransactions = self->_sectionTransactions;
        sectionTransactions = [(NSDiffableDataSourceTransaction *)v6 sectionTransactions];
        v16 = [(NSArray *)sectionTransactions isEqualToArray:sectionTransactions];
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

- (BOOL)_containsItemIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(NSDiffableDataSourceSnapshot *)self->_finalSnapshot indexOfItemIdentifier:identifierCopy]== 0x7FFFFFFFFFFFFFFFLL)
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

          finalSnapshot = [*(*(&v12 + 1) + 8 * i) finalSnapshot];
          v10 = [finalSnapshot containsItem:identifierCopy];

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
  sectionTransactions = [(NSDiffableDataSourceTransaction *)self sectionTransactions];
  v5 = [sectionTransactions countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(sectionTransactions);
        }

        _spiCopy = [*(*(&v18 + 1) + 8 * i) _spiCopy];
        [v3 addObject:_spiCopy];
      }

      v6 = [sectionTransactions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = [_UIDiffableDataSourceTransaction alloc];
  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  source = [(NSDiffableDataSourceTransaction *)self source];
  reorderedItemIdentifiers = [(NSDiffableDataSourceTransaction *)self reorderedItemIdentifiers];
  difference = [(NSDiffableDataSourceTransaction *)self difference];
  v16 = [(_UIDiffableDataSourceTransaction *)v10 initWithInitialSnapshot:initialSnapshot finalSnapshot:finalSnapshot source:source reorderedItemIdentifiers:reorderedItemIdentifiers difference:difference sectionTransactions:v3];

  return v16;
}

- (NSDiffableDataSourceTransaction)transactionWithSectionTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v5 = objc_alloc(objc_opt_class());
  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  source = [(NSDiffableDataSourceTransaction *)self source];
  reorderedItemIdentifiers = [(NSDiffableDataSourceTransaction *)self reorderedItemIdentifiers];
  difference = [(NSDiffableDataSourceTransaction *)self difference];
  v11 = [v5 initWithInitialSnapshot:initialSnapshot finalSnapshot:finalSnapshot source:source reorderedItemIdentifiers:reorderedItemIdentifiers difference:difference sectionTransactions:transactionsCopy];

  return v11;
}

+ (id)_computeReorderingTransactionWithInitialSnapshot:(id)snapshot reorderingUpdate:(id)update sectionSnapshotProvider:(id)provider
{
  v81[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  updateCopy = update;
  providerCopy = provider;
  if (snapshotCopy)
  {
    if (updateCopy)
    {
      goto LABEL_3;
    }

LABEL_42:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"reorderingUpdate"}];

    if (providerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_43;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot"}];

  if (!updateCopy)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (providerCopy)
  {
    goto LABEL_4;
  }

LABEL_43:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"sectionSnapshotProvider"}];

LABEL_4:
  indexPathBeforeUpdate = [updateCopy indexPathBeforeUpdate];
  indexPathAfterUpdate = [updateCopy indexPathAfterUpdate];
  if ([indexPathBeforeUpdate isEqual:indexPathAfterUpdate])
  {
    v14 = objc_alloc(MEMORY[0x1E696ADD8]);
    v15 = MEMORY[0x1E695E0F0];
    v16 = [v14 initWithChanges:MEMORY[0x1E695E0F0]];
    computeReorderingTransaction = [NSDiffableDataSourceTransaction applyTransactionWithInitialSnapshot:snapshotCopy finalSnapshot:snapshotCopy difference:v16 sectionTransactions:v15];

    goto LABEL_38;
  }

  v75 = [snapshotCopy copy];
  v72 = updateCopy;
  if (indexPathAfterUpdate)
  {
    v18 = [snapshotCopy identifierForIndexPath:indexPathAfterUpdate];
  }

  else
  {
    v18 = 0;
  }

  v71 = indexPathBeforeUpdate;
  v19 = [snapshotCopy identifierForIndexPath:indexPathBeforeUpdate];
  v20 = [snapshotCopy sectionIdentifierForSectionContainingItemIdentifier:v19];
  v73 = v20;
  v74 = providerCopy;
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
    section = [indexPathAfterUpdate section];
    if ([indexPathAfterUpdate length] >= 2)
    {
      sectionIdentifiers = [snapshotCopy sectionIdentifiers];
      v31 = [sectionIdentifiers count];

      if (section < v31)
      {
        item = [indexPathAfterUpdate item];
        sectionIdentifiers2 = [v75 sectionIdentifiers];
        v25 = [sectionIdentifiers2 objectAtIndexedSubscript:{objc_msgSend(indexPathAfterUpdate, "section")}];

        if (item > [snapshotCopy numberOfItemsInSection:v25])
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"destinationIndex <= [initialSnapshot numberOfItemsInSection:destinationSectionIdentifier]"}];
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
  v37 = [snapshotCopy indexOfItemIdentifier:v19];
  v38 = [v75 indexOfItemIdentifier:v19];
  v39 = [MEMORY[0x1E696ADD0] changeWithObject:v19 type:1 index:v37 associatedIndex:v38];
  v40 = [MEMORY[0x1E696ADD0] changeWithObject:v19 type:0 index:v38 associatedIndex:v37];
  v41 = objc_alloc(MEMORY[0x1E696ADD8]);
  v76[0] = v39;
  v76[1] = v40;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v69 = [v41 initWithChanges:v42];

  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
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
        v48 = strongToStrongObjectsMapTable;
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
    [strongToStrongObjectsMapTable setObject:v51 forKey:v73];
  }

LABEL_32:
  if (v44)
  {
    v47 = v46[2](v46, v44);
    if (v47)
    {
      v48 = strongToStrongObjectsMapTable;
      v49 = v47;
      v50 = v44;
      goto LABEL_35;
    }

LABEL_36:
  }

  v52 = [_UIIdentifierDiffer alloc];
  [snapshotCopy state];
  v68 = v19;
  v54 = v53 = v44;
  identifiers = [v54 identifiers];
  state = [v75 state];
  identifiers2 = [state identifiers];
  v58 = [(_UIIdentifierDiffer *)&v52->super.isa initWithBeforeIdentifiers:identifiers afterIdentifiers:identifiers2 collectionDifference:v69];

  state2 = [snapshotCopy state];
  state3 = [v75 state];
  v61 = [_UIDiffableDataSourceDiffer differWithBeforeDataSourceState:state2 afterDataSourceState:state3 itemIdentifierDiffer:v58];

  v62 = [[_UIDiffableDataSourceSectionSnapshotRebaser alloc] initWithInitialSnapshot:snapshotCopy finalSnapshot:v75 initialSectionSnapshots:strongToStrongObjectsMapTable dataSourceDiffer:v61 shouldPerformChildSnapshotMoves:1];
  computeReorderingTransaction = [(_UIDiffableDataSourceSectionSnapshotRebaser *)v62 computeReorderingTransaction];

  providerCopy = v74;
  indexPathBeforeUpdate = v71;
  updateCopy = v72;
LABEL_38:

  return computeReorderingTransaction;
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
  state = [(NSDiffableDataSourceSnapshot *)self->_initialSnapshot state];
  state2 = [(NSDiffableDataSourceSnapshot *)self->_finalSnapshot state];
  v5 = [_UIDiffableDataSourceDiffer differWithBeforeDataSourceState:state afterDataSourceState:state2];

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

- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)index
{
  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  numberOfItems = [initialSnapshot numberOfItems];

  if (numberOfItems <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"initialGlobalIndex < self.initialSnapshot.numberOfItems"}];
  }

  initialSnapshot2 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  itemIdentifiers = [initialSnapshot2 itemIdentifiers];
  v10 = [itemIdentifiers objectAtIndexedSubscript:index];

  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v12 = [finalSnapshot indexOfItemIdentifier:v10];

  return v12;
}

- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)index
{
  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  numberOfItems = [finalSnapshot numberOfItems];

  if (numberOfItems <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"finalGlobalIndex < self.finalSnapshot.numberOfItems"}];
  }

  finalSnapshot2 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  itemIdentifiers = [finalSnapshot2 itemIdentifiers];
  v10 = [itemIdentifiers objectAtIndexedSubscript:index];

  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v12 = [initialSnapshot indexOfItemIdentifier:v10];

  return v12;
}

- (id)finalIndexPathForInitialIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] >= 2)
  {
    initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
    v7 = [initialSnapshot identifierForIndexPath:pathCopy];

    if (v7)
    {
      finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
      v5 = [finalSnapshot indexPathForIdentifier:v7];
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

- (id)initialIndexPathForFinalIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] >= 2)
  {
    finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
    v7 = [finalSnapshot identifierForIndexPath:pathCopy];

    if (v7)
    {
      initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
      v5 = [initialSnapshot indexPathForIdentifier:v7];
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

- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)index
{
  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  sectionIdentifiers = [initialSnapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"initialSectionIndex < self.initialSnapshot.sectionIdentifiers.count"}];
  }

  initialSnapshot2 = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  sectionIdentifiers2 = [initialSnapshot2 sectionIdentifiers];
  v11 = [sectionIdentifiers2 objectAtIndexedSubscript:index];

  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v13 = [finalSnapshot indexOfSectionIdentifier:v11];

  return v13;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)index
{
  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  sectionIdentifiers = [finalSnapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceTransaction.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"finalSectionIndex < self.finalSnapshot.sectionIdentifiers.count"}];
  }

  finalSnapshot2 = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  sectionIdentifiers2 = [finalSnapshot2 sectionIdentifiers];
  v11 = [sectionIdentifiers2 objectAtIndexedSubscript:index];

  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v13 = [initialSnapshot indexOfSectionIdentifier:v11];

  return v13;
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section
{
  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  v5 = [initialSnapshot sectionGlobalItemRangeForSection:section];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)section
{
  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  v5 = [finalSnapshot sectionGlobalItemRangeForSection:section];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (int64_t)initialSectionCount
{
  initialSnapshot = [(NSDiffableDataSourceTransaction *)self initialSnapshot];
  numberOfSections = [initialSnapshot numberOfSections];

  return numberOfSections;
}

- (int64_t)finalSectionCount
{
  finalSnapshot = [(NSDiffableDataSourceTransaction *)self finalSnapshot];
  numberOfSections = [finalSnapshot numberOfSections];

  return numberOfSections;
}

@end