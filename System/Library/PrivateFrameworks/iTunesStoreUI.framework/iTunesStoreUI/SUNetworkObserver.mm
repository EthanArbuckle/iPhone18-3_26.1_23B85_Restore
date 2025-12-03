@interface SUNetworkObserver
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (NSString)partnerIdentifier;
- (SUNetworkObserver)init;
- (void)_cancelStartupTimer;
- (void)_handleNetworkTypeChange:(id)change;
- (void)_handleUsingNetworkChange:(id)change;
- (void)_mainThreadHandleNetworkTypeChange:(id)change;
- (void)_mainThreadScheduleNetworkActivityUpdate;
- (void)_mainThreadSetPartnerIdentifier:(id)identifier;
- (void)_networkTypeChanged:(id)changed;
- (void)_networkUsageStateChanged:(id)changed;
- (void)_partnerHeaderChanged:(id)changed;
- (void)_storeServicesNetworkStartNotification:(id)notification;
- (void)_storeServicesNetworkStopNotification:(id)notification;
- (void)_updateNetworkActivityIndicator;
- (void)checkPartnerAvailability;
- (void)dealloc;
- (void)setPartnerIdentifier:(id)identifier;
- (void)setPartnersEnabled:(BOOL)enabled;
- (void)startNetworkAvailabilityTimer;
@end

@implementation SUNetworkObserver

- (SUNetworkObserver)init
{
  v6.receiver = self;
  v6.super_class = SUNetworkObserver;
  v2 = [(SUNetworkObserver *)&v6 init];
  if (v2)
  {
    v2->_partnerIdentifier = @"origin";
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__partnerHeaderChanged_ name:*MEMORY[0x1E69E46B0] object:0];
    [defaultCenter addObserver:v2 selector:sel__storeServicesNetworkStartNotification_ name:*MEMORY[0x1E69D4D60] object:0];
    [defaultCenter addObserver:v2 selector:sel__storeServicesNetworkStopNotification_ name:*MEMORY[0x1E69D4D68] object:0];
    mEMORY[0x1E69E4778] = [MEMORY[0x1E69E4778] sharedInstance];
    [defaultCenter addObserver:v2 selector:sel__networkTypeChanged_ name:*MEMORY[0x1E69E46E0] object:mEMORY[0x1E69E4778]];
    [defaultCenter addObserver:v2 selector:sel__networkUsageStateChanged_ name:*MEMORY[0x1E69E46E8] object:mEMORY[0x1E69E4778]];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46B0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4D60] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4D68] object:0];
  mEMORY[0x1E69E4778] = [MEMORY[0x1E69E4778] sharedInstance];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46E0] object:mEMORY[0x1E69E4778]];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46E8] object:mEMORY[0x1E69E4778]];
  [(SUNetworkObserver *)self _cancelStartupTimer];

  self->_partnerIdentifier = 0;
  v5.receiver = self;
  v5.super_class = SUNetworkObserver;
  [(SUNetworkObserver *)&v5 dealloc];
}

+ (void)setSharedInstance:(id)instance
{
  if (__SharedInstance_0 != instance)
  {

    __SharedInstance_0 = instance;
  }
}

+ (id)sharedInstance
{
  result = __SharedInstance_0;
  if (!__SharedInstance_0)
  {
    result = objc_alloc_init(objc_opt_class());
    __SharedInstance_0 = result;
  }

  return result;
}

- (void)checkPartnerAvailability
{
  v2 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v3 = [objc_alloc(MEMORY[0x1E69E4770]) initWithBagContext:v2];
  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

- (NSString)partnerIdentifier
{
  if (self->_partnersEnabled)
  {
    return self->_partnerIdentifier;
  }

  else
  {
    return @"origin";
  }
}

- (void)setPartnerIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_partnerIdentifier isEqualToString:?])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      identifierCopy = identifier;
      LODWORD(v10) = 22;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v11, v10}];
        free(v9);
        SSFileLog();
      }
    }

    self->_partnerIdentifier = identifier;
    if (self->_partnersEnabled)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }
}

- (void)setPartnersEnabled:(BOOL)enabled
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_partnersEnabled != enabled)
  {
    enabledCopy = enabled;
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v12 = 138412546;
      v13 = objc_opt_class();
      v14 = 1024;
      v15 = enabledCopy;
      LODWORD(v11) = 18;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v12, v11}];
        free(v9);
        SSFileLog();
      }
    }

    self->_partnersEnabled = enabledCopy;
    partnerIdentifier = self->_partnerIdentifier;
    if (partnerIdentifier)
    {
      if (![(NSString *)partnerIdentifier isEqualToString:@"origin"])
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }
    }
  }
}

- (void)startNetworkAvailabilityTimer
{
  if (!self->_startupTimer)
  {
    self->_startupTimer = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__startupTimer_ selector:0 userInfo:0 repeats:12.0];
  }
}

- (void)_networkTypeChanged:(id)changed
{
  userInfo = [changed userInfo];

  [(SUNetworkObserver *)self _handleNetworkTypeChange:userInfo];
}

- (void)_networkUsageStateChanged:(id)changed
{
  userInfo = [changed userInfo];

  [(SUNetworkObserver *)self _handleUsingNetworkChange:userInfo];
}

- (void)_partnerHeaderChanged:(id)changed
{
  mainThreadProxy = [(SUNetworkObserver *)self mainThreadProxy];
  userInfo = [changed userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69E46B8]];

  [mainThreadProxy _mainThreadSetPartnerIdentifier:v6];
}

- (void)_storeServicesNetworkStartNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SUNetworkObserver__storeServicesNetworkStartNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__60__SUNetworkObserver__storeServicesNetworkStartNotification___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 40);
  result = *(a1 + 32);
  if (result[5] == 1)
  {
    return [result _updateNetworkActivityIndicator];
  }

  return result;
}

- (void)_storeServicesNetworkStopNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SUNetworkObserver__storeServicesNetworkStopNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__59__SUNetworkObserver__storeServicesNetworkStopNotification___block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 40);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 40) = v4;
    result = result[4];
    if (!result[5])
    {
      return [result _mainThreadScheduleNetworkActivityUpdate];
    }
  }

  return result;
}

- (void)_cancelStartupTimer
{
  [(NSTimer *)self->_startupTimer invalidate];

  self->_startupTimer = 0;
}

- (void)_handleNetworkTypeChange:(id)change
{
  mainThreadProxy = [(SUNetworkObserver *)self mainThreadProxy];

  [mainThreadProxy _mainThreadHandleNetworkTypeChange:change];
}

- (void)_handleUsingNetworkChange:(id)change
{
  mainThreadProxy = [(SUNetworkObserver *)self mainThreadProxy];

  [mainThreadProxy _mainThreadScheduleNetworkActivityUpdate];
}

- (void)_mainThreadHandleNetworkTypeChange:(id)change
{
  [(SUNetworkObserver *)self _cancelStartupTimer];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUNetworkTypeChangedNotification" object:self];
}

- (void)_mainThreadScheduleNetworkActivityUpdate
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateNetworkActivityIndicator object:0];

  [(SUNetworkObserver *)self performSelector:sel__updateNetworkActivityIndicator withObject:0 afterDelay:0.25];
}

- (void)_mainThreadSetPartnerIdentifier:(id)identifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [identifier rangeOfString:@"."];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      identifier = [identifier substringToIndex:v5];
    }

    [(SUNetworkObserver *)self setPartnerIdentifier:identifier];
  }
}

- (void)_updateNetworkActivityIndicator
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if (self->_storeServicesNetworkUsageCount <= 0)
  {
    v4 = [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
  }

  else
  {
    v4 = 1;
  }

  [mEMORY[0x1E69DC668] setNetworkActivityIndicatorVisible:v4];
}

@end