@interface _SBIdleTimerGlobalNumericSettingMonitor
- (BOOL)_updateCache;
- (NSNumber)numericValue;
- (_SBIdleTimerGlobalNumericSettingMonitor)initWithLabel:(id)a3 delegate:(id)a4 updatingForNotification:(id)a5 fetchingWith:(id)a6;
- (id)formattedValue;
- (void)_settingChanged:(id)a3;
- (void)dealloc;
@end

@implementation _SBIdleTimerGlobalNumericSettingMonitor

- (NSNumber)numericValue
{
  settingCache = self->_settingCache;
  if (!settingCache)
  {
    [(_SBIdleTimerGlobalNumericSettingMonitor *)self _updateCache];
    settingCache = self->_settingCache;
  }

  return settingCache;
}

- (_SBIdleTimerGlobalNumericSettingMonitor)initWithLabel:(id)a3 delegate:(id)a4 updatingForNotification:(id)a5 fetchingWith:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = _SBIdleTimerGlobalNumericSettingMonitor;
  v12 = [(_SBIdleTimerGlobalSettingMonitor *)&v17 initWithLabel:a3 delegate:a4];
  if (v12)
  {
    v13 = [v11 copy];
    fetchSettingFromSource = v12->_fetchSettingFromSource;
    v12->_fetchSettingFromSource = v13;

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v12 selector:sel__settingChanged_ name:v10 object:0];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SBIdleTimerGlobalNumericSettingMonitor;
  [(_SBIdleTimerGlobalNumericSettingMonitor *)&v4 dealloc];
}

- (BOOL)_updateCache
{
  v3 = (*(self->_fetchSettingFromSource + 2))();
  settingCache = self->_settingCache;
  if (!v3)
  {
    if (settingCache)
    {
      self->_settingCache = 0;

      goto LABEL_6;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if ([(NSNumber *)settingCache isEqualToNumber:v3])
  {
    goto LABEL_7;
  }

  objc_storeStrong(&self->_settingCache, v3);
LABEL_6:
  v5 = 1;
LABEL_8:

  return v5;
}

- (void)_settingChanged:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

- (id)formattedValue
{
  v2 = [(_SBIdleTimerGlobalNumericSettingMonitor *)self numericValue];
  v3 = [v2 description];

  return v3;
}

@end