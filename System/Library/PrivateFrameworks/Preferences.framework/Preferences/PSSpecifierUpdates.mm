@interface PSSpecifierUpdates
+ (PSSpecifierUpdates)updatesWithSpecifiers:(id)specifiers;
+ (id)updatesByDiffingSpecifiers:(id)specifiers withSpecifiers:(id)withSpecifiers changedBlock:(id)block;
+ (void)_assertSpecifierIDsAreUnique:(id)unique;
- (BOOL)_addAndApplyOperation:(id)operation;
- (BOOL)_enumerateArrayWithConjuctionalResult:(id)result usingBlock:(id)block;
- (BOOL)_removeOneSpecifierOnlyAtIndex:(unint64_t)index;
- (BOOL)appendSpecifier:(id)specifier;
- (BOOL)appendSpecifier:(id)specifier toGroup:(id)group;
- (BOOL)appendSpecifier:(id)specifier toGroupAtGroupIndex:(unint64_t)index;
- (BOOL)appendSpecifier:(id)specifier toGroupWithID:(id)d;
- (BOOL)appendSpecifiers:(id)specifiers;
- (BOOL)appendSpecifiers:(id)specifiers toGroup:(id)group;
- (BOOL)appendSpecifiers:(id)specifiers toGroupAtGroupIndex:(unint64_t)index;
- (BOOL)appendSpecifiers:(id)specifiers toGroupWithID:(id)d;
- (BOOL)insertContiguousSpecifiers:(id)specifiers afterSpecifier:(id)specifier;
- (BOOL)insertContiguousSpecifiers:(id)specifiers afterSpecifierWithID:(id)d;
- (BOOL)insertContiguousSpecifiers:(id)specifiers atIndex:(unint64_t)index;
- (BOOL)insertSpecifier:(id)specifier afterSpecifier:(id)afterSpecifier;
- (BOOL)insertSpecifier:(id)specifier afterSpecifierWithID:(id)d;
- (BOOL)insertSpecifier:(id)specifier atIndex:(unint64_t)index;
- (BOOL)insertSpecifier:(id)specifier atIndexPath:(id)path;
- (BOOL)moveSpecifier:(id)specifier toIndex:(unint64_t)index;
- (BOOL)moveSpecifierAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (BOOL)moveSpecifierAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (BOOL)reloadSpecifier:(id)specifier;
- (BOOL)reloadSpecifierAtIndex:(unint64_t)index;
- (BOOL)reloadSpecifierAtIndexPath:(id)path;
- (BOOL)reloadSpecifierWithID:(id)d;
- (BOOL)reloadSpecifiers:(id)specifiers;
- (BOOL)reloadSpecifiersInGroup:(id)group;
- (BOOL)reloadSpecifiersInGroupAtGroupIndex:(unint64_t)index;
- (BOOL)reloadSpecifiersInGroupWithID:(id)d;
- (BOOL)reloadSpecifiersInRange:(_NSRange)range;
- (BOOL)reloadSpecifiersWithIDs:(id)ds;
- (BOOL)removeSpecifier:(id)specifier;
- (BOOL)removeSpecifierAtIndex:(unint64_t)index;
- (BOOL)removeSpecifierAtIndexPath:(id)path;
- (BOOL)removeSpecifierWithID:(id)d;
- (BOOL)removeSpecifiers:(id)specifiers;
- (BOOL)removeSpecifiersInGroup:(id)group;
- (BOOL)removeSpecifiersInGroupAtGroupIndex:(unint64_t)index;
- (BOOL)removeSpecifiersInGroupWithID:(id)d;
- (BOOL)removeSpecifiersInRange:(_NSRange)range;
- (BOOL)removeSpecifiersWithIDs:(id)ds;
- (BOOL)swapSpecifier:(id)specifier withSpecifier:(id)withSpecifier;
- (BOOL)swapSpecifierAtIndex:(unint64_t)index withSpecifierAtIndex:(unint64_t)atIndex;
- (PSSpecifierGroupIndex)groupIndex;
- (PSSpecifierUpdateContext)context;
- (PSSpecifierUpdates)init;
- (PSSpecifierUpdates)initWithSpecifiers:(id)specifiers applyUpdates:(id)updates;
- (id)_groupIndexCreatingIfNecessary;
- (id)_init;
- (id)_initForCopyWithOriginalSpecifiers:(id)specifiers currentSpecifiers:(id)currentSpecifiers updates:(id)updates;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)specifiersAfterApplyingUpdatesToIndex:(unint64_t)index;
- (id)stepByStepDescription;
- (void)enumerateUpdatesUsingBlock:(id)block;
@end

@implementation PSSpecifierUpdates

+ (PSSpecifierUpdates)updatesWithSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v5 = [[self alloc] initWithSpecifiers:specifiersCopy];

  return v5;
}

- (id)_init
{
  v4.receiver = self;
  v4.super_class = PSSpecifierUpdates;
  v2 = [(PSSpecifierUpdates *)&v4 init];
  if (v2)
  {
    v2->_wantsDebugCallbacks = [objc_opt_class() _wantsDebugCallbacks];
  }

  return v2;
}

- (PSSpecifierUpdates)init
{
  v4 = objc_opt_class();
  Name = sel_getName(a2);
  v6 = sel_getName(sel_initWithSpecifiers_);
  NSLog(&cfstr_SCalledShouldB.isa, v4, Name, v6);

  return 0;
}

- (PSSpecifierUpdates)initWithSpecifiers:(id)specifiers applyUpdates:(id)updates
{
  specifiersCopy = specifiers;
  updatesCopy = updates;
  _init = [(PSSpecifierUpdates *)self _init];
  if (_init)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:specifiersCopy];
    originalSpecifiers = _init->_originalSpecifiers;
    _init->_originalSpecifiers = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:specifiersCopy];
    currentSpecifiers = _init->_currentSpecifiers;
    _init->_currentSpecifiers = v11;

    v13 = objc_opt_new();
    updates = _init->_updates;
    _init->_updates = v13;

    if ([updatesCopy count])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54__PSSpecifierUpdates_initWithSpecifiers_applyUpdates___block_invoke;
      v16[3] = &unk_1E71DDDB8;
      v17 = _init;
      [updatesCopy enumerateObjectsUsingBlock:v16];
    }
  }

  return _init;
}

- (id)_initForCopyWithOriginalSpecifiers:(id)specifiers currentSpecifiers:(id)currentSpecifiers updates:(id)updates
{
  specifiersCopy = specifiers;
  currentSpecifiersCopy = currentSpecifiers;
  updatesCopy = updates;
  _init = [(PSSpecifierUpdates *)self _init];
  if (_init)
  {
    v12 = [specifiersCopy copy];
    v13 = _init[5];
    _init[5] = v12;

    v14 = [currentSpecifiersCopy mutableCopy];
    v15 = _init[1];
    _init[1] = v14;

    v16 = [updatesCopy mutableCopy];
    v17 = _init[2];
    _init[2] = v16;
  }

  return _init;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  originalSpecifiers = self->_originalSpecifiers;
  currentSpecifiers = self->_currentSpecifiers;
  updates = self->_updates;

  return [v4 _initForCopyWithOriginalSpecifiers:originalSpecifiers currentSpecifiers:currentSpecifiers updates:updates];
}

- (PSSpecifierUpdateContext)context
{
  context = self->_context;
  if (!context)
  {
    v4 = +[PSSpecifierUpdateContext context];
    v5 = self->_context;
    self->_context = v4;

    context = self->_context;
  }

  return context;
}

- (id)_groupIndexCreatingIfNecessary
{
  groupIndex = self->_groupIndex;
  if (!groupIndex)
  {
    v4 = [objc_alloc(objc_msgSend(objc_opt_class() "_groupIndexClass"))];
    v5 = self->_groupIndex;
    self->_groupIndex = v4;

    groupIndex = self->_groupIndex;
  }

  return groupIndex;
}

- (PSSpecifierGroupIndex)groupIndex
{
  _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  v3 = [_groupIndexCreatingIfNecessary copy];

  return v3;
}

- (void)enumerateUpdatesUsingBlock:(id)block
{
  blockCopy = block;
  updates = self->_updates;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PSSpecifierUpdates_enumerateUpdatesUsingBlock___block_invoke;
  v7[3] = &unk_1E71DDDE0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)updates enumerateObjectsUsingBlock:v7];
}

- (BOOL)_enumerateArrayWithConjuctionalResult:(id)result usingBlock:(id)block
{
  resultCopy = result;
  blockCopy = block;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PSSpecifierUpdates__enumerateArrayWithConjuctionalResult_usingBlock___block_invoke;
  v10[3] = &unk_1E71DDE08;
  v12 = &v13;
  v7 = blockCopy;
  v11 = v7;
  [resultCopy enumerateObjectsUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __71__PSSpecifierUpdates__enumerateArrayWithConjuctionalResult_usingBlock___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  if (result)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 24) = v4 & 1;
  return result;
}

- (BOOL)_addAndApplyOperation:(id)operation
{
  operationCopy = operation;
  v5 = [operationCopy applyToArray:self->_currentSpecifiers];
  if (v5)
  {
    [(NSMutableArray *)self->_updates addObject:operationCopy];
    [(PSSpecifierGroupIndex *)self->_groupIndex performUpdateOperation:operationCopy];
    if (self->_wantsDebugCallbacks)
    {
      [(PSSpecifierUpdates *)self _didApplyOperation:operationCopy];
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Specifier updates %@ failed to apply update operation %@ to specifiers %@.\nThis should not be happening and is almost certainly due to the caller having provided an inconsistent array of specifiers or updates at initialization.", self, operationCopy, self->_currentSpecifiers}];
  }

  return v5;
}

- (BOOL)insertSpecifier:(id)specifier atIndex:(unint64_t)index
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    if ([(NSMutableArray *)self->_currentSpecifiers count]>= index)
    {
      v7 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:specifierCopy atIndex:index];
      v11 = [(PSSpecifierUpdates *)self _addAndApplyOperation:v7];
      goto LABEL_7;
    }

    if (self->_wantsDebugCallbacks)
    {
      v7 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:specifierCopy atIndex:index];
      v8 = MEMORY[0x1E696AEC0];
      index = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to insert specifier at out-of-bounds index %lu", index];
      v10 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates insertSpecifier:atIndex:]", index];
      [(PSSpecifierUpdates *)self _operationFailed:v7 reason:v10];

      v11 = 0;
LABEL_7:

      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)insertSpecifier:(id)specifier atIndexPath:(id)path
{
  specifierCopy = specifier;
  pathCopy = path;
  _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  v9 = [_groupIndexCreatingIfNecessary indexOfSpecifierAtIndexPath:pathCopy forInsertion:1];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_wantsDebugCallbacks)
    {
      v10 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:specifierCopy atIndex:0x7FFFFFFFFFFFFFFFLL];
      v11 = MEMORY[0x1E696AEC0];
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to insert at missing indexPath %@", pathCopy];
      v13 = [v11 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates insertSpecifier:atIndexPath:]", pathCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v10 reason:v13];
    }

    v14 = 0;
  }

  else
  {
    v14 = [(PSSpecifierUpdates *)self insertSpecifier:specifierCopy atIndex:v9];
  }

  return v14;
}

- (BOOL)insertSpecifier:(id)specifier afterSpecifier:(id)afterSpecifier
{
  specifierCopy = specifier;
  afterSpecifierCopy = afterSpecifier;
  v8 = [(NSMutableArray *)self->_currentSpecifiers indexOfObject:afterSpecifierCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_wantsDebugCallbacks)
    {
      v9 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:specifierCopy atIndex:0x8000000000000000];
      v10 = MEMORY[0x1E696AEC0];
      afterSpecifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to insert after missing specifier %@", afterSpecifierCopy];
      v12 = [v10 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates insertSpecifier:afterSpecifier:]", afterSpecifierCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v9 reason:v12];
    }

    v13 = 0;
  }

  else
  {
    v13 = [(PSSpecifierUpdates *)self insertSpecifier:specifierCopy atIndex:v8 + 1];
  }

  return v13;
}

- (BOOL)insertSpecifier:(id)specifier afterSpecifierWithID:(id)d
{
  specifierCopy = specifier;
  dCopy = d;
  v8 = [(NSMutableArray *)self->_currentSpecifiers indexOfSpecifierWithID:dCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_wantsDebugCallbacks)
    {
      v9 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:specifierCopy atIndex:0x8000000000000000];
      v10 = MEMORY[0x1E696AEC0];
      dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to insert after missing specifier ID %@", dCopy];
      v12 = [v10 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates insertSpecifier:afterSpecifierWithID:]", dCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v9 reason:v12];
    }

    v13 = 0;
  }

  else
  {
    v13 = [(PSSpecifierUpdates *)self insertSpecifier:specifierCopy atIndex:v8 + 1];
  }

  return v13;
}

- (BOOL)insertContiguousSpecifiers:(id)specifiers atIndex:(unint64_t)index
{
  specifiersCopy = specifiers;
  if ([specifiersCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PSSpecifierUpdates_insertContiguousSpecifiers_atIndex___block_invoke;
    v9[3] = &unk_1E71DDE30;
    v9[4] = self;
    v9[5] = index;
    v7 = [(PSSpecifierUpdates *)self _enumerateArrayWithConjuctionalResult:specifiersCopy usingBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)insertContiguousSpecifiers:(id)specifiers afterSpecifier:(id)specifier
{
  currentSpecifiers = self->_currentSpecifiers;
  specifiersCopy = specifiers;
  LOBYTE(specifier) = [(PSSpecifierUpdates *)self insertContiguousSpecifiers:specifiersCopy atIndex:[(NSMutableArray *)currentSpecifiers indexOfObject:specifier]+ 1];

  return specifier;
}

- (BOOL)insertContiguousSpecifiers:(id)specifiers afterSpecifierWithID:(id)d
{
  currentSpecifiers = self->_currentSpecifiers;
  specifiersCopy = specifiers;
  LOBYTE(d) = [(PSSpecifierUpdates *)self insertContiguousSpecifiers:specifiersCopy atIndex:[(NSMutableArray *)currentSpecifiers indexOfSpecifierWithID:d]+ 1];

  return d;
}

- (BOOL)appendSpecifier:(id)specifier
{
  selfCopy = self;
  currentSpecifiers = self->_currentSpecifiers;
  specifierCopy = specifier;
  LOBYTE(selfCopy) = [(PSSpecifierUpdates *)selfCopy insertSpecifier:specifierCopy atIndex:[(NSMutableArray *)currentSpecifiers count]];

  return selfCopy;
}

- (BOOL)appendSpecifiers:(id)specifiers
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__PSSpecifierUpdates_appendSpecifiers___block_invoke;
  v4[3] = &unk_1E71DDE58;
  v4[4] = self;
  return [(PSSpecifierUpdates *)self _enumerateArrayWithConjuctionalResult:specifiers usingBlock:v4];
}

- (BOOL)appendSpecifier:(id)specifier toGroupAtGroupIndex:(unint64_t)index
{
  v12 = *MEMORY[0x1E69E9840];
  if (!specifier)
  {
    return 0;
  }

  specifierCopy = specifier;
  v6 = MEMORY[0x1E695DEC8];
  specifierCopy2 = specifier;
  v8 = [v6 arrayWithObjects:&specifierCopy count:1];

  v9 = [(PSSpecifierUpdates *)self appendSpecifiers:v8 toGroupAtGroupIndex:index, specifierCopy, v12];
  return v9;
}

- (BOOL)appendSpecifiers:(id)specifiers toGroupAtGroupIndex:(unint64_t)index
{
  specifiersCopy = specifiers;
  if ([specifiersCopy count])
  {
    _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
    if ([_groupIndexCreatingIfNecessary numberOfGroups] <= index)
    {
      if (self->_wantsDebugCallbacks)
      {
        v10 = @"attempted to append specifiers to out-of-bounds group at index %lu";
        goto LABEL_9;
      }
    }

    else
    {
      v8 = [_groupIndexCreatingIfNecessary rangeOfSpecifiersInGroupAtGroupIndex:index];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(PSSpecifierUpdates *)self insertContiguousSpecifiers:specifiersCopy atIndex:v8 + v9];
        goto LABEL_12;
      }

      if (self->_wantsDebugCallbacks)
      {
        v10 = @"attempted to append specifiers to invalid group index %lu";
LABEL_9:
        firstObject = [specifiersCopy firstObject];
        v13 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:firstObject atIndex:0x7FFFFFFFFFFFFFFFLL];
        v14 = MEMORY[0x1E696AEC0];
        index = [MEMORY[0x1E696AEC0] stringWithFormat:v10, index];
        v16 = [v14 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates appendSpecifiers:toGroupAtGroupIndex:]", index];
        [(PSSpecifierUpdates *)self _operationFailed:v13 reason:v16];
      }
    }

    v11 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (BOOL)appendSpecifier:(id)specifier toGroup:(id)group
{
  v13 = *MEMORY[0x1E69E9840];
  if (!specifier)
  {
    return 0;
  }

  specifierCopy = specifier;
  v6 = MEMORY[0x1E695DEC8];
  groupCopy = group;
  specifierCopy2 = specifier;
  v9 = [v6 arrayWithObjects:&specifierCopy count:1];

  v10 = [(PSSpecifierUpdates *)self appendSpecifiers:v9 toGroup:groupCopy, specifierCopy, v13];
  return v10;
}

- (BOOL)appendSpecifiers:(id)specifiers toGroup:(id)group
{
  specifiersCopy = specifiers;
  groupCopy = group;
  if (groupCopy)
  {
    _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
    groupSpecifiers = [_groupIndexCreatingIfNecessary groupSpecifiers];
    v10 = [groupSpecifiers indexOfObject:groupCopy];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(PSSpecifierUpdates *)self appendSpecifiers:specifiersCopy toGroupAtGroupIndex:v10];
      goto LABEL_7;
    }

    if (self->_wantsDebugCallbacks)
    {
      firstObject = [specifiersCopy firstObject];
      v12 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:firstObject atIndex:0x7FFFFFFFFFFFFFFFLL];
      v13 = MEMORY[0x1E696AEC0];
      groupCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to append specifiers to missing group %@", groupCopy];
      v15 = [v13 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates appendSpecifiers:toGroup:]", groupCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v12 reason:v15];
    }
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (BOOL)appendSpecifier:(id)specifier toGroupWithID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (!specifier)
  {
    return 0;
  }

  specifierCopy = specifier;
  v6 = MEMORY[0x1E695DEC8];
  dCopy = d;
  specifierCopy2 = specifier;
  v9 = [v6 arrayWithObjects:&specifierCopy count:1];

  v10 = [(PSSpecifierUpdates *)self appendSpecifiers:v9 toGroupWithID:dCopy, specifierCopy, v13];
  return v10;
}

- (BOOL)appendSpecifiers:(id)specifiers toGroupWithID:(id)d
{
  specifiersCopy = specifiers;
  dCopy = d;
  if (dCopy)
  {
    _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
    groupSpecifiers = [_groupIndexCreatingIfNecessary groupSpecifiers];
    v10 = [groupSpecifiers indexOfSpecifierWithID:dCopy];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(PSSpecifierUpdates *)self appendSpecifiers:specifiersCopy toGroupAtGroupIndex:v10];
      goto LABEL_7;
    }

    if (self->_wantsDebugCallbacks)
    {
      firstObject = [specifiersCopy firstObject];
      v12 = [PSSpecifierUpdateOperation insertOperationWithSpecifier:firstObject atIndex:0x7FFFFFFFFFFFFFFFLL];
      v13 = MEMORY[0x1E696AEC0];
      dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to append specifiers to missing group ID %@", dCopy];
      v15 = [v13 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates appendSpecifiers:toGroupWithID:]", dCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v12 reason:v15];
    }
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (BOOL)removeSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [(NSMutableArray *)self->_currentSpecifiers indexOfObject:specifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_wantsDebugCallbacks)
    {
      v6 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:specifierCopy atIndex:0x7FFFFFFFFFFFFFFFLL];
      v7 = MEMORY[0x1E696AEC0];
      specifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove missing specifier %@", specifierCopy];
      v9 = [v7 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifier:]", specifierCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v6 reason:v9];
    }

    v10 = 0;
  }

  else
  {
    v10 = [(PSSpecifierUpdates *)self removeSpecifierAtIndex:v5];
  }

  return v10;
}

- (BOOL)removeSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if ([specifiersCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__PSSpecifierUpdates_removeSpecifiers___block_invoke;
    v7[3] = &unk_1E71DDE58;
    v7[4] = self;
    v5 = [(PSSpecifierUpdates *)self _enumerateArrayWithConjuctionalResult:specifiersCopy usingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)removeSpecifierWithID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    currentSpecifiers = self->_currentSpecifiers;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__PSSpecifierUpdates_removeSpecifierWithID___block_invoke;
    v15[3] = &unk_1E71DDE80;
    v7 = dCopy;
    v16 = v7;
    v8 = [(NSMutableArray *)currentSpecifiers indexOfObjectPassingTest:v15];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (self->_wantsDebugCallbacks)
      {
        v9 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
        v10 = MEMORY[0x1E696AEC0];
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove missing specifier ID %@", v7];
        v12 = [v10 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifierWithID:]", v11];
        [(PSSpecifierUpdates *)self _operationFailed:v9 reason:v12];
      }

      v13 = 0;
    }

    else
    {
      v13 = [(PSSpecifierUpdates *)self removeSpecifierAtIndex:v8];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __44__PSSpecifierUpdates_removeSpecifierWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)removeSpecifiersWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PSSpecifierUpdates_removeSpecifiersWithIDs___block_invoke;
    v7[3] = &unk_1E71DDEA8;
    v7[4] = self;
    v5 = [(PSSpecifierUpdates *)self _enumerateArrayWithConjuctionalResult:dsCopy usingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)removeSpecifierAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_currentSpecifiers count]<= index)
  {
    if (!self->_wantsDebugCallbacks)
    {
      return 0;
    }

    v5 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:0 atIndex:index];
    v8 = MEMORY[0x1E696AEC0];
    index = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove specifier at out-of-bounds index %lu", index];
    v9 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifierAtIndex:]", index];
    [(PSSpecifierUpdates *)self _operationFailed:v5 reason:v9];

    v7 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndexedSubscript:index];
    index = [PSSpecifierUpdateOperation removeOperationWithSpecifier:v5 atIndex:index];
    v7 = [(PSSpecifierUpdates *)self _addAndApplyOperation:index];
  }

  return v7;
}

- (BOOL)_removeOneSpecifierOnlyAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_currentSpecifiers count]<= index)
  {
    if (!self->_wantsDebugCallbacks)
    {
      return 0;
    }

    v5 = [PSSpecifierUpdateOperation _removeOneSpecifierOnlyOperationWithSpecifier:0 atIndex:index];
    v8 = MEMORY[0x1E696AEC0];
    index = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove specifier at out-of-bounds index %lu", index];
    v9 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates _removeOneSpecifierOnlyAtIndex:]", index];
    [(PSSpecifierUpdates *)self _operationFailed:v5 reason:v9];

    v7 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndexedSubscript:index];
    index = [PSSpecifierUpdateOperation _removeOneSpecifierOnlyOperationWithSpecifier:v5 atIndex:index];
    v7 = [(PSSpecifierUpdates *)self _addAndApplyOperation:index];
  }

  return v7;
}

- (BOOL)removeSpecifiersInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = range.location + range.length;
  if (range.location + range.length <= [(NSMutableArray *)self->_currentSpecifiers count])
  {
    v9 = v6 - 1;
    v10 = 1;
    while (v9 >= location)
    {
      v10 &= [(PSSpecifierUpdates *)self removeSpecifierAtIndex:v9--];
    }
  }

  else
  {
    if (self->_wantsDebugCallbacks)
    {
      v7 = [(NSMutableArray *)self->_currentSpecifiers count];
      if (location >= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndexedSubscript:location];
      }

      v11 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:v8 atIndex:location];
      v12 = MEMORY[0x1E696AEC0];
      v17.location = location;
      v17.length = length;
      v13 = NSStringFromRange(v17);
      v14 = [v12 stringWithFormat:@"attempted to remove specifiers in out-of-bounds range %@", v13];
      v15 = [v12 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifiersInRange:]", v14];
      [(PSSpecifierUpdates *)self _operationFailed:v11 reason:v15];

      if (location < v7)
      {
      }
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)removeSpecifierAtIndexPath:(id)path
{
  pathCopy = path;
  _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  v6 = [_groupIndexCreatingIfNecessary indexOfSpecifierAtIndexPath:pathCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_wantsDebugCallbacks)
    {
      v7 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v8 = MEMORY[0x1E696AEC0];
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove specifier at missing or out-of-bounds indexPath %@", pathCopy];
      v10 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifierAtIndexPath:]", pathCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v7 reason:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = [(PSSpecifierUpdates *)self removeSpecifierAtIndex:v6];
  }

  return v11;
}

- (BOOL)removeSpecifiersInGroupAtGroupIndex:(unint64_t)index
{
  _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  if ([_groupIndexCreatingIfNecessary numberOfGroups] <= index)
  {
    if (self->_wantsDebugCallbacks)
    {
      groupSpecifiers = [PSSpecifierUpdateOperation removeOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v14 = MEMORY[0x1E696AEC0];
      index = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove specifiers in out-of-bounds group at index %lu", index];
      v16 = [v14 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifiersInGroupAtGroupIndex:]", index];
      [(PSSpecifierUpdates *)self _operationFailed:groupSpecifiers reason:v16];

      goto LABEL_7;
    }
  }

  else
  {
    v6 = [_groupIndexCreatingIfNecessary rangeOfSpecifiersInGroupAtGroupIndex:index];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [(PSSpecifierUpdates *)self removeSpecifiersInRange:v6, v7];
      goto LABEL_10;
    }

    if (self->_wantsDebugCallbacks)
    {
      groupSpecifiers = [_groupIndexCreatingIfNecessary groupSpecifiers];
      v9 = [groupSpecifiers objectAtIndexedSubscript:index];
      v10 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:v9 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v11 = MEMORY[0x1E696AEC0];
      index2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove specifiers in group at index %lu that does not have a valid range", index];
      v13 = [v11 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifiersInGroupAtGroupIndex:]", index2];
      [(PSSpecifierUpdates *)self _operationFailed:v10 reason:v13];

LABEL_7:
    }
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (BOOL)removeSpecifiersInGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy && ![groupCopy cellType])
  {
    _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
    v9 = [_groupIndexCreatingIfNecessary groupIndexOfGroup:v5];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(PSSpecifierUpdates *)self removeSpecifiersInGroupAtGroupIndex:v9];
      goto LABEL_4;
    }

    if (self->_wantsDebugCallbacks)
    {
      v10 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:v5 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove specifiers in missing group %@", v5];
      v13 = [v11 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifiersInGroup:]", v12];
      [(PSSpecifierUpdates *)self _operationFailed:v10 reason:v13];
    }
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (BOOL)removeSpecifiersInGroupWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
    v6 = [_groupIndexCreatingIfNecessary groupIndexOfGroupWithID:dCopy];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(PSSpecifierUpdates *)self removeSpecifiersInGroupAtGroupIndex:v6];
      goto LABEL_7;
    }

    if (self->_wantsDebugCallbacks)
    {
      v7 = [PSSpecifierUpdateOperation removeOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v8 = MEMORY[0x1E696AEC0];
      dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to remove specifiers in missing group with ID %@", dCopy];
      v10 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates removeSpecifiersInGroupWithID:]", dCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v7 reason:v10];
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)reloadSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v5 = [(NSMutableArray *)self->_currentSpecifiers indexOfObject:specifierCopy];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(PSSpecifierUpdates *)self reloadSpecifierAtIndex:v5];
      goto LABEL_7;
    }

    if (self->_wantsDebugCallbacks)
    {
      v6 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:specifierCopy atIndex:0x7FFFFFFFFFFFFFFFLL];
      v7 = MEMORY[0x1E696AEC0];
      specifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload missing specifier %@", specifierCopy];
      v9 = [v7 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifier:]", specifierCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v6 reason:v9];
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)reloadSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if ([specifiersCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__PSSpecifierUpdates_reloadSpecifiers___block_invoke;
    v7[3] = &unk_1E71DDE58;
    v7[4] = self;
    v5 = [(PSSpecifierUpdates *)self _enumerateArrayWithConjuctionalResult:specifiersCopy usingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)reloadSpecifiersInGroupAtGroupIndex:(unint64_t)index
{
  _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  if ([_groupIndexCreatingIfNecessary numberOfGroups] <= index)
  {
    if (self->_wantsDebugCallbacks)
    {
      v8 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v9 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload specifiers in out-of-bounds group at index %lu", index];
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [_groupIndexCreatingIfNecessary rangeOfSpecifiersInGroupAtGroupIndex:index];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [(PSSpecifierUpdates *)self reloadSpecifiersInRange:v6, v7];
      goto LABEL_10;
    }

    if (self->_wantsDebugCallbacks)
    {
      v8 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v9 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload specifiers in missing group at index %lu", index];
      v10 = LABEL_7:;
      v11 = [v9 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifiersInGroupAtGroupIndex:]", v10];
      [(PSSpecifierUpdates *)self _operationFailed:v8 reason:v11];
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (BOOL)reloadSpecifiersInGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy && ![groupCopy cellType])
  {
    _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
    v9 = [_groupIndexCreatingIfNecessary groupIndexOfGroup:v5];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(PSSpecifierUpdates *)self reloadSpecifiersInGroupAtGroupIndex:v9];
      goto LABEL_4;
    }

    if (self->_wantsDebugCallbacks)
    {
      v10 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload specifiers in missing group %@", v5];
      v13 = [v11 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifiersInGroup:]", v12];
      [(PSSpecifierUpdates *)self _operationFailed:v10 reason:v13];
    }
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (BOOL)reloadSpecifiersInGroupWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
    v6 = [_groupIndexCreatingIfNecessary groupIndexOfGroupWithID:dCopy];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(PSSpecifierUpdates *)self reloadSpecifiersInGroupAtGroupIndex:v6];
      goto LABEL_7;
    }

    if (self->_wantsDebugCallbacks)
    {
      v7 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v8 = MEMORY[0x1E696AEC0];
      dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload specifiers in missing group ID %@", dCopy];
      v10 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifiersInGroupWithID:]", dCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v7 reason:v10];
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)reloadSpecifierWithID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    currentSpecifiers = self->_currentSpecifiers;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__PSSpecifierUpdates_reloadSpecifierWithID___block_invoke;
    v15[3] = &unk_1E71DDE80;
    v7 = dCopy;
    v16 = v7;
    v8 = [(NSMutableArray *)currentSpecifiers indexOfObjectPassingTest:v15];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (self->_wantsDebugCallbacks)
      {
        v9 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
        v10 = MEMORY[0x1E696AEC0];
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload missing specifier ID %@", v7];
        v12 = [v10 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifierWithID:]", v11];
        [(PSSpecifierUpdates *)self _operationFailed:v9 reason:v12];
      }

      v13 = 0;
    }

    else
    {
      v13 = [(PSSpecifierUpdates *)self reloadSpecifierAtIndex:v8];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __44__PSSpecifierUpdates_reloadSpecifierWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)reloadSpecifiersWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PSSpecifierUpdates_reloadSpecifiersWithIDs___block_invoke;
    v7[3] = &unk_1E71DDEA8;
    v7[4] = self;
    v5 = [(PSSpecifierUpdates *)self _enumerateArrayWithConjuctionalResult:dsCopy usingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)reloadSpecifierAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_currentSpecifiers count]<= index)
  {
    if (!self->_wantsDebugCallbacks)
    {
      return 0;
    }

    v5 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:index];
    v8 = MEMORY[0x1E696AEC0];
    index = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload specifier at out-of-bounds index %lu", index];
    v9 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifierAtIndex:]", index];
    [(PSSpecifierUpdates *)self _operationFailed:v5 reason:v9];

    v7 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndexedSubscript:index];
    index = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:v5 atIndex:index];
    v7 = [(PSSpecifierUpdates *)self _addAndApplyOperation:index];
  }

  return v7;
}

- (BOOL)reloadSpecifierAtIndexPath:(id)path
{
  pathCopy = path;
  _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  v6 = [_groupIndexCreatingIfNecessary indexOfSpecifierAtIndexPath:pathCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_wantsDebugCallbacks)
    {
      v7 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
      v8 = MEMORY[0x1E696AEC0];
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to reload specifier at missing or out-of-bounds indexPath %@", pathCopy];
      v10 = [v8 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifierAtIndexPath:]", pathCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v7 reason:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = [(PSSpecifierUpdates *)self reloadSpecifierAtIndex:v6];
  }

  return v11;
}

- (BOOL)reloadSpecifiersInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = range.location + range.length;
  v7 = [(NSMutableArray *)self->_currentSpecifiers count];
  if (v6 > v7)
  {
    if (self->_wantsDebugCallbacks)
    {
      v9 = [PSSpecifierUpdateOperation reloadOperationWithSpecifier:0 atIndex:v6];
      v10 = MEMORY[0x1E696AEC0];
      v15.location = location;
      v15.length = length;
      v11 = NSStringFromRange(v15);
      v12 = [v10 stringWithFormat:@"attempted to reload specifiers in out-of-bounds range %@", v11];
      v13 = [v10 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates reloadSpecifiersInRange:]", v12];
      [(PSSpecifierUpdates *)self _operationFailed:v9 reason:v13];
    }
  }

  else
  {
    for (i = v6 - 1; i >= location; --i)
    {
      [(PSSpecifierUpdates *)self reloadSpecifierAtIndex:i];
    }
  }

  return v6 <= v7;
}

- (BOOL)moveSpecifierAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  if ([(NSMutableArray *)self->_currentSpecifiers count]> index)
  {
    v7 = [(NSMutableArray *)self->_currentSpecifiers count];
    if (index != toIndex && v7 > toIndex)
    {
      v8 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndexedSubscript:index];
      v9 = [PSSpecifierUpdateOperation moveOperationWithSpecifier:v8 fromIndex:index toIndex:toIndex];
      v10 = [(PSSpecifierUpdates *)self _addAndApplyOperation:v9];

LABEL_11:
      return v10;
    }
  }

  if (!self->_wantsDebugCallbacks)
  {
    return 0;
  }

  v11 = [(NSMutableArray *)self->_currentSpecifiers count];
  if (v11 <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndexedSubscript:index];
  }

  v13 = [PSSpecifierUpdateOperation moveOperationWithSpecifier:v8 fromIndex:index toIndex:toIndex];
  v14 = MEMORY[0x1E696AEC0];
  toIndex = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to move specifier from index %lu to index %lu, when one or more of these indexes are out of bounds", index, toIndex];
  v16 = [v14 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates moveSpecifierAtIndex:toIndex:]", toIndex];
  [(PSSpecifierUpdates *)self _operationFailed:v13 reason:v16];

  v10 = 0;
  result = 0;
  if (v11 > index)
  {
    goto LABEL_11;
  }

  return result;
}

- (BOOL)moveSpecifierAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  _groupIndexCreatingIfNecessary = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  v9 = [_groupIndexCreatingIfNecessary indexOfSpecifierAtIndexPath:pathCopy];

  _groupIndexCreatingIfNecessary2 = [(PSSpecifierUpdates *)self _groupIndexCreatingIfNecessary];
  v11 = [_groupIndexCreatingIfNecessary2 indexOfSpecifierAtIndexPath:indexPathCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_wantsDebugCallbacks)
    {
      v13 = [(NSMutableArray *)self->_currentSpecifiers count];
      if (v9 >= v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndexedSubscript:v9];
      }

      v15 = [PSSpecifierUpdateOperation moveOperationWithSpecifier:v14 fromIndex:v9 toIndex:v11];
      v16 = MEMORY[0x1E696AEC0];
      indexPathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to move specifier from indexPath %@ to indexPath %@, when one or more of these indexPaths are missing or out of bounds", pathCopy, indexPathCopy];
      v18 = [v16 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates moveSpecifierAtIndexPath:toIndexPath:]", indexPathCopy];
      [(PSSpecifierUpdates *)self _operationFailed:v15 reason:v18];

      if (v9 < v13)
      {
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = -[PSSpecifierUpdates moveSpecifierAtIndex:toIndex:](self, "moveSpecifierAtIndex:toIndex:", v9, v11 - ([pathCopy section] < objc_msgSend(indexPathCopy, "section")));
  }

  return v12;
}

- (BOOL)moveSpecifier:(id)specifier toIndex:(unint64_t)index
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v7 = [(NSMutableArray *)self->_currentSpecifiers indexOfObject:specifierCopy];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [(PSSpecifierUpdates *)self moveSpecifierAtIndex:v7 toIndex:index];
      goto LABEL_7;
    }

    if (self->_wantsDebugCallbacks)
    {
      v8 = [PSSpecifierUpdateOperation moveOperationWithSpecifier:0 fromIndex:0x7FFFFFFFFFFFFFFFLL toIndex:index];
      v9 = MEMORY[0x1E696AEC0];
      0x7FFFFFFFFFFFFFFFLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to move specifier from out-of-bounds index %lu", 0x7FFFFFFFFFFFFFFFLL];
      v11 = [v9 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates moveSpecifier:toIndex:]", 0x7FFFFFFFFFFFFFFFLL];
      [(PSSpecifierUpdates *)self _operationFailed:v8 reason:v11];
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (BOOL)swapSpecifierAtIndex:(unint64_t)index withSpecifierAtIndex:(unint64_t)atIndex
{
  if ([(NSMutableArray *)self->_currentSpecifiers count]<= index || [(NSMutableArray *)self->_currentSpecifiers count]<= atIndex)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    if (index >= atIndex)
    {
      indexCopy = atIndex;
    }

    else
    {
      indexCopy = index;
    }

    if (index > atIndex)
    {
      atIndex = index;
    }

    v8 = [(PSSpecifierUpdates *)self moveSpecifierAtIndex:indexCopy toIndex:atIndex];
    if (v8)
    {
      if (indexCopy == atIndex - 1)
      {
        LOBYTE(v8) = 1;
      }

      else
      {

        LOBYTE(v8) = [PSSpecifierUpdates moveSpecifierAtIndex:"moveSpecifierAtIndex:toIndex:" toIndex:?];
      }
    }
  }

  return v8;
}

- (BOOL)swapSpecifier:(id)specifier withSpecifier:(id)withSpecifier
{
  specifierCopy = specifier;
  withSpecifierCopy = withSpecifier;
  v8 = withSpecifierCopy;
  v9 = 0;
  if (specifierCopy && withSpecifierCopy)
  {
    v10 = [(NSMutableArray *)self->_currentSpecifiers indexOfObject:specifierCopy];
    v11 = [(NSMutableArray *)self->_currentSpecifiers indexOfObject:v8];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x7FFFFFFFFFFFFFFFLL || v10 == v11)
    {
      if (v10 != v11 && self->_wantsDebugCallbacks)
      {
        v14 = v11 != 0x7FFFFFFFFFFFFFFFLL;
        v15 = v10 != 0x7FFFFFFFFFFFFFFFLL;
        v16 = [PSSpecifierUpdateOperation moveOperationWithSpecifier:specifierCopy fromIndex:v10 toIndex:v11];
        v17 = MEMORY[0x1E696AEC0];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempted to swap specifier %@ (found: %d) with specifier %@ (found: %d), when one or more of these specifiers could not be found", specifierCopy, v15, v8, v14];
        v19 = [v17 stringWithFormat:@"%s failed: %@", "-[PSSpecifierUpdates swapSpecifier:withSpecifier:]", v18];
        [(PSSpecifierUpdates *)self _operationFailed:v16 reason:v19];
      }

      v9 = 0;
    }

    else
    {
      v9 = [(PSSpecifierUpdates *)self swapSpecifierAtIndex:v10 withSpecifierAtIndex:v11];
    }
  }

  return v9;
}

+ (void)_assertSpecifierIDsAreUnique:(id)unique
{
  uniqueCopy = unique;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(uniqueCopy, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PSSpecifierUpdates__assertSpecifierIDsAreUnique___block_invoke;
  v7[3] = &unk_1E71DBDE0;
  v8 = v4;
  v9 = uniqueCopy;
  v5 = uniqueCopy;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __51__PSSpecifierUpdates__assertSpecifierIDsAreUnique___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = v5;

  if ([*(a1 + 32) containsObject:v6])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"found specifier with duplicate ID %@ in specifiers %@", v7, *(a1 + 40)}];
  }

  [*(a1 + 32) addObject:v6];
}

+ (id)updatesByDiffingSpecifiers:(id)specifiers withSpecifiers:(id)withSpecifiers changedBlock:(id)block
{
  v69[1] = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  withSpecifiersCopy = withSpecifiers;
  blockCopy = block;
  v11 = 0;
  if (specifiersCopy && withSpecifiersCopy)
  {
    v44 = blockCopy;
    v12 = [objc_opt_class() updatesWithSpecifiers:specifiersCopy];
    [self _assertSpecifierIDsAreUnique:specifiersCopy];
    [self _assertSpecifierIDsAreUnique:withSpecifiersCopy];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v17 = [MEMORY[0x1E695DFA8] set];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke;
    v65[3] = &unk_1E71DDED0;
    v18 = specifiersCopy;
    v66 = v18;
    v19 = dictionary;
    v67 = v19;
    v20 = indexSet2;
    v68 = v20;
    [withSpecifiersCopy enumerateObjectsUsingBlock:v65];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_2;
    v58[3] = &unk_1E71DDEF8;
    v59 = withSpecifiersCopy;
    v60 = indexSet;
    v61 = v20;
    v64 = v44;
    v21 = dictionary2;
    v62 = v21;
    v63 = v17;
    v40 = v17;
    v43 = v20;
    v42 = indexSet;
    [v18 enumerateObjectsUsingBlock:v58];
    v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 selector:sel_compare_];
    v69[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_3;
    v56[3] = &unk_1E71DDF20;
    v24 = v12;
    v57 = v24;
    [v42 enumerateIndexesWithOptions:2 usingBlock:v56];
    allKeys = [v21 allKeys];
    v39 = [allKeys sortedArrayUsingDescriptors:v23];

    array = [MEMORY[0x1E695DF70] array];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_4;
    v53[3] = &unk_1E71DDF48;
    v54 = array;
    v55 = v21;
    v41 = v21;
    v27 = array;
    [v39 enumerateObjectsUsingBlock:v53];
    currentSpecifiers = [v24 currentSpecifiers];
    v29 = [currentSpecifiers mutableCopy];

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_5;
    v50[3] = &unk_1E71DBDE0;
    v51 = v29;
    v30 = v24;
    v52 = v30;
    v31 = v29;
    [v27 enumerateObjectsWithOptions:2 usingBlock:v50];
    allKeys2 = [v19 allKeys];
    v33 = [allKeys2 sortedArrayUsingDescriptors:v23];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_7;
    v47[3] = &unk_1E71DDF48;
    v48 = v19;
    v34 = v30;
    v49 = v34;
    v38 = v19;
    [v33 enumerateObjectsUsingBlock:v47];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_8;
    v45[3] = &unk_1E71DDF70;
    v35 = v34;
    v46 = v35;
    [v40 enumerateObjectsUsingBlock:v45];
    v36 = v46;
    v11 = v35;

    blockCopy = v44;
  }

  return v11;
}

void __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11 = v5;
  v7 = [v5 identifier];
  v8 = [v6 indexOfSpecifierWithID:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v9 setObject:v11 forKeyedSubscript:v10];

    [*(a1 + 48) addIndex:a3];
  }
}

void __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v18 = v5;
  v7 = [v5 identifier];
  v8 = [v6 indexOfSpecifierWithID:v7];

  v9 = *(a1 + 40);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 addIndex:a3];
    goto LABEL_10;
  }

  v10 = a3 - [v9 countOfIndexesInRange:{0, a3}];
  v11 = v8 - [*(a1 + 48) countOfIndexesInRange:{0, v8}];
  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = [*(a1 + 32) objectAtIndexedSubscript:v11];
    LOBYTE(v12) = (*(v12 + 16))(v12, v18, v13);
  }

  if (v11 != v10)
  {
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [v14 setObject:v18 forKeyedSubscript:v15];

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((*(a1 + 72) == 0) | v12 & 1)
  {
LABEL_9:
    v16 = *(a1 + 64);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [v16 addObject:v17];
  }

LABEL_10:
}

void __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v2 addObject:v3];
}

void __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_6;
  v11[3] = &unk_1E71DDE80;
  v7 = v5;
  v12 = v7;
  v8 = [v6 indexOfObjectWithOptions:2 passingTest:v11];
  if (v8 != a3)
  {
    v9 = v8;
    v10 = [*(a1 + 32) objectAtIndexedSubscript:v8];
    [*(a1 + 32) removeObjectAtIndex:v9];
    [*(a1 + 32) insertObject:v10 atIndex:a3];
    [*(a1 + 40) moveSpecifierAtIndex:v9 toIndex:a3];
  }
}

uint64_t __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    [*(a1 + 40) insertSpecifier:v3 atIndex:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }
}

uint64_t __77__PSSpecifierUpdates_updatesByDiffingSpecifiers_withSpecifiers_changedBlock___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];

  return [v2 reloadSpecifierAtIndex:v3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PSSpecifierUpdates;
  v4 = [(PSSpecifierUpdates *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %lu updates, context: %@, updates: %@", v4, -[NSMutableArray count](self->_updates, "count"), self->_context, self->_updates];

  return v5;
}

- (id)stepByStepDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:self->_originalSpecifiers];
  [string appendFormat:@"Initial specifiers: %@\n", v4];
  updates = self->_updates;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__PSSpecifierUpdates_stepByStepDescription__block_invoke;
  v10[3] = &unk_1E71DDF98;
  v11 = v4;
  v12 = string;
  selfCopy = self;
  v6 = string;
  v7 = v4;
  [(NSMutableArray *)updates enumerateObjectsUsingBlock:v10];
  [v6 appendFormat:@"Finished applying updates"];
  v8 = [v6 copy];

  return v8;
}

uint64_t __43__PSSpecifierUpdates_stepByStepDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v6 applyToArray:v5];
  [*(a1 + 40) appendFormat:@"Applied operation %lu of %lu %@\n", a3 + 1, objc_msgSend(*(*(a1 + 48) + 16), "count"), v6];

  return [*(a1 + 40) appendFormat:@"Specifiers: %@\n", *(a1 + 32)];
}

- (id)specifiersAfterApplyingUpdatesToIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_updates count]- 1 <= index)
  {
    v8 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_currentSpecifiers];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_originalSpecifiers];
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, index + 1}];
    updates = self->_updates;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PSSpecifierUpdates_specifiersAfterApplyingUpdatesToIndex___block_invoke;
    v10[3] = &unk_1E71DDDB8;
    v8 = v5;
    v11 = v8;
    [(NSMutableArray *)updates enumerateObjectsAtIndexes:v6 options:0 usingBlock:v10];
  }

  return v8;
}

@end