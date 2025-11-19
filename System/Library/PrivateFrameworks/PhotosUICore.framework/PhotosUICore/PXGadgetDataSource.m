@interface PXGadgetDataSource
- (BOOL)hasNoContentGadget;
- (NSString)publiclySafeDescription;
- (PXGadgetDataSource)initWithGadgetSections:(id)a3;
- (PXSimpleIndexPath)indexPathForGadget:(SEL)a3;
- (PXSimpleIndexPath)indexPathForGadgetSectionWithIdentifier:(SEL)a3;
- (id)_gadgetsMatchingPredicate:(id)a3;
- (id)gadgetAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)gadgetSectionAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)gadgetSectionWithIdentifier:(id)a3;
- (id)gadgetWithId:(id)a3;
- (id)gadgetsOfClass:(Class)a3;
- (id)gadgetsOfType:(unint64_t)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (void)_enumerateGadgetSectionsUsingBlock:(id)a3;
- (void)_enumerateGadgetsInSection:(id)a3 atSectionIndex:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateGadgetSectionsUsingBlock:(id)a3;
- (void)enumerateGadgetsUsingBlock:(id)a3;
@end

@implementation PXGadgetDataSource

- (void)_enumerateGadgetsInSection:(id)a3 atSectionIndex:(unint64_t)a4 usingBlock:(id)a5
{
  v7 = a5;
  v8 = [a3 gadgets];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PXGadgetDataSource__enumerateGadgetsInSection_atSectionIndex_usingBlock___block_invoke;
  v10[3] = &unk_1E773CBD8;
  v11 = v7;
  v12 = a4;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v10];
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

- (void)_enumerateGadgetSectionsUsingBlock:(id)a3
{
  v4 = a3;
  gadgetSections = self->_gadgetSections;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PXGadgetDataSource__enumerateGadgetSectionsUsingBlock___block_invoke;
  v7[3] = &unk_1E773CB60;
  v8 = v4;
  v6 = v4;
  [(NSArray *)gadgetSections enumerateObjectsUsingBlock:v7];
}

- (NSString)publiclySafeDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXGadgetDataSource *)self identifier];
  v5 = [(PXGadgetDataSource *)self numberOfSections];
  v6 = [(PXGadgetDataSource *)self totalNumberOfItems];
  v7 = [(PXGadgetDataSource *)self allSectionIndexPaths];
  v8 = [(PXGadgetDataSource *)self allItemIndexPaths];
  v9 = [v3 stringWithFormat:@"identifier: %ld, numberOfSections: %ld, totalNumberOfItems: %ld, allSectionIndexPaths: %@, allItemIndexPaths: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (void)enumerateGadgetsUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXGadgetDataSource_enumerateGadgetsUsingBlock___block_invoke;
  v8[3] = &unk_1E773CBB0;
  v8[4] = self;
  v9 = v5;
  v6 = v5;
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

- (void)enumerateGadgetSectionsUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXGadgetDataSource_enumerateGadgetSectionsUsingBlock___block_invoke;
  v8[3] = &unk_1E773CB60;
  v9 = v5;
  v6 = v5;
  [(PXGadgetDataSource *)self _enumerateGadgetSectionsUsingBlock:v8];
}

- (BOOL)hasNoContentGadget
{
  v2 = [(NSArray *)self->_gadgetSections firstObject];
  v3 = [v2 gadgets];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 gadgetType] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)gadgetWithId:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"gadgetId"}];
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
  v6 = v5;
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

- (id)gadgetsOfClass:(Class)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"gadgetClass"}];
  }

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self isKindOfClass: %@", a3];
  v6 = [(PXGadgetDataSource *)self _gadgetsMatchingPredicate:v5];

  return v6;
}

- (id)gadgetsOfType:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"gadgetType == %d", a3];
  v5 = [(PXGadgetDataSource *)self _gadgetsMatchingPredicate:v4];

  return v5;
}

- (id)_gadgetsMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__PXGadgetDataSource__gadgetsMatchingPredicate___block_invoke;
  v11[3] = &unk_1E773CB10;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
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

- (PXSimpleIndexPath)indexPathForGadget:(SEL)a3
{
  v7 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a3 object:self file:@"PXGadgetDataSource.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"gadget"}];
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

- (id)gadgetAtIndexPath:(PXSimpleIndexPath *)a3
{
  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  if ([(PXGadgetDataSource *)self identifier]!= a3->dataSourceIdentifier)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"self.identifier == indexPath.dataSourceIdentifier"}];
  }

  v8 = [(NSArray *)self->_gadgetSections objectAtIndexedSubscript:a3->section];
  v9 = [v8 gadgets];
  v10 = [v9 objectAtIndexedSubscript:a3->item];

  return v10;
}

- (PXSimpleIndexPath)indexPathForGadgetSectionWithIdentifier:(SEL)a3
{
  v7 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a3 object:self file:@"PXGadgetDataSource.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
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
  v16 = self;
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

- (id)gadgetSectionWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v10 = 0u;
  v11 = 0u;
  [(PXGadgetDataSource *)self indexPathForGadgetSectionWithIdentifier:v5];
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

- (id)gadgetSectionAtIndexPath:(PXSimpleIndexPath *)a3
{
  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];
  }

  if ([(PXGadgetDataSource *)self identifier]!= a3->dataSourceIdentifier)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGadgetDataSource.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"self.identifier == indexPath.dataSourceIdentifier"}];
  }

  gadgetSections = self->_gadgetSections;
  section = a3->section;

  return [(NSArray *)gadgetSections objectAtIndexedSubscript:section];
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXGadgetDataSource *)self gadgetAtIndexPath:v6];

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_gadgetSections objectAtIndexedSubscript:a3];
  v4 = [v3 gadgets];
  v5 = [v4 count];

  return v5;
}

- (PXGadgetDataSource)initWithGadgetSections:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXGadgetDataSource;
  v6 = [(PXGadgetDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gadgetSections, a3);
  }

  return v7;
}

@end