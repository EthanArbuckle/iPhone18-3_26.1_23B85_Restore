@interface _UIDiffableSectionBoundaryMoveDetector
- (_UIDiffableSectionBoundaryMoveDetector)initWithItemDiffer:(id)differ beforeDataSourceState:(id)state afterDataSourceState:(id)sourceState;
- (id)_computeMovePairsFoundation;
@end

@implementation _UIDiffableSectionBoundaryMoveDetector

- (id)_computeMovePairsFoundation
{
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_beforeState dataSourceSnapshot];
  dataSourceSnapshot2 = [(_UIDiffableDataSourceState *)self->_afterState dataSourceSnapshot];
  hasChanges = [(_UIIdentifierDiffer *)self->_differ hasChanges];
  numberOfSections = [dataSourceSnapshot numberOfSections];
  if (numberOfSections == [dataSourceSnapshot2 numberOfSections] && objc_msgSend(dataSourceSnapshot, "isEqual:", dataSourceSnapshot2))
  {
    sections = [(_UIDiffableDataSourceState *)self->_beforeState sections];
    sections2 = [(_UIDiffableDataSourceState *)self->_afterState sections];
    v8 = [sections isEqualToOrderedSet:sections2];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  if ([dataSourceSnapshot2 numberOfItems] && ((hasChanges | v9) & 1) != 0)
  {
    identifiers = [(_UIDiffableDataSourceState *)self->_beforeState identifiers];
    identifiers2 = [(_UIDiffableDataSourceState *)self->_afterState identifiers];
    sections3 = [(_UIDiffableDataSourceState *)self->_beforeState sections];
    sections4 = [(_UIDiffableDataSourceState *)self->_afterState sections];
    numberOfItems = [dataSourceSnapshot numberOfItems];
    if (numberOfItems != [identifiers count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot.numberOfItems == initialIdentifiers.count"}];
    }

    numberOfSections2 = [dataSourceSnapshot numberOfSections];
    if (numberOfSections2 != [sections3 count])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"initialSnapshot.numberOfSections == initialSections.count"}];
    }

    numberOfItems2 = [dataSourceSnapshot2 numberOfItems];
    if (numberOfItems2 != [identifiers2 count])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"finalSnapshot.numberOfItems == finalIdentifiers.count"}];
    }

    numberOfSections3 = [dataSourceSnapshot2 numberOfSections];
    if (numberOfSections3 != [sections4 count])
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIDiffableSectionBoundaryMoveDetector.mm" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"finalSnapshot.numberOfSections == finalSections.count"}];
    }

    v15 = [identifiers2 count];
    numberOfSections4 = [dataSourceSnapshot numberOfSections];
    numberOfSections5 = [dataSourceSnapshot2 numberOfSections];
    __src = 0;
    v55 = 0;
    v56 = 0;
    std::vector<long>::reserve(&__src, v15);
    if (numberOfSections5 >= 1)
    {
      for (i = 0; i != numberOfSections5; ++i)
      {
        v18 = [dataSourceSnapshot2 rangeForSection:i];
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
    if (numberOfSections4 >= 1)
    {
      for (j = 0; j != numberOfSections4; ++j)
      {
        v33 = [dataSourceSnapshot rangeForSection:j];
        v35 = v34;
        if (v33 < v33 + v34)
        {
          do
          {
            v36 = [identifiers objectAtIndexedSubscript:v33];
            v37 = [(_UIDiffableDataSourceState *)self->_afterState indexOfItemIdentifier:v36];
            if (v37 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v38 = *(__src + v37);
              v39 = [sections3 objectAtIndexedSubscript:j];
              v40 = [sections4 objectAtIndexedSubscript:v38];
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

- (_UIDiffableSectionBoundaryMoveDetector)initWithItemDiffer:(id)differ beforeDataSourceState:(id)state afterDataSourceState:(id)sourceState
{
  differCopy = differ;
  stateCopy = state;
  sourceStateCopy = sourceState;
  v17.receiver = self;
  v17.super_class = _UIDiffableSectionBoundaryMoveDetector;
  v12 = [(_UIDiffableSectionBoundaryMoveDetector *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_differ, differ);
    objc_storeStrong(&v13->_beforeState, state);
    objc_storeStrong(&v13->_afterState, sourceState);
    _computeMovePairsFoundation = [(_UIDiffableSectionBoundaryMoveDetector *)v13 _computeMovePairsFoundation];
    movePairs = v13->_movePairs;
    v13->_movePairs = _computeMovePairsFoundation;
  }

  return v13;
}

@end