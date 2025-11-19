@interface VSRecognitionResultHandlingThread
- (VSRecognitionResultHandlingThread)init;
- (void)_handleRequests;
- (void)_notifyRequestHandled:(id)a3;
- (void)dealloc;
- (void)handleResults:(id)a3 withHandler:(id)a4;
- (void)invalidate;
- (void)setDelegate:(id)a3;
@end

@implementation VSRecognitionResultHandlingThread

- (void)_handleRequests
{
  do
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(NSConditionLock *)self->_lock lockWhenCondition:2];
    resultHandlingFlags = self->_resultHandlingFlags;
    if ((resultHandlingFlags & 4) != 0 && [(NSMutableArray *)self->_requests count])
    {
      v5 = [(NSMutableArray *)self->_requests objectAtIndex:0];
      v6 = v5;
      [(NSMutableArray *)self->_requests removeObjectAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [(NSConditionLock *)self->_lock unlockWithCondition:v7];
    if (v5)
    {
      v8 = [v5 handler];
      v9 = objc_opt_respondsToSelector();
      v10 = [v5 results];
      if (v9)
      {
        v11 = [v8 actionForRecognitionResults:v10];
      }

      else
      {
        v11 = [v8 actionForRecognitionResult:{objc_msgSend(v10, "lastObject")}];
      }

      [v5 setNextAction:v11];
      [(VSRecognitionResultHandlingThread *)self performSelectorOnMainThread:sel__notifyRequestHandled_ withObject:v5 waitUntilDone:0];
    }
  }

  while ((resultHandlingFlags & 4) != 0);
}

- (void)_notifyRequestHandled:(id)a3
{
  if ((~*&self->_resultHandlingFlags & 6) == 0)
  {
    delegate = self->_delegate;
    v7 = [a3 results];
    v8 = [a3 nextAction];

    [(VSRecognitionResultHandlingThreadDelegate *)delegate recognitionResultHandlingThread:self didHandleResults:v7 nextAction:v8];
  }
}

- (void)invalidate
{
  if ((*&self->_resultHandlingFlags & 4) != 0)
  {
    [(NSConditionLock *)self->_lock lock];
    *&self->_resultHandlingFlags &= ~4u;
    lock = self->_lock;

    [(NSConditionLock *)lock unlockWithCondition:2];
  }
}

- (void)handleResults:(id)a3 withHandler:(id)a4
{
  if ((*&self->_resultHandlingFlags & 4) != 0)
  {
    v7 = [[VSRecognitionResultHandlingRequest alloc] initWithHandler:a4 results:a3];
    [(NSConditionLock *)self->_lock lock];
    requests = self->_requests;
    if (!requests)
    {
      requests = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_requests = requests;
    }

    [(NSMutableArray *)requests addObject:v7];
    if ((*&self->_resultHandlingFlags & 1) == 0)
    {
      *&self->_resultHandlingFlags |= 1u;
      [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__handleRequests toTarget:self withObject:0];
    }

    [(NSConditionLock *)self->_lock unlockWithCondition:2];
  }
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_resultHandlingFlags = *&self->_resultHandlingFlags & 0xFD | v4;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSRecognitionResultHandlingThread;
  [(VSRecognitionResultHandlingThread *)&v3 dealloc];
}

- (VSRecognitionResultHandlingThread)init
{
  v5.receiver = self;
  v5.super_class = VSRecognitionResultHandlingThread;
  v2 = [(VSRecognitionResultHandlingThread *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_resultHandlingFlags |= 4u;
    v2->_lock = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:1];
  }

  return v3;
}

@end