@interface BRCLRUDictionary
- (BRCLRUDictionary)initWithMaximumCapacity:(unint64_t)capacity;
- (id)allValues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)objectForKey:(id)key;
- (void)_addNodeToFront:(id)front;
- (void)_moveNodeToFront:(id)front;
- (void)_removeNode:(id)node;
- (void)_removeNodeFromLinkedList:(id)list;
- (void)_shrinkToCapacity;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation BRCLRUDictionary

- (BRCLRUDictionary)initWithMaximumCapacity:(unint64_t)capacity
{
  capacityCopy = capacity;
  if (!capacity)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(BRCLRUDictionary *)v5 initWithMaximumCapacity:v6];
    }

    capacityCopy = 1;
  }

  v15.receiver = self;
  v15.super_class = BRCLRUDictionary;
  v7 = [(BRCLRUDictionary *)&v15 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:capacityCopy];
    dictionary = v7->_dictionary;
    v7->_dictionary = v8;

    v7->_maximumCapacity = capacityCopy;
    v10 = [[BRCLRUDictionaryNode alloc] initWithKey:0 object:0];
    head = v7->_head;
    v7->_head = v10;

    v12 = [[BRCLRUDictionaryNode alloc] initWithKey:0 object:0];
    tail = v7->_tail;
    v7->_tail = v12;

    [(BRCLRUDictionaryNode *)v7->_head setNext:v7->_tail];
    [(BRCLRUDictionaryNode *)v7->_tail setPrev:v7->_head];
  }

  return v7;
}

- (id)allValues
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_dictionary, "count")}];
  head = [(BRCLRUDictionary *)self head];
  next = [head next];

  if (next == self->_tail)
  {
    v5Next = next;
  }

  else
  {
    do
    {
      object = [(BRCLRUDictionaryNode *)next object];
      [v3 addObject:object];

      v5Next = [(BRCLRUDictionaryNode *)next next];

      next = v5Next;
    }

    while (v5Next != self->_tail);
  }

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    [BRCLRUDictionary objectForKey:];
  }

  dictionary = [(BRCLRUDictionary *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    [(BRCLRUDictionary *)self _moveNodeToFront:v6];
    object = [v6 object];
  }

  else
  {
    object = 0;
  }

  return object;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!keyCopy)
  {
    [BRCLRUDictionary setObject:forKey:];
  }

  dictionary = [(BRCLRUDictionary *)self dictionary];
  v9 = [dictionary objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    [(BRCLRUDictionary *)self _moveNodeToFront:v9];
    [(BRCLRUDictionaryNode *)v9 setObject:objectCopy];
  }

  else
  {
    dictionary2 = [(BRCLRUDictionary *)self dictionary];
    v11 = [dictionary2 count];
    maximumCapacity = [(BRCLRUDictionary *)self maximumCapacity];

    if (v11 == maximumCapacity)
    {
      tail = [(BRCLRUDictionary *)self tail];
      prev = [tail prev];
      [(BRCLRUDictionary *)self _removeNode:prev];
    }

    v9 = [[BRCLRUDictionaryNode alloc] initWithKey:keyCopy object:objectCopy];
    dictionary3 = [(BRCLRUDictionary *)self dictionary];
    [dictionary3 setObject:v9 forKeyedSubscript:keyCopy];

    [(BRCLRUDictionary *)self _addNodeToFront:v9];
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(BRCLRUDictionary *)self dictionary];
  v7 = [dictionary objectForKeyedSubscript:keyCopy];

  v6 = v7;
  if (v7)
  {
    [(BRCLRUDictionary *)self _removeNode:v7];
    v6 = v7;
  }
}

- (void)removeAllObjects
{
  dictionary = [(BRCLRUDictionary *)self dictionary];
  [dictionary removeAllObjects];

  tail = [(BRCLRUDictionary *)self tail];
  head = [(BRCLRUDictionary *)self head];
  [head setNext:tail];

  head2 = [(BRCLRUDictionary *)self head];
  tail2 = [(BRCLRUDictionary *)self tail];
  [tail2 setPrev:head2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BRCLRUDictionary alloc] initWithMaximumCapacity:[(BRCLRUDictionary *)self maximumCapacity]];
  v5 = [(NSMutableDictionary *)self->_dictionary mutableCopy];
  dictionary = v4->_dictionary;
  v4->_dictionary = v5;

  v7 = [(BRCLRUDictionaryNode *)self->_head copy];
  head = v4->_head;
  v4->_head = v7;

  v9 = [(BRCLRUDictionaryNode *)self->_tail copy];
  tail = v4->_tail;
  v4->_tail = v9;

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p>{\n", objc_opt_class(), self];
  head = [(BRCLRUDictionary *)self head];
  next = [head next];

  if (next == self->_tail)
  {
    v5Next = next;
  }

  else
  {
    do
    {
      v6 = [(BRCLRUDictionaryNode *)next key];
      object = [(BRCLRUDictionaryNode *)next object];
      [v3 appendFormat:@"\t%@ = %@;\n", v6, object];

      v5Next = [(BRCLRUDictionaryNode *)next next];

      next = v5Next;
    }

    while (v5Next != self->_tail);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (void)_shrinkToCapacity
{
  for (i = self; [(BRCLRUDictionary *)self count]> i->_maximumCapacity; self = i)
  {
    tail = [(BRCLRUDictionary *)i tail];
    prev = [tail prev];

    if (!prev || ([(BRCLRUDictionary *)i head], v4 = objc_claimAutoreleasedReturnValue(), v4, prev == v4))
    {

      return;
    }

    [(BRCLRUDictionary *)i _removeNode:prev];
  }
}

- (void)_removeNodeFromLinkedList:(id)list
{
  listCopy = list;
  prev = [listCopy prev];
  next = [listCopy next];

  [prev setNext:next];
  [next setPrev:prev];
}

- (void)_removeNode:(id)node
{
  nodeCopy = node;
  [(BRCLRUDictionary *)self _removeNodeFromLinkedList:nodeCopy];
  dictionary = [(BRCLRUDictionary *)self dictionary];
  v5 = [nodeCopy key];

  [dictionary removeObjectForKey:v5];
}

- (void)_moveNodeToFront:(id)front
{
  frontCopy = front;
  head = [(BRCLRUDictionary *)self head];
  next = [head next];

  if (next != frontCopy)
  {
    [(BRCLRUDictionary *)self _removeNodeFromLinkedList:frontCopy];
    [(BRCLRUDictionary *)self _addNodeToFront:frontCopy];
  }
}

- (void)_addNodeToFront:(id)front
{
  frontCopy = front;
  head = [(BRCLRUDictionary *)self head];
  next = [head next];

  head2 = [(BRCLRUDictionary *)self head];
  [head2 setNext:frontCopy];

  head3 = [(BRCLRUDictionary *)self head];
  [frontCopy setPrev:head3];

  [frontCopy setNext:next];
  [next setPrev:frontCopy];
}

@end