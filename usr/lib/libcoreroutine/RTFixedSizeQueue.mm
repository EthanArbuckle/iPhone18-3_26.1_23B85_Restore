@interface RTFixedSizeQueue
- (RTFixedSizeQueue)initWithCapacity:(unint64_t)capacity;
- (RTFixedSizeQueue)initWithCapacity:(unint64_t)capacity objects:(id)objects;
- (RTFixedSizeQueue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dequeueObject;
- (id)enqueueObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTFixedSizeQueue

- (RTFixedSizeQueue)initWithCapacity:(unint64_t)capacity
{
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
  v6 = [(RTFixedSizeQueue *)self initWithCapacity:capacity objects:v5];

  return v6;
}

- (RTFixedSizeQueue)initWithCapacity:(unint64_t)capacity objects:(id)objects
{
  objectsCopy = objects;
  v12.receiver = self;
  v12.super_class = RTFixedSizeQueue;
  v7 = [(RTFixedSizeQueue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_capacity = capacity;
    v9 = [objectsCopy mutableCopy];
    objects = v8->_objects;
    v8->_objects = v9;
  }

  return v8;
}

- (id)enqueueObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    if ([(NSMutableArray *)self->_objects count]>= self->_capacity)
    {
      v5 = [(NSMutableArray *)self->_objects objectAtIndex:0];
      [(NSMutableArray *)self->_objects removeObjectAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    [(NSMutableArray *)self->_objects addObject:objectCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dequeueObject
{
  if ([(NSMutableArray *)self->_objects count])
  {
    v3 = [(NSMutableArray *)self->_objects objectAtIndex:0];
    [(NSMutableArray *)self->_objects removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTFixedSizeQueue alloc];
  capacity = [(RTFixedSizeQueue *)self capacity];
  objects = [(RTFixedSizeQueue *)self objects];
  v7 = [(RTFixedSizeQueue *)v4 initWithCapacity:capacity objects:objects];

  return v7;
}

- (RTFixedSizeQueue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"RTFixedSizeQueueCapacityKey"];
  v6 = [coderCopy decodeObjectForKey:@"RTFixedSizeQueueObjectsKey"];

  v7 = [v6 mutableCopy];
  v8 = [(RTFixedSizeQueue *)self initWithCapacity:v5 objects:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  capacity = self->_capacity;
  coderCopy = coder;
  [coderCopy encodeInteger:capacity forKey:@"RTFixedSizeQueueCapacityKey"];
  [coderCopy encodeObject:self->_objects forKey:@"RTFixedSizeQueueObjectsKey"];
}

@end