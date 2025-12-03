@interface SCROVirtualBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (SCROVirtualBrailleDriver)initWithMainSize:(int64_t)size delegate:(id)delegate;
- (id)getInputEvents;
- (void)enqueueDot:(int64_t)dot down:(BOOL)down;
- (void)enqueueForceTranslate;
- (void)enqueuePan:(BOOL)pan down:(BOOL)down;
- (void)enqueueRouter:(unint64_t)router down:(BOOL)down;
- (void)enqueueSpaceWithDown:(BOOL)down;
@end

@implementation SCROVirtualBrailleDriver

- (SCROVirtualBrailleDriver)initWithMainSize:(int64_t)size delegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = SCROVirtualBrailleDriver;
  v8 = [(SCROVirtualBrailleDriver *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_mainSize = size;
    objc_storeStrong(&v8->_delegate, delegate);
    v10 = objc_opt_new();
    if (size >= 1)
    {
      do
      {
        [v10 appendString:@"⠀"];
        --size;
      }

      while (size);
    }

    mainCells = v9->_mainCells;
    v9->_mainCells = v10;
    v12 = v10;

    v13 = objc_opt_new();
    enqueuedEvents = v9->_enqueuedEvents;
    v9->_enqueuedEvents = v13;
  }

  return v9;
}

- (id)getInputEvents
{
  [(NSLock *)self->_eventLock lock];
  v3 = [(NSMutableArray *)self->_enqueuedEvents copy];
  [(NSMutableArray *)self->_enqueuedEvents removeAllObjects];
  [(NSLock *)self->_eventLock unlock];

  return v3;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v7 = objc_opt_new();
  if (self->_mainSize >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= length)
      {
        [v7 appendString:@"⠀"];
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x277CF3310]) initWithBits:cells[v8]];
        unicode = [v9 unicode];

        [v7 appendString:unicode];
      }

      ++v8;
    }

    while (v8 < self->_mainSize);
  }

  mainCells = self->_mainCells;
  self->_mainCells = v7;
  v12 = v7;

  [(SCROVirtualBrailleDriverDelegate *)self->_delegate didSetMainCells:v12];
  return 1;
}

- (void)enqueuePan:(BOOL)pan down:(BOOL)down
{
  if (down)
  {
    v5 = 65542;
  }

  else
  {
    v5 = 6;
  }

  if (pan)
  {
    v6 = 8608;
  }

  else
  {
    v6 = 8624;
  }

  [(NSLock *)self->_eventLock lock];
  enqueuedEvents = self->_enqueuedEvents;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5 | v6];
  [(NSMutableArray *)enqueuedEvents addObject:v8];

  eventLock = self->_eventLock;

  [(NSLock *)eventLock unlock];
}

- (void)enqueueDot:(int64_t)dot down:(BOOL)down
{
  if ((dot - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v16 = v7;
    v17 = v6;
    v18 = v4;
    v11 = ((dot << 8) - 256) & 0xFFFEFFFF;
    if (down)
    {
      v12 = 65538;
    }

    else
    {
      v12 = 2;
    }

    [(NSLock *)self->_eventLock lock:v16];
    enqueuedEvents = self->_enqueuedEvents;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12 | v11];
    [(NSMutableArray *)enqueuedEvents addObject:v14];

    eventLock = self->_eventLock;

    [(NSLock *)eventLock unlock];
  }
}

- (void)enqueueSpaceWithDown:(BOOL)down
{
  if (down)
  {
    v4 = 67586;
  }

  else
  {
    v4 = 2050;
  }

  [(NSLock *)self->_eventLock lock];
  enqueuedEvents = self->_enqueuedEvents;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMutableArray *)enqueuedEvents addObject:v6];

  eventLock = self->_eventLock;

  [(NSLock *)eventLock unlock];
}

- (void)enqueueRouter:(unint64_t)router down:(BOOL)down
{
  v5 = (router << 8) & 0xFFFEFFFF;
  if (down)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  [(NSLock *)self->_eventLock lock];
  enqueuedEvents = self->_enqueuedEvents;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5 | v6];
  [(NSMutableArray *)enqueuedEvents addObject:v8];

  eventLock = self->_eventLock;

  [(NSLock *)eventLock unlock];
}

- (void)enqueueForceTranslate
{
  enqueuedEvents = self->_enqueuedEvents;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:69378];
  [(NSMutableArray *)enqueuedEvents addObject:v4];

  eventLock = self->_eventLock;

  [(NSLock *)eventLock unlock];
}

@end