@interface TTArray
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsUndoCommands;
- (CRDocument)document;
- (CRUndoDelegate)delegate;
- (NSArray)nsArray;
- (NSString)description;
- (NSUUID)replicaUUID;
- (TTArray)init;
- (TTArray)initWithArchive:(const void *)archive andReplicaID:(id)d;
- (TTArray)initWithCRCoder:(id)coder;
- (TTArray)initWithCRCoder:(id)coder stringArray:(const void *)array;
- (TTArray)initWithContents:(id)contents;
- (TTArray)initWithDocument:(id)document;
- (id)objectAtIndex:(unint64_t)index;
- (id)serializeDataFromArchive:(const void *)archive;
- (id)textAttachmentAtIndex:(unint64_t)index;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfObject:(id)object;
- (void)addObject:(id)object;
- (void)addUndoCommand:(id)command;
- (void)encodeWithCRCoder:(id)coder;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)mergeWith:(id)with;
- (void)realizeLocalChangesIn:(id)in;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)saveToArchive:(void *)archive;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation TTArray

- (TTArray)init
{
  v3 = objc_alloc_init(TTMergeableAttributedString);
  v4 = [(TTArray *)self initWithContents:v3];

  return v4;
}

- (TTArray)initWithDocument:(id)document
{
  documentCopy = document;
  v5 = [TTMergeableAttributedString alloc];
  replica = [documentCopy replica];
  v7 = [(TTMergeableString *)v5 initWithReplicaID:replica];
  v8 = [(TTArray *)self initWithContents:v7];

  if (v8)
  {
    [(TTArray *)v8 setDocument:documentCopy];
  }

  return v8;
}

- (TTArray)initWithContents:(id)contents
{
  contentsCopy = contents;
  v8.receiver = self;
  v8.super_class = TTArray;
  v6 = [(TTArray *)&v8 init];
  if (v6)
  {
    [contentsCopy setDelegate:v6];
    objc_storeStrong(&v6->_contents, contents);
  }

  return v6;
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [(TTArray *)self textAttachmentAtIndex:?];
  if (!v4)
  {
    v6 = os_log_create("com.apple.coreCRDT", "TTArray");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TTArray *)index objectAtIndex:v6];
    }

    index = [MEMORY[0x1E696AEC0] stringWithFormat:@"TTArray: no object at index %lu", index];
    objc_exception_throw(index);
  }

  return v4;
}

- (id)textAttachmentAtIndex:(unint64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = 0;
  contents = [(TTArray *)self contents];
  attributedString = [contents attributedString];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__TTArray_textAttachmentAtIndex___block_invoke;
  v8[3] = &unk_1E7509BB8;
  v8[4] = &v9;
  [attributedString enumerateAttribute:@"TTArrayAttachment" inRange:index options:1 usingBlock:{0, v8}];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(TTArray *)self insertObject:objectCopy atIndex:[(TTArray *)self count]];
}

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25__TTArray_indexOfObject___block_invoke;
  v8[3] = &unk_1E7509BE0;
  v5 = objectCopy;
  v9 = v5;
  v10 = &v11;
  [(TTArray *)self enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __25__TTArray_indexOfObject___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 CR_compare:*(a1 + 32)];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  objectCopy = object;
  v8 = [[v6 alloc] initWithUTF8String:"\uFFFC"];
  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
  v13 = @"TTArrayAttachment";
  v14[0] = objectCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  [v9 setAttributes:v10 range:{0, 1}];
  contents = [(TTArray *)self contents];
  [contents insertAttributedString:v9 atIndex:index];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeLastObject
{
  v3 = [(TTArray *)self count];
  if (v3)
  {

    [(TTArray *)self removeObjectAtIndex:v3 - 1];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  contents = [(TTArray *)self contents];
  [contents deleteCharactersInRange:{index, 1}];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  [(TTArray *)self removeObjectAtIndex:index];
  [(TTArray *)self insertObject:objectCopy atIndex:index];
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(TTArray *)self count])
  {
    v5 = 0;
    do
    {
      v7 = 0;
      v6 = [(TTArray *)self objectAtIndexedSubscript:v5];
      blockCopy[2](blockCopy, v6, v5, &v7);

      if (v7 == 1)
      {
        break;
      }

      ++v5;
    }

    while ([(TTArray *)self count]> v5);
  }
}

- (unint64_t)count
{
  contents = [(TTArray *)self contents];
  v3 = [contents length];

  return v3;
}

- (NSUUID)replicaUUID
{
  contents = [(TTArray *)self contents];
  replicaUUID = [contents replicaUUID];

  return replicaUUID;
}

- (NSString)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0D67F00];
  v3 = [(TTArray *)self count];
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __22__TTArray_description__block_invoke;
    v6[3] = &unk_1E7509C08;
    v6[4] = &v7;
    v6[5] = v3;
    [(TTArray *)self enumerateObjectsUsingBlock:v6];
    v4 = [v8[5] copy];
  }

  else
  {
    v4 = @"[]";
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __22__TTArray_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
    contents = [(TTArray *)self contents];
    contents2 = [v5 contents];

    v8 = [contents isEqual:contents2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  contents = [(TTArray *)self contents];
  v3 = [contents hash];

  return v3;
}

- (NSArray)nsArray
{
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __18__TTArray_nsArray__block_invoke;
  v7[3] = &unk_1E7509C30;
  v8 = array;
  v4 = array;
  [(TTArray *)self enumerateObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = os_log_create("com.apple.coreCRDT", "TTArray");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TTArray *)v8 mergeWith:v9];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TTArray cannot merge with object of type %@.", v8];
    objc_exception_throw(v10);
  }

  v11 = withCopy;
  contents = [(TTArray *)self contents];
  contents2 = [v11 contents];

  [contents mergeWith:contents2];
}

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  contents = [(TTArray *)self contents];
  [contents realizeLocalChangesIn:inCopy];
}

- (id)tombstone
{
  contents = [(TTArray *)self contents];
  tombstone = [contents tombstone];

  v4 = [[TTArray alloc] initWithContents:tombstone];

  return v4;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  contents = [(TTArray *)self contents];
  [contents walkGraph:graphCopy];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  objc_storeWeak(&self->_document, documentCopy);
  contents = [(TTArray *)self contents];
  [contents setDocument:documentCopy];
}

- (void)addUndoCommand:(id)command
{
  commandCopy = command;
  delegate = [(TTArray *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__TTArray_addUndoCommand___block_invoke;
  v7[3] = &unk_1E7509C58;
  v8 = commandCopy;
  v6 = commandCopy;
  [delegate addUndoCommandsForObject:self block:v7];
}

void __26__TTArray_addUndoCommand___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 contents];
  [v2 applyToString:v3];
}

- (BOOL)wantsUndoCommands
{
  delegate = [(TTArray *)self delegate];
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

- (id)serializeDataFromArchive:(const void *)archive
{
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(*(*archive + 72))(archive)];
  mutableBytes = [v4 mutableBytes];
  v6 = TTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  google::protobuf::MessageLite::SerializeToArray(archive, mutableBytes, v6);

  return v4;
}

- (TTArray)initWithArchive:(const void *)archive andReplicaID:(id)d
{
  v31[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (*(archive + 32))
  {
    v7 = [TTMergeableAttributedString alloc];
    v8 = v7;
    v9 = *(archive + 5);
    if (!v9)
    {
      v9 = *(CRDT::StringArray::default_instance(v7) + 40);
    }

    v10 = [(TTMergeableString *)v8 initWithArchive:v9 andReplicaID:dCopy];
    v11 = v10;
    v12 = *(archive + 14);
    if (v12)
    {
      selfCopy = self;
      v13 = *(archive + 6);
      v14 = 8 * v12;
      do
      {
        CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(v26, *v13);
        if ((~v27 & 3) == 0)
        {
          v15 = *(v29 + 23);
          if (v15 < 0)
          {
            v15 = v29[1];
          }

          if (v15 == 16)
          {
            v16 = objc_alloc(MEMORY[0x1E696AFB0]);
            if (*(v29 + 23) < 0)
            {
              v17 = *v29;
            }

            v18 = [v16 initWithUUIDBytes:selfCopy];
            attributedString = [(TTMergeableString *)v11 attributedString];
            v30 = @"TTArrayAttachment";
            v31[0] = v18;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
            [attributedString setAttributes:v20 range:{v28, 1}];
          }
        }

        CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(v26);
        ++v13;
        v14 -= 8;
      }

      while (v14);
      v6 = v11;
      self = selfCopy;
    }

    else
    {
      v6 = v10;
    }
  }

  else
  {
    v6 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:dCopy];
  }

  selfCopy = [(TTArray *)self initWithContents:v6, selfCopy];

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)saveToArchive:(void *)archive
{
  v14[2] = *MEMORY[0x1E69E9840];
  contents = [(TTArray *)self contents];
  *(archive + 8) |= 1u;
  v6 = *(archive + 5);
  if (!v6)
  {
    operator new();
  }

  [contents saveToArchive:v6];

  if ([(TTArray *)self count])
  {
    v7 = 0;
    do
    {
      v8 = [(TTArray *)self objectAtIndexedSubscript:v7];
      if (v8)
      {
        v9 = *(archive + 15);
        v10 = *(archive + 14);
        if (v10 >= v9)
        {
          if (v9 == *(archive + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 6, v9 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New();
        }

        v11 = *(archive + 6);
        *(archive + 14) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        *(v12 + 32) |= 1u;
        *(v12 + 40) = v7;
        v14[0] = 0;
        v14[1] = 0;
        [v8 getUUIDBytes:v14];
        *(v12 + 32) |= 2u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        if (*(v12 + 48) == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        MEMORY[0x19A8FCFF0]();
      }

      ++v7;
    }

    while ([(TTArray *)self count]> v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (TTArray)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 14)
  {
    v6 = [(TTArray *)self initWithCRCoder:coderCopy stringArray:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    v6 = [(TTArray *)self init];
  }

  v7 = v6;

  return v7;
}

- (TTArray)initWithCRCoder:(id)coder stringArray:(const void *)array
{
  v37[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (*(array + 32))
  {
    v13 = [TTMergeableAttributedString alloc];
    v14 = v13;
    v15 = *(array + 5);
    if (!v15)
    {
      v15 = *(CRDT::StringArray::default_instance(v13) + 40);
    }

    v16 = [(TTMergeableAttributedString *)v14 initWithCRCoder:coderCopy string:v15];
    v17 = v16;
    v18 = *(array + 14);
    if (v18)
    {
      selfCopy = self;
      v19 = *(array + 6);
      v20 = 8 * v18;
      do
      {
        CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(v32, *v19);
        if ((~v33 & 3) == 0)
        {
          v21 = *(v35 + 23);
          if (v21 < 0)
          {
            v21 = v35[1];
          }

          if (v21 == 16)
          {
            v22 = objc_alloc(MEMORY[0x1E696AFB0]);
            if (*(v35 + 23) < 0)
            {
              v23 = *v35;
            }

            v24 = [v22 initWithUUIDBytes:selfCopy];
            attributedString = [(TTMergeableString *)v17 attributedString];
            v36 = @"TTArrayAttachment";
            v37[0] = v24;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
            [attributedString setAttributes:v26 range:{v34, 1}];
          }
        }

        CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(v32);
        ++v19;
        v20 -= 8;
      }

      while (v20);
      v9 = v17;
      self = selfCopy;
    }

    else
    {
      v9 = v16;
    }
  }

  else
  {
    v6 = [TTMergeableAttributedString alloc];
    document = [coderCopy document];
    replica = [document replica];
    v9 = [(TTMergeableString *)v6 initWithReplicaID:replica];

    v10 = objc_opt_class();
    document2 = [coderCopy document];
    v12 = REMDynamicCast(v10, document2);

    if (v12)
    {
      [(TTMergeableString *)v9 setDocument:v12];
    }
  }

  selfCopy = [(TTArray *)self initWithContents:v9, selfCopy];

  v28 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 14)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 14;
    operator new();
  }

  [(TTArray *)self saveToArchive:*(currentDocumentObjectForEncoding + 40)];
}

- (void)objectAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134349056;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "No object at index %{public}lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)mergeWith:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Cannot merge with object of type %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end