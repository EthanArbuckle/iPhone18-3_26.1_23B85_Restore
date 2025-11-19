@interface PXSectionedDataSourceEnumerator
- (PXSectionedDataSourceEnumerator)init;
- (PXSectionedDataSourceEnumerator)initWithDataSource:(id)a3 indexPathSet:(id)a4 enumeratedTypes:(unint64_t)a5;
- (PXSimpleIndexPath)_nextItemIndexPathFromIndexPath:(SEL)a3;
- (PXSimpleIndexPath)_nextSectionIndexPathFromIndexPath:(SEL)a3;
- (id)copyWithZone:(_NSZone *)a3;
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
  v3 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  v4 = [(PXSectionedDataSourceEnumerator *)self dataSource];
  v5 = [v4 identifier];
  if (v3)
  {
    [v3 firstItemIndexPathForDataSourceIdentifier:v5];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  if (v10)
  {
    v6 = [(PXSectionedDataSourceEnumerator *)self dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v7 = [v6 objectAtIndexPath:v9];
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
      v8 = [(PXSectionedDataSourceEnumerator *)self dataSource];
      v13 = v6;
      v14 = v16;
      v15 = v17;
      v9 = [v8 objectAtIndexPath:&v13];

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
        v4 = [(PXSectionedDataSourceEnumerator *)self enumeratedTypes];
        v5 = 2;
        if ((v4 & 4) == 0)
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

- (PXSimpleIndexPath)_nextItemIndexPathFromIndexPath:(SEL)a3
{
  *retstr = *PXSimpleIndexPathNull;
  v7 = [(PXSectionedDataSourceEnumerator *)self dataSource];
  v8 = [v7 identifier];

  v9 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  v22 = [v9 sectionsWithItemsForDataSourceIdentifier:v8];

  if (a4->dataSourceIdentifier)
  {
    section = a4->section;
    item = a4->item;
    v12 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
    v13 = [v12 itemIndexSetForDataSourceIdentifier:v8 section:section];

    v14 = [v13 indexGreaterThanIndex:item];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v22 indexGreaterThanIndex:section];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL || (section = v15, -[PXSectionedDataSourceEnumerator indexPathSet](self, "indexPathSet"), v16 = objc_claimAutoreleasedReturnValue(), [v16 itemIndexSetForDataSourceIdentifier:v8 section:section], v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
      {

        v19 = v22;
        goto LABEL_14;
      }

      v18 = [v17 firstIndex];

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

    v20 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
    v13 = [v20 itemIndexSetForDataSourceIdentifier:v8 section:section];

    v14 = [v13 firstIndex];
  }

  v18 = v14;
LABEL_10:

  v19 = v22;
  if (section != 0x7FFFFFFFFFFFFFFFLL && v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    retstr->dataSourceIdentifier = v8;
    retstr->section = section;
    retstr->item = v18;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_14:

  return result;
}

- (PXSimpleIndexPath)_nextSectionIndexPathFromIndexPath:(SEL)a3
{
  *retstr = *PXSimpleIndexPathNull;
  v7 = [(PXSectionedDataSourceEnumerator *)self dataSource];
  v8 = [v7 identifier];

  v9 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  v14 = [v9 sectionIndexSetForDataSourceIdentifier:v8];

  if (a4->dataSourceIdentifier)
  {
    v11 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

    v10 = [v14 indexGreaterThanIndex:a4->section];
  }

  else
  {
    v11 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

    v10 = [v14 firstIndex];
  }

  v11 = v14;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    retstr->dataSourceIdentifier = v8;
    retstr->section = v10;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    *&retstr->item = vnegq_f64(v12);
  }

LABEL_8:

  return MEMORY[0x1EEE66BB8](v10, v11);
}

- (unint64_t)count
{
  cachedCount = self->_cachedCount;
  if (!cachedCount)
  {
    if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 1) != 0)
    {
      v5 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
      v4 = [v5 sectionCount];
    }

    else
    {
      v4 = 0;
    }

    if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 2) != 0)
    {
      v6 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
      v4 += [v6 itemCount];
    }

    if (([(PXSectionedDataSourceEnumerator *)self enumeratedTypes]& 4) != 0)
    {
      v7 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
      v4 += [v7 subitemCount];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXSectionedDataSourceEnumerator alloc];
  v5 = [(PXSectionedDataSourceEnumerator *)self dataSource];
  v6 = [(PXSectionedDataSourceEnumerator *)self indexPathSet];
  v7 = [(PXSectionedDataSourceEnumerator *)v4 initWithDataSource:v5 indexPathSet:v6 enumeratedTypes:[(PXSectionedDataSourceEnumerator *)self enumeratedTypes]];

  return v7;
}

- (PXSectionedDataSourceEnumerator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSourceEnumerator.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXSectionedDataSourceEnumerator init]"}];

  abort();
}

- (PXSectionedDataSourceEnumerator)initWithDataSource:(id)a3 indexPathSet:(id)a4 enumeratedTypes:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PXSectionedDataSourceEnumerator;
  v11 = [(PXSectionedDataSourceEnumerator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, a3);
    v13 = [v10 copy];
    indexPathSet = v12->_indexPathSet;
    v12->_indexPathSet = v13;

    v12->_enumeratedTypes = a5;
    [(PXSectionedDataSourceEnumerator *)v12 _setToInitialState];
  }

  return v12;
}

@end