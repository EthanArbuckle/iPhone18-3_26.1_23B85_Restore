@interface PSSpecifierGroupIndex
+ (id)groupIndexWithSpecifiers:(id)a3;
- (BOOL)getGroup:(unint64_t *)a3 row:(unint64_t *)a4 ofSpecifier:(id)a5;
- (BOOL)getGroup:(unint64_t *)a3 row:(unint64_t *)a4 ofSpecifierAtIndex:(unint64_t)a5;
- (BOOL)getGroup:(unint64_t *)a3 row:(unint64_t *)a4 ofSpecifierWithID:(id)a5;
- (PSSpecifierGroupIndex)init;
- (PSSpecifierGroupIndex)initWithSpecifiers:(id)a3;
- (_NSRange)rangeOfSpecifiersInGroup:(id)a3;
- (_NSRange)rangeOfSpecifiersInGroupAtGroupIndex:(unint64_t)a3;
- (_NSRange)rangeOfSpecifiersInGroupWithID:(id)a3;
- (id)_init;
- (id)_initForCopyWithGroupIndex:(id)a3;
- (id)_synthesizedSpecifiersFromGroupIndex;
- (id)_tabStringOfDepth:(unint64_t)a3;
- (id)_ungroupedPrefixSpecifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)indexPathForSpecifier:(id)a3;
- (id)indexPathForSpecifierAtIndex:(unint64_t)a3 forInsertion:(BOOL)a4;
- (id)indexPathForSpecifierWithID:(id)a3;
- (id)specifierAtIndexPath:(id)a3;
- (id)specifiersInGroup:(id)a3;
- (id)specifiersInGroupAtGroupIndex:(unint64_t)a3;
- (id)specifiersInGroupWithID:(id)a3;
- (unint64_t)_indexOfSpecifierInSection:(unint64_t)a3 row:(unint64_t)a4 forInsertion:(BOOL)a5;
- (unint64_t)indexOfGroup:(id)a3;
- (unint64_t)indexOfGroupAtGroupIndex:(unint64_t)a3;
- (unint64_t)indexOfGroupWithID:(id)a3;
- (unint64_t)indexOfSpecifierAtIndexPath:(id)a3 forInsertion:(BOOL)a4;
- (unint64_t)numberOfRowsInGroupAtIndex:(unint64_t)a3;
- (void)_appendDescriptionOfArray:(id)a3 toString:(id)a4 withTabLevel:(unint64_t)a5;
- (void)_createGroupIndex;
- (void)_getSection:(unint64_t *)a3 row:(unint64_t *)a4 forSpecifierAtIndex:(unint64_t)a5 forInsertion:(BOOL)a6 allowGroupSpecifiers:(BOOL)a7;
- (void)_manuallyFindSection:(unint64_t *)a3 row:(unint64_t *)a4 forSpecifierAtIndex:(unint64_t)a5;
- (void)performSpecifierUpdates:(id)a3;
- (void)performSpecifierUpdatesUsingBlock:(id)a3;
- (void)performUpdateOperation:(id)a3 forSpecifierUpdates:(id)a4;
- (void)reloadWithSpecifiers:(id)a3;
@end

@implementation PSSpecifierGroupIndex

+ (id)groupIndexWithSpecifiers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSpecifiers:v4];

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

- (PSSpecifierGroupIndex)initWithSpecifiers:(id)a3
{
  v4 = a3;
  v5 = [(PSSpecifierGroupIndex *)self _init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v4];
    specifiers = v5->_specifiers;
    v5->_specifiers = v6;

    v8 = objc_opt_new();
    groupSections = v5->_groupSections;
    v5->_groupSections = v8;

    v10 = objc_opt_new();
    groupSpecifiers = v5->_groupSpecifiers;
    v5->_groupSpecifiers = v10;

    [(PSSpecifierGroupIndex *)v5 _createGroupIndex];
  }

  return v5;
}

- (id)_initForCopyWithGroupIndex:(id)a3
{
  v4 = a3;
  v5 = [(PSSpecifierGroupIndex *)self _init];
  if (v5)
  {
    v6 = [v4[1] mutableCopy];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [v4[2] mutableCopy];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [v4[3] mutableCopy];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [v4[4] mutableCopy];
    v13 = v5[4];
    v5[4] = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

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

- (void)reloadWithSpecifiers:(id)a3
{
  if (self->_specifiers != a3)
  {
    v5 = [a3 mutableCopy];
    specifiers = self->_specifiers;
    self->_specifiers = v5;

    [(PSSpecifierGroupIndex *)self _createGroupIndex];
  }
}

- (void)performSpecifierUpdates:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_specifiers count];
  v6 = [v4 originalSpecifiers];
  v7 = [v6 count];

  if (v5 != v7)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = [v4 originalSpecifiers];
    [v8 raise:v9 format:{@"Attempting to apply specifier updates (%@) when the original specifier array of these updates (count: %lu) does not match the specifier array of %@ (count: %lu).", v4, objc_msgSend(v10, "count"), self, -[NSMutableArray count](self->_specifiers, "count")}];
  }

  v11 = [v4 updates];
  v12 = [v11 indexOfObjectPassingTest:&__block_literal_global_24];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__PSSpecifierGroupIndex_performSpecifierUpdates___block_invoke_2;
    v14[3] = &unk_1E71DDCF0;
    v14[4] = self;
    v15 = v4;
    [v15 enumerateUpdatesUsingBlock:v14];
  }

  else
  {
    v13 = [v4 currentSpecifiers];
    [(PSSpecifierGroupIndex *)self reloadWithSpecifiers:v13];
  }
}

BOOL __49__PSSpecifierGroupIndex_performSpecifierUpdates___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 specifier];
  v3 = [v2 cellType] == 0;

  return v3;
}

- (void)performUpdateOperation:(id)a3 forSpecifierUpdates:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_wantsDebugCallbacks)
  {
    [(PSSpecifierGroupIndex *)self _willPerformOperation:v6 forSpecifierUpdates:v7];
  }

  v8 = [v6 specifier];
  v9 = [v6 index];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v8 cellType];
  v12 = [v6 applyToArray:self->_specifiers];
  if (!v11)
  {
    [(PSSpecifierGroupIndex *)self _createGroupIndex];
    goto LABEL_22;
  }

  if ((v12 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Group index %@ failed to apply update %@ to specifiers %@.\nThis should not be happening and is almost certainly due to the caller providing an inconsistent set of specifier updates.", self, v6, self->_specifiers}];
    goto LABEL_22;
  }

  v13 = [v6 operation];
  switch(v13)
  {
    case 4:
      if (v10 < [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
      {
        [(NSMutableArray *)self->_ungroupedPrefixSpecifiers removeObjectAtIndex:v10];
        break;
      }

      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      [(PSSpecifierGroupIndex *)self getGroup:&v19 row:&v18 ofSpecifierAtIndex:v10];
      v16 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:v19];
      [v16 removeObjectAtIndex:v18];
LABEL_21:

      break;
    case 2:
      if (v10 >= [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        [(PSSpecifierGroupIndex *)self _getSection:&v19 row:&v18 forSpecifierAtIndex:v10 forInsertion:0];
        v14 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:v19];
        [v14 removeObjectAtIndex:v18];
      }

      else
      {
        [(NSMutableArray *)self->_ungroupedPrefixSpecifiers removeObjectAtIndex:v10];
      }

      v15 = [v6 toIndex];
      v10 = [v15 unsignedIntegerValue];

      goto LABEL_17;
    case 1:
LABEL_17:
      if (v10 <= [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count])
      {
        v17 = [(PSSpecifierGroupIndex *)self _ungroupedPrefixSpecifiers];
        [v17 insertObject:v8 atIndex:v10];

        break;
      }

      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      [(PSSpecifierGroupIndex *)self _getSection:&v19 row:&v18 forSpecifierAtIndex:v10 forInsertion:1];
      v16 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:v19];
      [v16 insertObject:v8 atIndex:v18];
      goto LABEL_21;
  }

LABEL_22:
  if (self->_wantsDebugCallbacks)
  {
    [(PSSpecifierGroupIndex *)self _didPerformOperation:v6 forSpecifierUpdates:v7];
  }
}

- (void)performSpecifierUpdatesUsingBlock:(id)a3
{
  if (a3)
  {
    specifiers = self->_specifiers;
    v5 = a3;
    v6 = [PSSpecifierUpdates updatesWithSpecifiers:specifiers];
    v5[2](v5, v6);

    [(PSSpecifierGroupIndex *)self performSpecifierUpdates:v6];
  }
}

- (unint64_t)numberOfRowsInGroupAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_groupSections count]<= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"group index %lu is out of bounds (number of groups: %lu)", a3, -[PSSpecifierGroupIndex numberOfGroups](self, "numberOfGroups")}];
    return 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:a3];
    v6 = [v5 count];

    return v6;
  }
}

- (void)_manuallyFindSection:(unint64_t *)a3 row:(unint64_t *)a4 forSpecifierAtIndex:(unint64_t)a5
{
  if ([(NSMutableArray *)self->_specifiers count]<= a5)
  {
    if (a4)
    {
      *a4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a3)
    {
      *a3 = 0x7FFFFFFFFFFFFFFFLL;
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
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, a5 + 1}];
  specifiers = self->_specifiers;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PSSpecifierGroupIndex__manuallyFindSection_row_forSpecifierAtIndex___block_invoke;
  v14[3] = &unk_1E71DDD18;
  v14[4] = &v19;
  v14[5] = &v15;
  [(NSMutableArray *)specifiers enumerateObjectsAtIndexes:v9 options:0 usingBlock:v14];
  if (a3)
  {
    *a3 = v20[3];
  }

  if (a4)
  {
    v11 = v16[3];
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 != a5)
    {
      v13 = ~v11 + a5;
      if (v20[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v13;
      }
    }

    *a4 = v12;
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

- (void)_getSection:(unint64_t *)a3 row:(unint64_t *)a4 forSpecifierAtIndex:(unint64_t)a5 forInsertion:(BOOL)a6 allowGroupSpecifiers:(BOOL)a7
{
  v8 = a6;
  if ([(NSMutableArray *)self->_specifiers count]+ a6 <= a5)
  {
    if (a4)
    {
      *a4 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if ([(NSMutableArray *)self->_ungroupedPrefixSpecifiers count]<= a5)
    {
      goto LABEL_9;
    }

    if (a4)
    {
      *a4 = a5;
    }
  }

  if (a3)
  {
    *a3 = 0x7FFFFFFFFFFFFFFFLL;
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
  v15 = a7;
  v14[4] = self;
  v14[5] = v16;
  v14[8] = v8;
  v14[9] = a3;
  v14[10] = a4;
  v14[6] = &v17;
  v14[7] = a5;
  [(NSMutableArray *)groupSections enumerateObjectsUsingBlock:v14];
  if ((v18[3] & 1) == 0)
  {
    if (a3)
    {
      *a3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a4)
    {
      *a4 = 0x7FFFFFFFFFFFFFFFLL;
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

- (unint64_t)_indexOfSpecifierInSection:(unint64_t)a3 row:(unint64_t)a4 forInsertion:(BOOL)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = [(NSMutableArray *)self->_ungroupedPrefixSpecifiers count:a3];
  groupSections = self->_groupSections;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PSSpecifierGroupIndex__indexOfSpecifierInSection_row_forInsertion___block_invoke;
  v11[3] = &unk_1E71DDD68;
  v11[4] = &v12;
  v11[5] = a3;
  v11[6] = a4;
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

- (unint64_t)indexOfSpecifierAtIndexPath:(id)a3 forInsertion:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 section];
  if (v6 && (v8 = v7, v7 < [(NSMutableArray *)self->_groupSections count]))
  {
    v9 = -[PSSpecifierGroupIndex _indexOfSpecifierInSection:row:forInsertion:](self, "_indexOfSpecifierInSection:row:forInsertion:", v8, [v6 row], v4);
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)indexPathForSpecifierAtIndex:(unint64_t)a3 forInsertion:(BOOL)a4
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  [(PSSpecifierGroupIndex *)self _getSection:&v8 row:&v7 forSpecifierAtIndex:a3 forInsertion:a4];
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

- (id)specifierAtIndexPath:(id)a3
{
  v4 = [(PSSpecifierGroupIndex *)self indexOfSpecifierAtIndexPath:a3];
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

- (id)indexPathForSpecifier:(id)a3
{
  v4 = a3;
  if ([v4 cellType])
  {
    v5 = [(PSSpecifierGroupIndex *)self indexPathForSpecifierAtIndex:[(NSMutableArray *)self->_specifiers indexOfObject:v4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForSpecifierWithID:(id)a3
{
  v4 = [(NSMutableArray *)self->_specifiers indexOfSpecifierWithID:a3];

  return [(PSSpecifierGroupIndex *)self indexPathForSpecifierAtIndex:v4];
}

- (BOOL)getGroup:(unint64_t *)a3 row:(unint64_t *)a4 ofSpecifierAtIndex:(unint64_t)a5
{
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  [(PSSpecifierGroupIndex *)self _getSection:&v8 row:a4 forSpecifierAtIndex:a5 forInsertion:0];
  v6 = v8;
  if (a3)
  {
    *a3 = v8;
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)getGroup:(unint64_t *)a3 row:(unint64_t *)a4 ofSpecifier:(id)a5
{
  v8 = [(NSMutableArray *)self->_specifiers indexOfObject:a5];

  return [(PSSpecifierGroupIndex *)self getGroup:a3 row:a4 ofSpecifierAtIndex:v8];
}

- (BOOL)getGroup:(unint64_t *)a3 row:(unint64_t *)a4 ofSpecifierWithID:(id)a5
{
  v8 = [(NSMutableArray *)self->_specifiers indexOfSpecifierWithID:a5];

  return [(PSSpecifierGroupIndex *)self getGroup:a3 row:a4 ofSpecifierAtIndex:v8];
}

- (_NSRange)rangeOfSpecifiersInGroupAtGroupIndex:(unint64_t)a3
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableArray *)self->_groupSections count]<= a3 || (v6 = [(PSSpecifierGroupIndex *)self _indexOfSpecifierInSection:a3 row:0 forInsertion:0], v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:a3];
    v7 = [v9 count];

    v5 = v8;
  }

  v10 = v5;
  v11 = v7;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)rangeOfSpecifiersInGroup:(id)a3
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfObject:a3];

  v5 = [(PSSpecifierGroupIndex *)self rangeOfSpecifiersInGroupAtGroupIndex:v4];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfSpecifiersInGroupWithID:(id)a3
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfSpecifierWithID:a3];

  v5 = [(PSSpecifierGroupIndex *)self rangeOfSpecifiersInGroupAtGroupIndex:v4];
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)specifiersInGroupAtGroupIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_groupSections count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_groupSections objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)specifiersInGroup:(id)a3
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfObject:a3];

  return [(PSSpecifierGroupIndex *)self specifiersInGroupAtGroupIndex:v4];
}

- (id)specifiersInGroupWithID:(id)a3
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfSpecifierWithID:a3];

  return [(PSSpecifierGroupIndex *)self specifiersInGroupAtGroupIndex:v4];
}

- (unint64_t)indexOfGroupAtGroupIndex:(unint64_t)a3
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableArray *)self->_groupSpecifiers count]> a3)
  {
    v6 = [(PSSpecifierGroupIndex *)self _indexOfSpecifierInSection:a3 row:0 forInsertion:0];
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

- (unint64_t)indexOfGroup:(id)a3
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfObject:a3];

  return [(PSSpecifierGroupIndex *)self indexOfGroupAtGroupIndex:v4];
}

- (unint64_t)indexOfGroupWithID:(id)a3
{
  v4 = [(NSMutableArray *)self->_groupSpecifiers indexOfSpecifierWithID:a3];

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
  v10 = self;
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

- (id)_tabStringOfDepth:(unint64_t)a3
{
  for (i = [MEMORY[0x1E696AD60] stringWithCapacity:?];
  {
    [i appendString:@"\t"];
  }

  v5 = [i copy];

  return v5;
}

- (void)_appendDescriptionOfArray:(id)a3 toString:(id)a4 withTabLevel:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PSSpecifierGroupIndex *)self _tabStringOfDepth:a5 - 1];
  v11 = [v10 stringByAppendingString:@"\t"];
  [v9 appendString:@"{\n"];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__PSSpecifierGroupIndex__appendDescriptionOfArray_toString_withTabLevel___block_invoke;
  v18 = &unk_1E71DBDB8;
  v19 = v9;
  v20 = v11;
  v21 = v8;
  v12 = v8;
  v13 = v11;
  v14 = v9;
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
    v14 = self;
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