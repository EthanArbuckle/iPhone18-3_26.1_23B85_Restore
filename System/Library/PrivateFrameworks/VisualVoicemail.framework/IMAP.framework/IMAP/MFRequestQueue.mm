@interface MFRequestQueue
- (MFRequestQueue)init;
- (void)_processRequests:(id)requests consumers:(id)consumers;
- (void)addRequest:(id)request consumer:(id)consumer;
- (void)addRequests:(id)requests consumers:(id)consumers;
- (void)dealloc;
- (void)processRequests:(id)requests consumers:(id)consumers;
@end

@implementation MFRequestQueue

- (MFRequestQueue)init
{
  v10.receiver = self;
  v10.super_class = MFRequestQueue;
  v2 = [(MFRequestQueue *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D24EF0]) initWithName:@"condition" condition:0 andDelegate:v2];
    condition = v2->_condition;
    v2->_condition = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requests = v2->_requests;
    v2->_requests = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    consumers = v2->_consumers;
    v2->_consumers = v7;
  }

  return v2;
}

- (void)addRequest:(id)request consumer:(id)consumer
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = request;
  v6 = MEMORY[0x277CBEA60];
  consumerCopy = consumer;
  requestCopy = request;
  v9 = [v6 arrayWithObjects:v13 count:1];
  v12 = consumerCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];

  [(MFRequestQueue *)self addRequests:v9 consumers:v10];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)addRequests:(id)requests consumers:(id)consumers
{
  consumersCopy = consumers;
  requestsCopy = requests;
  _MFLockGlobalLock();
  ++self->_waitingOutside;
  [(MFRequestQueue *)self willAddRequests:requestsCopy consumers:consumersCopy];
  [(NSMutableArray *)self->_requests addObjectsFromArray:requestsCopy];

  [(NSMutableArray *)self->_consumers addObjectsFromArray:consumersCopy];
  _MFUnlockGlobalLock();
  [(NSConditionLock *)self->_condition lockWhenCondition:0];
  _MFLockGlobalLock();
  waitingOutside = self->_waitingOutside;
  v9 = self->_waitingInside + 1;
  self->_waitingInside = v9;
  if (waitingOutside == v9)
  {
    v10 = [(NSMutableArray *)self->_requests copy];
    [(NSMutableArray *)self->_requests removeAllObjects];
    self->_waitingOutside = 0;
    v13 = [(NSMutableArray *)self->_consumers copy];
    [(NSMutableArray *)self->_consumers removeAllObjects];
    _MFUnlockGlobalLock();
    if (v10)
    {
      [(MFRequestQueue *)self _processRequests:v10 consumers:v13];

      goto LABEL_6;
    }
  }

  else
  {
    _MFUnlockGlobalLock();
    v13 = 0;
  }

  [(NSConditionLock *)self->_condition unlock];
  [(NSConditionLock *)self->_condition lockWhenCondition:1];
LABEL_6:
  _MFLockGlobalLock();
  v11 = self->_waitingInside - 1;
  self->_waitingInside = v11;
  v12 = v11 != 0;
  _MFUnlockGlobalLock();
  [(NSConditionLock *)self->_condition unlockWithCondition:v12];
}

- (void)_processRequests:(id)requests consumers:(id)consumers
{
  v9 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  consumersCopy = consumers;
  [(MFRequestQueue *)self processRequests:requestsCopy consumers:consumersCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processRequests:(id)requests consumers:(id)consumers
{
  requestsCopy = requests;
  consumersCopy = consumers;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v8 = [requestsCopy count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [requestsCopy objectAtIndex:i];
      v12 = [consumersCopy objectAtIndex:i];
      [(MFRequestQueue *)self processRequest:v11 consumer:v12];
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFRequestQueue;
  [(MFRequestQueue *)&v2 dealloc];
}

@end