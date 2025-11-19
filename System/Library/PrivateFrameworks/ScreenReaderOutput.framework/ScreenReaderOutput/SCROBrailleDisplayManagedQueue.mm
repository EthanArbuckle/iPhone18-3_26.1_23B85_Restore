@interface SCROBrailleDisplayManagedQueue
- (SCROBrailleDisplayManagedQueue)init;
- (id)_queueForState:(int)a3 createQueue:(BOOL)a4;
- (id)primaryDisplay;
- (int)stateForDisplay:(id)a3;
- (unint64_t)displayCountIncludingDisconnectedDisplays:(BOOL)a3;
- (void)_fillActiveBrailleDisplayQueue;
- (void)dealloc;
- (void)removeDisplay:(id)a3;
- (void)setActiveQueueMaximumSize:(unint64_t)a3;
- (void)setPrimaryDisplay:(id)a3;
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

- (id)_queueForState:(int)a3 createQueue:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SCRCIndexMap *)self->_stateQueueMap objectForIndex:a3];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(SCRCIndexMap *)self->_stateQueueMap setObject:v7 forIndex:v6];
    queueStateDict = self->_queueStateDict;
    if (queueStateDict)
    {
      CFDictionarySetValue(queueStateDict, v7, v6);
    }
  }

  return v7;
}

- (void)removeDisplay:(id)a3
{
  v4 = a3;
  if (v4)
  {
    key = v4;
    v5 = [v4 token];
    v6 = [(SCRCIndexMap *)self->_tokenDisplayMap objectForIndex:v5];
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

      [(SCRCIndexMap *)self->_tokenDisplayMap removeObjectForIndex:v5];
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

    v4 = key;
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

        v14 = [v7 lastObject];
        v15 = [v3 subarrayWithRange:{0, v13}];
        [v7 addObjectsFromArray:v15];
        if (v14)
        {
          v16 = [v14 token];
          if (v16 == kSCROSystemVirtualBrailleDisplayToken)
          {
            [v7 addObject:v14];
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

- (int)stateForDisplay:(id)a3
{
  v4 = a3;
  displayQueueDict = self->_displayQueueDict;
  if (!displayQueueDict)
  {
    v6 = 0;
LABEL_6:
    Value = 5;
    goto LABEL_7;
  }

  v6 = CFDictionaryGetValue(displayQueueDict, v4);
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

- (unint64_t)displayCountIncludingDisconnectedDisplays:(BOOL)a3
{
  displayQueueDict = self->_displayQueueDict;
  if (!displayQueueDict)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(displayQueueDict);
  if (!a3)
  {
    v7 = [(SCROBrailleDisplayManagedQueue *)self disconnectedDisplays];
    Count -= [v7 count];
  }

  return Count;
}

- (id)primaryDisplay
{
  v2 = [(SCRCIndexMap *)self->_stateQueueMap objectForIndex:1];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setPrimaryDisplay:(id)a3
{
  v8 = a3;
  v4 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:0];
  if ([v4 count])
  {
    v5 = [v4 indexOfObjectIdenticalTo:v8];
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

- (void)setActiveQueueMaximumSize:(unint64_t)a3
{
  maxActiveQueueSize = self->_maxActiveQueueSize;
  self->_maxActiveQueueSize = a3;
  if (maxActiveQueueSize >= a3)
  {
    if (maxActiveQueueSize > a3)
    {
      v13 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:0];
      v5 = [v13 count];
      if (v5 > self->_maxActiveQueueSize)
      {
        v6 = v5;
        v7 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:2 createQueue:1];
        v8 = self->_maxActiveQueueSize;
        v9 = v6 - v8;
        v10 = [v13 lastObject];
        v11 = v10;
        if (v8 && v10)
        {
          v12 = [v10 token];
          v8 -= v12 == kSCROSystemVirtualBrailleDisplayToken;
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