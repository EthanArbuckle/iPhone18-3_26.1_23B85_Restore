@interface _SBIconListModelTransaction
- (SBIconListModel)listModel;
- (_SBIconListModelTransaction)initWithListModel:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)addAddedIcons:(id)a3;
- (void)addAssertion:(id)a3;
- (void)addMovedIcons:(id)a3;
- (void)addNodeIdentifiers:(id)a3;
- (void)addRemovedIcons:(id)a3;
- (void)commitChanges;
- (void)queueNotifyingListObserversDidAddIcons:(id)a3 didRemoveIcons:(id)a4 movedIcons:(id)a5 didReplaceIcon:(id)a6 withIcon:(id)a7;
- (void)removeAssertion:(id)a3;
- (void)removeNodeIdentifiers:(id)a3;
@end

@implementation _SBIconListModelTransaction

- (_SBIconListModelTransaction)initWithListModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SBIconListModelTransaction;
  v5 = [(_SBIconListModelTransaction *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_listModel, v4);
    v7 = objc_opt_new();
    addedNodeIdentifiers = v6->_addedNodeIdentifiers;
    v6->_addedNodeIdentifiers = v7;

    v9 = objc_opt_new();
    deletedNodeIdentifiers = v6->_deletedNodeIdentifiers;
    v6->_deletedNodeIdentifiers = v9;
  }

  return v6;
}

- (void)addNodeIdentifiers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)removeNodeIdentifiers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addAssertion:(id)a3
{
  v4 = a3;
  coalesceChangesAssertions = self->_coalesceChangesAssertions;
  v8 = v4;
  if (!coalesceChangesAssertions)
  {
    v6 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v7 = self->_coalesceChangesAssertions;
    self->_coalesceChangesAssertions = v6;

    v4 = v8;
    coalesceChangesAssertions = self->_coalesceChangesAssertions;
  }

  [(NSPointerArray *)coalesceChangesAssertions addPointer:v4];
}

- (void)removeAssertion:(id)a3
{
  v8 = a3;
  v4 = [(NSPointerArray *)self->_coalesceChangesAssertions count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [(NSPointerArray *)self->_coalesceChangesAssertions pointerAtIndex:v6];
      if (v7 == v8)
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

- (void)queueNotifyingListObserversDidAddIcons:(id)a3 didRemoveIcons:(id)a4 movedIcons:(id)a5 didReplaceIcon:(id)a6 withIcon:(id)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    [(_SBIconListModelTransaction *)self addAddedIcons:v12];
  }

  if (v13)
  {
    [(_SBIconListModelTransaction *)self addRemovedIcons:v13];
  }

  if (v14)
  {
    [(_SBIconListModelTransaction *)self addMovedIcons:v14];
  }

  if (v15)
  {
    v17 = [(_SBIconListModelTransaction *)self replacedIcon];
    v18 = v17;
    if (v17)
    {
      v24[0] = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [(_SBIconListModelTransaction *)self addRemovedIcons:v19];
    }

    [(_SBIconListModelTransaction *)self setReplacedIcon:v15];
  }

  if (v16)
  {
    v20 = [(_SBIconListModelTransaction *)self replacementIcon];
    v21 = v20;
    if (v20)
    {
      v23 = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      [(_SBIconListModelTransaction *)self addAddedIcons:v22];
    }

    [(_SBIconListModelTransaction *)self setReplacementIcon:v16];
  }
}

- (void)addAddedIcons:(id)a3
{
  v4 = a3;
  addedIcons = self->_addedIcons;
  v8 = v4;
  if (!addedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_addedIcons;
    self->_addedIcons = v6;

    v4 = v8;
    addedIcons = self->_addedIcons;
  }

  [(NSMutableOrderedSet *)addedIcons addObjectsFromArray:v4];
  [(NSMutableOrderedSet *)self->_removedIcons removeObjectsInArray:v8];
}

- (void)addRemovedIcons:(id)a3
{
  v4 = a3;
  removedIcons = self->_removedIcons;
  v8 = v4;
  if (!removedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_removedIcons;
    self->_removedIcons = v6;

    v4 = v8;
    removedIcons = self->_removedIcons;
  }

  [(NSMutableOrderedSet *)removedIcons addObjectsFromArray:v4];
  [(NSMutableOrderedSet *)self->_addedIcons removeObjectsInArray:v8];
}

- (void)addMovedIcons:(id)a3
{
  v4 = a3;
  movedIcons = self->_movedIcons;
  v8 = v4;
  if (!movedIcons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_movedIcons;
    self->_movedIcons = v6;

    v4 = v8;
    movedIcons = self->_movedIcons;
  }

  [(NSMutableOrderedSet *)movedIcons addObjectsFromArray:v4];
}

- (void)commitChanges
{
  v3 = [(_SBIconListModelTransaction *)self listModel];
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
    v23 = v3;
    v24 = v4;
    v27 = v8;
    v25 = v5;
    [v23 enumerateNodeObserversUsingBlock:v22];
  }

  v9 = [(NSMutableOrderedSet *)self->_addedIcons array];
  v10 = [(NSMutableOrderedSet *)self->_removedIcons array];
  v11 = [(NSMutableOrderedSet *)self->_movedIcons array];
  v12 = [(_SBIconListModelTransaction *)self replacedIcon];
  v13 = [(_SBIconListModelTransaction *)self replacementIcon];
  v14 = v13;
  if (v9 || v10 || v11 || v12 || v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44___SBIconListModelTransaction_commitChanges__block_invoke_2;
    v15[3] = &unk_1E808E4C8;
    v16 = v3;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v14;
    [v16 _notifyListObservers:v15];
  }
}

- (id)succinctDescription
{
  v2 = [(_SBIconListModelTransaction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBIconListModelTransaction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBIconListModelTransaction *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_addedNodeIdentifiers withName:@"addedNodeIdentifiers"];
  v6 = [v4 appendObject:self->_deletedNodeIdentifiers withName:@"removedNodeIdentifiers"];
  v7 = [v4 appendObject:self->_addedIcons withName:@"addedIcons" skipIfNil:1];
  v8 = [v4 appendObject:self->_removedIcons withName:@"removedIcons" skipIfNil:1];
  v9 = [v4 appendObject:self->_movedIcons withName:@"movedIcons" skipIfNil:1];
  v10 = [v4 appendObject:self->_replacedIcon withName:@"replacedIcon" skipIfNil:1];
  v11 = [v4 appendObject:self->_replacementIcon withName:@"replacementIcon" skipIfNil:1];
  v12 = [(NSPointerArray *)self->_coalesceChangesAssertions allObjects];
  v13 = [v12 bs_compactMap:&__block_literal_global_1245];

  v14 = [v4 appendObject:v13 withName:@"reasons"];

  return v4;
}

- (SBIconListModel)listModel
{
  WeakRetained = objc_loadWeakRetained(&self->_listModel);

  return WeakRetained;
}

@end