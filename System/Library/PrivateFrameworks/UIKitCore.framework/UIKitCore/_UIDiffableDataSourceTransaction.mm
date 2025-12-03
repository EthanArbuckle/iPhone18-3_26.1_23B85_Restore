@interface _UIDiffableDataSourceTransaction
+ (id)applyTransactionWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference sectionTransactions:(id)transactions;
+ (id)reorderingTransactionWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference sectionTransactions:(id)transactions;
- (BOOL)isEqual:(id)equal;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)section;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section;
- (_UIDiffableDataSourceTransaction)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot source:(int64_t)source reorderedItemIdentifiers:(id)identifiers difference:(id)difference sectionTransactions:(id)transactions;
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

@implementation _UIDiffableDataSourceTransaction

- (_UIDiffableDataSourceTransaction)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot source:(int64_t)source reorderedItemIdentifiers:(id)identifiers difference:(id)difference sectionTransactions:(id)transactions
{
  snapshotCopy = snapshot;
  finalSnapshotCopy = finalSnapshot;
  identifiersCopy = identifiers;
  differenceCopy = difference;
  transactionsCopy = transactions;
  v23.receiver = self;
  v23.super_class = _UIDiffableDataSourceTransaction;
  v18 = [(_UIDiffableDataSourceTransaction *)&v23 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"difference.insertions.count + difference.removals.count <= 2"}];
  }

  insertions2 = [differenceCopy insertions];
  v20 = [insertions2 count];
  removals2 = [differenceCopy removals];
  v22 = [removals2 count];

  if (v20 == v22)
  {
    insertions3 = [differenceCopy insertions];
    v24 = [insertions3 objectAtIndexedSubscript:0];

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
      if (source == [(_UIDiffableDataSourceTransaction *)v6 source]&& (difference = self->_difference, [(_UIDiffableDataSourceTransaction *)v6 difference], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(difference) = [(NSOrderedCollectionDifference *)difference isEqual:v9], v9, difference) && (initialSnapshot = self->_initialSnapshot, [(_UIDiffableDataSourceTransaction *)v6 initialSnapshot], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(initialSnapshot) = [(NSDiffableDataSourceSnapshot *)initialSnapshot isEqual:v11], v11, initialSnapshot) && (finalSnapshot = self->_finalSnapshot, [(_UIDiffableDataSourceTransaction *)v6 finalSnapshot], v13 = objc_claimAutoreleasedReturnValue(), LODWORD(finalSnapshot) = [(NSDiffableDataSourceSnapshot *)finalSnapshot isEqual:v13], v13, finalSnapshot))
      {
        sectionTransactions = self->_sectionTransactions;
        sectionTransactions = [(_UIDiffableDataSourceTransaction *)v6 sectionTransactions];
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

- (id)initialDataSourceSnapshotter
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64___UIDiffableDataSourceTransaction_initialDataSourceSnapshotter__block_invoke;
  v4[3] = &unk_1E70FA518;
  v4[4] = self;
  v2 = [off_1E70ECC48 snapshotterForSectionCountsProvider:v4];

  return v2;
}

- (id)finalDataSourceSnapshotter
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62___UIDiffableDataSourceTransaction_finalDataSourceSnapshotter__block_invoke;
  v4[3] = &unk_1E70FA518;
  v4[4] = self;
  v2 = [off_1E70ECC48 snapshotterForSectionCountsProvider:v4];

  return v2;
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
  initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  numberOfItems = [initialSnapshot numberOfItems];

  if (numberOfItems <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"initialGlobalIndex < self.initialSnapshot.numberOfItems"}];
  }

  initialSnapshot2 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  itemIdentifiers = [initialSnapshot2 itemIdentifiers];
  v10 = [itemIdentifiers objectAtIndexedSubscript:index];

  finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v12 = [finalSnapshot indexOfItemIdentifier:v10];

  return v12;
}

- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)index
{
  finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  numberOfItems = [finalSnapshot numberOfItems];

  if (numberOfItems <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"finalGlobalIndex < self.finalSnapshot.numberOfItems"}];
  }

  finalSnapshot2 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  itemIdentifiers = [finalSnapshot2 itemIdentifiers];
  v10 = [itemIdentifiers objectAtIndexedSubscript:index];

  initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v12 = [initialSnapshot indexOfItemIdentifier:v10];

  return v12;
}

- (id)finalIndexPathForInitialIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] >= 2)
  {
    initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
    v7 = [initialSnapshot identifierForIndexPath:pathCopy];

    if (v7)
    {
      finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
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
    finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
    v7 = [finalSnapshot identifierForIndexPath:pathCopy];

    if (v7)
    {
      initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
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
  initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  sectionIdentifiers = [initialSnapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"initialSectionIndex < self.initialSnapshot.sectionIdentifiers.count"}];
  }

  initialSnapshot2 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  sectionIdentifiers2 = [initialSnapshot2 sectionIdentifiers];
  v11 = [sectionIdentifiers2 objectAtIndexedSubscript:index];

  finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v13 = [finalSnapshot indexOfSectionIdentifier:v11];

  return v13;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)index
{
  finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  sectionIdentifiers = [finalSnapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"finalSectionIndex < self.finalSnapshot.sectionIdentifiers.count"}];
  }

  finalSnapshot2 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  sectionIdentifiers2 = [finalSnapshot2 sectionIdentifiers];
  v11 = [sectionIdentifiers2 objectAtIndexedSubscript:index];

  initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v13 = [initialSnapshot indexOfSectionIdentifier:v11];

  return v13;
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section
{
  initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
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
  finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
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
  initialSnapshot = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  numberOfSections = [initialSnapshot numberOfSections];

  return numberOfSections;
}

- (int64_t)finalSectionCount
{
  finalSnapshot = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  numberOfSections = [finalSnapshot numberOfSections];

  return numberOfSections;
}

@end