@interface SSDoubleLinkedList
- (NSArray)allNodes;
- (SSDoubleLinkedList)init;
- (id)appendObject:(id)a3;
- (id)description;
- (id)insertObject:(id)a3;
- (void)appendNode:(id)a3;
- (void)insertNode:(id)a3;
- (void)removeAllNodes;
- (void)removeNode:(id)a3;
@end

@implementation SSDoubleLinkedList

- (SSDoubleLinkedList)init
{
  v7.receiver = self;
  v7.super_class = SSDoubleLinkedList;
  v2 = [(SSDoubleLinkedList *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    listIdentifier = v2->_listIdentifier;
    v2->_listIdentifier = v4;
  }

  return v2;
}

- (NSArray)allNodes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(SSDoubleLinkedList *)self head];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      v6 = [v5 next];

      v5 = v6;
    }

    while (v6);
  }

  return v3;
}

- (void)appendNode:(id)a3
{
  v9 = a3;
  v4 = [v9 listIdentifier];

  if (v4)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"SSDoubleLinkedListInvalidNode" reason:@"Attempting to add a node that has already been added to another list." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(SSDoubleLinkedList *)self tail];
  [(SSDoubleLinkedList *)self setTail:v9];
  v6 = [(SSDoubleLinkedList *)self head];

  if (!v6)
  {
    [(SSDoubleLinkedList *)self setHead:v9];
  }

  [v9 setPrevious:v5];
  [v9 setNext:0];
  [v5 setNext:v9];
  v7 = [(SSDoubleLinkedList *)self listIdentifier];
  [v9 setListIdentifier:v7];

  ++self->_count;
}

- (id)appendObject:(id)a3
{
  v4 = a3;
  v5 = [[SSDoubleLinkedListNode alloc] initWithObject:v4];

  [(SSDoubleLinkedList *)self appendNode:v5];

  return v5;
}

- (void)insertNode:(id)a3
{
  v9 = a3;
  v4 = [v9 listIdentifier];

  if (v4)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"SSDoubleLinkedListInvalidNode" reason:@"Attempting to add a node that has already been added to another list." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(SSDoubleLinkedList *)self head];
  [(SSDoubleLinkedList *)self setHead:v9];
  v6 = [(SSDoubleLinkedList *)self tail];

  if (!v6)
  {
    [(SSDoubleLinkedList *)self setTail:v9];
  }

  [v9 setPrevious:0];
  [v9 setNext:v5];
  [v5 setPrevious:v9];
  v7 = [(SSDoubleLinkedList *)self listIdentifier];
  [v9 setListIdentifier:v7];

  ++self->_count;
}

- (id)insertObject:(id)a3
{
  v4 = a3;
  v5 = [[SSDoubleLinkedListNode alloc] initWithObject:v4];

  [(SSDoubleLinkedList *)self insertNode:v5];

  return v5;
}

- (void)removeAllNodes
{
  [(SSDoubleLinkedList *)self setHead:0];
  [(SSDoubleLinkedList *)self setTail:0];
  self->_count = 0;
}

- (void)removeNode:(id)a3
{
  v15 = a3;
  v4 = [v15 listIdentifier];
  v5 = [(SSDoubleLinkedList *)self listIdentifier];

  if (v4 != v5)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"SSDoubleLinkedListInvalidNode" reason:@"Attempting to remove a node from a list it doesn't belong to." userInfo:0];
    objc_exception_throw(v14);
  }

  v6 = [v15 next];
  v7 = [v15 previous];
  [v6 setPrevious:v7];

  v8 = [v15 previous];
  v9 = [v15 next];
  [v8 setNext:v9];

  v10 = [(SSDoubleLinkedList *)self head];

  if (v10 == v15)
  {
    v11 = [v15 next];
    [(SSDoubleLinkedList *)self setHead:v11];
  }

  v12 = [(SSDoubleLinkedList *)self tail];

  if (v12 == v15)
  {
    v13 = [v15 previous];
    [(SSDoubleLinkedList *)self setTail:v13];
  }

  [v15 setListIdentifier:0];
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
  v4 = [(SSDoubleLinkedList *)self allNodes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 object];
        [v3 appendFormat:@"%@", v10];

        v11 = [(SSDoubleLinkedList *)self tail];

        if (v9 != v11)
        {
          [v3 appendString:{@", \n"}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

@end