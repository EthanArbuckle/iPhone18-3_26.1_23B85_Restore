@interface SUNetworkObserver
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)a3;
- (NSString)partnerIdentifier;
- (SUNetworkObserver)init;
- (void)_cancelStartupTimer;
- (void)_handleNetworkTypeChange:(id)a3;
- (void)_handleUsingNetworkChange:(id)a3;
- (void)_mainThreadHandleNetworkTypeChange:(id)a3;
- (void)_mainThreadScheduleNetworkActivityUpdate;
- (void)_mainThreadSetPartnerIdentifier:(id)a3;
- (void)_networkTypeChanged:(id)a3;
- (void)_networkUsageStateChanged:(id)a3;
- (void)_partnerHeaderChanged:(id)a3;
- (void)_storeServicesNetworkStartNotification:(id)a3;
- (void)_storeServicesNetworkStopNotification:(id)a3;
- (void)_updateNetworkActivityIndicator;
- (void)checkPartnerAvailability;
- (void)dealloc;
- (void)setPartnerIdentifier:(id)a3;
- (void)setPartnersEnabled:(BOOL)a3;
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__partnerHeaderChanged_ name:*MEMORY[0x1E69E46B0] object:0];
    [v3 addObserver:v2 selector:sel__storeServicesNetworkStartNotification_ name:*MEMORY[0x1E69D4D60] object:0];
    [v3 addObserver:v2 selector:sel__storeServicesNetworkStopNotification_ name:*MEMORY[0x1E69D4D68] object:0];
    v4 = [MEMORY[0x1E69E4778] sharedInstance];
    [v3 addObserver:v2 selector:sel__networkTypeChanged_ name:*MEMORY[0x1E69E46E0] object:v4];
    [v3 addObserver:v2 selector:sel__networkUsageStateChanged_ name:*MEMORY[0x1E69E46E8] object:v4];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69E46B0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69D4D60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69D4D68] object:0];
  v4 = [MEMORY[0x1E69E4778] sharedInstance];
  [v3 removeObserver:self name:*MEMORY[0x1E69E46E0] object:v4];
  [v3 removeObserver:self name:*MEMORY[0x1E69E46E8] object:v4];
  [(SUNetworkObserver *)self _cancelStartupTimer];

  self->_partnerIdentifier = 0;
  v5.receiver = self;
  v5.super_class = SUNetworkObserver;
  [(SUNetworkObserver *)&v5 dealloc];
}

+ (void)setSharedInstance:(id)a3
{
  if (__SharedInstance_0 != a3)
  {

    __SharedInstance_0 = a3;
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

- (void)setPartnerIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_partnerIdentifier isEqualToString:?])
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = a3;
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

    self->_partnerIdentifier = a3;
    if (self->_partnersEnabled)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }
}

- (void)setPartnersEnabled:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_partnersEnabled != a3)
  {
    v3 = a3;
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v12 = 138412546;
      v13 = objc_opt_class();
      v14 = 1024;
      v15 = v3;
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

    self->_partnersEnabled = v3;
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

- (void)_networkTypeChanged:(id)a3
{
  v4 = [a3 userInfo];

  [(SUNetworkObserver *)self _handleNetworkTypeChange:v4];
}

- (void)_networkUsageStateChanged:(id)a3
{
  v4 = [a3 userInfo];

  [(SUNetworkObserver *)self _handleUsingNetworkChange:v4];
}

- (void)_partnerHeaderChanged:(id)a3
{
  v4 = [(SUNetworkObserver *)self mainThreadProxy];
  v5 = [a3 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69E46B8]];

  [v4 _mainThreadSetPartnerIdentifier:v6];
}

- (void)_storeServicesNetworkStartNotification:(id)a3
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

- (void)_storeServicesNetworkStopNotification:(id)a3
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

- (void)_handleNetworkTypeChange:(id)a3
{
  v4 = [(SUNetworkObserver *)self mainThreadProxy];

  [v4 _mainThreadHandleNetworkTypeChange:a3];
}

- (void)_handleUsingNetworkChange:(id)a3
{
  v3 = [(SUNetworkObserver *)self mainThreadProxy];

  [v3 _mainThreadScheduleNetworkActivityUpdate];
}

- (void)_mainThreadHandleNetworkTypeChange:(id)a3
{
  [(SUNetworkObserver *)self _cancelStartupTimer];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];

  [v4 postNotificationName:@"SUNetworkTypeChangedNotification" object:self];
}

- (void)_mainThreadScheduleNetworkActivityUpdate
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateNetworkActivityIndicator object:0];

  [(SUNetworkObserver *)self performSelector:sel__updateNetworkActivityIndicator withObject:0 afterDelay:0.25];
}

- (void)_mainThreadSetPartnerIdentifier:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 rangeOfString:@"."];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a3 = [a3 substringToIndex:v5];
    }

    [(SUNetworkObserver *)self setPartnerIdentifier:a3];
  }
}

- (void)_updateNetworkActivityIndicator
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  if (self->_storeServicesNetworkUsageCount <= 0)
  {
    v4 = [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
  }

  else
  {
    v4 = 1;
  }

  [v3 setNetworkActivityIndicatorVisible:v4];
}

@end