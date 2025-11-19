@interface STUIStatusBarDataBroadcaster
+ (id)sharedInstance;
- (STStatusBarData)currentData;
- (id)_init;
- (void)dealloc;
- (void)updateWithData:(id)a3;
@end

@implementation STUIStatusBarDataBroadcaster

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__STUIStatusBarDataBroadcaster_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_52 != -1)
  {
    dispatch_once(&_MergedGlobals_52, block);
  }

  v2 = qword_280C1E848;

  return v2;
}

- (STStatusBarData)currentData
{
  v3 = self->_broadcastData;
  v4 = [(STStatusBarOverridesStatusDomain *)self->_overridesDomain data];
  v5 = [v4 customOverrides];

  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v6 = [(STStatusBarData *)v3 mutableCopy];
    [v6 applyUpdate:v5];
    v7 = [v6 immutableCopy];

    v3 = v7;
  }

  return v3;
}

uint64_t __46__STUIStatusBarDataBroadcaster_sharedInstance__block_invoke(uint64_t a1)
{
  qword_280C1E848 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v22.receiver = self;
  v22.super_class = STUIStatusBarDataBroadcaster;
  v2 = [(STUIStatusBarDataBroadcaster *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    dataListeners = v2->_dataListeners;
    v2->_dataListeners = v3;

    v5 = MEMORY[0x277D76620];
    if ([*MEMORY[0x277D76620] _isSpringBoard] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = objc_alloc(MEMORY[0x277D6BB28]);
      v7 = [*v5 systemStatusServer];
      v8 = [v6 initWithServerHandle:v7];
      overridesDomain = v2->_overridesDomain;
      v2->_overridesDomain = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277D6BB28]);
      v7 = v2->_overridesDomain;
      v2->_overridesDomain = v10;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__STUIStatusBarDataBroadcaster__init__block_invoke;
    aBlock[3] = &unk_279D37F00;
    v11 = v2;
    v21 = v11;
    v12 = _Block_copy(aBlock);
    v13 = v11->_overridesDomain;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__STUIStatusBarDataBroadcaster__init__block_invoke_2;
    v18[3] = &unk_279D38C78;
    v19 = v12;
    v14 = v12;
    [(STStatusBarOverridesStatusDomain *)v13 observeDataWithBlock:v18];
    v15 = objc_alloc_init(MEMORY[0x277D6BA48]);
    broadcastData = v11->_broadcastData;
    v11->_broadcastData = v15;
  }

  return v2;
}

void __37__STUIStatusBarDataBroadcaster__init__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateForDataChange:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)dealloc
{
  [(STStatusBarOverridesStatusDomain *)self->_overridesDomain invalidate];
  v3.receiver = self;
  v3.super_class = STUIStatusBarDataBroadcaster;
  [(STUIStatusBarDataBroadcaster *)&v3 dealloc];
}

- (void)updateWithData:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = (*(a3 + 2))(a3, self->_broadcastData);
  if (([v4 isEqual:self->_broadcastData] & 1) == 0)
  {
    v5 = [v4 immutableCopy];
    broadcastData = self->_broadcastData;
    self->_broadcastData = v5;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSHashTable *)self->_dataListeners allObjects];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) updateForDataChange:self];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

@end