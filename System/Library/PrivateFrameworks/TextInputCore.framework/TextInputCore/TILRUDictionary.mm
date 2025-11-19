@interface TILRUDictionary
+ (id)dictionaryWithMaximumCapacity:(unint64_t)a3;
- (TILRUDictionary)initWithMaximumCapacity:(unint64_t)a3;
- (id)allKeysInLRUOrder;
- (id)allValuesInLRUOrder;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)objectForKeyWithoutAffectingLRU:(id)a3;
- (unint64_t)linkedListCount;
- (void)_addNodeToFront:(id)a3;
- (void)_moveNodeToFront:(id)a3;
- (void)_removeNode:(id)a3;
- (void)_removeNodeFromLinkedList:(id)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
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

- (void)removeObjectForKey:(id)a3
{
  v4 = CFDictionaryGetValue(self->_dictionary, a3);
  if (v4)
  {
    [(TILRUDictionary *)self _removeNode:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  key = a4;
  dictionary = self->_dictionary;
  v7 = a3;
  v8 = CFDictionaryGetValue(dictionary, key);
  if (v8)
  {
    v9 = v8;
    [(TILRUDictionary *)self _moveNodeToFront:v8];
    [(TILRUDictionaryNode *)v9 setObject:v7];
  }

  else
  {
    if (CFDictionaryGetCount(self->_dictionary) == self->_maxCount)
    {
      [(TILRUDictionary *)self _removeNode:self->_tail->prev];
    }

    v10 = [key copyWithZone:0];
    v9 = [[TILRUDictionaryNode alloc] initWithKey:v10 object:v7];

    CFDictionaryAddValue(self->_dictionary, v10, v9);
    [(TILRUDictionary *)self _addNodeToFront:v9];
    v7 = v10;
  }
}

- (id)objectForKey:(id)a3
{
  v4 = CFDictionaryGetValue(self->_dictionary, a3);
  if (v4)
  {
    [(TILRUDictionary *)self _moveNodeToFront:v4];
    v5 = [v4 object];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
      v7 = [p_isa object];
      [v3 appendFormat:@"\t%@ = %@;\n", v6, v7];

      v8 = p_isa[3];
      p_isa = &v8->super.isa;
    }

    while (v8 != self->_tail);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (TILRUDictionary)initWithMaximumCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = TILRUDictionary;
  v4 = [(TILRUDictionary *)&v10 init];
  if (v4)
  {
    v4->_dictionary = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], a3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v4->_maxCount = a3;
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

+ (id)dictionaryWithMaximumCapacity:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithMaximumCapacity:a3];

  return v3;
}

- (void)_addNodeToFront:(id)a3
{
  v4 = a3;
  v5 = self->_head->next;
  head = self->_head;
  next = head->next;
  head->next = v4;
  v11 = v4;

  v8 = self->_head;
  v9 = v11->next;
  v11->next = v5;
  v11->prev = v8;
  v10 = v5;

  v10->prev = v11;
}

- (void)_moveNodeToFront:(id)a3
{
  if (self->_head->next != a3)
  {
    v5 = a3;
    [(TILRUDictionary *)self _removeNodeFromLinkedList:v5];
    [(TILRUDictionary *)self _addNodeToFront:v5];
  }
}

- (void)_removeNode:(id)a3
{
  v4 = a3;
  [(TILRUDictionary *)self _removeNodeFromLinkedList:v4];
  dictionary = self->_dictionary;
  v6 = [v4 key];

  CFDictionaryRemoveValue(dictionary, v6);
}

- (void)_removeNodeFromLinkedList:(id)a3
{
  v4 = *(a3 + 4);
  v5 = *(a3 + 3);
  v6 = v4[3];
  v4[3] = v5;
  v7 = v5;
  v8 = v4;
  v9 = a3;

  v7[4] = v8;
}

- (id)objectForKeyWithoutAffectingLRU:(id)a3
{
  Value = CFDictionaryGetValue(self->_dictionary, a3);

  return [Value object];
}

- (id)allValuesInLRUOrder
{
  v3 = [MEMORY[0x277CBEB18] array];
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
      v6 = [p_isa object];
      [v3 addObject:v6];

      v7 = p_isa[3];
      p_isa = &v7->super.isa;
    }

    while (v7 != self->_tail);
  }

  return v3;
}

- (id)allKeysInLRUOrder
{
  v3 = [MEMORY[0x277CBEB18] array];
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
      [v3 addObject:v6];

      v7 = p_isa[3];
      p_isa = &v7->super.isa;
    }

    while (v7 != self->_tail);
  }

  return v3;
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