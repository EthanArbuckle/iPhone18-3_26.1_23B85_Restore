@interface CRTombstoneOrderedSet
- (BOOL)containsObjectEqualTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)wantsUndoCommands;
- (CRDocument)document;
- (CRTombstoneOrderedSet)initWithCRCoder:(id)a3;
- (CRTombstoneOrderedSet)initWithCRCoder:(id)a3 orderedSet:(const void *)a4;
- (CRTombstoneOrderedSet)initWithDocument:(id)a3;
- (CRTombstoneOrderedSet)initWithOrdering:(id)a3 elements:(id)a4 document:(id)a5;
- (CRUndoDelegate)delegate;
- (NSMapTable)cachedIndexMapping;
- (NSMutableOrderedSet)cachedIdentifierSet;
- (NSString)description;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)generateNSOrderedIdentifierSetWithIndexMapping:(id)a3;
- (id)identifierForObjectInCachedSet:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectForIdentifier:(id)a3;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfEqualObject:(id)a3;
- (void)_removeObjectsFromOrderingAtIndices:(id)a3;
- (void)addObject:(id)a3;
- (void)addUndoCommandsForObject:(id)a3 block:(id)a4;
- (void)encodeWithCRCoder:(id)a3;
- (void)encodeWithCRCoder:(id)a3 orderedSet:(void *)a4;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)mergeWith:(id)a3;
- (void)moveClock;
- (void)moveObjectFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 mutableSafe:(BOOL)a5;
- (void)realizeLocalChangesIn:(id)a3;
- (void)regenerateNSOrderedIdentifierSetAndIndexMapping;
- (void)reinsertIdentifier:(id)a3 withMaskedIdentifiers:(id)a4 atIndex:(unint64_t)a5 forObjectToMove:(id)a6;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)setDocument:(id)a3;
- (void)shiftCachedIndicesStartingAtIndex:(unint64_t)a3 by:(int64_t)a4;
- (void)undoablyInsertObjectIdentifiersIntoElements:(id)a3;
- (void)undoablyRemoveObjectIdentifiersFromElements:(id)a3;
- (void)walkGraph:(id)a3;
- (void)wipeoutCaches;
@end

@implementation CRTombstoneOrderedSet

- (void)encodeWithCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 16)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 16;
    operator new();
  }

  [(CRTombstoneOrderedSet *)self encodeWithCRCoder:v6 orderedSet:*(v4 + 40)];
}

- (void)encodeWithCRCoder:(id)a3 orderedSet:(void *)a4
{
  v10 = a3;
  v6 = [(CRTombstoneOrderedSet *)self ordering];
  *(a4 + 8) |= 1u;
  v7 = *(a4 + 5);
  if (!v7)
  {
    operator new();
  }

  [v6 encodeWithCRCoder:v10 array:v7];

  v8 = [(CRTombstoneOrderedSet *)self elements];
  *(a4 + 8) |= 2u;
  v9 = *(a4 + 6);
  if (!v9)
  {
    operator new();
  }

  [v8 encodeWithCRCoder:v10 set:v9];
}

- (CRTombstoneOrderedSet)initWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 16)
  {
    v6 = [(CRTombstoneOrderedSet *)self initWithCRCoder:v4 orderedSet:*(v5 + 40)];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(CRTombstoneOrderedSet *)self initWithDocument:v7];
  }

  return v6;
}

- (CRTombstoneOrderedSet)initWithCRCoder:(id)a3 orderedSet:(const void *)a4
{
  v6 = a3;
  v7 = [CRArray alloc];
  v8 = v7;
  v9 = *(a4 + 5);
  if (!v9)
  {
    v9 = *(CRDT::OrderedSet::default_instance(v7) + 40);
  }

  v10 = [(CRArray *)v8 initWithCRCoder:v6 array:v9];
  v11 = [CRSet alloc];
  v12 = v11;
  v13 = *(a4 + 6);
  if (!v13)
  {
    v13 = *(CRDT::OrderedSet::default_instance(v11) + 48);
  }

  v14 = [(CRSet *)v12 initWithCRCoder:v6 set:v13];
  v15 = [v6 document];
  v16 = [(CRTombstoneOrderedSet *)self initWithOrdering:v10 elements:v14 document:v15];

  return v16;
}

- (unint64_t)count
{
  v2 = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v3 = [v2 count];

  return v3;
}

- (CRTombstoneOrderedSet)initWithDocument:(id)a3
{
  v4 = a3;
  v5 = [[CRArray alloc] initWithDocument:v4];
  v6 = [[CRSet alloc] initWithDocument:v4];
  v7 = [(CRTombstoneOrderedSet *)self initWithOrdering:v5 elements:v6 document:v4];

  return v7;
}

- (CRTombstoneOrderedSet)initWithOrdering:(id)a3 elements:(id)a4 document:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = CRTombstoneOrderedSet;
  v11 = [(CRTombstoneOrderedSet *)&v13 init];
  if (v11)
  {
    [v8 setDelegate:v11];
    [(CRTombstoneOrderedSet *)v11 setOrdering:v8];
    [(CRTombstoneOrderedSet *)v11 setElements:v9];
    [(CRTombstoneOrderedSet *)v11 setDocument:v10];
  }

  return v11;
}

- (NSMutableOrderedSet)cachedIdentifierSet
{
  cachedIdentifierSet = self->_cachedIdentifierSet;
  if (!cachedIdentifierSet)
  {
    [(CRTombstoneOrderedSet *)self regenerateNSOrderedIdentifierSetAndIndexMapping];
    cachedIdentifierSet = self->_cachedIdentifierSet;
  }

  return cachedIdentifierSet;
}

- (NSMapTable)cachedIndexMapping
{
  cachedIndexMapping = self->_cachedIndexMapping;
  if (!cachedIndexMapping)
  {
    [(CRTombstoneOrderedSet *)self regenerateNSOrderedIdentifierSetAndIndexMapping];
    cachedIndexMapping = self->_cachedIndexMapping;
  }

  return cachedIndexMapping;
}

- (void)regenerateNSOrderedIdentifierSetAndIndexMapping
{
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  cachedIndexMapping = self->_cachedIndexMapping;
  self->_cachedIndexMapping = v3;

  v5 = [(CRTombstoneOrderedSet *)self generateNSOrderedIdentifierSetWithIndexMapping:self->_cachedIndexMapping];
  cachedIdentifierSet = self->_cachedIdentifierSet;
  self->_cachedIdentifierSet = v5;

  MEMORY[0x1EEE66BB8]();
}

- (id)generateNSOrderedIdentifierSetWithIndexMapping:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA0] orderedSet];
  v6 = [(CRTombstoneOrderedSet *)self elements];
  v7 = [(CRTombstoneOrderedSet *)self ordering];
  v8 = [v7 contents];

  v9 = [(CRTombstoneOrderedSet *)self ordering];
  v10 = [v9 array];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__CRTombstoneOrderedSet_generateNSOrderedIdentifierSetWithIndexMapping___block_invoke;
  v18[3] = &unk_1E7509F90;
  v19 = v6;
  v20 = v8;
  v21 = v4;
  v11 = v5;
  v22 = v11;
  v12 = v4;
  v13 = v8;
  v14 = v6;
  [v10 enumerateObjectsUsingBlock:v18];

  v15 = v22;
  v16 = v11;

  return v11;
}

void __72__CRTombstoneOrderedSet_generateNSOrderedIdentifierSetWithIndexMapping___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if ([a1[4] containsObject:?])
  {
    v5 = [a1[5] objectForKeyedSubscript:v8];
    v6 = [a1[6] objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      [v6 addIndex:a3];
    }

    else
    {
      [a1[7] addObject:v8];
      v7 = [MEMORY[0x1E696AD50] indexSetWithIndex:a3];
      [a1[6] setObject:v7 forKey:v5];
    }
  }
}

- (void)wipeoutCaches
{
  cachedIndexMapping = self->_cachedIndexMapping;
  self->_cachedIndexMapping = 0;

  cachedIdentifierSet = self->_cachedIdentifierSet;
  self->_cachedIdentifierSet = 0;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v5 = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(CRTombstoneOrderedSet *)self objectForIdentifier:v6];

  return v7;
}

- (id)objectForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self ordering];
  v6 = [v5 contents];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (unint64_t)indexOfEqualObject:(id)a3
{
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [v5 objectForKey:v4];

  if (v6 && [v6 count])
  {
    v7 = [v6 firstIndex];
    v8 = [(CRTombstoneOrderedSet *)self ordering];
    v9 = [v8 array];
    v10 = [v9 objectAtIndexedSubscript:v7];

    v11 = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
    v12 = [v11 indexOfObject:v10];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)identifierForObjectInCachedSet:(id)a3
{
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(CRTombstoneOrderedSet *)self ordering];
    v8 = [v7 array];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "firstIndex")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsObjectEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [v5 objectForKey:v4];

  LOBYTE(v4) = [v6 count] != 0;
  return v4;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CRTombstoneOrderedSet *)self identifierForObjectInCachedSet:v6];
  if (!v7)
  {
    v8 = [(CRTombstoneOrderedSet *)self count];
    if (v8 <= a4)
    {
      if (v8 != a4)
      {
        v22 = os_log_create("com.apple.coreCRDT", "CRTombstoneOrderedSet");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [CRTombstoneOrderedSet insertObject:a4 atIndex:v22];
        }

        v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"CRTombstoneOrderedSet: inserting element at invalid index" userInfo:0];
        objc_exception_throw(v24);
      }

      v16 = [(CRTombstoneOrderedSet *)self ordering];
      v7 = [v16 _addObject:v6];

      cachedIndexMapping = self->_cachedIndexMapping;
      v18 = MEMORY[0x1E696AD50];
      v9 = [(CRTombstoneOrderedSet *)self ordering];
      v11 = [v18 indexSetWithIndex:{objc_msgSend(v9, "count") - 1}];
      [(NSMapTable *)cachedIndexMapping setObject:v11 forKey:v6];
    }

    else
    {
      v9 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:a4];
      v10 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
      v11 = [v10 objectForKey:v9];

      v12 = [v11 firstIndex];
      v13 = [(CRTombstoneOrderedSet *)self ordering];
      v7 = [v13 _insertObject:v6 atIndex:v12];

      [(CRTombstoneOrderedSet *)self shiftCachedIndicesStartingAtIndex:v12 by:1];
      v14 = self->_cachedIndexMapping;
      v15 = [MEMORY[0x1E696AD50] indexSetWithIndex:v12];
      [(NSMapTable *)v14 setObject:v15 forKey:v6];
    }

    v19 = [(CRTombstoneOrderedSet *)self elements];
    [v19 addObject:v7];

    cachedIdentifierSet = self->_cachedIdentifierSet;
    if (cachedIdentifierSet)
    {
      [(NSMutableOrderedSet *)cachedIdentifierSet insertObject:v7 atIndex:a4];
    }

    if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
    {
      v21 = [(CRTombstoneOrderedSet *)self delegate];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __46__CRTombstoneOrderedSet_insertObject_atIndex___block_invoke;
      v25[3] = &unk_1E7509FB8;
      v7 = v7;
      v26 = v7;
      [v21 addUndoCommandsForObject:self block:v25];
    }
  }
}

void __46__CRTombstoneOrderedSet_insertObject_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v6 count:1];
  [v3 undoablyRemoveObjectIdentifiersFromElements:{v4, v6, v7}];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)undoablyRemoveObjectIdentifiersFromElements:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self elements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 removeObject:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(CRTombstoneOrderedSet *)self wipeoutCaches];
  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    v11 = [(CRTombstoneOrderedSet *)self delegate];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__CRTombstoneOrderedSet_undoablyRemoveObjectIdentifiersFromElements___block_invoke;
    v13[3] = &unk_1E7509FB8;
    v14 = v6;
    [v11 addUndoCommandsForObject:self block:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)undoablyInsertObjectIdentifiersIntoElements:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self elements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(CRTombstoneOrderedSet *)self wipeoutCaches];
  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    v11 = [(CRTombstoneOrderedSet *)self delegate];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__CRTombstoneOrderedSet_undoablyInsertObjectIdentifiersIntoElements___block_invoke;
    v13[3] = &unk_1E7509FB8;
    v14 = v6;
    [v11 addUndoCommandsForObject:self block:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)shiftCachedIndicesStartingAtIndex:(unint64_t)a3 by:(int64_t)a4
{
  cachedIndexMapping = self->_cachedIndexMapping;
  if (cachedIndexMapping)
  {
    v10 = [(NSMapTable *)cachedIndexMapping objectEnumerator];
    v7 = [v10 nextObject];
    if (v7)
    {
      v8 = v7;
      do
      {
        [v8 shiftIndexesStartingAtIndex:a3 by:a4];
        v9 = [v10 nextObject];

        v8 = v9;
      }

      while (v9);
    }
  }
}

- (void)addObject:(id)a3
{
  v4 = a3;
  [(CRTombstoneOrderedSet *)self insertObject:v4 atIndex:[(CRTombstoneOrderedSet *)self count]];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v5 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:?];
  v6 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v7 = [v6 objectForKey:v5];

  v8 = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v9 = [v8 objectAtIndexedSubscript:a3];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count") + 1}];
  [v10 addObject:v9];
  v11 = [(CRTombstoneOrderedSet *)self elements];
  [v11 removeObject:v9];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__CRTombstoneOrderedSet_removeObjectAtIndex___block_invoke;
  v17[3] = &unk_1E7509FE0;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  [v7 enumerateIndexesUsingBlock:v17];
  [(NSMapTable *)self->_cachedIndexMapping removeObjectForKey:v5];
  [(CRTombstoneOrderedSet *)self _removeObjectsFromOrderingAtIndices:v7];
  cachedIdentifierSet = self->_cachedIdentifierSet;
  if (cachedIdentifierSet)
  {
    [(NSMutableOrderedSet *)cachedIdentifierSet removeObjectAtIndex:a3];
  }

  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    v14 = [(CRTombstoneOrderedSet *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__CRTombstoneOrderedSet_removeObjectAtIndex___block_invoke_2;
    v15[3] = &unk_1E7509FB8;
    v16 = v12;
    [v14 addUndoCommandsForObject:self block:v15];
  }
}

void __45__CRTombstoneOrderedSet_removeObjectAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) ordering];
  v5 = [v4 array];
  v7 = [v5 objectAtIndexedSubscript:a2];

  v6 = [*(a1 + 32) elements];
  [v6 removeObject:v7];

  [*(a1 + 40) addObject:v7];
}

- (void)moveObjectFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 mutableSafe:(BOOL)a5
{
  v5 = a5;
  if ([(CRTombstoneOrderedSet *)self count]< a4)
  {
    v31 = os_log_create("com.apple.coreCRDT", "CRTombstoneOrderedSet");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRTombstoneOrderedSet moveObjectFromIndex:a4 toIndex:v31 mutableSafe:?];
    }

    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"CRTombstoneOrderedSet: moving element to an invalid index" userInfo:0];
    objc_exception_throw(v32);
  }

  if (a3 != a4 || !v5)
  {
    v34 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:a4];
    v9 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:a3];
    v10 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
    v11 = [v10 objectForKey:v9];

    v12 = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
    v13 = [v12 objectAtIndexedSubscript:a3];

    v14 = [MEMORY[0x1E695DFA8] set];
    v15 = [(CRTombstoneOrderedSet *)self ordering];
    v16 = [v15 array];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__CRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke;
    v37[3] = &unk_1E7509FE0;
    v17 = v14;
    v38 = v17;
    v33 = v16;
    v39 = v33;
    [v11 enumerateIndexesUsingBlock:v37];
    [v17 removeObject:v13];
    [(NSMapTable *)self->_cachedIndexMapping removeObjectForKey:v9];
    if (a3 == a4)
    {
      v18 = [v11 firstIndex];
      [v11 removeIndex:v18];
      cachedIndexMapping = self->_cachedIndexMapping;
      v20 = [MEMORY[0x1E696AD50] indexSetWithIndex:v18];
      [(NSMapTable *)cachedIndexMapping setObject:v20 forKey:v9];
    }

    [(CRTombstoneOrderedSet *)self _removeObjectsFromOrderingAtIndices:v11];
    if (!v5)
    {
      v21 = [(CRTombstoneOrderedSet *)self ordering];
      v22 = [v21 contents];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__CRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke_2;
      v35[3] = &unk_1E750A008;
      v36 = v22;
      v23 = v22;
      [v17 enumerateObjectsUsingBlock:v35];
      [v23 removeObjectForKey:v13];
      [v23 setObject:v9 forKey:v13];
    }

    if (a3 != a4)
    {
      v24 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
      v25 = [v24 objectForKey:v34];

      v26 = [v25 firstIndex];
      if (a3 > a4)
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 + 1;
      }

      if (v5)
      {
        v28 = v17;
      }

      else
      {
        v28 = 0;
      }

      [(CRTombstoneOrderedSet *)self reinsertIdentifier:v13 withMaskedIdentifiers:v28 atIndex:v27 forObjectToMove:v9];
    }

    cachedIdentifierSet = self->_cachedIdentifierSet;
    if (cachedIdentifierSet)
    {
      v30 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
      [(NSMutableOrderedSet *)cachedIdentifierSet moveObjectsAtIndexes:v30 toIndex:a4];
    }
  }
}

void __65__CRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 addObject:v3];
}

- (void)_removeObjectsFromOrderingAtIndices:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(CRTombstoneOrderedSet *)self ordering];
    v6 = [v5 array];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__CRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke;
    v15[3] = &unk_1E750A030;
    v7 = v6;
    v16 = v7;
    [v4 enumerateIndexesWithOptions:2 usingBlock:v15];
    v8 = [(NSMapTable *)self->_cachedIndexMapping objectEnumerator];
    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x1E69E9820];
      do
      {
        v13[0] = v11;
        v13[1] = 3221225472;
        v13[2] = __61__CRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke_2;
        v13[3] = &unk_1E750A030;
        v14 = v10;
        v12 = v10;
        [v4 enumerateIndexesWithOptions:2 usingBlock:v13];

        v10 = [v8 nextObject];
      }

      while (v10);
    }
  }
}

unint64_t __61__CRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke_2(uint64_t a1, unint64_t a2)
{
  result = [*(a1 + 32) lastIndex];
  if (result >= a2)
  {
    v5 = *(a1 + 32);

    return [v5 shiftIndexesStartingAtIndex:a2 + 1 by:-1];
  }

  return result;
}

- (void)reinsertIdentifier:(id)a3 withMaskedIdentifiers:(id)a4 atIndex:(unint64_t)a5 forObjectToMove:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(CRTombstoneOrderedSet *)self ordering];
  v14 = [v13 array];

  v21 = v10;
  [v14 insertObject:v10 atIndex:a5];
  v15 = [MEMORY[0x1E696AD50] indexSetWithIndex:a5];
  if (v11)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __90__CRTombstoneOrderedSet_reinsertIdentifier_withMaskedIdentifiers_atIndex_forObjectToMove___block_invoke;
    v22[3] = &unk_1E750A058;
    v23 = v14;
    v25 = a5;
    v24 = v15;
    [v11 enumerateObjectsUsingBlock:v22];

    [(CRTombstoneOrderedSet *)self moveClock];
    v16 = [v11 count] + 1;
  }

  else
  {
    [(CRTombstoneOrderedSet *)self moveClock];
    v16 = 1;
  }

  v17 = [(NSMapTable *)self->_cachedIndexMapping objectEnumerator];
  v18 = [v17 nextObject];
  if (v18)
  {
    v19 = v18;
    do
    {
      if ([v19 lastIndex] >= a5)
      {
        [v19 shiftIndexesStartingAtIndex:a5 by:v16];
      }

      v20 = [v17 nextObject];

      v19 = v20;
    }

    while (v20);
  }

  [(NSMapTable *)self->_cachedIndexMapping setObject:v15 forKey:v12];
}

uint64_t __90__CRTombstoneOrderedSet_reinsertIdentifier_withMaskedIdentifiers_atIndex_forObjectToMove___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) insertObject:a2 atIndex:*(a1 + 48) + 1];
  v3 = *(a1 + 40);
  v4 = [v3 lastIndex] + 1;

  return [v3 addIndex:v4];
}

- (void)moveClock
{
  v3 = [(CRTombstoneOrderedSet *)self ordering];
  [v3 setMoveClock:1];

  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    v4 = [(CRTombstoneOrderedSet *)self delegate];
    [v4 addUndoCommandsForObject:self block:&__block_literal_global_51];
  }
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CRTombstoneOrderedSet_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7509CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __52__CRTombstoneOrderedSet_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForIdentifier:a2];
  (*(*(a1 + 40) + 16))();
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{{\n"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__CRTombstoneOrderedSet_description__block_invoke;
  v5[3] = &unk_1E750A0A0;
  v5[4] = &v6;
  [(CRTombstoneOrderedSet *)self enumerateObjectsUsingBlock:v5];
  [v7[5] appendString:@"}}"];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__CRTombstoneOrderedSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = MEMORY[0x1E696AEC0];
  v5 = [a2 description];
  v4 = [v3 stringWithFormat:@"\t%@\n", v5];
  [v2 appendString:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CRTombstoneOrderedSet *)self ordering];
    v7 = [v5 ordering];
    if ([v6 isEqual:v7])
    {
      v8 = [(CRTombstoneOrderedSet *)self elements];
      v9 = [v5 elements];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(CRTombstoneOrderedSet *)self ordering];
  v4 = [v3 hash];
  v5 = [(CRTombstoneOrderedSet *)self elements];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)mergeWith:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = os_log_create("com.apple.coreCRDT", "CRTombstoneOrderedSet");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CRTombstoneOrderedSet *)v4 mergeWith:v9];
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"CRTombstoneOrderedSet cannot merge with object of type %@.", v12];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v15 = v4;
  v5 = [(CRTombstoneOrderedSet *)self ordering];
  v6 = [v15 ordering];
  [v5 mergeWith:v6];

  v7 = [(CRTombstoneOrderedSet *)self elements];
  v8 = [v15 elements];

  [v7 mergeWith:v8];
  [(CRTombstoneOrderedSet *)self wipeoutCaches];
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRTombstoneOrderedSet *)self ordering];
  v9 = [v8 deltaSince:v7 in:v6];

  v10 = [(CRTombstoneOrderedSet *)self elements];
  v11 = [v10 deltaSince:v7 in:v6];

  v12 = [[CRTombstoneOrderedSet alloc] initWithOrdering:v9 elements:v11 document:v6];

  return v12;
}

- (void)realizeLocalChangesIn:(id)a3
{
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self ordering];
  [v5 realizeLocalChangesIn:v4];

  v6 = [(CRTombstoneOrderedSet *)self elements];
  [v6 realizeLocalChangesIn:v4];
}

- (id)tombstone
{
  v3 = [(CRTombstoneOrderedSet *)self ordering];
  v4 = [v3 tombstone];

  v5 = [(CRTombstoneOrderedSet *)self elements];
  v6 = [v5 tombstone];

  v7 = [CRTombstoneOrderedSet alloc];
  v8 = [(CRTombstoneOrderedSet *)self document];
  v9 = [(CRTombstoneOrderedSet *)v7 initWithOrdering:v4 elements:v6 document:v8];

  return v9;
}

- (void)walkGraph:(id)a3
{
  v4 = a3;
  v5 = [(CRTombstoneOrderedSet *)self ordering];
  [v5 walkGraph:v4];

  v6 = [(CRTombstoneOrderedSet *)self elements];
  [v6 walkGraph:v4];
}

- (void)setDocument:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_document, v4);
  v5 = [(CRTombstoneOrderedSet *)self ordering];
  [v5 setDocument:v4];

  v6 = [(CRTombstoneOrderedSet *)self elements];
  [v6 setDocument:v4];
}

- (void)addUndoCommandsForObject:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = [(CRTombstoneOrderedSet *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CRTombstoneOrderedSet_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_1E750A0C8;
  v9 = v5;
  v7 = v5;
  [v6 addUndoCommandsForObject:self block:v8];
}

void __56__CRTombstoneOrderedSet_addUndoCommandsForObject_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 ordering];
  (*(v2 + 16))(v2, v3);

  [v4 wipeoutCaches];
}

- (BOOL)wantsUndoCommands
{
  v2 = [(CRTombstoneOrderedSet *)self delegate];
  v3 = [v2 wantsUndoCommands];

  return v3;
}

- (CRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (CRUndoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)insertObject:(uint64_t)a1 atIndex:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Inserting element at invalid index %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)moveObjectFromIndex:(uint64_t)a1 toIndex:(NSObject *)a2 mutableSafe:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Moving element at invalid index %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)mergeWith:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "CRTombstoneOrderedSet cannot merge with object of type %{public}@.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end