@interface TSKChangeNotifier
- (BOOL)p_pendingAddOrRemoveOfObserver:(id)observer forChangeSource:(id)source;
- (TSKChangeNotifier)init;
- (id)p_findCountedObserverForObserver:(id)observer inArray:(id)array;
- (void)asyncProcessChanges:(id)changes;
- (void)dealloc;
- (void)p_addObserver:(id)observer forChangeSource:(id)source isClass:(BOOL)class;
- (void)p_queueObserverListChange:(id)change;
- (void)p_removeObserver:(id)observer forChangeSource:(id)source isClass:(BOOL)class;
- (void)p_updateObserverList;
- (void)syncProcessChanges:(id)changes;
@end

@implementation TSKChangeNotifier

- (TSKChangeNotifier)init
{
  v6.receiver = self;
  v6.super_class = TSKChangeNotifier;
  v2 = [(TSKChangeNotifier *)&v6 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = MEMORY[0x277CBF150];
    v2->mChangeSourceObservers = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    v2->mChangeSourceOfClassObservers = CFDictionaryCreateMutable(v3, 0, 0, v4);
    v2->mQueuedObserverListChanges = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
  }

  return v2;
}

- (void)dealloc
{
  mChangeSourceObservers = self->mChangeSourceObservers;
  if (mChangeSourceObservers)
  {
    CFRelease(mChangeSourceObservers);
  }

  mChangeSourceOfClassObservers = self->mChangeSourceOfClassObservers;
  if (mChangeSourceOfClassObservers)
  {
    CFRelease(mChangeSourceOfClassObservers);
  }

  mQueuedObserverListChanges = self->mQueuedObserverListChanges;
  if (mQueuedObserverListChanges)
  {
    CFRelease(mQueuedObserverListChanges);
  }

  v6.receiver = self;
  v6.super_class = TSKChangeNotifier;
  [(TSKChangeNotifier *)&v6 dealloc];
}

- (id)p_findCountedObserverForObserver:(id)observer inArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(array);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 observer] == observer)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)p_pendingAddOrRemoveOfObserver:(id)observer forChangeSource:(id)source
{
  v19 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mQueuedObserverListChanges = self->mQueuedObserverListChanges;
  v8 = [(__CFArray *)mQueuedObserverListChanges countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(mQueuedObserverListChanges);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (*(v11 + 16) == observer && *(v11 + 24) == source)
        {
          v12 = 1;
          goto LABEL_12;
        }
      }

      v8 = [(__CFArray *)mQueuedObserverListChanges countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:
  objc_sync_exit(self);
  return v12;
}

- (void)p_queueObserverListChange:(id)change
{
  objc_sync_enter(self);
  Count = CFArrayGetCount(self->mQueuedObserverListChanges);
  if (Count < 1)
  {
LABEL_7:
    CFArrayAppendValue(self->mQueuedObserverListChanges, change);
  }

  else
  {
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->mQueuedObserverListChanges, v6);
      if (ValueAtIndex[2] == *(change + 2) && ValueAtIndex[3] == *(change + 3) && *(ValueAtIndex + 2) != *(change + 2))
      {
        break;
      }

      if (Count == ++v6)
      {
        goto LABEL_7;
      }
    }

    CFArrayRemoveValueAtIndex(self->mQueuedObserverListChanges, v6);
  }

  objc_sync_exit(self);
}

- (void)p_addObserver:(id)observer forChangeSource:(id)source isClass:(BOOL)class
{
  classCopy = class;
  objc_sync_enter(self);
  if (self->mProcessingChanges)
  {
    [(TSKChangeNotifier *)self p_queueObserverListChange:[TSKQueuedObserverSet queuedObserverSetWithChangeType:0 observer:observer changeSource:source isClass:classCopy]];
  }

  else
  {
    v9 = 8;
    if (classCopy)
    {
      v9 = 16;
    }

    v10 = *(&self->super.isa + v9);
    Value = CFDictionaryGetValue(v10, source);
    if (!Value)
    {
      Value = objc_alloc_init(MEMORY[0x277CBEB18]);
      CFDictionarySetValue(v10, source, Value);
    }

    v12 = [(TSKChangeNotifier *)self p_findCountedObserverForObserver:observer inArray:Value];
    if (v12)
    {
      [v12 incrementCount];
    }

    else
    {
      v13 = [[TSKCountedObserver alloc] initWithObserver:observer];
      [Value addObject:v13];
    }
  }

  objc_sync_exit(self);
}

- (void)p_removeObserver:(id)observer forChangeSource:(id)source isClass:(BOOL)class
{
  classCopy = class;
  objc_sync_enter(self);
  if (self->mProcessingChanges)
  {
    [(TSKChangeNotifier *)self p_queueObserverListChange:[TSKQueuedObserverSet queuedObserverSetWithChangeType:1 observer:observer changeSource:source isClass:classCopy]];
  }

  else
  {
    v9 = 8;
    if (classCopy)
    {
      v9 = 16;
    }

    v10 = *(&self->super.isa + v9);
    Value = CFDictionaryGetValue(v10, source);
    if (Value)
    {
      v12 = [(TSKChangeNotifier *)self p_findCountedObserverForObserver:observer inArray:Value];
      v13 = v12;
      if (v12 && ![v12 decrementCount])
      {
        [Value removeObject:v13];
      }

      if (![Value count])
      {
        CFDictionaryRemoveValue(v10, source);
      }
    }
  }

  objc_sync_exit(self);
}

- (void)p_updateObserverList
{
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->mProcessingChanges)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    mQueuedObserverListChanges = self->mQueuedObserverListChanges;
    v4 = [(__CFArray *)mQueuedObserverListChanges countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(mQueuedObserverListChanges);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = *(v7 + 16);
          v9 = *(v7 + 24);
          v10 = *(v7 + 32);
          if (*(v7 + 8))
          {
            [(TSKChangeNotifier *)self p_removeObserver:v8 forChangeSource:v9 isClass:v10];
          }

          else
          {
            [(TSKChangeNotifier *)self p_addObserver:v8 forChangeSource:v9 isClass:v10];
          }
        }

        v4 = [(__CFArray *)mQueuedObserverListChanges countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    CFArrayRemoveAllValues(self->mQueuedObserverListChanges);
  }

  objc_sync_exit(self);
}

- (void)syncProcessChanges:(id)changes
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(changes "changesArray")];
  objc_sync_enter(self);
  ++self->mProcessingChanges;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v5)
  {
    v24 = *v42;
    do
    {
      v6 = 0;
      v22 = v5;
      do
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v41 + 1) + 8 * v6);
        changeSource = [v7 changeSource];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        Value = CFDictionaryGetValue(self->mChangeSourceObservers, changeSource);
        v10 = [Value countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v10)
        {
          v11 = *v38;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v38 != v11)
              {
                objc_enumerationMutation(Value);
              }

              observer = [*(*(&v37 + 1) + 8 * i) observer];
              if (![(TSKChangeNotifier *)self p_pendingAddOrRemoveOfObserver:observer forChangeSource:changeSource]&& (objc_opt_respondsToSelector() & 1) != 0)
              {
                [observer syncProcessChanges:objc_msgSend(v7 forChangeSource:{"changes"), changeSource}];
              }
            }

            v10 = [Value countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v10);
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        mChangeSourceOfClassObservers = self->mChangeSourceOfClassObservers;
        v14 = [(__CFDictionary *)mChangeSourceOfClassObservers countByEnumeratingWithState:&v33 objects:v46 count:16];
        if (v14)
        {
          v27 = *v34;
          do
          {
            v15 = 0;
            v28 = v14;
            do
            {
              if (*v34 != v27)
              {
                objc_enumerationMutation(mChangeSourceOfClassObservers);
              }

              v16 = *(*(&v33 + 1) + 8 * v15);
              if (objc_opt_isKindOfClass())
              {
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                v17 = CFDictionaryGetValue(self->mChangeSourceOfClassObservers, v16);
                v18 = [v17 countByEnumeratingWithState:&v29 objects:v45 count:16];
                if (v18)
                {
                  v19 = *v30;
                  do
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v30 != v19)
                      {
                        objc_enumerationMutation(v17);
                      }

                      observer2 = [*(*(&v29 + 1) + 8 * j) observer];
                      if (![(TSKChangeNotifier *)self p_pendingAddOrRemoveOfObserver:observer2 forChangeSource:changeSource]&& (objc_opt_respondsToSelector() & 1) != 0)
                      {
                        [observer2 syncProcessChanges:objc_msgSend(v7 forChangeSource:{"changes"), changeSource}];
                      }
                    }

                    v18 = [v17 countByEnumeratingWithState:&v29 objects:v45 count:16];
                  }

                  while (v18);
                }
              }

              ++v15;
            }

            while (v15 != v28);
            v14 = [(__CFDictionary *)mChangeSourceOfClassObservers countByEnumeratingWithState:&v33 objects:v46 count:16];
          }

          while (v14);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v22);
      v5 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v5);
  }

  --self->mProcessingChanges;
  [(TSKChangeNotifier *)self p_updateObserverList];
  objc_sync_exit(self);
}

- (void)asyncProcessChanges:(id)changes
{
  v49 = *MEMORY[0x277D85DE8];
  changesArray = [changes changesArray];
  objc_sync_enter(self);
  ++self->mProcessingChanges;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = changesArray;
  v5 = [changesArray countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v5)
  {
    v24 = *v42;
    do
    {
      v6 = 0;
      v22 = v5;
      do
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v41 + 1) + 8 * v6);
        changeSource = [v7 changeSource];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        Value = CFDictionaryGetValue(self->mChangeSourceObservers, changeSource);
        v10 = [Value countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v10)
        {
          v11 = *v38;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v38 != v11)
              {
                objc_enumerationMutation(Value);
              }

              observer = [*(*(&v37 + 1) + 8 * i) observer];
              if (![(TSKChangeNotifier *)self p_pendingAddOrRemoveOfObserver:observer forChangeSource:changeSource]&& (objc_opt_respondsToSelector() & 1) != 0)
              {
                [observer asyncProcessChanges:objc_msgSend(v7 forChangeSource:{"changes"), changeSource}];
              }
            }

            v10 = [Value countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v10);
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        mChangeSourceOfClassObservers = self->mChangeSourceOfClassObservers;
        v14 = [(__CFDictionary *)mChangeSourceOfClassObservers countByEnumeratingWithState:&v33 objects:v46 count:16];
        if (v14)
        {
          v27 = *v34;
          do
          {
            v15 = 0;
            v28 = v14;
            do
            {
              if (*v34 != v27)
              {
                objc_enumerationMutation(mChangeSourceOfClassObservers);
              }

              v16 = *(*(&v33 + 1) + 8 * v15);
              if (objc_opt_isKindOfClass())
              {
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                v17 = CFDictionaryGetValue(self->mChangeSourceOfClassObservers, v16);
                v18 = [v17 countByEnumeratingWithState:&v29 objects:v45 count:16];
                if (v18)
                {
                  v19 = *v30;
                  do
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v30 != v19)
                      {
                        objc_enumerationMutation(v17);
                      }

                      observer2 = [*(*(&v29 + 1) + 8 * j) observer];
                      if (![(TSKChangeNotifier *)self p_pendingAddOrRemoveOfObserver:observer2 forChangeSource:changeSource]&& (objc_opt_respondsToSelector() & 1) != 0)
                      {
                        [observer2 asyncProcessChanges:objc_msgSend(v7 forChangeSource:{"changes"), changeSource}];
                      }
                    }

                    v18 = [v17 countByEnumeratingWithState:&v29 objects:v45 count:16];
                  }

                  while (v18);
                }
              }

              ++v15;
            }

            while (v15 != v28);
            v14 = [(__CFDictionary *)mChangeSourceOfClassObservers countByEnumeratingWithState:&v33 objects:v46 count:16];
          }

          while (v14);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v22);
      v5 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v5);
  }

  --self->mProcessingChanges;
  [(TSKChangeNotifier *)self p_updateObserverList];
  objc_sync_exit(self);
}

@end