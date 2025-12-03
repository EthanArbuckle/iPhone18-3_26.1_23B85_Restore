@interface SCROBrailleDisplayManagedQueue
- (SCROBrailleDisplayManagedQueue)init;
- (id)_queueForState:(int)state createQueue:(BOOL)queue;
- (id)primaryDisplay;
- (int)stateForDisplay:(id)display;
- (unint64_t)displayCountIncludingDisconnectedDisplays:(BOOL)displays;
- (void)_fillActiveBrailleDisplayQueue;
- (void)dealloc;
- (void)removeDisplay:(id)display;
- (void)setActiveQueueMaximumSize:(unint64_t)size;
- (void)setPrimaryDisplay:(id)display;
@end

@implementation SCROBrailleDisplayManagedQueue

- (SCROBrailleDisplayManagedQueue)init
{
  v8.receiver = self;
  v8.super_class = SCROBrailleDisplayManagedQueue;
  v2 = [(SCROBrailleDisplayManagedQueue *)&v8 init];
  if (v2)
  {
    v2->_displayQueueDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    v2->_queueStateDict = CFDictionaryCreateMutable(0, 0, 0, 0);
    v3 = objc_alloc_init(MEMORY[0x277D4B818]);
    stateQueueMap = v2->_stateQueueMap;
    v2->_stateQueueMap = v3;

    v5 = objc_alloc_init(MEMORY[0x277D4B818]);
    tokenDisplayMap = v2->_tokenDisplayMap;
    v2->_tokenDisplayMap = v5;

    v2->_maxActiveQueueSize = 1;
  }

  return v2;
}

- (void)dealloc
{
  displayQueueDict = self->_displayQueueDict;
  if (displayQueueDict)
  {
    CFRelease(displayQueueDict);
  }

  queueStateDict = self->_queueStateDict;
  if (queueStateDict)
  {
    CFRelease(queueStateDict);
  }

  v5.receiver = self;
  v5.super_class = SCROBrailleDisplayManagedQueue;
  [(SCROBrailleDisplayManagedQueue *)&v5 dealloc];
}

- (id)_queueForState:(int)state createQueue:(BOOL)queue
{
  queueCopy = queue;
  stateCopy = state;
  v7 = [(SCRCIndexMap *)self->_stateQueueMap objectForIndex:state];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !queueCopy;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(SCRCIndexMap *)self->_stateQueueMap setObject:v7 forIndex:stateCopy];
    queueStateDict = self->_queueStateDict;
    if (queueStateDict)
    {
      CFDictionarySetValue(queueStateDict, v7, stateCopy);
    }
  }

  return v7;
}

- (void)removeDisplay:(id)display
{
  displayCopy = display;
  if (displayCopy)
  {
    key = displayCopy;
    token = [displayCopy token];
    v6 = [(SCRCIndexMap *)self->_tokenDisplayMap objectForIndex:token];
    if (v6 == key)
    {
      displayQueueDict = self->_displayQueueDict;
      if (displayQueueDict)
      {
        v8 = CFDictionaryGetValue(displayQueueDict, key);
        p_queueStateDict = &self->_queueStateDict;
        queueStateDict = self->_queueStateDict;
        Value = 5;
        if (queueStateDict && v8)
        {
          Value = CFDictionaryGetValue(queueStateDict, v8);
        }
      }

      else
      {
        v8 = 0;
        p_queueStateDict = &self->_queueStateDict;
        Value = 5;
      }

      [(SCRCIndexMap *)self->_tokenDisplayMap removeObjectForIndex:token];
      [v8 removeObjectIdenticalTo:key];
      v12 = self->_displayQueueDict;
      if (v12)
      {
        CFDictionaryRemoveValue(v12, key);
      }

      if (![v8 count])
      {
        if (*p_queueStateDict)
        {
          CFDictionaryRemoveValue(*p_queueStateDict, v8);
        }

        [(SCRCIndexMap *)self->_stateQueueMap removeObjectForIndex:Value];
      }

      if (Value == 1)
      {
        [(SCROBrailleDisplayManagedQueue *)self _fillActiveBrailleDisplayQueue];
      }
    }

    displayCopy = key;
  }
}

- (void)_fillActiveBrailleDisplayQueue
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:2 createQueue:0];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:1];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 count];
      maxActiveQueueSize = self->_maxActiveQueueSize;
      v10 = maxActiveQueueSize > v8;
      v11 = maxActiveQueueSize - v8;
      if (v10)
      {
        v12 = v8;
        if (v11 >= v5)
        {
          v13 = v5;
        }

        else
        {
          v13 = v11;
        }

        lastObject = [v7 lastObject];
        v15 = [v3 subarrayWithRange:{0, v13}];
        [v7 addObjectsFromArray:v15];
        if (lastObject)
        {
          token = [lastObject token];
          if (token == kSCROSystemVirtualBrailleDisplayToken)
          {
            [v7 addObject:lastObject];
            [v7 removeObjectAtIndex:v12 - 1];
          }
        }

        [v3 removeObjectsInRange:{0, v13}];
        if (![v3 count])
        {
          queueStateDict = self->_queueStateDict;
          if (queueStateDict)
          {
            CFDictionaryRemoveValue(queueStateDict, v3);
          }

          [(SCRCIndexMap *)self->_stateQueueMap removeObjectForIndex:2];
        }

        if (self->_displayQueueDict)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v18 = v15;
          v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v25;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v25 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                CFDictionarySetValue(self->_displayQueueDict, *(*(&v24 + 1) + 8 * i), v7);
              }

              v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
            }

            while (v20);
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (int)stateForDisplay:(id)display
{
  displayCopy = display;
  displayQueueDict = self->_displayQueueDict;
  if (!displayQueueDict)
  {
    v6 = 0;
LABEL_6:
    Value = 5;
    goto LABEL_7;
  }

  v6 = CFDictionaryGetValue(displayQueueDict, displayCopy);
  if (!v6)
  {
    goto LABEL_6;
  }

  queueStateDict = self->_queueStateDict;
  if (!queueStateDict)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(queueStateDict, v6);
LABEL_7:

  return Value;
}

- (unint64_t)displayCountIncludingDisconnectedDisplays:(BOOL)displays
{
  displayQueueDict = self->_displayQueueDict;
  if (!displayQueueDict)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(displayQueueDict);
  if (!displays)
  {
    disconnectedDisplays = [(SCROBrailleDisplayManagedQueue *)self disconnectedDisplays];
    Count -= [disconnectedDisplays count];
  }

  return Count;
}

- (id)primaryDisplay
{
  v2 = [(SCRCIndexMap *)self->_stateQueueMap objectForIndex:1];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (void)setPrimaryDisplay:(id)display
{
  displayCopy = display;
  v4 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:0];
  if ([v4 count])
  {
    v5 = [v4 indexOfObjectIdenticalTo:displayCopy];
    if (v5)
    {
      v6 = v5;
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = [v4 objectAtIndex:v5];
        [v4 insertObject:v7 atIndex:0];
        [v4 removeObjectAtIndex:v6 + 1];
      }
    }
  }
}

- (void)setActiveQueueMaximumSize:(unint64_t)size
{
  maxActiveQueueSize = self->_maxActiveQueueSize;
  self->_maxActiveQueueSize = size;
  if (maxActiveQueueSize >= size)
  {
    if (maxActiveQueueSize > size)
    {
      v13 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:0];
      v5 = [v13 count];
      if (v5 > self->_maxActiveQueueSize)
      {
        v6 = v5;
        v7 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:2 createQueue:1];
        v8 = self->_maxActiveQueueSize;
        v9 = v6 - v8;
        lastObject = [v13 lastObject];
        v11 = lastObject;
        if (v8 && lastObject)
        {
          token = [lastObject token];
          v8 -= token == kSCROSystemVirtualBrailleDisplayToken;
        }

        [v7 replaceObjectsInRange:0 withObjectsFromArray:0 range:{v13, v8, v9}];
        [v13 removeObjectsInRange:{v8, v9}];
      }
    }
  }

  else
  {

    [(SCROBrailleDisplayManagedQueue *)self _fillActiveBrailleDisplayQueue];
  }
}

@end