@interface _UIDiffableDataSourceTransaction
+ (id)applyTransactionWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 difference:(id)a5 sectionTransactions:(id)a6;
+ (id)reorderingTransactionWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 difference:(id)a5 sectionTransactions:(id)a6;
- (BOOL)isEqual:(id)a3;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)a3;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3;
- (_UIDiffableDataSourceTransaction)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 source:(int64_t)a5 reorderedItemIdentifiers:(id)a6 difference:(id)a7 sectionTransactions:(id)a8;
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

@implementation _UIDiffableDataSourceTransaction

- (_UIDiffableDataSourceTransaction)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 source:(int64_t)a5 reorderedItemIdentifiers:(id)a6 difference:(id)a7 sectionTransactions:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = _UIDiffableDataSourceTransaction;
  v18 = [(_UIDiffableDataSourceTransaction *)&v23 init];
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
    [v29 handleFailureInMethod:a2 object:a1 file:@"UIDiffableDataSourceTransaction.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"difference.insertions.count + difference.removals.count <= 2"}];
  }

  v19 = [v11 insertions];
  v20 = [v19 count];
  v21 = [v11 removals];
  v22 = [v21 count];

  if (v20 == v22)
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
      if (source == [(_UIDiffableDataSourceTransaction *)v6 source]&& (difference = self->_difference, [(_UIDiffableDataSourceTransaction *)v6 difference], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(difference) = [(NSOrderedCollectionDifference *)difference isEqual:v9], v9, difference) && (initialSnapshot = self->_initialSnapshot, [(_UIDiffableDataSourceTransaction *)v6 initialSnapshot], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(initialSnapshot) = [(NSDiffableDataSourceSnapshot *)initialSnapshot isEqual:v11], v11, initialSnapshot) && (finalSnapshot = self->_finalSnapshot, [(_UIDiffableDataSourceTransaction *)v6 finalSnapshot], v13 = objc_claimAutoreleasedReturnValue(), LODWORD(finalSnapshot) = [(NSDiffableDataSourceSnapshot *)finalSnapshot isEqual:v13], v13, finalSnapshot))
      {
        sectionTransactions = self->_sectionTransactions;
        v15 = [(_UIDiffableDataSourceTransaction *)v6 sectionTransactions];
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
  v6 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v7 = [v6 numberOfItems];

  if (v7 <= a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"initialGlobalIndex < self.initialSnapshot.numberOfItems"}];
  }

  v8 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v9 = [v8 itemIdentifiers];
  v10 = [v9 objectAtIndexedSubscript:a3];

  v11 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v12 = [v11 indexOfItemIdentifier:v10];

  return v12;
}

- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)a3
{
  v6 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v7 = [v6 numberOfItems];

  if (v7 <= a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"finalGlobalIndex < self.finalSnapshot.numberOfItems"}];
  }

  v8 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v9 = [v8 itemIdentifiers];
  v10 = [v9 objectAtIndexedSubscript:a3];

  v11 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v12 = [v11 indexOfItemIdentifier:v10];

  return v12;
}

- (id)finalIndexPathForInitialIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 2)
  {
    v6 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
    v7 = [v6 identifierForIndexPath:v4];

    if (v7)
    {
      v8 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
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
    v6 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
    v7 = [v6 identifierForIndexPath:v4];

    if (v7)
    {
      v8 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
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
  v6 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"initialSectionIndex < self.initialSnapshot.sectionIdentifiers.count"}];
  }

  v9 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v10 = [v9 sectionIdentifiers];
  v11 = [v10 objectAtIndexedSubscript:a3];

  v12 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v13 = [v12 indexOfSectionIdentifier:v11];

  return v13;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)a3
{
  v6 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIDiffableDataSourceTransaction.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"finalSectionIndex < self.finalSnapshot.sectionIdentifiers.count"}];
  }

  v9 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v10 = [v9 sectionIdentifiers];
  v11 = [v10 objectAtIndexedSubscript:a3];

  v12 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v13 = [v12 indexOfSectionIdentifier:v11];

  return v13;
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3
{
  v4 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
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
  v4 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
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
  v2 = [(_UIDiffableDataSourceTransaction *)self initialSnapshot];
  v3 = [v2 numberOfSections];

  return v3;
}

- (int64_t)finalSectionCount
{
  v2 = [(_UIDiffableDataSourceTransaction *)self finalSnapshot];
  v3 = [v2 numberOfSections];

  return v3;
}

@end