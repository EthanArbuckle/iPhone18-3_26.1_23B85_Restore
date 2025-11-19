@interface MFBufferedQueue
- (BOOL)_flush;
- (BOOL)addItem:(id)a3;
- (MFBufferedQueue)initWithCapacity:(unsigned int)a3;
- (void)dealloc;
@end

@implementation MFBufferedQueue

- (MFBufferedQueue)initWithCapacity:(unsigned int)a3
{
  v8.receiver = self;
  v8.super_class = MFBufferedQueue;
  v4 = [(MFBufferedQueue *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    }

    else
    {
      v5 = objc_opt_new();
    }

    queue = v4->_queue;
    v4->_queue = v5;

    v4->_currentSize = 0;
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFBufferedQueue;
  [(MFBufferedQueue *)&v2 dealloc];
}

- (BOOL)addItem:(id)a3
{
  v4 = a3;
  self->_currentSize += [(MFBufferedQueue *)self sizeForItem:v4];
  [(NSMutableArray *)self->_queue addObject:v4];

  return 1;
}

- (BOOL)_flush
{
  if ([(NSMutableArray *)self->_queue count])
  {
    v3 = [(NSMutableArray *)self->_queue copy];
    [(MFBufferedQueue *)self removeAllObjects];
    if (v3)
    {
      v4 = [(MFBufferedQueue *)self handleItems:v3];

      return v4;
    }
  }

  else
  {
    [(MFBufferedQueue *)self removeAllObjects];
  }

  return 1;
}

@end