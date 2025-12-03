@interface CRArray
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsUndoCommands;
- (CRArray)initWithCRCoder:(id)coder;
- (CRArray)initWithCRCoder:(id)coder array:(const void *)array;
- (CRArray)initWithDocument:(id)document;
- (CRArray)initWithTTArray:(id)array contents:(id)contents document:(id)document;
- (CRDocument)document;
- (CRUndoDelegate)delegate;
- (NSString)description;
- (NSUUID)replicaUUID;
- (id)_addObject:(id)object;
- (id)_insertObject:(id)object atIndex:(unint64_t)index;
- (id)_insertObject:(id)object withIdentifier:(id)identifier atIndex:(unint64_t)index forUndo:(BOOL)undo;
- (id)deltaSince:(id)since in:(id)in;
- (id)objectAtIndex:(unint64_t)index;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)firstIndexOf:(id)of fromIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)encodeWithCRCoder:(id)coder;
- (void)encodeWithCRCoder:(id)coder array:(void *)array;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)mergeWith:(id)with;
- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)realizeLocalChangesIn:(id)in;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index forUndo:(BOOL)undo;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation CRArray

- (CRArray)initWithDocument:(id)document
{
  documentCopy = document;
  v5 = [[TTArray alloc] initWithDocument:documentCopy];
  v6 = [[CRDictionary alloc] initWithDocument:documentCopy];
  v7 = [(CRArray *)self initWithTTArray:v5 contents:v6 document:documentCopy];

  return v7;
}

- (CRArray)initWithTTArray:(id)array contents:(id)contents document:(id)document
{
  arrayCopy = array;
  contentsCopy = contents;
  documentCopy = document;
  v13.receiver = self;
  v13.super_class = CRArray;
  v11 = [(CRArray *)&v13 init];
  if (v11)
  {
    [arrayCopy setDelegate:v11];
    [(CRArray *)v11 setArray:arrayCopy];
    [(CRArray *)v11 setContents:contentsCopy];
    [(CRArray *)v11 setDocument:documentCopy];
  }

  return v11;
}

- (id)objectAtIndex:(unint64_t)index
{
  array = [(CRArray *)self array];
  v6 = [array objectAtIndexedSubscript:index];

  contents = [(CRArray *)self contents];
  v8 = [contents objectForKeyedSubscript:v6];

  return v8;
}

- (id)_addObject:(id)object
{
  objectCopy = object;
  v5 = [(CRArray *)self _insertObject:objectCopy atIndex:[(CRArray *)self count]];

  return v5;
}

- (id)_insertObject:(id)object atIndex:(unint64_t)index
{
  v6 = MEMORY[0x1E696AFB0];
  objectCopy = object;
  uUID = [v6 UUID];
  v9 = [(CRArray *)self _insertObject:objectCopy withIdentifier:uUID atIndex:index forUndo:0];

  return v9;
}

- (id)_insertObject:(id)object withIdentifier:(id)identifier atIndex:(unint64_t)index forUndo:(BOOL)undo
{
  objectCopy = object;
  identifierCopy = identifier;
  if (!undo)
  {
    array = [(CRArray *)self array];
    [array insertObject:identifierCopy atIndex:index];
  }

  contents = [(CRArray *)self contents];
  [contents setObject:objectCopy forKeyedSubscript:identifierCopy];

  if ([(CRArray *)self wantsUndoCommands])
  {
    delegate = [(CRArray *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__CRArray__insertObject_withIdentifier_atIndex_forUndo___block_invoke;
    v16[3] = &unk_1E7509CA8;
    v17 = identifierCopy;
    [delegate addUndoCommandsForObject:self block:v16];
  }

  return identifierCopy;
}

void __56__CRArray__insertObject_withIdentifier_atIndex_forUndo___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 array];
  v4 = [v3 indexOfObject:*(a1 + 32)];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v4 forUndo:1];
  }
}

- (void)removeLastObject
{
  v3 = [(CRArray *)self count];
  if (v3)
  {

    [(CRArray *)self removeObjectAtIndex:v3 - 1];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index forUndo:(BOOL)undo
{
  array = [(CRArray *)self array];
  v8 = [array objectAtIndexedSubscript:index];

  if ([(CRArray *)self wantsUndoCommands])
  {
    v9 = [(CRArray *)self objectAtIndexedSubscript:index];
    delegate = [(CRArray *)self delegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__CRArray_removeObjectAtIndex_forUndo___block_invoke;
    v14[3] = &unk_1E7509CD0;
    v15 = v9;
    v16 = v8;
    indexCopy = index;
    v11 = v9;
    [delegate addUndoCommandsForObject:self block:v14];
  }

  if (!undo)
  {
    array2 = [(CRArray *)self array];
    [array2 removeObjectAtIndex:index];
  }

  contents = [(CRArray *)self contents];
  [contents removeObjectForKey:v8];
}

void __39__CRArray_removeObjectAtIndex_forUndo___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1[4];
  v4 = a1[5];
  v5 = [v8 count];
  if (v5 >= a1[6])
  {
    v6 = a1[6];
  }

  else
  {
    v6 = v5;
  }

  v7 = [v8 _insertObject:v3 withIdentifier:v4 atIndex:v6 forUndo:1];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  [(CRArray *)self removeObjectAtIndex:index];
  [(CRArray *)self insertObject:objectCopy atIndex:index];
}

- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  array = [(CRArray *)self array];
  v10 = [array objectAtIndexedSubscript:index];

  array2 = [(CRArray *)self array];
  [array2 removeObjectAtIndex:index];

  array3 = [(CRArray *)self array];
  [array3 insertObject:v10 atIndex:toIndex];

  [(CRArray *)self setMoveClock:1];
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  array = [(CRArray *)self array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CRArray_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E7509CF8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [array enumerateObjectsUsingBlock:v7];
}

void __38__CRArray_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contents];
  v6 = [v5 objectForKeyedSubscript:v4];

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)count
{
  array = [(CRArray *)self array];
  v3 = [array count];

  return v3;
}

- (NSUUID)replicaUUID
{
  document = [(CRArray *)self document];
  replica = [document replica];

  return replica;
}

- (unint64_t)firstIndexOf:(id)of fromIndex:(unint64_t)index
{
  ofCopy = of;
  if ([(CRArray *)self count]<= index)
  {
LABEL_4:
    index = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      v7 = [(CRArray *)self objectAtIndexedSubscript:index];
      v8 = [v7 isEqual:ofCopy];

      if (v8)
      {
        break;
      }

      if (++index >= [(CRArray *)self count])
      {
        goto LABEL_4;
      }
    }
  }

  return index;
}

- (NSString)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17;
  v11 = __Block_byref_object_dispose__17;
  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0D67F00];
  v3 = [(CRArray *)self count];
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __22__CRArray_description__block_invoke;
    v6[3] = &unk_1E7509D20;
    v6[4] = &v7;
    v6[5] = v3;
    [(CRArray *)self enumerateObjectsUsingBlock:v6];
    v4 = [v8[5] copy];
  }

  else
  {
    v4 = @"[]";
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __22__CRArray_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (!a3)
  {
    [*(*(*(a1 + 32) + 8) + 40) appendString:@"["];
    v5 = v9;
  }

  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [v5 description];
  [v6 appendString:v7];

  if (*(a1 + 40) - 1 == a3)
  {
    v8 = @"]";
  }

  else
  {
    v8 = @", ";
  }

  [*(*(*(a1 + 32) + 8) + 40) appendString:v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contents = [(CRArray *)self contents];
    contents2 = [v5 contents];
    if ([contents isEqual:contents2])
    {
      array = [(CRArray *)self array];
      array2 = [v5 array];
      v10 = [array isEqual:array2];
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
  contents = [(CRArray *)self contents];
  v4 = [contents hash];
  array = [(CRArray *)self array];
  v6 = [array hash];

  return v6 ^ v4;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = os_log_create("com.apple.coreCRDT", "TTArray");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(TTArray *)v10 mergeWith:v11];
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CRArray cannot merge with object of type %@.", v10];
    objc_exception_throw(v12);
  }

  v13 = withCopy;
  array = [(CRArray *)self array];
  array2 = [v13 array];
  [array mergeWith:array2];

  contents = [(CRArray *)self contents];
  contents2 = [v13 contents];

  [contents mergeWith:contents2];
}

- (id)deltaSince:(id)since in:(id)in
{
  inCopy = in;
  sinceCopy = since;
  array = [(CRArray *)self array];
  v9 = [array deltaSince:sinceCopy in:inCopy];

  contents = [(CRArray *)self contents];
  v11 = [contents deltaSince:sinceCopy in:inCopy];

  v12 = [[CRArray alloc] initWithTTArray:v9 contents:v11 document:inCopy];

  return v12;
}

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  array = [(CRArray *)self array];
  [array realizeLocalChangesIn:inCopy];

  contents = [(CRArray *)self contents];
  [contents realizeLocalChangesIn:inCopy];

  if ([(CRArray *)self moveClock])
  {
    [inCopy setUnserializedReplicaClock:{objc_msgSend(inCopy, "unserializedReplicaClock") + -[CRArray moveClock](self, "moveClock")}];
  }

  [(CRArray *)self setMoveClock:0];
}

- (id)tombstone
{
  array = [(CRArray *)self array];
  tombstone = [array tombstone];

  contents = [(CRArray *)self contents];
  tombstone2 = [contents tombstone];

  v7 = [CRArray alloc];
  document = [(CRArray *)self document];
  v9 = [(CRArray *)v7 initWithTTArray:tombstone contents:tombstone2 document:document];

  return v9;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  array = [(CRArray *)self array];
  [array walkGraph:graphCopy];

  contents = [(CRArray *)self contents];
  [contents walkGraph:graphCopy];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  array = [(CRArray *)self array];
  [array setDocument:documentCopy];

  contents = [(CRArray *)self contents];
  [contents setDocument:documentCopy];
}

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  delegate = [(CRArray *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__CRArray_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_1E7509D48;
  v9 = blockCopy;
  v7 = blockCopy;
  [delegate addUndoCommandsForObject:self block:v8];
}

void __42__CRArray_addUndoCommandsForObject_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 array];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)wantsUndoCommands
{
  delegate = [(CRArray *)self delegate];
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

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 15)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 15;
    operator new();
  }

  [(CRArray *)self encodeWithCRCoder:coderCopy array:*(currentDocumentObjectForEncoding + 40)];
}

- (void)encodeWithCRCoder:(id)coder array:(void *)array
{
  coderCopy = coder;
  array = [(CRArray *)self array];
  *(array + 8) |= 1u;
  v7 = *(array + 5);
  if (!v7)
  {
    operator new();
  }

  [array saveToArchive:v7];

  contents = [(CRArray *)self contents];
  *(array + 8) |= 2u;
  v9 = *(array + 6);
  if (!v9)
  {
    operator new();
  }

  [contents encodeWithCRCoder:coderCopy dictionary:v9];
}

- (CRArray)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 15)
  {
    v6 = [(CRArray *)self initWithCRCoder:coderCopy array:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(CRArray *)self initWithDocument:document];
  }

  return v6;
}

- (CRArray)initWithCRCoder:(id)coder array:(const void *)array
{
  coderCopy = coder;
  v7 = [CRDictionary alloc];
  v8 = v7;
  v9 = *(array + 6);
  if (!v9)
  {
    v9 = *(CRDT::Array::default_instance(v7) + 48);
  }

  v10 = [(CRDictionary *)v8 initWithCRCoder:coderCopy dictionary:v9];
  v11 = [TTArray alloc];
  v12 = v11;
  v13 = *(array + 5);
  if (!v13)
  {
    v13 = *(CRDT::Array::default_instance(v11) + 40);
  }

  v14 = [(TTArray *)v12 initWithCRCoder:coderCopy stringArray:v13];
  document = [coderCopy document];
  v16 = [(CRArray *)self initWithTTArray:v14 contents:v10 document:document];

  return v16;
}

@end