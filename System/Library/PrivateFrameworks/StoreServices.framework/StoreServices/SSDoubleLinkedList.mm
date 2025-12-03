@interface SSDoubleLinkedList
- (NSArray)allNodes;
- (SSDoubleLinkedList)init;
- (id)appendObject:(id)object;
- (id)description;
- (id)insertObject:(id)object;
- (void)appendNode:(id)node;
- (void)insertNode:(id)node;
- (void)removeAllNodes;
- (void)removeNode:(id)node;
@end

@implementation SSDoubleLinkedList

- (SSDoubleLinkedList)init
{
  v7.receiver = self;
  v7.super_class = SSDoubleLinkedList;
  v2 = [(SSDoubleLinkedList *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    listIdentifier = v2->_listIdentifier;
    v2->_listIdentifier = uUIDString;
  }

  return v2;
}

- (NSArray)allNodes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  head = [(SSDoubleLinkedList *)self head];
  if (head)
  {
    v5 = head;
    do
    {
      [v3 addObject:v5];
      next = [v5 next];

      v5 = next;
    }

    while (next);
  }

  return v3;
}

- (void)appendNode:(id)node
{
  nodeCopy = node;
  listIdentifier = [nodeCopy listIdentifier];

  if (listIdentifier)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"SSDoubleLinkedListInvalidNode" reason:@"Attempting to add a node that has already been added to another list." userInfo:0];
    objc_exception_throw(v8);
  }

  tail = [(SSDoubleLinkedList *)self tail];
  [(SSDoubleLinkedList *)self setTail:nodeCopy];
  head = [(SSDoubleLinkedList *)self head];

  if (!head)
  {
    [(SSDoubleLinkedList *)self setHead:nodeCopy];
  }

  [nodeCopy setPrevious:tail];
  [nodeCopy setNext:0];
  [tail setNext:nodeCopy];
  listIdentifier2 = [(SSDoubleLinkedList *)self listIdentifier];
  [nodeCopy setListIdentifier:listIdentifier2];

  ++self->_count;
}

- (id)appendObject:(id)object
{
  objectCopy = object;
  v5 = [[SSDoubleLinkedListNode alloc] initWithObject:objectCopy];

  [(SSDoubleLinkedList *)self appendNode:v5];

  return v5;
}

- (void)insertNode:(id)node
{
  nodeCopy = node;
  listIdentifier = [nodeCopy listIdentifier];

  if (listIdentifier)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"SSDoubleLinkedListInvalidNode" reason:@"Attempting to add a node that has already been added to another list." userInfo:0];
    objc_exception_throw(v8);
  }

  head = [(SSDoubleLinkedList *)self head];
  [(SSDoubleLinkedList *)self setHead:nodeCopy];
  tail = [(SSDoubleLinkedList *)self tail];

  if (!tail)
  {
    [(SSDoubleLinkedList *)self setTail:nodeCopy];
  }

  [nodeCopy setPrevious:0];
  [nodeCopy setNext:head];
  [head setPrevious:nodeCopy];
  listIdentifier2 = [(SSDoubleLinkedList *)self listIdentifier];
  [nodeCopy setListIdentifier:listIdentifier2];

  ++self->_count;
}

- (id)insertObject:(id)object
{
  objectCopy = object;
  v5 = [[SSDoubleLinkedListNode alloc] initWithObject:objectCopy];

  [(SSDoubleLinkedList *)self insertNode:v5];

  return v5;
}

- (void)removeAllNodes
{
  [(SSDoubleLinkedList *)self setHead:0];
  [(SSDoubleLinkedList *)self setTail:0];
  self->_count = 0;
}

- (void)removeNode:(id)node
{
  nodeCopy = node;
  listIdentifier = [nodeCopy listIdentifier];
  listIdentifier2 = [(SSDoubleLinkedList *)self listIdentifier];

  if (listIdentifier != listIdentifier2)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"SSDoubleLinkedListInvalidNode" reason:@"Attempting to remove a node from a list it doesn't belong to." userInfo:0];
    objc_exception_throw(v14);
  }

  next = [nodeCopy next];
  previous = [nodeCopy previous];
  [next setPrevious:previous];

  previous2 = [nodeCopy previous];
  next2 = [nodeCopy next];
  [previous2 setNext:next2];

  head = [(SSDoubleLinkedList *)self head];

  if (head == nodeCopy)
  {
    next3 = [nodeCopy next];
    [(SSDoubleLinkedList *)self setHead:next3];
  }

  tail = [(SSDoubleLinkedList *)self tail];

  if (tail == nodeCopy)
  {
    previous3 = [nodeCopy previous];
    [(SSDoubleLinkedList *)self setTail:previous3];
  }

  [nodeCopy setListIdentifier:0];
  --self->_count;
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allNodes = [(SSDoubleLinkedList *)self allNodes];
  v5 = [allNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allNodes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        object = [v9 object];
        [v3 appendFormat:@"%@", object];

        tail = [(SSDoubleLinkedList *)self tail];

        if (v9 != tail)
        {
          [v3 appendString:{@", \n"}];
        }
      }

      v6 = [allNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

@end