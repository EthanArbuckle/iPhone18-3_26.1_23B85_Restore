@interface BRCLRUDictionary
- (BRCLRUDictionary)initWithMaximumCapacity:(unint64_t)a3;
- (id)allValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)objectForKey:(id)a3;
- (void)_addNodeToFront:(id)a3;
- (void)_moveNodeToFront:(id)a3;
- (void)_removeNode:(id)a3;
- (void)_removeNodeFromLinkedList:(id)a3;
- (void)_shrinkToCapacity;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation BRCLRUDictionary

- (BRCLRUDictionary)initWithMaximumCapacity:(unint64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(BRCLRUDictionary *)v5 initWithMaximumCapacity:v6];
    }

    v3 = 1;
  }

  v15.receiver = self;
  v15.super_class = BRCLRUDictionary;
  v7 = [(BRCLRUDictionary *)&v15 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v3];
    dictionary = v7->_dictionary;
    v7->_dictionary = v8;

    v7->_maximumCapacity = v3;
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
  v4 = [(BRCLRUDictionary *)self head];
  v5 = [v4 next];

  if (v5 == self->_tail)
  {
    v7 = v5;
  }

  else
  {
    do
    {
      v6 = [(BRCLRUDictionaryNode *)v5 object];
      [v3 addObject:v6];

      v7 = [(BRCLRUDictionaryNode *)v5 next];

      v5 = v7;
    }

    while (v7 != self->_tail);
  }

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BRCLRUDictionary objectForKey:];
  }

  v5 = [(BRCLRUDictionary *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [(BRCLRUDictionary *)self _moveNodeToFront:v6];
    v7 = [v6 object];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [BRCLRUDictionary setObject:forKey:];
  }

  v8 = [(BRCLRUDictionary *)self dictionary];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    [(BRCLRUDictionary *)self _moveNodeToFront:v9];
    [(BRCLRUDictionaryNode *)v9 setObject:v6];
  }

  else
  {
    v10 = [(BRCLRUDictionary *)self dictionary];
    v11 = [v10 count];
    v12 = [(BRCLRUDictionary *)self maximumCapacity];

    if (v11 == v12)
    {
      v13 = [(BRCLRUDictionary *)self tail];
      v14 = [v13 prev];
      [(BRCLRUDictionary *)self _removeNode:v14];
    }

    v9 = [[BRCLRUDictionaryNode alloc] initWithKey:v7 object:v6];
    v15 = [(BRCLRUDictionary *)self dictionary];
    [v15 setObject:v9 forKeyedSubscript:v7];

    [(BRCLRUDictionary *)self _addNodeToFront:v9];
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(BRCLRUDictionary *)self dictionary];
  v7 = [v5 objectForKeyedSubscript:v4];

  v6 = v7;
  if (v7)
  {
    [(BRCLRUDictionary *)self _removeNode:v7];
    v6 = v7;
  }
}

- (void)removeAllObjects
{
  v3 = [(BRCLRUDictionary *)self dictionary];
  [v3 removeAllObjects];

  v4 = [(BRCLRUDictionary *)self tail];
  v5 = [(BRCLRUDictionary *)self head];
  [v5 setNext:v4];

  v7 = [(BRCLRUDictionary *)self head];
  v6 = [(BRCLRUDictionary *)self tail];
  [v6 setPrev:v7];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(BRCLRUDictionary *)self head];
  v5 = [v4 next];

  if (v5 == self->_tail)
  {
    v8 = v5;
  }

  else
  {
    do
    {
      v6 = [(BRCLRUDictionaryNode *)v5 key];
      v7 = [(BRCLRUDictionaryNode *)v5 object];
      [v3 appendFormat:@"\t%@ = %@;\n", v6, v7];

      v8 = [(BRCLRUDictionaryNode *)v5 next];

      v5 = v8;
    }

    while (v8 != self->_tail);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (void)_shrinkToCapacity
{
  for (i = self; [(BRCLRUDictionary *)self count]> i->_maximumCapacity; self = i)
  {
    v3 = [(BRCLRUDictionary *)i tail];
    v5 = [v3 prev];

    if (!v5 || ([(BRCLRUDictionary *)i head], v4 = objc_claimAutoreleasedReturnValue(), v4, v5 == v4))
    {

      return;
    }

    [(BRCLRUDictionary *)i _removeNode:v5];
  }
}

- (void)_removeNodeFromLinkedList:(id)a3
{
  v3 = a3;
  v5 = [v3 prev];
  v4 = [v3 next];

  [v5 setNext:v4];
  [v4 setPrev:v5];
}

- (void)_removeNode:(id)a3
{
  v4 = a3;
  [(BRCLRUDictionary *)self _removeNodeFromLinkedList:v4];
  v6 = [(BRCLRUDictionary *)self dictionary];
  v5 = [v4 key];

  [v6 removeObjectForKey:v5];
}

- (void)_moveNodeToFront:(id)a3
{
  v6 = a3;
  v4 = [(BRCLRUDictionary *)self head];
  v5 = [v4 next];

  if (v5 != v6)
  {
    [(BRCLRUDictionary *)self _removeNodeFromLinkedList:v6];
    [(BRCLRUDictionary *)self _addNodeToFront:v6];
  }
}

- (void)_addNodeToFront:(id)a3
{
  v4 = a3;
  v5 = [(BRCLRUDictionary *)self head];
  v8 = [v5 next];

  v6 = [(BRCLRUDictionary *)self head];
  [v6 setNext:v4];

  v7 = [(BRCLRUDictionary *)self head];
  [v4 setPrev:v7];

  [v4 setNext:v8];
  [v8 setPrev:v4];
}

@end