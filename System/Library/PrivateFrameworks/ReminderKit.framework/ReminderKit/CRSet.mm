@interface CRSet
- (BOOL)containsObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (CRDocument)document;
- (CRSet)initWithCRCoder:(id)coder;
- (CRSet)initWithCRCoder:(id)coder set:(const void *)set;
- (CRSet)initWithCRCoder:(id)coder set:(const void *)set elementValueDecoder:(id)decoder;
- (CRSet)initWithDocument:(id)document;
- (NSArray)allObjects;
- (NSString)description;
- (id)anyObject;
- (id)deltaSince:(id)since in:(id)in;
- (id)member:(id)member;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)addObject:(id)object;
- (void)addObserver:(id)observer;
- (void)encodeWithCRCoder:(id)coder;
- (void)encodeWithCRCoder:(id)coder set:(void *)set;
- (void)encodeWithCRCoder:(id)coder set:(void *)set elementValueCoder:(id)valueCoder;
- (void)mergeWith:(id)with;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObserver:(id)observer;
- (void)setObject:(id)object;
- (void)walkGraph:(id)graph;
@end

@implementation CRSet

- (CRSet)initWithDocument:(id)document
{
  documentCopy = document;
  v11.receiver = self;
  v11.super_class = CRSet;
  v5 = [(CRSet *)&v11 init];
  if (v5)
  {
    v6 = [[CRDictionary alloc] initWithDocument:documentCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;
  }

  return v5;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 4)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 4;
    operator new();
  }

  v6 = *(currentDocumentObjectForEncoding + 40);
  dictionary = [(CRSet *)self dictionary];
  [dictionary encodeWithCRCoder:coderCopy dictionary:v6 elementValueCoder:&__block_literal_global_46];
}

void __27__CRSet_encodeWithCRCoder___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  v9 = a5;
  if (v8 && [v8 conformsToProtocol:&unk_1F0DB3B90])
  {
    *(a4 + 32) |= 2u;
    v10 = *(a4 + 48);
    if (!v10)
    {
      operator new();
    }

    [v9 encodeObject:v8 forObjectID:v10];
  }
}

- (void)encodeWithCRCoder:(id)coder set:(void *)set
{
  coderCopy = coder;
  dictionary = [(CRSet *)self dictionary];
  [dictionary encodeWithCRCoder:coderCopy dictionary:set];
}

- (void)encodeWithCRCoder:(id)coder set:(void *)set elementValueCoder:(id)valueCoder
{
  coderCopy = coder;
  valueCoderCopy = valueCoder;
  dictionary = [(CRSet *)self dictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__CRSet_encodeWithCRCoder_set_elementValueCoder___block_invoke;
  v12[3] = &unk_1E7509D70;
  v11 = valueCoderCopy;
  v13 = v11;
  [dictionary encodeWithCRCoder:coderCopy dictionary:set elementValueCoder:v12];
}

- (CRSet)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 4)
  {
    v6 = [(CRSet *)self initWithCRCoder:coderCopy set:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(CRSet *)self initWithDocument:document];
  }

  return v6;
}

- (CRSet)initWithCRCoder:(id)coder set:(const void *)set
{
  coderCopy = coder;
  document = [coderCopy document];
  v8 = [(CRSet *)self initWithDocument:document];

  if (v8)
  {
    v9 = [[CRDictionary alloc] initWithCRCoder:coderCopy dictionary:set elementValueDecoder:&__block_literal_global_64];
    [(CRSet *)v8 setDictionary:v9];
  }

  return v8;
}

id __29__CRSet_initWithCRCoder_set___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if ((*(a2 + 32) & 2) != 0)
  {
    v9 = *(a2 + 48);
    if (!v9)
    {
      v9 = *(CRDT::Dictionary_Element::default_instance(v6) + 48);
    }

    v8 = [(CRDT::Dictionary_Element *)v7 decodeObjectForProtobufObjectID:v9];
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  *a3 = v8;

  return v8;
}

- (CRSet)initWithCRCoder:(id)coder set:(const void *)set elementValueDecoder:(id)decoder
{
  coderCopy = coder;
  decoderCopy = decoder;
  document = [coderCopy document];
  v11 = [(CRSet *)self initWithDocument:document];

  if (v11)
  {
    v12 = [CRDictionary alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__CRSet_initWithCRCoder_set_elementValueDecoder___block_invoke;
    v15[3] = &unk_1E7509D98;
    v16 = decoderCopy;
    v13 = [(CRDictionary *)v12 initWithCRCoder:coderCopy dictionary:set elementValueDecoder:v15];
    [(CRSet *)v11 setDictionary:v13];
  }

  return v11;
}

id __49__CRSet_initWithCRCoder_set_elementValueDecoder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*(*(a1 + 32) + 16))();
  *a3 = v4;

  return v4;
}

- (id)member:(id)member
{
  memberCopy = member;
  dictionary = [(CRSet *)self dictionary];
  v6 = [dictionary objectForKey:memberCopy];

  return v6;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  dictionary = [(CRSet *)self dictionary];
  v6 = [dictionary objectForKey:objectCopy];
  v7 = v6 != 0;

  return v7;
}

- (unint64_t)count
{
  dictionary = [(CRSet *)self dictionary];
  v3 = [dictionary count];

  return v3;
}

- (NSArray)allObjects
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[CRSet count](self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  dictionary = [(CRSet *)self dictionary];
  v5 = [dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(dictionary);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v5 = [dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)anyObject
{
  dictionary = [(CRSet *)self dictionary];
  keyEnumerator = [dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];

  return nextObject;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  dictionary = [(CRSet *)self dictionary];
  v9 = [dictionary countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSet *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSet *)self observers];
  [observers removeObject:observerCopy];
}

- (void)addObject:(id)object
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  dictionary = [(CRSet *)self dictionary];
  [dictionary setObject:objectCopy forKey:objectCopy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(CRSet *)self observers];
  v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v11 + 1) + 8 * v9++) setUpdated:self];
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  dictionary = [(CRSet *)self dictionary];
  [dictionary removeObjectForKey:objectCopy];
}

- (void)removeAllObjects
{
  dictionary = [(CRSet *)self dictionary];
  [dictionary removeAllObjects];
}

- (void)setObject:(id)object
{
  objectCopy = object;
  [(CRSet *)self removeAllObjects];
  if (objectCopy)
  {
    [(CRSet *)self addObject:objectCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [(CRSet *)self dictionary];
    dictionary2 = [equalCopy dictionary];
    v7 = [dictionary isEqual:dictionary2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  dictionary = [(CRSet *)self dictionary];
  v3 = [dictionary hash];

  return v3;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v6);
  }

  dictionary = [(CRSet *)self dictionary];
  dictionary2 = [withCopy dictionary];
  [dictionary mergeWith:dictionary2];
}

- (CRDocument)document
{
  dictionary = [(CRSet *)self dictionary];
  document = [dictionary document];

  return document;
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  dictionary = [(CRSet *)self dictionary];
  v9 = [dictionary deltaSince:sinceCopy in:inCopy];

  if (v9)
  {
    v10 = [[CRSet alloc] initWithDocument:inCopy];
    [(CRSet *)v10 setDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  dictionary = [(CRSet *)self dictionary];
  graphCopy[2](graphCopy, dictionary);
}

- (NSString)description
{
  if ([(CRSet *)self count])
  {
    v3 = MEMORY[0x1E696AD60];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p (\n"), v5, self;

    dictionary = [(CRSet *)self dictionary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __20__CRSet_description__block_invoke;
    v13[3] = &unk_1E7509DC0;
    v8 = v6;
    v14 = v8;
    [dictionary enumerateKeysObjectsAndTimestampsUsingBlock:v13];

    [v8 replaceCharactersInRange:objc_msgSend(v8 withString:{"length") - 2, 2, @">"}]);
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v8 = [v9 stringWithFormat:@"<%@ %p>", v11, self];
  }

  return v8;
}

void __20__CRSet_description__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = *(a1 + 32);
  v7 = [a4 shortDescription];
  [v6 appendFormat:@"  %@ %@, \n", v7, v8];
}

@end