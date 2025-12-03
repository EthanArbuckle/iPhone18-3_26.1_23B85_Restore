@interface CRTombstoneOrderedSet
- (BOOL)containsObjectEqualTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsUndoCommands;
- (CRDocument)document;
- (CRTombstoneOrderedSet)initWithCRCoder:(id)coder;
- (CRTombstoneOrderedSet)initWithCRCoder:(id)coder orderedSet:(const void *)set;
- (CRTombstoneOrderedSet)initWithDocument:(id)document;
- (CRTombstoneOrderedSet)initWithOrdering:(id)ordering elements:(id)elements document:(id)document;
- (CRUndoDelegate)delegate;
- (NSMapTable)cachedIndexMapping;
- (NSMutableOrderedSet)cachedIdentifierSet;
- (NSString)description;
- (id)deltaSince:(id)since in:(id)in;
- (id)generateNSOrderedIdentifierSetWithIndexMapping:(id)mapping;
- (id)identifierForObjectInCachedSet:(id)set;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectForIdentifier:(id)identifier;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfEqualObject:(id)object;
- (void)_removeObjectsFromOrderingAtIndices:(id)indices;
- (void)addObject:(id)object;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)encodeWithCRCoder:(id)coder;
- (void)encodeWithCRCoder:(id)coder orderedSet:(void *)set;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)mergeWith:(id)with;
- (void)moveClock;
- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex mutableSafe:(BOOL)safe;
- (void)realizeLocalChangesIn:(id)in;
- (void)regenerateNSOrderedIdentifierSetAndIndexMapping;
- (void)reinsertIdentifier:(id)identifier withMaskedIdentifiers:(id)identifiers atIndex:(unint64_t)index forObjectToMove:(id)move;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)setDocument:(id)document;
- (void)shiftCachedIndicesStartingAtIndex:(unint64_t)index by:(int64_t)by;
- (void)undoablyInsertObjectIdentifiersIntoElements:(id)elements;
- (void)undoablyRemoveObjectIdentifiersFromElements:(id)elements;
- (void)walkGraph:(id)graph;
- (void)wipeoutCaches;
@end

@implementation CRTombstoneOrderedSet

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 16)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 16;
    operator new();
  }

  [(CRTombstoneOrderedSet *)self encodeWithCRCoder:coderCopy orderedSet:*(currentDocumentObjectForEncoding + 40)];
}

- (void)encodeWithCRCoder:(id)coder orderedSet:(void *)set
{
  coderCopy = coder;
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  *(set + 8) |= 1u;
  v7 = *(set + 5);
  if (!v7)
  {
    operator new();
  }

  [ordering encodeWithCRCoder:coderCopy array:v7];

  elements = [(CRTombstoneOrderedSet *)self elements];
  *(set + 8) |= 2u;
  v9 = *(set + 6);
  if (!v9)
  {
    operator new();
  }

  [elements encodeWithCRCoder:coderCopy set:v9];
}

- (CRTombstoneOrderedSet)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 16)
  {
    v6 = [(CRTombstoneOrderedSet *)self initWithCRCoder:coderCopy orderedSet:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(CRTombstoneOrderedSet *)self initWithDocument:document];
  }

  return v6;
}

- (CRTombstoneOrderedSet)initWithCRCoder:(id)coder orderedSet:(const void *)set
{
  coderCopy = coder;
  v7 = [CRArray alloc];
  v8 = v7;
  v9 = *(set + 5);
  if (!v9)
  {
    v9 = *(CRDT::OrderedSet::default_instance(v7) + 40);
  }

  v10 = [(CRArray *)v8 initWithCRCoder:coderCopy array:v9];
  v11 = [CRSet alloc];
  v12 = v11;
  v13 = *(set + 6);
  if (!v13)
  {
    v13 = *(CRDT::OrderedSet::default_instance(v11) + 48);
  }

  v14 = [(CRSet *)v12 initWithCRCoder:coderCopy set:v13];
  document = [coderCopy document];
  v16 = [(CRTombstoneOrderedSet *)self initWithOrdering:v10 elements:v14 document:document];

  return v16;
}

- (unint64_t)count
{
  cachedIdentifierSet = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v3 = [cachedIdentifierSet count];

  return v3;
}

- (CRTombstoneOrderedSet)initWithDocument:(id)document
{
  documentCopy = document;
  v5 = [[CRArray alloc] initWithDocument:documentCopy];
  v6 = [[CRSet alloc] initWithDocument:documentCopy];
  v7 = [(CRTombstoneOrderedSet *)self initWithOrdering:v5 elements:v6 document:documentCopy];

  return v7;
}

- (CRTombstoneOrderedSet)initWithOrdering:(id)ordering elements:(id)elements document:(id)document
{
  orderingCopy = ordering;
  elementsCopy = elements;
  documentCopy = document;
  v13.receiver = self;
  v13.super_class = CRTombstoneOrderedSet;
  v11 = [(CRTombstoneOrderedSet *)&v13 init];
  if (v11)
  {
    [orderingCopy setDelegate:v11];
    [(CRTombstoneOrderedSet *)v11 setOrdering:orderingCopy];
    [(CRTombstoneOrderedSet *)v11 setElements:elementsCopy];
    [(CRTombstoneOrderedSet *)v11 setDocument:documentCopy];
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
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  cachedIndexMapping = self->_cachedIndexMapping;
  self->_cachedIndexMapping = strongToStrongObjectsMapTable;

  v5 = [(CRTombstoneOrderedSet *)self generateNSOrderedIdentifierSetWithIndexMapping:self->_cachedIndexMapping];
  cachedIdentifierSet = self->_cachedIdentifierSet;
  self->_cachedIdentifierSet = v5;

  MEMORY[0x1EEE66BB8]();
}

- (id)generateNSOrderedIdentifierSetWithIndexMapping:(id)mapping
{
  mappingCopy = mapping;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  elements = [(CRTombstoneOrderedSet *)self elements];
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  contents = [ordering contents];

  ordering2 = [(CRTombstoneOrderedSet *)self ordering];
  array = [ordering2 array];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__CRTombstoneOrderedSet_generateNSOrderedIdentifierSetWithIndexMapping___block_invoke;
  v18[3] = &unk_1E7509F90;
  v19 = elements;
  v20 = contents;
  v21 = mappingCopy;
  v11 = orderedSet;
  v22 = v11;
  v12 = mappingCopy;
  v13 = contents;
  v14 = elements;
  [array enumerateObjectsUsingBlock:v18];

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

- (id)objectAtIndex:(unint64_t)index
{
  cachedIdentifierSet = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v6 = [cachedIdentifierSet objectAtIndex:index];

  v7 = [(CRTombstoneOrderedSet *)self objectForIdentifier:v6];

  return v7;
}

- (id)objectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  contents = [ordering contents];
  v7 = [contents objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (unint64_t)indexOfEqualObject:(id)object
{
  objectCopy = object;
  cachedIndexMapping = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [cachedIndexMapping objectForKey:objectCopy];

  if (v6 && [v6 count])
  {
    firstIndex = [v6 firstIndex];
    ordering = [(CRTombstoneOrderedSet *)self ordering];
    array = [ordering array];
    v10 = [array objectAtIndexedSubscript:firstIndex];

    cachedIdentifierSet = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
    v12 = [cachedIdentifierSet indexOfObject:v10];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)identifierForObjectInCachedSet:(id)set
{
  setCopy = set;
  cachedIndexMapping = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [cachedIndexMapping objectForKey:setCopy];

  if (v6)
  {
    ordering = [(CRTombstoneOrderedSet *)self ordering];
    array = [ordering array];
    v9 = [array objectAtIndexedSubscript:{objc_msgSend(v6, "firstIndex")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsObjectEqualTo:(id)to
{
  toCopy = to;
  cachedIndexMapping = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [cachedIndexMapping objectForKey:toCopy];

  LOBYTE(toCopy) = [v6 count] != 0;
  return toCopy;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  v7 = [(CRTombstoneOrderedSet *)self identifierForObjectInCachedSet:objectCopy];
  if (!v7)
  {
    v8 = [(CRTombstoneOrderedSet *)self count];
    if (v8 <= index)
    {
      if (v8 != index)
      {
        v22 = os_log_create("com.apple.coreCRDT", "CRTombstoneOrderedSet");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [CRTombstoneOrderedSet insertObject:index atIndex:v22];
        }

        v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"CRTombstoneOrderedSet: inserting element at invalid index" userInfo:0];
        objc_exception_throw(v24);
      }

      ordering = [(CRTombstoneOrderedSet *)self ordering];
      v7 = [ordering _addObject:objectCopy];

      cachedIndexMapping = self->_cachedIndexMapping;
      v18 = MEMORY[0x1E696AD50];
      ordering2 = [(CRTombstoneOrderedSet *)self ordering];
      v11 = [v18 indexSetWithIndex:{objc_msgSend(ordering2, "count") - 1}];
      [(NSMapTable *)cachedIndexMapping setObject:v11 forKey:objectCopy];
    }

    else
    {
      ordering2 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:index];
      cachedIndexMapping = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
      v11 = [cachedIndexMapping objectForKey:ordering2];

      firstIndex = [v11 firstIndex];
      ordering3 = [(CRTombstoneOrderedSet *)self ordering];
      v7 = [ordering3 _insertObject:objectCopy atIndex:firstIndex];

      [(CRTombstoneOrderedSet *)self shiftCachedIndicesStartingAtIndex:firstIndex by:1];
      v14 = self->_cachedIndexMapping;
      v15 = [MEMORY[0x1E696AD50] indexSetWithIndex:firstIndex];
      [(NSMapTable *)v14 setObject:v15 forKey:objectCopy];
    }

    elements = [(CRTombstoneOrderedSet *)self elements];
    [elements addObject:v7];

    cachedIdentifierSet = self->_cachedIdentifierSet;
    if (cachedIdentifierSet)
    {
      [(NSMutableOrderedSet *)cachedIdentifierSet insertObject:v7 atIndex:index];
    }

    if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
    {
      delegate = [(CRTombstoneOrderedSet *)self delegate];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __46__CRTombstoneOrderedSet_insertObject_atIndex___block_invoke;
      v25[3] = &unk_1E7509FB8;
      v7 = v7;
      v26 = v7;
      [delegate addUndoCommandsForObject:self block:v25];
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

- (void)undoablyRemoveObjectIdentifiersFromElements:(id)elements
{
  v20 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  elements = [(CRTombstoneOrderedSet *)self elements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = elementsCopy;
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

        [elements removeObject:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(CRTombstoneOrderedSet *)self wipeoutCaches];
  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(CRTombstoneOrderedSet *)self delegate];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__CRTombstoneOrderedSet_undoablyRemoveObjectIdentifiersFromElements___block_invoke;
    v13[3] = &unk_1E7509FB8;
    v14 = v6;
    [delegate addUndoCommandsForObject:self block:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)undoablyInsertObjectIdentifiersIntoElements:(id)elements
{
  v20 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  elements = [(CRTombstoneOrderedSet *)self elements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = elementsCopy;
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

        [elements addObject:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(CRTombstoneOrderedSet *)self wipeoutCaches];
  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(CRTombstoneOrderedSet *)self delegate];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__CRTombstoneOrderedSet_undoablyInsertObjectIdentifiersIntoElements___block_invoke;
    v13[3] = &unk_1E7509FB8;
    v14 = v6;
    [delegate addUndoCommandsForObject:self block:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)shiftCachedIndicesStartingAtIndex:(unint64_t)index by:(int64_t)by
{
  cachedIndexMapping = self->_cachedIndexMapping;
  if (cachedIndexMapping)
  {
    objectEnumerator = [(NSMapTable *)cachedIndexMapping objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v8 = nextObject;
      do
      {
        [v8 shiftIndexesStartingAtIndex:index by:by];
        nextObject2 = [objectEnumerator nextObject];

        v8 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(CRTombstoneOrderedSet *)self insertObject:objectCopy atIndex:[(CRTombstoneOrderedSet *)self count]];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:?];
  cachedIndexMapping = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
  v7 = [cachedIndexMapping objectForKey:v5];

  cachedIdentifierSet = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v9 = [cachedIdentifierSet objectAtIndexedSubscript:index];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count") + 1}];
  [v10 addObject:v9];
  elements = [(CRTombstoneOrderedSet *)self elements];
  [elements removeObject:v9];

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
    [(NSMutableOrderedSet *)cachedIdentifierSet removeObjectAtIndex:index];
  }

  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(CRTombstoneOrderedSet *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__CRTombstoneOrderedSet_removeObjectAtIndex___block_invoke_2;
    v15[3] = &unk_1E7509FB8;
    v16 = v12;
    [delegate addUndoCommandsForObject:self block:v15];
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

- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex mutableSafe:(BOOL)safe
{
  safeCopy = safe;
  if ([(CRTombstoneOrderedSet *)self count]< toIndex)
  {
    v31 = os_log_create("com.apple.coreCRDT", "CRTombstoneOrderedSet");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRTombstoneOrderedSet moveObjectFromIndex:toIndex toIndex:v31 mutableSafe:?];
    }

    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"CRTombstoneOrderedSet: moving element to an invalid index" userInfo:0];
    objc_exception_throw(v32);
  }

  if (index != toIndex || !safeCopy)
  {
    v34 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:toIndex];
    v9 = [(CRTombstoneOrderedSet *)self objectAtIndexedSubscript:index];
    cachedIndexMapping = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
    v11 = [cachedIndexMapping objectForKey:v9];

    cachedIdentifierSet = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
    v13 = [cachedIdentifierSet objectAtIndexedSubscript:index];

    v14 = [MEMORY[0x1E695DFA8] set];
    ordering = [(CRTombstoneOrderedSet *)self ordering];
    array = [ordering array];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__CRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke;
    v37[3] = &unk_1E7509FE0;
    v17 = v14;
    v38 = v17;
    v33 = array;
    v39 = v33;
    [v11 enumerateIndexesUsingBlock:v37];
    [v17 removeObject:v13];
    [(NSMapTable *)self->_cachedIndexMapping removeObjectForKey:v9];
    if (index == toIndex)
    {
      firstIndex = [v11 firstIndex];
      [v11 removeIndex:firstIndex];
      cachedIndexMapping = self->_cachedIndexMapping;
      v20 = [MEMORY[0x1E696AD50] indexSetWithIndex:firstIndex];
      [(NSMapTable *)cachedIndexMapping setObject:v20 forKey:v9];
    }

    [(CRTombstoneOrderedSet *)self _removeObjectsFromOrderingAtIndices:v11];
    if (!safeCopy)
    {
      ordering2 = [(CRTombstoneOrderedSet *)self ordering];
      contents = [ordering2 contents];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__CRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke_2;
      v35[3] = &unk_1E750A008;
      v36 = contents;
      v23 = contents;
      [v17 enumerateObjectsUsingBlock:v35];
      [v23 removeObjectForKey:v13];
      [v23 setObject:v9 forKey:v13];
    }

    if (index != toIndex)
    {
      cachedIndexMapping2 = [(CRTombstoneOrderedSet *)self cachedIndexMapping];
      v25 = [cachedIndexMapping2 objectForKey:v34];

      firstIndex2 = [v25 firstIndex];
      if (index > toIndex)
      {
        v27 = firstIndex2;
      }

      else
      {
        v27 = firstIndex2 + 1;
      }

      if (safeCopy)
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
      v30 = [MEMORY[0x1E696AC90] indexSetWithIndex:index];
      [(NSMutableOrderedSet *)cachedIdentifierSet moveObjectsAtIndexes:v30 toIndex:toIndex];
    }
  }
}

void __65__CRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 addObject:v3];
}

- (void)_removeObjectsFromOrderingAtIndices:(id)indices
{
  indicesCopy = indices;
  if ([indicesCopy count])
  {
    ordering = [(CRTombstoneOrderedSet *)self ordering];
    array = [ordering array];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__CRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke;
    v15[3] = &unk_1E750A030;
    v7 = array;
    v16 = v7;
    [indicesCopy enumerateIndexesWithOptions:2 usingBlock:v15];
    objectEnumerator = [(NSMapTable *)self->_cachedIndexMapping objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v11 = MEMORY[0x1E69E9820];
      do
      {
        v13[0] = v11;
        v13[1] = 3221225472;
        v13[2] = __61__CRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke_2;
        v13[3] = &unk_1E750A030;
        v14 = nextObject2;
        v12 = nextObject2;
        [indicesCopy enumerateIndexesWithOptions:2 usingBlock:v13];

        nextObject2 = [objectEnumerator nextObject];
      }

      while (nextObject2);
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

- (void)reinsertIdentifier:(id)identifier withMaskedIdentifiers:(id)identifiers atIndex:(unint64_t)index forObjectToMove:(id)move
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  moveCopy = move;
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  array = [ordering array];

  v21 = identifierCopy;
  [array insertObject:identifierCopy atIndex:index];
  v15 = [MEMORY[0x1E696AD50] indexSetWithIndex:index];
  if (identifiersCopy)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __90__CRTombstoneOrderedSet_reinsertIdentifier_withMaskedIdentifiers_atIndex_forObjectToMove___block_invoke;
    v22[3] = &unk_1E750A058;
    v23 = array;
    indexCopy = index;
    v24 = v15;
    [identifiersCopy enumerateObjectsUsingBlock:v22];

    [(CRTombstoneOrderedSet *)self moveClock];
    v16 = [identifiersCopy count] + 1;
  }

  else
  {
    [(CRTombstoneOrderedSet *)self moveClock];
    v16 = 1;
  }

  objectEnumerator = [(NSMapTable *)self->_cachedIndexMapping objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v19 = nextObject;
    do
    {
      if ([v19 lastIndex] >= index)
      {
        [v19 shiftIndexesStartingAtIndex:index by:v16];
      }

      nextObject2 = [objectEnumerator nextObject];

      v19 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMapTable *)self->_cachedIndexMapping setObject:v15 forKey:moveCopy];
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
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  [ordering setMoveClock:1];

  if ([(CRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(CRTombstoneOrderedSet *)self delegate];
    [delegate addUndoCommandsForObject:self block:&__block_literal_global_51];
  }
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  cachedIdentifierSet = [(CRTombstoneOrderedSet *)self cachedIdentifierSet];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CRTombstoneOrderedSet_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7509CF8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [cachedIdentifierSet enumerateObjectsUsingBlock:v7];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ordering = [(CRTombstoneOrderedSet *)self ordering];
    ordering2 = [v5 ordering];
    if ([ordering isEqual:ordering2])
    {
      elements = [(CRTombstoneOrderedSet *)self elements];
      elements2 = [v5 elements];
      v10 = [elements isEqual:elements2];
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
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  v4 = [ordering hash];
  elements = [(CRTombstoneOrderedSet *)self elements];
  v6 = [elements hash];

  return v6 ^ v4;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = os_log_create("com.apple.coreCRDT", "CRTombstoneOrderedSet");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CRTombstoneOrderedSet *)withCopy mergeWith:v9];
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"CRTombstoneOrderedSet cannot merge with object of type %@.", v12];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v15 = withCopy;
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  ordering2 = [v15 ordering];
  [ordering mergeWith:ordering2];

  elements = [(CRTombstoneOrderedSet *)self elements];
  elements2 = [v15 elements];

  [elements mergeWith:elements2];
  [(CRTombstoneOrderedSet *)self wipeoutCaches];
}

- (id)deltaSince:(id)since in:(id)in
{
  inCopy = in;
  sinceCopy = since;
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  v9 = [ordering deltaSince:sinceCopy in:inCopy];

  elements = [(CRTombstoneOrderedSet *)self elements];
  v11 = [elements deltaSince:sinceCopy in:inCopy];

  v12 = [[CRTombstoneOrderedSet alloc] initWithOrdering:v9 elements:v11 document:inCopy];

  return v12;
}

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  [ordering realizeLocalChangesIn:inCopy];

  elements = [(CRTombstoneOrderedSet *)self elements];
  [elements realizeLocalChangesIn:inCopy];
}

- (id)tombstone
{
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  tombstone = [ordering tombstone];

  elements = [(CRTombstoneOrderedSet *)self elements];
  tombstone2 = [elements tombstone];

  v7 = [CRTombstoneOrderedSet alloc];
  document = [(CRTombstoneOrderedSet *)self document];
  v9 = [(CRTombstoneOrderedSet *)v7 initWithOrdering:tombstone elements:tombstone2 document:document];

  return v9;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  [ordering walkGraph:graphCopy];

  elements = [(CRTombstoneOrderedSet *)self elements];
  [elements walkGraph:graphCopy];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  objc_storeWeak(&self->_document, documentCopy);
  ordering = [(CRTombstoneOrderedSet *)self ordering];
  [ordering setDocument:documentCopy];

  elements = [(CRTombstoneOrderedSet *)self elements];
  [elements setDocument:documentCopy];
}

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  delegate = [(CRTombstoneOrderedSet *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CRTombstoneOrderedSet_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_1E750A0C8;
  v9 = blockCopy;
  v7 = blockCopy;
  [delegate addUndoCommandsForObject:self block:v8];
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
  delegate = [(CRTombstoneOrderedSet *)self delegate];
  wantsUndoCommands = [delegate wantsUndoCommands];

  return wantsUndoCommands;
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