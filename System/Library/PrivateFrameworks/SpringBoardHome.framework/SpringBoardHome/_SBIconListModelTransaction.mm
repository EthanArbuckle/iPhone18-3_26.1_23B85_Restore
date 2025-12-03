@interface _SBIconListModelTransaction
- (SBIconListModel)listModel;
- (_SBIconListModelTransaction)initWithListModel:(id)model;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addAddedIcons:(id)icons;
- (void)addAssertion:(id)assertion;
- (void)addMovedIcons:(id)icons;
- (void)addNodeIdentifiers:(id)identifiers;
- (void)addRemovedIcons:(id)icons;
- (void)commitChanges;
- (void)queueNotifyingListObserversDidAddIcons:(id)icons didRemoveIcons:(id)removeIcons movedIcons:(id)movedIcons didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)removeAssertion:(id)assertion;
- (void)removeNodeIdentifiers:(id)identifiers;
@end

@implementation _SBIconListModelTransaction

- (_SBIconListModelTransaction)initWithListModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = _SBIconListModelTransaction;
  v5 = [(_SBIconListModelTransaction *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_listModel, modelCopy);
    v7 = objc_opt_new();
    addedNodeIdentifiers = v6->_addedNodeIdentifiers;
    v6->_addedNodeIdentifiers = v7;

    v9 = objc_opt_new();
    deletedNodeIdentifiers = v6->_deletedNodeIdentifiers;
    v6->_deletedNodeIdentifiers = v9;
  }

  return v6;
}

- (void)addNodeIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_deletedNodeIdentifiers containsObject:v9])
        {
          [(NSMutableSet *)self->_deletedNodeIdentifiers removeObject:v9];
        }

        else
        {
          [(NSMutableSet *)self->_addedNodeIdentifiers addObject:v9];
        }
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)removeNodeIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_addedNodeIdentifiers containsObject:v9])
        {
          [(NSMutableSet *)self->_addedNodeIdentifiers removeObject:v9];
        }

        else
        {
          [(NSMutableSet *)self->_deletedNodeIdentifiers addObject:v9];
        }
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addAssertion:(id)assertion
{
  assertionCopy = assertion;
  coalesceChangesAssertions = self->_coalesceChangesAssertions;
  v8 = assertionCopy;
  if (!coalesceChangesAssertions)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v7 = self->_coalesceChangesAssertions;
    self->_coalesceChangesAssertions = weakObjectsPointerArray;

    assertionCopy = v8;
    coalesceChangesAssertions = self->_coalesceChangesAssertions;
  }

  [(NSPointerArray *)coalesceChangesAssertions addPointer:assertionCopy];
}

- (void)removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  v4 = [(NSPointerArray *)self->_coalesceChangesAssertions count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [(NSPointerArray *)self->_coalesceChangesAssertions pointerAtIndex:v6];
      if (v7 == assertionCopy)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_coalesceChangesAssertions removePointerAtIndex:v6];
  }

LABEL_7:
}

- (void)queueNotifyingListObserversDidAddIcons:(id)icons didRemoveIcons:(id)removeIcons movedIcons:(id)movedIcons didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  v24[1] = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  removeIconsCopy = removeIcons;
  movedIconsCopy = movedIcons;
  iconCopy = icon;
  withIconCopy = withIcon;
  if (iconsCopy)
  {
    [(_SBIconListModelTransaction *)self addAddedIcons:iconsCopy];
  }

  if (removeIconsCopy)
  {
    [(_SBIconListModelTransaction *)self addRemovedIcons:removeIconsCopy];
  }

  if (movedIconsCopy)
  {
    [(_SBIconListModelTransaction *)self addMovedIcons:movedIconsCopy];
  }

  if (iconCopy)
  {
    replacedIcon = [(_SBIconListModelTransaction *)self replacedIcon];
    v18 = replacedIcon;
    if (replacedIcon)
    {
      v24[0] = replacedIcon;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [(_SBIconListModelTransaction *)self addRemovedIcons:v19];
    }

    [(_SBIconListModelTransaction *)self setReplacedIcon:iconCopy];
  }

  if (withIconCopy)
  {
    replacementIcon = [(_SBIconListModelTransaction *)self replacementIcon];
    v21 = replacementIcon;
    if (replacementIcon)
    {
      v23 = replacementIcon;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      [(_SBIconListModelTransaction *)self addAddedIcons:v22];
    }

    [(_SBIconListModelTransaction *)self setReplacementIcon:withIconCopy];
  }
}

- (void)addAddedIcons:(id)icons
{
  iconsCopy = icons;
  addedIcons = self->_addedIcons;
  v8 = iconsCopy;
  if (!addedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_addedIcons;
    self->_addedIcons = v6;

    iconsCopy = v8;
    addedIcons = self->_addedIcons;
  }

  [(NSMutableOrderedSet *)addedIcons addObjectsFromArray:iconsCopy];
  [(NSMutableOrderedSet *)self->_removedIcons removeObjectsInArray:v8];
}

- (void)addRemovedIcons:(id)icons
{
  iconsCopy = icons;
  removedIcons = self->_removedIcons;
  v8 = iconsCopy;
  if (!removedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_removedIcons;
    self->_removedIcons = v6;

    iconsCopy = v8;
    removedIcons = self->_removedIcons;
  }

  [(NSMutableOrderedSet *)removedIcons addObjectsFromArray:iconsCopy];
  [(NSMutableOrderedSet *)self->_addedIcons removeObjectsInArray:v8];
}

- (void)addMovedIcons:(id)icons
{
  iconsCopy = icons;
  movedIcons = self->_movedIcons;
  v8 = iconsCopy;
  if (!movedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_movedIcons;
    self->_movedIcons = v6;

    iconsCopy = v8;
    movedIcons = self->_movedIcons;
  }

  [(NSMutableOrderedSet *)movedIcons addObjectsFromArray:iconsCopy];
}

- (void)commitChanges
{
  listModel = [(_SBIconListModelTransaction *)self listModel];
  v4 = [(NSMutableSet *)self->_addedNodeIdentifiers copy];
  v5 = [(NSMutableSet *)self->_deletedNodeIdentifiers copy];
  v6 = [v4 count];
  v7 = [v5 count];
  if (v6 | v7)
  {
    v8 = v7 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __44___SBIconListModelTransaction_commitChanges__block_invoke;
    v22[3] = &unk_1E808E4F0;
    v26 = v6 != 0;
    v23 = listModel;
    v24 = v4;
    v27 = v8;
    v25 = v5;
    [v23 enumerateNodeObserversUsingBlock:v22];
  }

  array = [(NSMutableOrderedSet *)self->_addedIcons array];
  array2 = [(NSMutableOrderedSet *)self->_removedIcons array];
  array3 = [(NSMutableOrderedSet *)self->_movedIcons array];
  replacedIcon = [(_SBIconListModelTransaction *)self replacedIcon];
  replacementIcon = [(_SBIconListModelTransaction *)self replacementIcon];
  v14 = replacementIcon;
  if (array || array2 || array3 || replacedIcon || replacementIcon)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44___SBIconListModelTransaction_commitChanges__block_invoke_2;
    v15[3] = &unk_1E808E4C8;
    v16 = listModel;
    v17 = array;
    v18 = array2;
    v19 = array3;
    v20 = replacedIcon;
    v21 = v14;
    [v16 _notifyListObservers:v15];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBIconListModelTransaction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBIconListModelTransaction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBIconListModelTransaction *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_addedNodeIdentifiers withName:@"addedNodeIdentifiers"];
  v6 = [succinctDescriptionBuilder appendObject:self->_deletedNodeIdentifiers withName:@"removedNodeIdentifiers"];
  v7 = [succinctDescriptionBuilder appendObject:self->_addedIcons withName:@"addedIcons" skipIfNil:1];
  v8 = [succinctDescriptionBuilder appendObject:self->_removedIcons withName:@"removedIcons" skipIfNil:1];
  v9 = [succinctDescriptionBuilder appendObject:self->_movedIcons withName:@"movedIcons" skipIfNil:1];
  v10 = [succinctDescriptionBuilder appendObject:self->_replacedIcon withName:@"replacedIcon" skipIfNil:1];
  v11 = [succinctDescriptionBuilder appendObject:self->_replacementIcon withName:@"replacementIcon" skipIfNil:1];
  allObjects = [(NSPointerArray *)self->_coalesceChangesAssertions allObjects];
  v13 = [allObjects bs_compactMap:&__block_literal_global_1245];

  v14 = [succinctDescriptionBuilder appendObject:v13 withName:@"reasons"];

  return succinctDescriptionBuilder;
}

- (SBIconListModel)listModel
{
  WeakRetained = objc_loadWeakRetained(&self->_listModel);

  return WeakRetained;
}

@end