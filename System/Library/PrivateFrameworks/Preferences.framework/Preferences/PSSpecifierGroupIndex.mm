@interface PSSpecifierGroupIndex
+ (id)groupIndexWithSpecifiers:(id)specifiers;
- (BOOL)getGroup:(unint64_t *)group row:(unint64_t *)row ofSpecifier:(id)specifier;
- (BOOL)getGroup:(unint64_t *)group row:(unint64_t *)row ofSpecifierAtIndex:(unint64_t)index;
- (BOOL)getGroup:(unint64_t *)group row:(unint64_t *)row ofSpecifierWithID:(id)d;
- (PSSpecifierGroupIndex)init;
- (PSSpecifierGroupIndex)initWithSpecifiers:(id)specifiers;
- (_NSRange)rangeOfSpecifiersInGroup:(id)group;
- (_NSRange)rangeOfSpecifiersInGroupAtGroupIndex:(unint64_t)index;
- (_NSRange)rangeOfSpecifiersInGroupWithID:(id)d;
- (id)_init;
- (id)_initForCopyWithGroupIndex:(id)index;
- (id)_synthesizedSpecifiersFromGroupIndex;
- (id)_tabStringOfDepth:(unint64_t)depth;
- (id)_ungroupedPrefixSpecifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)indexPathForSpecifier:(id)specifier;
- (id)indexPathForSpecifierAtIndex:(unint64_t)index forInsertion:(BOOL)insertion;
- (id)indexPathForSpecifierWithID:(id)d;
- (id)specifierAtIndexPath:(id)path;
- (id)specifiersInGroup:(id)group;
- (id)specifiersInGroupAtGroupIndex:(unint64_t)index;
- (id)specifiersInGroupWithID:(id)d;
- (unint64_t)_indexOfSpecifierInSection:(unint64_t)section row:(unint64_t)row forInsertion:(BOOL)insertion;
- (unint64_t)indexOfGroup:(id)group;
- (unint64_t)indexOfGroupAtGroupIndex:(unint64_t)index;
- (unint64_t)indexOfGroupWithID:(id)d;
- (unint64_t)indexOfSpecifierAtIndexPath:(id)path forInsertion:(BOOL)insertion;
- (unint64_t)numberOfRowsInGroupAtIndex:(unint64_t)index;
- (void)_appendDescriptionOfArray:(id)array toString:(id)string withTabLevel:(unint64_t)level;
- (void)_createGroupIndex;
- (void)_getSection:(unint64_t *)section row:(unint64_t *)row forSpecifierAtIndex:(unint64_t)index forInsertion:(BOOL)insertion allowGroupSpecifiers:(BOOL)specifiers;
- (void)_manuallyFindSection:(unint64_t *)section row:(unint64_t *)row forSpecifierAtIndex:(unint64_t)index;
- (void)performSpecifierUpdates:(id)updates;
- (void)performSpecifierUpdatesUsingBlock:(id)block;
- (void)performUpdateOperation:(id)operation forSpecifierUpdates:(id)updates;
- (void)reloadWithSpecifiers:(id)specifiers;
@end

@implementation PSSpecifierGroupIndex

+ (id)groupIndexWithSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v5 = [[self alloc] initWithSpecifiers:specifiersCopy];

  return v5;
}

- (PSSpecifierGroupIndex)init
{
  v4 = objc_opt_class();
  Name = sel_getName(a2);
  v6 = sel_getName(sel_initWithSpecifiers_);
  NSLog(&cfstr_SCalledShouldB.isa, v4, Name, v6);

  return 0;
}

- (id)_init
{
  v4.receiver = self;
  v4.super_class = PSSpecifierGroupIndex;
  v2 = [(PSSpecifierGroupIndex *)&v4 init];
  if (v2)
  {
    v2->_wantsDebugCallbacks = [objc_opt_class() _wantsDebuggingCallbacks];
  }

  return v2;
}

- (PSSpecifierGroupIndex)initWithSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  _init = [(PSSpecifierGroupIndex *)self _init];
  if (_init)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:specifiersCopy];
    specifiers = _init->_specifiers;
    _init->_specifiers = v6;

    v8 = objc_opt_new();
    groupSections = _init->_groupSections;
    _init->_groupSections = v8;

    v10 = objc_opt_new();
    groupSpecifiers = _init->_groupSpecifiers;
    _init->_groupSpecifiers = v10;

    [(PSSpecifierGroupIndex *)_init _createGroupIndex];
  }

  return _init;
}

- (id)_initForCopyWithGroupIndex:(id)index
{
  indexCopy = index;
  _init = [(PSSpecifierGroupIndex *)self _init];
  if (_init)
  {
    v6 = [indexCopy[1] mutableCopy];
    v7 = _init[1];
    _init[1] = v6;

    v8 = [indexCopy[2] mutableCopy];
    v9 = _init[2];
    _init[2] = v8;

    v10 = [indexCopy[3] mutableCopy];
    v11 = _init[3];
    _init[3] = v10;

    v12 = [indexCopy[4] mutableCopy];
    v13 = _init[4];
    _init[4] = v12;
  }

  return _init;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initForCopyWithGroupIndex:self];
}

- (void)_createGroupIndex
{
  [(NSMutableArray *)self->_groupSections removeAllObjects];
  [(NSMutableArray *)self->_groupSpecifiers removeAllObjects];
  [(NSMutableArray *)self->_ungroupedPrefixSpecifiers removeAllObjects];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__8;
  v6[4] = __Block_byref_object_dispose__8;
  v7 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  specifiers = self->_specifiers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__PSSpecifierGroupIndex__createGroupIndex__block_invoke;
  v4[3] = &unk_1E71DDCA8;
  v4[4] = self;
  v4[5] = v6;
  v4[6] = v5;
  [(NSMutableArray *)specifiers enumerateObjectsUsingBlock:v4];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
}

void __42__PSSpecifierGroupIndex__createGroupIndex__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 cellType];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    if (!v3)
    {
      if (v4)
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      v6 = [MEMORY[0x1E695DF70] array];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      [*(*(a1 + 32) + 16) addObject:*(*(*(a1 + 40) + 8) + 40)];
      v4 = *(*(a1 + 32) + 24);
    }

    [v4 addObject:v10];
  }

  else
  {
    v9 = [*(a1 + 32) _ungroupedPrefixSpecifiers];
    [v9 addObject:v10];
  }
}

- (id)_ungroupedPrefixSpecifiers
{
  ungroupedPrefixSpecifiers = self->_ungroupedPrefixSpecifiers;
  if (!ungroupedPrefixSpecifiers)
  {
    v4 = objc_opt_new();
    v5 = self->_ungroupedPrefixSpecifiers;
    self->_ungroupedPrefixSpecifiers = v4;

    ungroupedPrefixSpecifiers = self->_ungroupedPrefixSpecifiers;
  }

  return ungroupedPrefixSpecifiers;
}

- (void)reloadWithSpecifiers:(id)specifiers
{
  if (self->_specifiers != specifiers)
  {
    v5 = [specifiers mutableCopy];
    specifiers = self->_specifiers;
    self->_specifiers = v5;

    [(PSSpecifierGroupIndex *)self _createGroupIndex];
  }
}

- (void)performSpecifierUpdates:(id)updates
{
  updatesCopy = updates;
  v5 = [(NSMutableArray *)self->_specifiers count];
  originalSpecifiers = [updatesCopy originalSpecifiers];
  v7 = [originalSpecifiers count];

  if (v5 != v7)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    originalSpecifiers2 = [updatesCopy originalSpecifiers];
    [v8 raise:v9 format:{@"Attempting to apply specifier updates (%@) when the original specifier array of these updates (count: %lu) does not match the specifier array of %@ (count: %lu).", updatesCopy, objc_msgSend(originalSpecifiers2, "count"), self, -[NSMutableArray count](self->_specifiers, "count")}];
  }

  updates = [updatesCopy updates];
  v12 = [updates indexOfObjectPassingTest:&__block_literal_global_24];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__PSSpecifierGroupIndex_performSpecifierUpdates___block_invoke_2;
    v14[3] = &unk_1E71DDCF0;
    v14[4] = self;
    v15 = updatesCopy;
    [v15 enumerateUpdatesUsingBlock:v14];
  }

  else
  {
    currentSpecifiers = [updatesCopy currentSpecifiers];
    [(PSSpecifierGroupIndex *)self reloadWithSpecifiers:currentSpecifiers];
  }
}

BOOL __49__PSSpecifierGroupIndex_performSpecifierUpdates___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 specifier];
  v3 = [v2 cellType] == 0;

  return v3;
}

- (void)performUpdateOperation:(id)operation forSpecifierUpdates:(id)updates
{
  operationCopy = operation;
  updatesCopy = updates;
  if (self->_wantsDebugCallbacks)
  {
    [(PSSpecifierGroupIndex *)self _willPerformOperation:operationCopy forSpecifierUpdates:updatesCopy];
  }

  specifier = [operationCopy specifier];
  index = [operationCopy index];
  unsignedIntegerValue = [index unsignedIntegerValue];

  cellType = [specifier cellType];
  v12 = [operationCopy applyToArray:self->_specifiers];
  if (!cellType)
  {
    [(PSSpecifierGroupIndex *)self _createGroupIndex];
    goto LABEL_22;
  }

  if ((v12 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Group index %@ failed to apply update %@ to specifiers %@.\nThis should not be happening and is almost certainly due to the caller providing an inconsistent set of specifier updates.", self, operationCopy, self->_specifiers}];
    goto LABEL_22;
  }

  operation = [operationCopy operation];
  switch(operation)
  {
    case 4:
      if (unsignedIntegerValue < [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
      {
        [(NSMutableArray *)self->_ungroupedPrefixSpecifiers removeObjectAtIndex:unsignedIntegerValue];
        break;
      }

      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      [(PSSpecifierGroupIndex *)self getGroup:&v19 row:&v18 ofSpecifierAtIndex:unsignedIntegerValue];
      v16 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:v19];
      [v16 removeObjectAtIndex:v18];
LABEL_21:

      break;
    case 2:
      if (unsignedIntegerValue >= [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        [(PSSpecifierGroupIndex *)self _getSection:&v19 row:&v18 forSpecifierAtIndex:unsignedIntegerValue forInsertion:0];
        v14 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:v19];
        [v14 removeObjectAtIndex:v18];
      }

      else
      {
        [(NSMutableArray *)self->_ungroupedPrefixSpecifiers removeObjectAtIndex:unsignedIntegerValue];
      }

      toIndex = [operationCopy toIndex];
      unsignedIntegerValue = [toIndex unsignedIntegerValue];

      goto LABEL_17;
    case 1:
LABEL_17:
      if (unsignedIntegerValue <= [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
      {
        _ungroupedPrefixSpecifiers = [(PSSpecifierGroupIndex *)self _ungroupedPrefixSpecifiers];
        [_ungroupedPrefixSpecifiers insertObject:specifier atIndex:unsignedIntegerValue];

        break;
      }

      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      [(PSSpecifierGroupIndex *)self _getSection:&v19 row:&v18 forSpecifierAtIndex:unsignedIntegerValue forInsertion:1];
      v16 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:v19];
      [v16 insertObject:specifier atIndex:v18];
      goto LABEL_21;
  }

LABEL_22:
  if (self->_wantsDebugCallbacks)
  {
    [(PSSpecifierGroupIndex *)self _didPerformOperation:operationCopy forSpecifierUpdates:updatesCopy];
  }
}

- (void)performSpecifierUpdatesUsingBlock:(id)block
{
  if (block)
  {
    specifiers = self->_specifiers;
    blockCopy = block;
    v6 = [PSSpecifierUpdates updatesWithSpecifiers:specifiers];
    blockCopy[2](blockCopy, v6);

    [(PSSpecifierGroupIndex *)self performSpecifierUpdates:v6];
  }
}

- (unint64_t)numberOfRowsInGroupAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_groupSections count]<= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"group index %lu is out of bounds (number of groups: %lu)", index, -[PSSpecifierGroupIndex numberOfGroups](self, "numberOfGroups")}];
    return 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:index];
    v6 = [v5 count];

    return v6;
  }
}

- (void)_manuallyFindSection:(unint64_t *)section row:(unint64_t *)row forSpecifierAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_specifiers count]<= index)
  {
    if (row)
    {
      *row = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (section)
    {
      *section = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, index + 1}];
  specifiers = self->_specifiers;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PSSpecifierGroupIndex__manuallyFindSection_row_forSpecifierAtIndex___block_invoke;
  v14[3] = &unk_1E71DDD18;
  v14[4] = &v19;
  v14[5] = &v15;
  [(NSMutableArray *)specifiers enumerateObjectsAtIndexes:v9 options:0 usingBlock:v14];
  if (section)
  {
    *section = v20[3];
  }

  if (row)
  {
    v11 = v16[3];
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 != index)
    {
      v13 = ~v11 + index;
      if (v20[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v13;
      }
    }

    *row = v12;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

uint64_t __70__PSSpecifierGroupIndex__manuallyFindSection_row_forSpecifierAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 cellType];
  if (!result)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 + 1;
    }

    *(v6 + 24) = v8;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

- (void)_getSection:(unint64_t *)section row:(unint64_t *)row forSpecifierAtIndex:(unint64_t)index forInsertion:(BOOL)insertion allowGroupSpecifiers:(BOOL)specifiers
{
  insertionCopy = insertion;
  if ([(NSMutableArray *)self->_specifiers count]+ insertion <= index)
  {
    if (row)
    {
      *row = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if ([(NSMutableArray *)self->_ungroupedPrefixSpecifiers count]<= index)
    {
      goto LABEL_9;
    }

    if (row)
    {
      *row = index;
    }
  }

  if (section)
  {
    *section = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_9:
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count];
  groupSections = self->_groupSections;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__PSSpecifierGroupIndex__getSection_row_forSpecifierAtIndex_forInsertion_allowGroupSpecifiers___block_invoke;
  v14[3] = &unk_1E71DDD40;
  specifiersCopy = specifiers;
  v14[4] = self;
  v14[5] = v16;
  v14[8] = insertionCopy;
  v14[9] = section;
  v14[10] = row;
  v14[6] = &v17;
  v14[7] = index;
  [(NSMutableArray *)groupSections enumerateObjectsUsingBlock:v14];
  if ((v18[3] & 1) == 0)
  {
    if (section)
    {
      *section = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (row)
    {
      *row = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __95__PSSpecifierGroupIndex__getSection_row_forSpecifierAtIndex_forInsertion_allowGroupSpecifiers___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  ++*(*(a1[5] + 8) + 24);
  result = [a2 count];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 24);
  v10 = a1[7] - v9;
  if (v10 >= a1[8] + result)
  {
    *(v8 + 24) = v9 + result;
  }

  else
  {
    v11 = a1[9];
    if (v11)
    {
      *v11 = a3;
    }

    v12 = a1[10];
    if (v12)
    {
      if (v10 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *v12 = v10;
    }

    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)_indexOfSpecifierInSection:(unint64_t)section row:(unint64_t)row forInsertion:(BOOL)insertion
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count:section];
  groupSections = self->_groupSections;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PSSpecifierGroupIndex__indexOfSpecifierInSection_row_forInsertion___block_invoke;
  v11[3] = &unk_1E71DDD68;
  v11[4] = &v12;
  v11[5] = section;
  v11[6] = row;
  [(NSMutableArray *)groupSections enumerateObjectsUsingBlock:v11];
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __69__PSSpecifierGroupIndex__indexOfSpecifierInSection_row_forInsertion___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  v4 = result;
  ++*(*(*(result + 32) + 8) + 24);
  if (*(result + 40) == a3)
  {
    *(*(*(result + 32) + 8) + 24) += *(result + 48);
    *a4 = 1;
  }

  else
  {
    result = [a2 count];
    *(*(*(v4 + 32) + 8) + 24) += result;
  }

  return result;
}

- (unint64_t)indexOfSpecifierAtIndexPath:(id)path forInsertion:(BOOL)insertion
{
  insertionCopy = insertion;
  pathCopy = path;
  section = [pathCopy section];
  if (pathCopy && (v8 = section, section < [(NSMutableArray *)self->_groupSections count]))
  {
    v9 = -[PSSpecifierGroupIndex _indexOfSpecifierInSection:row:forInsertion:](self, "_indexOfSpecifierInSection:row:forInsertion:", v8, [pathCopy row], insertionCopy);
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)indexPathForSpecifierAtIndex:(unint64_t)index forInsertion:(BOOL)insertion
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  [(PSSpecifierGroupIndex *)self _getSection:&v8 row:&v7 forSpecifierAtIndex:index forInsertion:insertion];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];
  }

  return v5;
}

- (id)specifierAtIndexPath:(id)path
{
  v4 = [(PSSpecifierGroupIndex *)self indexOfSpecifierAtIndexPath:path];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_specifiers objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)indexPathForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([specifierCopy cellType])
  {
    v5 = [(PSSpecifierGroupIndex *)self indexPathForSpecifierAtIndex:[(NSMutableArray *)self->_specifiers indexOfObject:specifierCopy]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForSpecifierWithID:(id)d
{
  v4 = [(NSMutableArray *)self->_specifiers indexOfSpecifierWithID:d];

  return [(PSSpecifierGroupIndex *)self indexPathForSpecifierAtIndex:v4];
}

- (BOOL)getGroup:(unint64_t *)group row:(unint64_t *)row ofSpecifierAtIndex:(unint64_t)index
{
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  [(PSSpecifierGroupIndex *)self _getSection:&v8 row:row forSpecifierAtIndex:index forInsertion:0];
  v6 = v8;
  if (group)
  {
    *group = v8;
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)getGroup:(unint64_t *)group row:(unint64_t *)row ofSpecifier:(id)specifier
{
  v8 = [(NSMutableArray *)self->_specifiers indexOfObject:specifier];

  return [(PSSpecifierGroupIndex *)self getGroup:group row:row ofSpecifierAtIndex:v8];
}

- (BOOL)getGroup:(unint64_t *)group row:(unint64_t *)row ofSpecifierWithID:(id)d
{
  v8 = [(NSMutableArray *)self->_specifiers indexOfSpecifierWithID:d];

  return [(PSSpecifierGroupIndex *)self getGroup:group row:row ofSpecifierAtIndex:v8];
}

- (_NSRange)rangeOfSpecifiersInGroupAtGroupIndex:(unint64_t)index
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableArray *)self->_groupSections count]<= index || (v6 = [(PSSpecifierGroupIndex *)self _indexOfSpecifierInSection:index row:0 forInsertion:0], v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:index];
    v7 = [v9 count];

    v5 = v8;
  }

  v10 = v5;
  v11 = v7;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)rangeOfSpecifiersInGroup:(id)group
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfObject:group];

  v5 = [(PSSpecifierGroupIndex *)self rangeOfSpecifiersInGroupAtGroupIndex:v4];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfSpecifiersInGroupWithID:(id)d
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfSpecifierWithID:d];

  v5 = [(PSSpecifierGroupIndex *)self rangeOfSpecifiersInGroupAtGroupIndex:v4];
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)specifiersInGroupAtGroupIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_groupSections count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:index];
  }

  return v5;
}

- (id)specifiersInGroup:(id)group
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfObject:group];

  return [(PSSpecifierGroupIndex *)self specifiersInGroupAtGroupIndex:v4];
}

- (id)specifiersInGroupWithID:(id)d
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfSpecifierWithID:d];

  return [(PSSpecifierGroupIndex *)self specifiersInGroupAtGroupIndex:v4];
}

- (unint64_t)indexOfGroupAtGroupIndex:(unint64_t)index
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableArray *)self->_groupSpecifiers count]> index)
  {
    v6 = [(PSSpecifierGroupIndex *)self _indexOfSpecifierInSection:index row:0 forInsertion:0];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v6 - 1;
    }
  }

  return v5;
}

- (unint64_t)indexOfGroup:(id)group
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfObject:group];

  return [(PSSpecifierGroupIndex *)self indexOfGroupAtGroupIndex:v4];
}

- (unint64_t)indexOfGroupWithID:(id)d
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfSpecifierWithID:d];

  return [(PSSpecifierGroupIndex *)self indexOfGroupAtGroupIndex:v4];
}

- (id)_synthesizedSpecifiersFromGroupIndex
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_specifiers, "count")}];
  [v3 addObjectsFromArray:self->_ungroupedPrefixSpecifiers];
  groupSections = self->_groupSections;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PSSpecifierGroupIndex__synthesizedSpecifiersFromGroupIndex__block_invoke;
  v8[3] = &unk_1E71DDD90;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [(NSMutableArray *)groupSections enumerateObjectsUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __61__PSSpecifierGroupIndex__synthesizedSpecifiersFromGroupIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 24);
  v8 = a2;
  v7 = [v6 objectAtIndexedSubscript:a3];
  [v5 addObject:v7];

  [*(a1 + 32) addObjectsFromArray:v8];
}

- (id)_tabStringOfDepth:(unint64_t)depth
{
  for (i = [MEMORY[0x1E696AD60] stringWithCapacity:?];
  {
    [i appendString:@"\t"];
  }

  v5 = [i copy];

  return v5;
}

- (void)_appendDescriptionOfArray:(id)array toString:(id)string withTabLevel:(unint64_t)level
{
  arrayCopy = array;
  stringCopy = string;
  v10 = [(PSSpecifierGroupIndex *)self _tabStringOfDepth:level - 1];
  v11 = [v10 stringByAppendingString:@"\t"];
  [stringCopy appendString:@"{\n"];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__PSSpecifierGroupIndex__appendDescriptionOfArray_toString_withTabLevel___block_invoke;
  v18 = &unk_1E71DBDB8;
  v19 = stringCopy;
  v20 = v11;
  v21 = arrayCopy;
  v12 = arrayCopy;
  v13 = v11;
  v14 = stringCopy;
  [v12 enumerateObjectsUsingBlock:&v15];
  [v14 appendFormat:@"%@}", v10, v15, v16, v17, v18];
}

void __73__PSSpecifierGroupIndex__appendDescriptionOfArray_toString_withTabLevel___block_invoke(void *a1, void *a2, unint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2;
  if ([v6 count] - 1 <= a3)
  {
    v7 = &stru_1EFE45030;
  }

  else
  {
    v7 = @",";
  }

  [v4 appendFormat:@"%@%@%@\n", v5, v8, v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = PSSpecifierGroupIndex;
  v4 = [(PSSpecifierGroupIndex *)&v15 description];
  v5 = [v3 stringWithFormat:@"%@ (%lu groups, %lu specifiers)", v4, -[NSMutableArray count](self->_groupSections, "count"), -[NSMutableArray count](self->_specifiers, "count")];

  if ([(NSMutableArray *)self->_groupSections count]|| [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
  {
    [v5 appendString:@": {\n"];
    if ([(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
    {
      [v5 appendFormat:@"\t(no group): "];
      [(PSSpecifierGroupIndex *)self _appendDescriptionOfArray:self->_ungroupedPrefixSpecifiers toString:v5 withTabLevel:2];
      v6 = [(NSMutableArray *)self->_groupSections count];
      v7 = @",";
      if (!v6)
      {
        v7 = &stru_1EFE45030;
      }

      [v5 appendFormat:@"%@\n", v7];
    }

    groupSections = self->_groupSections;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__PSSpecifierGroupIndex_description__block_invoke;
    v12[3] = &unk_1E71DDD90;
    v9 = v5;
    v13 = v9;
    selfCopy = self;
    [(NSMutableArray *)groupSections enumerateObjectsUsingBlock:v12];
    [v9 appendString:@"}"];
  }

  v10 = [v5 copy];

  return v10;
}

uint64_t __36__PSSpecifierGroupIndex_description__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 24);
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:a3];
  [v5 appendFormat:@"\t%@: ", v8];

  [*(a1 + 40) _appendDescriptionOfArray:v7 toString:*(a1 + 32) withTabLevel:2];
  v9 = *(a1 + 32);
  if ([*(*(a1 + 40) + 16) count] - 1 <= a3)
  {
    v10 = &stru_1EFE45030;
  }

  else
  {
    v10 = @",";
  }

  return [v9 appendFormat:@"%@\n", v10];
}

@end