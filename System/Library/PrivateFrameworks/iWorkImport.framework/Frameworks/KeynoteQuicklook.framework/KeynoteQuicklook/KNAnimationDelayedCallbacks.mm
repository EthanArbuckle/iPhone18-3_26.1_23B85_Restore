@interface KNAnimationDelayedCallbacks
- (KNAnimationDelayedCallbacks)init;
- (id)performBlock:(id)block afterDelay:(double)delay;
- (id)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object afterDelay:(double)delay;
- (void)cancelAllCallbacks;
- (void)p_setupCallback:(id)callback;
- (void)pauseAllCallbacks;
- (void)removeCallback:(id)callback;
- (void)resumeAllCallbacks;
@end

@implementation KNAnimationDelayedCallbacks

- (KNAnimationDelayedCallbacks)init
{
  v3 = objc_opt_new();
  delayedCallbacks = self->_delayedCallbacks;
  self->_delayedCallbacks = v3;

  return self;
}

- (void)p_setupCallback:(id)callback
{
  delayedCallbacks = self->_delayedCallbacks;
  callbackCopy = callback;
  objc_msgSend_addObject_(delayedCallbacks, v6, callbackCopy);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_275D7CF64;
  v10[3] = &unk_27A698508;
  v10[4] = self;
  objc_msgSend_setCompletionHandler_(callbackCopy, v7, v10);
  objc_msgSend_run(callbackCopy, v8, v9);
}

- (id)performBlock:(id)block afterDelay:(double)delay
{
  blockCopy = block;
  v7 = [KNAnimationDelayedCallback alloc];
  v9 = objc_msgSend_initWithBlock_delay_(v7, v8, blockCopy, delay);

  objc_msgSend_p_setupCallback_(self, v10, v9);

  return v9;
}

- (id)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object afterDelay:(double)delay
{
  objectCopy = object;
  targetCopy = target;
  v12 = [KNAnimationDelayedCallback alloc];
  v14 = objc_msgSend_initWithTarget_selector_object_delay_(v12, v13, targetCopy, selector, objectCopy, delay);

  objc_msgSend_p_setupCallback_(self, v15, v14);

  return v14;
}

- (void)removeCallback:(id)callback
{
  callbackCopy = callback;
  objc_msgSend_cancel(callbackCopy, v4, v5);
  delayedCallbacks = self->_delayedCallbacks;
  if (delayedCallbacks)
  {
    objc_msgSend_removeObject_(delayedCallbacks, v6, callbackCopy);
  }
}

- (void)pauseAllCallbacks
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_delayedCallbacks;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_pause(*(*(&v10 + 1) + 8 * v9++), v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)resumeAllCallbacks
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_delayedCallbacks;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_resume(*(*(&v10 + 1) + 8 * v9++), v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)cancelAllCallbacks
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_delayedCallbacks;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_cancel(*(*(&v13 + 1) + 8 * v10++), v6, v7, v13);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v13, v17, 16);
    }

    while (v8);
  }

  objc_msgSend_removeAllObjects(self->_delayedCallbacks, v11, v12);
}

@end