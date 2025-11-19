@interface RTFixedSizeQueue
- (RTFixedSizeQueue)initWithCapacity:(unint64_t)a3;
- (RTFixedSizeQueue)initWithCapacity:(unint64_t)a3 objects:(id)a4;
- (RTFixedSizeQueue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dequeueObject;
- (id)enqueueObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTFixedSizeQueue

- (RTFixedSizeQueue)initWithCapacity:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  v6 = [(RTFixedSizeQueue *)self initWithCapacity:a3 objects:v5];

  return v6;
}

- (RTFixedSizeQueue)initWithCapacity:(unint64_t)a3 objects:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RTFixedSizeQueue;
  v7 = [(RTFixedSizeQueue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_capacity = a3;
    v9 = [v6 mutableCopy];
    objects = v8->_objects;
    v8->_objects = v9;
  }

  return v8;
}

- (id)enqueueObject:(id)a3
{
  v4 = a3;
  if (v4)
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

    [(NSMutableArray *)self->_objects addObject:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTFixedSizeQueue alloc];
  v5 = [(RTFixedSizeQueue *)self capacity];
  v6 = [(RTFixedSizeQueue *)self objects];
  v7 = [(RTFixedSizeQueue *)v4 initWithCapacity:v5 objects:v6];

  return v7;
}

- (RTFixedSizeQueue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"RTFixedSizeQueueCapacityKey"];
  v6 = [v4 decodeObjectForKey:@"RTFixedSizeQueueObjectsKey"];

  v7 = [v6 mutableCopy];
  v8 = [(RTFixedSizeQueue *)self initWithCapacity:v5 objects:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  capacity = self->_capacity;
  v5 = a3;
  [v5 encodeInteger:capacity forKey:@"RTFixedSizeQueueCapacityKey"];
  [v5 encodeObject:self->_objects forKey:@"RTFixedSizeQueueObjectsKey"];
}

@end