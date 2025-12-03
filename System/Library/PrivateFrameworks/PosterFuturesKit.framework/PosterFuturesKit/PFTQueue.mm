@interface PFTQueue
+ (id)boundedQueueWithCapacity:(unint64_t)capacity;
+ (id)boundedQueueWithCapacity:(unint64_t)capacity overflowHandler:(id)handler;
+ (id)priorityQueueWithComparator:(id)comparator;
- (NSArray)allObjects;
- (PFTQueue)init;
- (PFTQueue)initWithStrategy:(id)strategy;
- (id)dequeue;
- (id)drain;
- (void)enqueueObjectsFromArray:(id)array;
@end

@implementation PFTQueue

- (PFTQueue)init
{
  v3 = objc_alloc_init(_PFTDefaultQueueingStrategy);
  v4 = [(PFTQueue *)self initWithStrategy:v3];

  return v4;
}

- (id)dequeue
{
  if ([(NSMutableArray *)self->_buffer count])
  {
    firstObject = [(NSMutableArray *)self->_buffer firstObject];
    [(NSMutableArray *)self->_buffer removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)priorityQueueWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  v5 = [[_PFTPriorityQueueingStrategy alloc] initWithComparator:comparatorCopy];

  v6 = [[self alloc] initWithStrategy:v5];

  return v6;
}

+ (id)boundedQueueWithCapacity:(unint64_t)capacity
{
  v4 = [[_PFTBoundedQueueingStrategy alloc] initWithCapacity:capacity];
  v5 = [[self alloc] initWithStrategy:v4];

  return v5;
}

+ (id)boundedQueueWithCapacity:(unint64_t)capacity overflowHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [[_PFTBoundedQueueingStrategy alloc] initWithCapacity:capacity overflowHandler:handlerCopy];

  v8 = [[self alloc] initWithStrategy:v7];

  return v8;
}

- (PFTQueue)initWithStrategy:(id)strategy
{
  strategyCopy = strategy;
  v11.receiver = self;
  v11.super_class = PFTQueue;
  v6 = [(PFTQueue *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buffer = v6->_buffer;
    v6->_buffer = v7;

    objc_storeStrong(&v6->_strategy, strategy);
    v9 = v6;
  }

  return v6;
}

- (NSArray)allObjects
{
  v2 = [(NSMutableArray *)self->_buffer copy];

  return v2;
}

- (void)enqueueObjectsFromArray:(id)array
{
  v15 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        [(PFTQueue *)self enqueue:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)drain
{
  array = [MEMORY[0x277CBEB18] array];
  [array addObjectsFromArray:self->_buffer];
  [(NSMutableArray *)self->_buffer removeAllObjects];

  return array;
}

@end