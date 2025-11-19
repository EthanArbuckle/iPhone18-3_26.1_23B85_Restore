@interface TSUProgressGroup
- (BOOL)isIndeterminate;
- (TSUProgressGroup)initWithChildren:(id)a3;
- (double)maxValue;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (id)initForSubclass;
- (void)p_updateChildrenProgressObservers;
- (void)removeProgressObserver:(id)a3;
@end

@implementation TSUProgressGroup

- (TSUProgressGroup)initWithChildren:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSUProgressGroup;
  v5 = [(TSUProgress *)&v11 initForSubclass];
  if (v5)
  {
    v6 = [v4 copy];
    children = v5->_children;
    v5->_children = v6;

    v8 = dispatch_queue_create("com.apple.tangier.TSUProgressGroup", 0);
    childrenProgressObserversQueue = v5->_childrenProgressObserversQueue;
    v5->_childrenProgressObserversQueue = v8;
  }

  return v5;
}

- (id)initForSubclass
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUProgressGroup initForSubclass]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:442 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUProgressGroup initForSubclass]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (double)value
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_children;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) value];
        v6 = v6 + v8;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)maxValue
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_children;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) maxValue];
        v6 = v6 + v8;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)isIndeterminate
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_children count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_children;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) isIndeterminate])
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8.receiver = self;
  v8.super_class = TSUProgressGroup;
  v6 = [(TSUProgress *)&v8 addProgressObserverWithValueInterval:a4 queue:a5 handler:a3];
  [(TSUProgressGroup *)self p_updateChildrenProgressObservers];

  return v6;
}

- (void)removeProgressObserver:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSUProgressGroup;
  [(TSUProgress *)&v4 removeProgressObserver:a3];
  [(TSUProgressGroup *)self p_updateChildrenProgressObservers];
}

- (void)p_updateChildrenProgressObservers
{
  [(TSUProgress *)self protected_minProgressObserverValueInterval];
  childrenProgressObserversQueue = self->_childrenProgressObserversQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_277093ABC;
  v5[3] = &unk_27A7025D0;
  v5[4] = self;
  v5[5] = v4;
  dispatch_async(childrenProgressObserversQueue, v5);
}

@end