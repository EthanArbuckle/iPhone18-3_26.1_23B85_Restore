@interface PXGadgetDataSource
- (BOOL)hasNoContentGadget;
- (NSString)publiclySafeDescription;
- (PXGadgetDataSource)initWithGadgetSections:(id)sections;
- (PXSimpleIndexPath)indexPathForGadget:(SEL)gadget;
- (PXSimpleIndexPath)indexPathForGadgetSectionWithIdentifier:(SEL)identifier;
- (id)_gadgetsMatchingPredicate:(id)predicate;
- (id)gadgetAtIndexPath:(PXSimpleIndexPath *)path;
- (id)gadgetSectionAtIndexPath:(PXSimpleIndexPath *)path;
- (id)gadgetSectionWithIdentifier:(id)identifier;
- (id)gadgetWithId:(id)id;
- (id)gadgetsOfClass:(Class)class;
- (id)gadgetsOfType:(unint64_t)type;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (void)_enumerateGadgetSectionsUsingBlock:(id)block;
- (void)_enumerateGadgetsInSection:(id)section atSectionIndex:(unint64_t)index usingBlock:(id)block;
- (void)enumerateGadgetSectionsUsingBlock:(id)block;
- (void)enumerateGadgetsUsingBlock:(id)block;
@end

@implementation PXGadgetDataSource

- (void)_enumerateGadgetsInSection:(id)section atSectionIndex:(unint64_t)index usingBlock:(id)block
{
  blockCopy = block;
  gadgets = [section gadgets];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PXGadgetDataSource__enumerateGadgetsInSection_atSectionIndex_usingBlock___block_invoke;
  v10[3] = &unk_1E773CBD8;
  v11 = blockCopy;
  indexCopy = index;
  v9 = blockCopy;
  [gadgets enumerateObjectsUsingBlock:v10];
}

uint64_t __75__PXGadgetDataSource__enumerateGadgetsInSection_atSectionIndex_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  result = (*(*(a1 + 32) + 16))(*(a1 + 32), a2, *(a1 + 40), a3, &v6);
  if (v6 == 1)
  {
    *a4 = v6;
  }

  return result;
}

- (void)_enumerateGadgetSectionsUsingBlock:(id)block
{
  blockCopy = block;
  gadgetSections = self->_gadgetSections;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PXGadgetDataSource__enumerateGadgetSectionsUsingBlock___block_invoke;
  v7[3] = &unk_1E773CB60;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)gadgetSections enumerateObjectsUsingBlock:v7];
}

- (NSString)publiclySafeDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(PXGadgetDataSource *)self identifier];
  numberOfSections = [(PXGadgetDataSource *)self numberOfSections];
  totalNumberOfItems = [(PXGadgetDataSource *)self totalNumberOfItems];
  allSectionIndexPaths = [(PXGadgetDataSource *)self allSectionIndexPaths];
  allItemIndexPaths = [(PXGadgetDataSource *)self allItemIndexPaths];
  v9 = [v3 stringWithFormat:@"identifier: %ld, numberOfSections: %ld, totalNumberOfItems: %ld, allSectionIndexPaths: %@, allItemIndexPaths: %@", identifier, numberOfSections, totalNumberOfItems, allSectionIndexPaths, allItemIndexPaths];

  return v9;
}

- (void)enumerateGadgetsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXGadgetDataSource_enumerateGadgetsUsingBlock___block_invoke;
  v8[3] = &unk_1E773CBB0;
  v8[4] = self;
  v9 = blockCopy;
  v6 = blockCopy;
  [(PXGadgetDataSource *)self _enumerateGadgetSectionsUsingBlock:v8];
}

void __49__PXGadgetDataSource_enumerateGadgetsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXGadgetDataSource_enumerateGadgetsUsingBlock___block_invoke_2;
  v8[3] = &unk_1E773CB88;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4;
  [v7 _enumerateGadgetsInSection:a2 atSectionIndex:a3 usingBlock:v8];
}

- (void)enumerateGadgetSectionsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXGadgetDataSource_enumerateGadgetSectionsUsingBlock___block_invoke;
  v8[3] = &unk_1E773CB60;
  v9 = blockCopy;
  v6 = blockCopy;
  [(PXGadgetDataSource *)self _enumerateGadgetSectionsUsingBlock:v8];
}

- (BOOL)hasNoContentGadget
{
  firstObject = [(NSArray *)self->_gadgetSections firstObject];
  gadgets = [firstObject gadgets];
  firstObject2 = [gadgets firstObject];

  if (firstObject2)
  {
    v5 = [firstObject2 gadgetType] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)gadgetWithId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"gadgetId"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__137437;
  v17 = __Block_byref_object_dispose__137438;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__PXGadgetDataSource_gadgetWithId___block_invoke;
  v10[3] = &unk_1E773CB38;
  v6 = idCopy;
  v11 = v6;
  v12 = &v13;
  [(PXGadgetDataSource *)self enumerateGadgetsUsingBlock:v10];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __35__PXGadgetDataSource_gadgetWithId___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v8 uniqueGadgetIdentifier];
    v7 = [v6 isEqualToString:*(a1 + 32)];

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

- (id)gadgetsOfClass:(Class)class
{
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"gadgetClass"}];
  }

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self isKindOfClass: %@", class];
  v6 = [(PXGadgetDataSource *)self _gadgetsMatchingPredicate:v5];

  return v6;
}

- (id)gadgetsOfType:(unint64_t)type
{
  type = [MEMORY[0x1E696AE18] predicateWithFormat:@"gadgetType == %d", type];
  v5 = [(PXGadgetDataSource *)self _gadgetsMatchingPredicate:type];

  return v5;
}

- (id)_gadgetsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__PXGadgetDataSource__gadgetsMatchingPredicate___block_invoke;
  v11[3] = &unk_1E773CB10;
  v12 = predicateCopy;
  v6 = v5;
  v13 = v6;
  v7 = predicateCopy;
  [(PXGadgetDataSource *)self enumerateGadgetSectionsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __48__PXGadgetDataSource__gadgetsMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 gadgets];
  v4 = [v3 filteredArrayUsingPredicate:*(a1 + 32)];

  [*(a1 + 40) addObjectsFromArray:v4];
}

- (PXSimpleIndexPath)indexPathForGadget:(SEL)gadget
{
  v7 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:gadget object:self file:@"PXGadgetDataSource.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"gadget"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_1A561E057;
  v8 = *(off_1E7722228 + 1);
  v20 = *off_1E7722228;
  v21 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__PXGadgetDataSource_indexPathForGadget___block_invoke;
  v13[3] = &unk_1E773CAE8;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [(PXGadgetDataSource *)self _enumerateGadgetSectionsUsingBlock:v13];
  v10 = *(v17 + 3);
  *&retstr->dataSourceIdentifier = *(v17 + 2);
  *&retstr->item = v10;

  _Block_object_dispose(&v16, 8);
  return result;
}

void __41__PXGadgetDataSource_indexPathForGadget___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__PXGadgetDataSource_indexPathForGadget___block_invoke_2;
  v10[3] = &unk_1E773CAC0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v11 = v7;
  v12 = v9;
  v13 = v8;
  [v6 _enumerateGadgetsInSection:a2 atSectionIndex:a3 usingBlock:v10];
}

uint64_t __41__PXGadgetDataSource_indexPathForGadget___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    v8 = result;
    result = [*(result + 40) identifier];
    v9 = *(*(v8 + 48) + 8);
    v9[4] = result;
    v9[5] = a3;
    v9[6] = a4;
    v9[7] = 0x7FFFFFFFFFFFFFFFLL;
    *a5 = 1;
  }

  return result;
}

- (id)gadgetAtIndexPath:(PXSimpleIndexPath *)path
{
  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  if ([(PXGadgetDataSource *)self identifier]!= path->dataSourceIdentifier)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"self.identifier == indexPath.dataSourceIdentifier"}];
  }

  v8 = [(NSArray *)self->_gadgetSections objectAtIndexedSubscript:path->section];
  gadgets = [v8 gadgets];
  v10 = [gadgets objectAtIndexedSubscript:path->item];

  return v10;
}

- (PXSimpleIndexPath)indexPathForGadgetSectionWithIdentifier:(SEL)identifier
{
  v7 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:identifier object:self file:@"PXGadgetDataSource.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = &unk_1A561E057;
  v8 = *(off_1E7722228 + 1);
  v22 = *off_1E7722228;
  v23 = v8;
  gadgetSections = self->_gadgetSections;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__PXGadgetDataSource_indexPathForGadgetSectionWithIdentifier___block_invoke;
  v14[3] = &unk_1E773CAE8;
  v10 = v7;
  selfCopy = self;
  v17 = &v18;
  v15 = v10;
  [(NSArray *)gadgetSections enumerateObjectsUsingBlock:v14];
  v11 = *(v19 + 3);
  *&retstr->dataSourceIdentifier = *(v19 + 2);
  *&retstr->item = v11;

  _Block_object_dispose(&v18, 8);
  return result;
}

float64x2_t __62__PXGadgetDataSource_indexPathForGadgetSectionWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    v10 = [*(a1 + 40) identifier];
    v11 = *(*(a1 + 48) + 8);
    *(v11 + 32) = v10;
    *(v11 + 40) = a3;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    result = vnegq_f64(v12);
    *(v11 + 48) = result;
    *a4 = 1;
  }

  return result;
}

- (id)gadgetSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v10 = 0u;
  v11 = 0u;
  [(PXGadgetDataSource *)self indexPathForGadgetSectionWithIdentifier:identifierCopy];
  if (*off_1E7721F68)
  {
    v9[0] = v10;
    v9[1] = v11;
    v6 = [(PXGadgetDataSource *)self gadgetSectionAtIndexPath:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)gadgetSectionAtIndexPath:(PXSimpleIndexPath *)path
{
  if (path->dataSourceIdentifier == *off_1E7721F68 || path->section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];
  }

  if ([(PXGadgetDataSource *)self identifier]!= path->dataSourceIdentifier)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"self.identifier == indexPath.dataSourceIdentifier"}];
  }

  gadgetSections = self->_gadgetSections;
  section = path->section;

  return [(NSArray *)gadgetSections objectAtIndexedSubscript:section];
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXGadgetDataSource *)self gadgetAtIndexPath:v6];

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  v3 = [(NSArray *)self->_gadgetSections objectAtIndexedSubscript:section];
  gadgets = [v3 gadgets];
  v5 = [gadgets count];

  return v5;
}

- (PXGadgetDataSource)initWithGadgetSections:(id)sections
{
  sectionsCopy = sections;
  v9.receiver = self;
  v9.super_class = PXGadgetDataSource;
  v6 = [(PXGadgetDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gadgetSections, sections);
  }

  return v7;
}

@end