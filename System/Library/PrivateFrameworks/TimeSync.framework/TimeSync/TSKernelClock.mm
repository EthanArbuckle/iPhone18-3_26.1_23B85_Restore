@interface TSKernelClock
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSKernelClock)initWithClockIdentifier:(unint64_t)identifier;
- (TSKernelClock)initWithImplDC:(id)c;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)didBeginClockGrandmasterChange;
- (void)didChangeClockMaster;
- (void)didEndClockGrandmasterChange;
- (void)didProcessSync;
- (void)didResetClock;
- (void)interruptedConnection;
- (void)removeClient:(id)client;
- (void)setPropertyUpdateQueue:(id)queue;
@end

@implementation TSKernelClock

- (TSKernelClock)initWithImplDC:(id)c
{
  cCopy = c;
  v6 = cCopy;
  if (!cCopy)
  {
    [(TSKernelClock *)self initWithImplDC:&v16];
    clients = v15;
    v8 = v16;
    goto LABEL_4;
  }

  v14.receiver = self;
  v14.super_class = TSKernelClock;
  v7 = -[TSClock initWithClockIdentifier:](&v14, sel_initWithClockIdentifier_, [cCopy clockIdentifier]);
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_impl, c);
    v13.receiver = v8;
    v13.super_class = TSKernelClock;
    propertyUpdateQueue = [(TSClock *)&v13 propertyUpdateQueue];
    [(TSDCKernelClock *)v8->_impl setPropertyUpdateQueue:propertyUpdateQueue];

    [(TSDCKernelClock *)v8->_impl setClient:v8];
    v8->_clientLock._os_unfair_lock_opaque = 0;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v8->_clients;
    v8->_clients = weakObjectsPointerArray;
LABEL_4:
  }

  return v8;
}

- (TSKernelClock)initWithClockIdentifier:(unint64_t)identifier
{
  v4 = [TSDCKernelClock clockWithIdentifier:identifier];
  if (v4)
  {
    v5 = [(TSKernelClock *)self initWithImplDC:v4];
  }

  else
  {
    [TSKernelClock initWithClockIdentifier:?];
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(TSDCKernelClock *)self->_impl setClient:0];
  v3.receiver = self;
  v3.super_class = TSKernelClock;
  [(TSKernelClock *)&v3 dealloc];
}

- (void)setPropertyUpdateQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = TSKernelClock;
  [(TSClock *)&v6 setPropertyUpdateQueue:queue];
  v5.receiver = self;
  v5.super_class = TSKernelClock;
  propertyUpdateQueue = [(TSClock *)&v5 propertyUpdateQueue];
  [(TSDCKernelClock *)self->_impl setPropertyUpdateQueue:propertyUpdateQueue];
}

- (void)addClient:(id)client
{
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = TSKernelClock;
  [(TSClock *)&v15 addClient:clientCopy];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * v9) == clientCopy)
        {

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:clientCopy, v11];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v14 + 1) + 8 * v10) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v11];
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);
  v13.receiver = self;
  v13.super_class = TSKernelClock;
  [(TSClock *)&v13 removeClient:clientCopy];

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  string = [MEMORY[0x277CCAB68] string];
  v8 = [infoCopy objectForKeyedSubscript:@"ClassName"];
  [string appendFormat:@"%@+%@\n", indentCopy, v8];

  [string appendFormat:@"%@    Clock Identifier: ", indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:@"ClockIdentifier"];
  v10 = v9;
  if (v9)
  {
    [string appendFormat:@"0x%016llx\n", objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    Lock State: ", indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:@"ClockLockState"];

  if (!v11)
  {
    v13 = @" Could not read property\n";
    goto LABEL_12;
  }

  intValue = [v11 intValue];
  switch(intValue)
  {
    case 2:
      v13 = @"Locked\n";
      goto LABEL_12;
    case 1:
      v13 = @"Locking\n";
      goto LABEL_12;
    case 0:
      v13 = @"Not Locking\n";
LABEL_12:
      [string appendString:v13];
      goto LABEL_13;
  }

  [string appendFormat:@"Unknown (%d)\n", objc_msgSend(v11, "intValue")];
LABEL_13:

  return string;
}

- (void)didResetClock
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didResetClock:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)didChangeClockMaster
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didChangeClockMasterForClock:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)didBeginClockGrandmasterChange
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didBeginClockGrandmasterChangeForClock:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)didEndClockGrandmasterChange
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didEndClockGrandmasterChangeForClock:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)didProcessSync
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didProcessSync:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)interruptedConnection
{
  interruptionHandler = [(TSKernelClock *)self interruptionHandler];

  if (interruptionHandler)
  {
    interruptionHandler2 = [(TSKernelClock *)self interruptionHandler];
    interruptionHandler2[2](interruptionHandler2, self);
  }
}

- (void)initWithImplDC:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 136316418;
    OUTLINED_FUNCTION_0();
    v8 = "";
    OUTLINED_FUNCTION_1();
    v9 = 71;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithClockIdentifier:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 136316418;
    OUTLINED_FUNCTION_0();
    v4 = "";
    OUTLINED_FUNCTION_1();
    v5 = 92;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, 0x3Au);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end