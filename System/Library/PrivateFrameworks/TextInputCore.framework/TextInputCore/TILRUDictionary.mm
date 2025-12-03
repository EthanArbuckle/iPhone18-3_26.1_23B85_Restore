@interface TILRUDictionary
+ (id)dictionaryWithMaximumCapacity:(unint64_t)capacity;
- (TILRUDictionary)initWithMaximumCapacity:(unint64_t)capacity;
- (id)allKeysInLRUOrder;
- (id)allValuesInLRUOrder;
- (id)description;
- (id)objectForKey:(id)key;
- (id)objectForKeyWithoutAffectingLRU:(id)u;
- (unint64_t)linkedListCount;
- (void)_addNodeToFront:(id)front;
- (void)_moveNodeToFront:(id)front;
- (void)_removeNode:(id)node;
- (void)_removeNodeFromLinkedList:(id)list;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation TILRUDictionary

- (void)dealloc
{
  CFRelease(self->_dictionary);
  v3.receiver = self;
  v3.super_class = TILRUDictionary;
  [(TILRUDictionary *)&v3 dealloc];
}

- (void)removeAllObjects
{
  CFDictionaryRemoveAllValues(self->_dictionary);
  objc_storeStrong(&self->_head->next, self->_tail);
  self->_tail->prev = self->_head;
}

- (void)removeObjectForKey:(id)key
{
  v4 = CFDictionaryGetValue(self->_dictionary, key);
  if (v4)
  {
    [(TILRUDictionary *)self _removeNode:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setObject:(id)object forKey:(id)key
{
  key = key;
  dictionary = self->_dictionary;
  objectCopy = object;
  v8 = CFDictionaryGetValue(dictionary, key);
  if (v8)
  {
    v9 = v8;
    [(TILRUDictionary *)self _moveNodeToFront:v8];
    [(TILRUDictionaryNode *)v9 setObject:objectCopy];
  }

  else
  {
    if (CFDictionaryGetCount(self->_dictionary) == self->_maxCount)
    {
      [(TILRUDictionary *)self _removeNode:self->_tail->prev];
    }

    v10 = [key copyWithZone:0];
    v9 = [[TILRUDictionaryNode alloc] initWithKey:v10 object:objectCopy];

    CFDictionaryAddValue(self->_dictionary, v10, v9);
    [(TILRUDictionary *)self _addNodeToFront:v9];
    objectCopy = v10;
  }
}

- (id)objectForKey:(id)key
{
  v4 = CFDictionaryGetValue(self->_dictionary, key);
  if (v4)
  {
    [(TILRUDictionary *)self _moveNodeToFront:v4];
    object = [v4 object];
  }

  else
  {
    object = 0;
  }

  return object;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p>{\n", objc_opt_class(), self];
  v4 = self->_head->next;
  p_isa = &v4->super.isa;
  if (v4 == self->_tail)
  {
    v8 = v4;
  }

  else
  {
    do
    {
      v6 = [p_isa key];
      object = [p_isa object];
      [v3 appendFormat:@"\t%@ = %@;\n", v6, object];

      v8 = p_isa[3];
      p_isa = &v8->super.isa;
    }

    while (v8 != self->_tail);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (TILRUDictionary)initWithMaximumCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = TILRUDictionary;
  v4 = [(TILRUDictionary *)&v10 init];
  if (v4)
  {
    v4->_dictionary = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], capacity, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v4->_maxCount = capacity;
    v5 = [[TILRUDictionaryNode alloc] initWithKey:0 object:0];
    head = v4->_head;
    v4->_head = v5;

    v7 = [[TILRUDictionaryNode alloc] initWithKey:0 object:0];
    tail = v4->_tail;
    v4->_tail = v7;

    objc_storeStrong(&v4->_head->next, v4->_tail);
    v4->_tail->prev = v4->_head;
  }

  return v4;
}

+ (id)dictionaryWithMaximumCapacity:(unint64_t)capacity
{
  v3 = [objc_alloc(objc_opt_class()) initWithMaximumCapacity:capacity];

  return v3;
}

- (void)_addNodeToFront:(id)front
{
  frontCopy = front;
  v5 = self->_head->next;
  head = self->_head;
  next = head->next;
  head->next = frontCopy;
  v11 = frontCopy;

  v8 = self->_head;
  v9 = v11->next;
  v11->next = v5;
  v11->prev = v8;
  v10 = v5;

  v10->prev = v11;
}

- (void)_moveNodeToFront:(id)front
{
  if (self->_head->next != front)
  {
    frontCopy = front;
    [(TILRUDictionary *)self _removeNodeFromLinkedList:frontCopy];
    [(TILRUDictionary *)self _addNodeToFront:frontCopy];
  }
}

- (void)_removeNode:(id)node
{
  nodeCopy = node;
  [(TILRUDictionary *)self _removeNodeFromLinkedList:nodeCopy];
  dictionary = self->_dictionary;
  v6 = [nodeCopy key];

  CFDictionaryRemoveValue(dictionary, v6);
}

- (void)_removeNodeFromLinkedList:(id)list
{
  v4 = *(list + 4);
  v5 = *(list + 3);
  v6 = v4[3];
  v4[3] = v5;
  v7 = v5;
  v8 = v4;
  listCopy = list;

  v7[4] = v8;
}

- (id)objectForKeyWithoutAffectingLRU:(id)u
{
  Value = CFDictionaryGetValue(self->_dictionary, u);

  return [Value object];
}

- (id)allValuesInLRUOrder
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = self->_head->next;
  p_isa = &v4->super.isa;
  if (v4 == self->_tail)
  {
    v7 = v4;
  }

  else
  {
    do
    {
      object = [p_isa object];
      [array addObject:object];

      v7 = p_isa[3];
      p_isa = &v7->super.isa;
    }

    while (v7 != self->_tail);
  }

  return array;
}

- (id)allKeysInLRUOrder
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = self->_head->next;
  p_isa = &v4->super.isa;
  if (v4 == self->_tail)
  {
    v7 = v4;
  }

  else
  {
    do
    {
      v6 = [p_isa key];
      [array addObject:v6];

      v7 = p_isa[3];
      p_isa = &v7->super.isa;
    }

    while (v7 != self->_tail);
  }

  return array;
}

- (unint64_t)linkedListCount
{
  v3 = self->_head->next;
  v4 = v3;
  if (v3 == self->_tail)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    p_isa = &v3->super.isa;
    do
    {
      ++v5;
      v4 = p_isa[3];

      p_isa = &v4->super.isa;
    }

    while (v4 != self->_tail);
  }

  return v5;
}

@end