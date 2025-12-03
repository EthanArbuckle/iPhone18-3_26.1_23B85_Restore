@interface MicroPaymentQueueResponse
- (BOOL)_ntsLoadFromPropertyList:(id)list;
- (BOOL)loadFromPropertyList:(id)list;
- (BOOL)shouldTriggerQueueCheck;
- (MicroPaymentQueueResponse)initWithRequestType:(int64_t)type;
- (NSArray)payments;
- (NSArray)rangesToLoad;
- (NSData)appReceipt;
- (NSNumber)userIdentifier;
- (id)_copyAppReceiptFromDictionary:(id)dictionary;
- (id)_copyPaymentsFromDictionary:(id)dictionary;
- (id)_dsidFromDictionary:(id)dictionary;
- (int64_t)serverPaymentCount;
- (void)appendResponse:(id)response;
- (void)dealloc;
- (void)setPayments:(id)payments;
- (void)setRangesToLoad:(id)load;
- (void)setServerPaymentCount:(int64_t)count;
- (void)setShouldTriggerQueueCheck:(BOOL)check;
- (void)setUserIdentifier:(id)identifier;
@end

@implementation MicroPaymentQueueResponse

- (MicroPaymentQueueResponse)initWithRequestType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MicroPaymentQueueResponse;
  result = [(MicroPaymentQueueResponse *)&v5 init];
  if (result)
  {
    result->_requestType = type;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MicroPaymentQueueResponse;
  [(MicroPaymentQueueResponse *)&v3 dealloc];
}

- (void)appendResponse:(id)response
{
  if (response)
  {
    [*(response + 2) lock];
    [(NSLock *)self->_lock lock];
    if ([*(response + 3) count])
    {
      payments = self->_payments;
      if (payments)
      {
        [(NSMutableArray *)payments addObjectsFromArray:*(response + 3)];
      }

      else
      {
        self->_payments = [*(response + 3) mutableCopy];
      }
    }

    if ([*(response + 4) count])
    {
      rangesToLoad = self->_rangesToLoad;
      if (rangesToLoad)
      {
        [(NSMutableArray *)rangesToLoad addObjectsFromArray:*(response + 4)];
      }

      else
      {
        self->_rangesToLoad = [*(response + 4) mutableCopy];
      }
    }

    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v10 = objc_opt_class();
      v11 = [(NSData *)self->_appReceipt length];
      v19 = 138412802;
      v20 = v10;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = [objc_msgSend(response "appReceipt")];
      LODWORD(v18) = 32;
      v17 = &v19;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v19, v18];
        free(v13);
        v17 = v14;
        SSFileLog();
      }
    }

    if ([objc_msgSend(response appReceipt])
    {
      appReceipt = self->_appReceipt;
      if (appReceipt != [response appReceipt])
      {

        self->_appReceipt = [response appReceipt];
      }
    }

    self->_serverPaymentCount += *(response + 6);
    if (self->_shouldTriggerQueueCheck)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(response + 56);
    }

    self->_shouldTriggerQueueCheck = v16 & 1;
    [(NSLock *)self->_lock unlock];
    [*(response + 2) unlock];
  }
}

- (BOOL)loadFromPropertyList:(id)list
{
  [(NSLock *)self->_lock lock];
  LOBYTE(list) = [(MicroPaymentQueueResponse *)self _ntsLoadFromPropertyList:list];
  [(NSLock *)self->_lock unlock];
  return list;
}

- (NSData)appReceipt
{
  [(NSLock *)self->_lock lock];
  v3 = self->_appReceipt;
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (NSArray)payments
{
  [(NSLock *)self->_lock lock];
  v3 = self->_payments;
  [(NSLock *)self->_lock unlock];
  return &v3->super;
}

- (NSArray)rangesToLoad
{
  [(NSLock *)self->_lock lock];
  v3 = self->_rangesToLoad;
  [(NSLock *)self->_lock unlock];
  return &v3->super;
}

- (int64_t)serverPaymentCount
{
  [(NSLock *)self->_lock lock];
  serverPaymentCount = self->_serverPaymentCount;
  [(NSLock *)self->_lock unlock];
  return serverPaymentCount;
}

- (void)setServerPaymentCount:(int64_t)count
{
  [(NSLock *)self->_lock lock];
  self->_serverPaymentCount = count;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setPayments:(id)payments
{
  [(NSLock *)self->_lock lock];
  payments = self->_payments;
  if (payments != payments)
  {

    self->_payments = [payments mutableCopy];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setRangesToLoad:(id)load
{
  [(NSLock *)self->_lock lock];
  rangesToLoad = self->_rangesToLoad;
  if (rangesToLoad != load)
  {

    self->_rangesToLoad = [load mutableCopy];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setShouldTriggerQueueCheck:(BOOL)check
{
  [(NSLock *)self->_lock lock];
  self->_shouldTriggerQueueCheck = check;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setUserIdentifier:(id)identifier
{
  [(NSLock *)self->_lock lock];
  userIdentifier = self->_userIdentifier;
  if (userIdentifier != identifier)
  {

    self->_userIdentifier = [identifier copy];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)shouldTriggerQueueCheck
{
  [(NSLock *)self->_lock lock];
  shouldTriggerQueueCheck = self->_shouldTriggerQueueCheck;
  [(NSLock *)self->_lock unlock];
  return shouldTriggerQueueCheck;
}

- (NSNumber)userIdentifier
{
  [(NSLock *)self->_lock lock];
  v3 = self->_userIdentifier;
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (id)_copyAppReceiptFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"receipt-data"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = v3;
  return v3;
}

- (id)_copyPaymentsFromDictionary:(id)dictionary
{
  userIdentifier = [(MicroPaymentQueueResponse *)self _dsidFromDictionary:?];
  if (!userIdentifier)
  {
    userIdentifier = [(MicroPaymentQueueResponse *)self userIdentifier];
  }

  v6 = [dictionary objectForKey:@"app-list"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([MicroPayment responseIsValid:v12])
        {
          if (userIdentifier)
          {
            v13 = [v12 mutableCopy];
            [v13 setObject:userIdentifier forKey:@"dsid"];
            [v7 addObject:v13];
          }

          else
          {
            [v7 addObject:v12];
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)_dsidFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"dsid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = strtoull([v3 UTF8String], 0, 10);
  if (!v4)
  {
    return 0;
  }

  return [NSNumber numberWithUnsignedLongLong:v4];
}

- (BOOL)_ntsLoadFromPropertyList:(id)list
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MicroPaymentQueueResponse *)self _copyPaymentsFromDictionary:list];
    v6 = [(MicroPaymentQueueResponse *)self _copyAppReceiptFromDictionary:list];
    v7 = [list objectForKey:kISTriggerDownloadQueueKey];
    if (objc_opt_respondsToSelector())
    {
      self->_shouldTriggerQueueCheck = [v7 BOOLValue];
    }

    [list objectForKey:@"more"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      self->_rangesToLoad = ISCopyLoadMoreRangesFromArray();
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  self->_payments = v5;
  self->_appReceipt = v6;
  return self->_payments != 0;
}

@end