@interface PXSectionedDataSourceEnumerator
- (PXSectionedDataSourceEnumerator)init;
- (PXSectionedDataSourceEnumerator)initWithDataSource:(id)source indexPathSet:(id)set enumeratedTypes:(unint64_t)types;
- (PXSimpleIndexPath)_nextItemIndexPathFromIndexPath:(SEL)path;
- (PXSimpleIndexPath)_nextSectionIndexPathFromIndexPath:(SEL)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstObject;
- (id)nextObject;
- (unint64_t)count;
- (void)_setToInitialState;
- (void)_transitionToNextPhase;
@end

@implementation PXSectionedDataSourceEnumerator

- (id)firstObject
{
  v10 = 0u;
  v11 = 0u;
  indexPathSet = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  dataSource = [(PXSectionedDataSourceEnumerator *)self dataSource];
  identifier = [dataSource identifier];
  if (indexPathSet)
  {
    [indexPathSet firstItemIndexPathForDataSourceIdentifier:identifier];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  if (v10)
  {
    dataSource2 = [(PXSectionedDataSourceEnumerator *)self dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v7 = [dataSource2 objectAtIndexPath:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nextObject
{
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = *&PXSimpleIndexPathNull[8];
  while (1)
  {
    currentPhase = self->_currentPhase;
    if (currentPhase > 1)
    {
      break;
    }

    if (currentPhase)
    {
      if (currentPhase != 1)
      {
        goto LABEL_13;
      }

      v4 = *&self->_lastIndexPath.item;
      v11 = *&self->_lastIndexPath.dataSourceIdentifier;
      v12 = v4;
      [(PXSectionedDataSourceEnumerator *)self _nextItemIndexPathFromIndexPath:&v11];
      goto LABEL_8;
    }

    v7 = *&self->_lastIndexPath.item;
    v11 = *&self->_lastIndexPath.dataSourceIdentifier;
    v12 = v7;
    [(PXSectionedDataSourceEnumerator *)self _nextSectionIndexPathFromIndexPath:&v11];
    v6 = v13;
    v16 = v14;
    v17 = v15;
    if (v13)
    {
LABEL_14:
      dataSource = [(PXSectionedDataSourceEnumerator *)self dataSource];
      v13 = v6;
      v14 = v16;
      v15 = v17;
      v9 = [dataSource objectAtIndexPath:&v13];

      goto LABEL_16;
    }

LABEL_13:
    [(PXSectionedDataSourceEnumerator *)self _transitionToNextPhase];
  }

  if (currentPhase == 2)
  {
    v5 = *&self->_lastIndexPath.item;
    v11 = *&self->_lastIndexPath.dataSourceIdentifier;
    v12 = v5;
    [(PXSectionedDataSourceEnumerator *)self _nextSubitemIndexPathFromIndexPath:&v11];
LABEL_8:
    v6 = v13;
    v16 = v14;
    v17 = v15;
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (currentPhase != 3)
  {
    goto LABEL_13;
  }

  v6 = 0;
  v9 = 0;
LABEL_16:
  self->_lastIndexPath.dataSourceIdentifier = v6;
  *&self->_lastIndexPath.section = v16;
  self->_lastIndexPath.subitem = v17;

  return v9;
}

- (void)_transitionToNextPhase
{
  currentPhase = self->_currentPhase;
  switch(currentPhase)
  {
    case 2:
      v5 = 3;
      goto LABEL_10;
    case 1:
      goto LABEL_5;
    case 0:
      if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 2) == 0)
      {
LABEL_5:
        enumeratedTypes = [(PXSectionedDataSourceEnumerator *)self enumeratedTypes];
        v5 = 2;
        if ((enumeratedTypes & 4) == 0)
        {
          v5 = 3;
        }

        goto LABEL_10;
      }

      v5 = 1;
LABEL_10:
      self->_currentPhase = v5;
      break;
  }

  *&self->_lastIndexPath.dataSourceIdentifier = *PXSimpleIndexPathNull;
  *&self->_lastIndexPath.item = *&PXSimpleIndexPathNull[16];
}

- (PXSimpleIndexPath)_nextItemIndexPathFromIndexPath:(SEL)path
{
  *retstr = *PXSimpleIndexPathNull;
  dataSource = [(PXSectionedDataSourceEnumerator *)self dataSource];
  identifier = [dataSource identifier];

  indexPathSet = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  v22 = [indexPathSet sectionsWithItemsForDataSourceIdentifier:identifier];

  if (a4->dataSourceIdentifier)
  {
    section = a4->section;
    item = a4->item;
    indexPathSet2 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
    v13 = [indexPathSet2 itemIndexSetForDataSourceIdentifier:identifier section:section];

    firstIndex2 = [v13 indexGreaterThanIndex:item];
    if (firstIndex2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v22 indexGreaterThanIndex:section];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL || (section = v15, -[PXSectionedDataSourceEnumerator indexPathSet](self, "indexPathSet"), v16 = objc_claimAutoreleasedReturnValue(), [v16 itemIndexSetForDataSourceIdentifier:identifier section:section], v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
      {

        v19 = v22;
        goto LABEL_14;
      }

      firstIndex = [v17 firstIndex];

      goto LABEL_10;
    }
  }

  else
  {
    v19 = v22;
    if (!v22)
    {
      goto LABEL_14;
    }

    section = [v22 firstIndex];
    v19 = v22;
    if (section == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    indexPathSet3 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
    v13 = [indexPathSet3 itemIndexSetForDataSourceIdentifier:identifier section:section];

    firstIndex2 = [v13 firstIndex];
  }

  firstIndex = firstIndex2;
LABEL_10:

  v19 = v22;
  if (section != 0x7FFFFFFFFFFFFFFFLL && firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    retstr->dataSourceIdentifier = identifier;
    retstr->section = section;
    retstr->item = firstIndex;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_14:

  return result;
}

- (PXSimpleIndexPath)_nextSectionIndexPathFromIndexPath:(SEL)path
{
  *retstr = *PXSimpleIndexPathNull;
  dataSource = [(PXSectionedDataSourceEnumerator *)self dataSource];
  identifier = [dataSource identifier];

  indexPathSet = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  v14 = [indexPathSet sectionIndexSetForDataSourceIdentifier:identifier];

  if (a4->dataSourceIdentifier)
  {
    v11 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

    firstIndex = [v14 indexGreaterThanIndex:a4->section];
  }

  else
  {
    v11 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

    firstIndex = [v14 firstIndex];
  }

  v11 = v14;
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    retstr->dataSourceIdentifier = identifier;
    retstr->section = firstIndex;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    *&retstr->item = vnegq_f64(v12);
  }

LABEL_8:

  return MEMORY[0x1EEE66BB8](firstIndex, v11);
}

- (unint64_t)count
{
  cachedCount = self->_cachedCount;
  if (!cachedCount)
  {
    if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 1) != 0)
    {
      indexPathSet = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
      sectionCount = [indexPathSet sectionCount];
    }

    else
    {
      sectionCount = 0;
    }

    if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 2) != 0)
    {
      indexPathSet2 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
      sectionCount += [indexPathSet2 itemCount];
    }

    if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 4) != 0)
    {
      indexPathSet3 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
      sectionCount += [indexPathSet3 subitemCount];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:sectionCount];
    v9 = self->_cachedCount;
    self->_cachedCount = v8;

    cachedCount = self->_cachedCount;
  }

  return [(NSNumber *)cachedCount unsignedIntegerValue];
}

- (void)_setToInitialState
{
  if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 1) != 0)
  {
    self->_currentPhase = 0;
  }

  else
  {
    if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 2) != 0)
    {
      v3 = 1;
    }

    else if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 4) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    self->_currentPhase = v3;
  }

  *&self->_lastIndexPath.dataSourceIdentifier = *PXSimpleIndexPathNull;
  *&self->_lastIndexPath.item = *&PXSimpleIndexPathNull[16];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXSectionedDataSourceEnumerator alloc];
  dataSource = [(PXSectionedDataSourceEnumerator *)self dataSource];
  indexPathSet = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  v7 = [(PXSectionedDataSourceEnumerator *)v4 initWithDataSource:dataSource indexPathSet:indexPathSet enumeratedTypes:[(PXSectionedDataSourceEnumerator *)self enumeratedTypes]];

  return v7;
}

- (PXSectionedDataSourceEnumerator)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSourceEnumerator.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXSectionedDataSourceEnumerator init]"}];

  abort();
}

- (PXSectionedDataSourceEnumerator)initWithDataSource:(id)source indexPathSet:(id)set enumeratedTypes:(unint64_t)types
{
  sourceCopy = source;
  setCopy = set;
  v16.receiver = self;
  v16.super_class = PXSectionedDataSourceEnumerator;
  v11 = [(PXSectionedDataSourceEnumerator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, source);
    v13 = [setCopy copy];
    indexPathSet = v12->_indexPathSet;
    v12->_indexPathSet = v13;

    v12->_enumeratedTypes = types;
    [(PXSectionedDataSourceEnumerator *)v12 _setToInitialState];
  }

  return v12;
}

@end