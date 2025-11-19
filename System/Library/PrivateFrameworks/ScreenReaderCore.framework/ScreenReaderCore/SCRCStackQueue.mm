@interface SCRCStackQueue
- (id)dequeueObject;
- (id)dequeueObjectRetained;
- (id)description;
- (id)objectEnumerator;
- (id)popObject;
- (id)popObjectRetained;
- (void)_safeReleaseAllObjects;
- (void)dealloc;
- (void)pushArray:(id)a3;
- (void)pushObject:(id)a3;
@end

@implementation SCRCStackQueue

- (void)dealloc
{
  [(SCRCStackQueue *)self removeAllObjects];
  v3.receiver = self;
  v3.super_class = SCRCStackQueue;
  [(SCRCStackQueue *)&v3 dealloc];
}

- (void)_safeReleaseAllObjects
{
  v3 = self->_firstNode;
  firstNode = self->_firstNode;
  self->_firstNode = 0;

  lastNode = self->_lastNode;
  self->_lastNode = 0;

  if (v3)
  {
    do
    {
      v6 = [(_SCRCStackNode *)v3 next];

      v3 = v6;
    }

    while (v6);
  }
}

- (void)pushArray:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(SCRCStackQueue *)self pushObject:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)pushObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(_SCRCStackNode);
    [(_SCRCStackNode *)v5 setObject:v4];

    if (self->_firstNode)
    {
      [(_SCRCStackNode *)v5 setPrev:self->_lastNode];
      [(_SCRCStackNode *)self->_lastNode setNext:v5];
    }

    else
    {
      objc_storeStrong(&self->_firstNode, v5);
    }

    lastNode = self->_lastNode;
    self->_lastNode = v5;

    ++self->_count;
  }
}

- (id)popObject
{
  v2 = [(SCRCStackQueue *)self popObjectRetained];

  return v2;
}

- (id)popObjectRetained
{
  v3 = self->_lastNode;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(_SCRCStackNode *)v3 object];
  lastNode = self->_lastNode;
  --self->_count;
  if (lastNode == self->_firstNode)
  {
    self->_lastNode = 0;

    firstNode = self->_firstNode;
    self->_firstNode = 0;
  }

  else
  {
    v7 = [(_SCRCStackNode *)lastNode prev];
    v8 = self->_lastNode;
    self->_lastNode = v7;

    [(_SCRCStackNode *)self->_lastNode setNext:0];
  }

  return v5;
}

- (id)dequeueObjectRetained
{
  v3 = self->_firstNode;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(_SCRCStackNode *)v3 object];
  firstNode = self->_firstNode;
  if (firstNode == self->_lastNode)
  {
    self->_firstNode = 0;

    lastNode = self->_lastNode;
    self->_lastNode = 0;
  }

  else
  {
    v7 = [(_SCRCStackNode *)v4 next];
    v8 = self->_firstNode;
    self->_firstNode = v7;

    [(_SCRCStackNode *)self->_firstNode setPrev:0];
  }

  --self->_count;

  return v5;
}

- (id)dequeueObject
{
  v2 = [(SCRCStackQueue *)self dequeueObjectRetained];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"Stack (%p) has %lu items\n", self, -[SCRCStackQueue count](self, "count")];
  v4 = self->_firstNode;
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v7 = [v5 object];
      v8 = [v6 initWithFormat:@"\t%@\n", v7];

      [v3 appendString:v8];
      v9 = [v5 next];

      v5 = v9;
    }

    while (v9);
  }

  return v3;
}

- (id)objectEnumerator
{
  v2 = [[_SCRCStackQueueEnumerator alloc] initWithListMember:self->_firstNode];

  return v2;
}

@end