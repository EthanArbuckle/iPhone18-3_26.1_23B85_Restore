@interface _UIDiffableSectionBoundaryMoveDetector
- (_UIDiffableSectionBoundaryMoveDetector)initWithItemDiffer:(id)a3 beforeDataSourceState:(id)a4 afterDataSourceState:(id)a5;
- (id)_computeMovePairsFoundation;
@end

@implementation _UIDiffableSectionBoundaryMoveDetector

- (id)_computeMovePairsFoundation
{
  v49 = [(_UIDiffableDataSourceState *)self->_beforeState dataSourceSnapshot];
  v50 = [(_UIDiffableDataSourceState *)self->_afterState dataSourceSnapshot];
  v4 = [(_UIIdentifierDiffer *)self->_differ hasChanges];
  v5 = [v49 numberOfSections];
  if (v5 == [v50 numberOfSections] && objc_msgSend(v49, "isEqual:", v50))
  {
    v6 = [(_UIDiffableDataSourceState *)self->_beforeState sections];
    v7 = [(_UIDiffableDataSourceState *)self->_afterState sections];
    v8 = [v6 isEqualToOrderedSet:v7];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  if ([v50 numberOfItems] && ((v4 | v9) & 1) != 0)
  {
    v10 = [(_UIDiffableDataSourceState *)self->_beforeState identifiers];
    v47 = [(_UIDiffableDataSourceState *)self->_afterState identifiers];
    v53 = [(_UIDiffableDataSourceState *)self->_beforeState sections];
    v52 = [(_UIDiffableDataSourceState *)self->_afterState sections];
    v11 = [v49 numberOfItems];
    if (v11 != [v10 count])
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot.numberOfItems == initialIdentifiers.count"}];
    }

    v12 = [v49 numberOfSections];
    if (v12 != [v53 count])
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      [v44 handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot.numberOfSections == initialSections.count"}];
    }

    v13 = [v50 numberOfItems];
    if (v13 != [v47 count])
    {
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      [v45 handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"finalSnapshot.numberOfItems == finalIdentifiers.count"}];
    }

    v14 = [v50 numberOfSections];
    if (v14 != [v52 count])
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      [v46 handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"finalSnapshot.numberOfSections == finalSections.count"}];
    }

    v15 = [v47 count];
    v48 = [v49 numberOfSections];
    v16 = [v50 numberOfSections];
    __src = 0;
    v55 = 0;
    v56 = 0;
    std::vector<long>::reserve(&__src, v15);
    if (v16 >= 1)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = [v50 rangeForSection:i];
        v20 = v19;
        if (v18 < v18 + v19)
        {
          v21 = v55;
          do
          {
            if (v21 >= v56)
            {
              v22 = __src;
              v23 = v21 - __src;
              v24 = (v21 - __src) >> 3;
              v25 = v24 + 1;
              if ((v24 + 1) >> 61)
              {
                std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
              }

              v26 = v56 - __src;
              if ((v56 - __src) >> 2 > v25)
              {
                v25 = v26 >> 2;
              }

              if (v26 >= 0x7FFFFFFFFFFFFFF8)
              {
                v27 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v27 = v25;
              }

              if (v27)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(&__src, v27);
              }

              v28 = (v21 - __src) >> 3;
              v29 = (8 * v24);
              v30 = (8 * v24 - 8 * v28);
              *v29 = i;
              v21 = (v29 + 1);
              memcpy(v30, v22, v23);
              v31 = __src;
              __src = v30;
              v55 = v21;
              v56 = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *v21 = i;
              v21 += 8;
            }

            v55 = v21;
            --v20;
          }

          while (v20);
        }
      }
    }

    v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (v48 >= 1)
    {
      for (j = 0; j != v48; ++j)
      {
        v33 = [v49 rangeForSection:j];
        v35 = v34;
        if (v33 < v33 + v34)
        {
          do
          {
            v36 = [v10 objectAtIndexedSubscript:v33];
            v37 = [(_UIDiffableDataSourceState *)self->_afterState indexOfItemIdentifier:v36];
            if (v37 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v38 = *(__src + v37);
              v39 = [v53 objectAtIndexedSubscript:j];
              v40 = [v52 objectAtIndexedSubscript:v38];
              if (([v39 isEqual:v40] & 1) == 0)
              {
                v41 = [[_UIIdentifierDifferMovePair alloc] initWithFromIndex:v33 toIndex:v37];
                [v51 addObject:v41];
              }
            }

            ++v33;
            --v35;
          }

          while (v35);
        }
      }
    }

    if (__src)
    {
      v55 = __src;
      operator delete(__src);
    }
  }

  else
  {
    self->_didShortCircuit = 1;
    v51 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v51;
}

- (_UIDiffableSectionBoundaryMoveDetector)initWithItemDiffer:(id)a3 beforeDataSourceState:(id)a4 afterDataSourceState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _UIDiffableSectionBoundaryMoveDetector;
  v12 = [(_UIDiffableSectionBoundaryMoveDetector *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_differ, a3);
    objc_storeStrong(&v13->_beforeState, a4);
    objc_storeStrong(&v13->_afterState, a5);
    v14 = [(_UIDiffableSectionBoundaryMoveDetector *)v13 _computeMovePairsFoundation];
    movePairs = v13->_movePairs;
    v13->_movePairs = v14;
  }

  return v13;
}

@end