@interface TSCEDistributor
- (BOOL)hasReceiver:(id)receiver;
- (BOOL)hasReceivers;
- (Protocol)protocol;
- (TSCEDistributor)init;
- (void)addReceiver:(id)receiver;
- (void)addReceiverIfMissing:(id)missing;
- (void)distributeBlock:(id)block;
- (void)dropAllTargets;
- (void)removeReceiver:(id)receiver;
- (void)suspendDuringBlock:(id)block;
@end

@implementation TSCEDistributor

- (TSCEDistributor)init
{
  v6.receiver = self;
  v6.super_class = TSCEDistributor;
  v2 = [(TSCEDistributor *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    receivers = v2->_receivers;
    v2->_receivers = v3;

    v2->_receiversLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v2;
}

- (Protocol)protocol
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDistributor protocol]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v7, v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v12, v5, v9, 37, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = *MEMORY[0x277CBE658];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v25 = objc_msgSend_stringWithFormat_(v19, v22, @"Abstract method not overridden by %@: %s", v23, v24, v21, "[TSCEDistributor protocol]");
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v26, v18, v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    v54 = receiverCopy;
    v13 = objc_msgSend_protocol(self, v6, v7, v8, v9);
    if (v13)
    {
      v14 = objc_msgSend_conformsToProtocol_(v54, v10, v13, v11, v12);
      if (objc_msgSend_conformsToProtocol_(v54, v15, v13, v16, v17))
      {
        p_receiversLock = &self->_receiversLock;
        os_unfair_lock_lock(&self->_receiversLock);
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_8:
        if ((objc_msgSend_containsObject_(self->_receivers, v22, v54, v23, v24) & 1) == 0)
        {
          objc_msgSend_addObject_(self->_receivers, v51, v54, v52, v53);
        }

        goto LABEL_10;
      }

      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEDistributor addReceiver:]", v19, v20);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v39, v40);
      v42 = NSStringFromSelector(a2);
      v43 = objc_opt_class();
      v44 = NSStringFromProtocol(v13);
      v45 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v46, v37, v41, 53, 0, "Error %@: Target %@ does not conform to protocol %@ required for TSCEDistributor class %@.", v42, v43, v44, v45);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v47, v48, v49, v50);
      p_receiversLock = &self->_receiversLock;
      os_unfair_lock_lock(&self->_receiversLock);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDistributor addReceiver:]", v11, v12);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 49, 0, "protocol MUST be defined before addReceiver can be used");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
      p_receiversLock = &self->_receiversLock;
      os_unfair_lock_lock(&self->_receiversLock);
    }

LABEL_10:
    os_unfair_lock_unlock(p_receiversLock);

    receiverCopy = v54;
  }
}

- (void)addReceiverIfMissing:(id)missing
{
  missingCopy = missing;
  if (missingCopy)
  {
    v10 = missingCopy;
    hasReceiver = objc_msgSend_hasReceiver_(self, missingCopy, missingCopy, v5, v6);
    missingCopy = v10;
    if ((hasReceiver & 1) == 0)
    {
      objc_msgSend_addReceiver_(self, v10, v10, v8, v9);
      missingCopy = v10;
    }
  }
}

- (void)removeReceiver:(id)receiver
{
  if (receiver)
  {
    receiverCopy = receiver;
    os_unfair_lock_lock(&self->_receiversLock);
    objc_msgSend_removeObjectIdenticalTo_(self->_receivers, v5, receiverCopy, v6, v7);

    os_unfair_lock_unlock(&self->_receiversLock);
  }
}

- (BOOL)hasReceivers
{
  os_unfair_lock_lock(&self->_receiversLock);
  v7 = objc_msgSend_count(self->_receivers, v3, v4, v5, v6) != 0;
  os_unfair_lock_unlock(&self->_receiversLock);
  return v7;
}

- (BOOL)hasReceiver:(id)receiver
{
  receiverCopy = receiver;
  os_unfair_lock_lock(&self->_receiversLock);
  if (receiverCopy)
  {
    v8 = objc_msgSend_indexOfObjectIdenticalTo_(self->_receivers, v5, receiverCopy, v6, v7) != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_receiversLock);

  return v8;
}

- (void)dropAllTargets
{
  os_unfair_lock_lock(&self->_receiversLock);
  objc_msgSend_removeAllObjects(self->_receivers, v3, v4, v5, v6);

  os_unfair_lock_unlock(&self->_receiversLock);
}

- (void)distributeBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_lock(&self->_receiversLock);
  if (objc_msgSend_count(self->_receivers, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_copy(self->_receivers, v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(&self->_receiversLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v21, v25, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v14);
        }

        blockCopy[2](blockCopy, *(*(&v21 + 1) + 8 * v19++));
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, &v21, v25, 16);
    }

    while (v17);
  }
}

- (void)suspendDuringBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_lock(&self->_receiversLock);
  receivers = self->_receivers;
  v6 = receivers;
  v7 = objc_opt_new();
  v8 = self->_receivers;
  self->_receivers = v7;

  os_unfair_lock_unlock(&self->_receiversLock);
  blockCopy[2](blockCopy);
  os_unfair_lock_lock(&self->_receiversLock);
  v9 = self->_receivers;
  if (objc_msgSend_count(v9, v10, v11, v12, v13))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEDistributor suspendDuringBlock:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDistributor.m", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 127, 0, "someone added a receiver when we were not expecting it");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  objc_storeStrong(&self->_receivers, receivers);
  os_unfair_lock_unlock(&self->_receiversLock);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = v9;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v37, v41, 16);
  if (v30)
  {
    v34 = v30;
    v35 = *v38;
    do
    {
      v36 = 0;
      do
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_addReceiverIfMissing_(self, v31, *(*(&v37 + 1) + 8 * v36++), v32, v33, v37);
      }

      while (v34 != v36);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v37, v41, 16);
    }

    while (v34);
  }
}

@end