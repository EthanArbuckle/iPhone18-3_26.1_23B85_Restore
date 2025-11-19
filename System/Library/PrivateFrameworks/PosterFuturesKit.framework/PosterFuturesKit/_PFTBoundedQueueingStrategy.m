@interface _PFTBoundedQueueingStrategy
- (_PFTBoundedQueueingStrategy)initWithCapacity:(unint64_t)a3;
- (_PFTBoundedQueueingStrategy)initWithCapacity:(unint64_t)a3 overflowHandler:(id)a4;
- (void)enqueueObject:(id)a3 buffer:(id)a4;
@end

@implementation _PFTBoundedQueueingStrategy

- (_PFTBoundedQueueingStrategy)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = _PFTBoundedQueueingStrategy;
  v4 = [(_PFTBoundedQueueingStrategy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    v6 = v4;
  }

  return v5;
}

- (_PFTBoundedQueueingStrategy)initWithCapacity:(unint64_t)a3 overflowHandler:(id)a4
{
  v6 = a4;
  v7 = [(_PFTBoundedQueueingStrategy *)self initWithCapacity:a3];
  if (v7)
  {
    v8 = [v6 copy];
    overflowHandler = v7->_overflowHandler;
    v7->_overflowHandler = v8;

    v10 = v7;
  }

  return v7;
}

- (void)enqueueObject:(id)a3 buffer:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 count] == self->_capacity)
  {
    overflowHandler = self->_overflowHandler;
    if (overflowHandler)
    {
      v8 = [v6 firstObject];
      overflowHandler[2](overflowHandler, v8);
    }

    [v6 removeObjectAtIndex:0];
  }

  [v6 addObject:v9];
}

@end