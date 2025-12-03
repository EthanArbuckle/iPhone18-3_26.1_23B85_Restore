@interface _SBIdleTimerGlobalNumericSettingMonitor
- (BOOL)_updateCache;
- (NSNumber)numericValue;
- (_SBIdleTimerGlobalNumericSettingMonitor)initWithLabel:(id)label delegate:(id)delegate updatingForNotification:(id)notification fetchingWith:(id)with;
- (id)formattedValue;
- (void)_settingChanged:(id)changed;
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

- (_SBIdleTimerGlobalNumericSettingMonitor)initWithLabel:(id)label delegate:(id)delegate updatingForNotification:(id)notification fetchingWith:(id)with
{
  notificationCopy = notification;
  withCopy = with;
  v17.receiver = self;
  v17.super_class = _SBIdleTimerGlobalNumericSettingMonitor;
  v12 = [(_SBIdleTimerGlobalSettingMonitor *)&v17 initWithLabel:label delegate:delegate];
  if (v12)
  {
    v13 = [withCopy copy];
    fetchSettingFromSource = v12->_fetchSettingFromSource;
    v12->_fetchSettingFromSource = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__settingChanged_ name:notificationCopy object:0];
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)_settingChanged:(id)changed
{
  changedCopy = changed;
  v3 = changedCopy;
  BSDispatchMain();
}

- (id)formattedValue
{
  numericValue = [(_SBIdleTimerGlobalNumericSettingMonitor *)self numericValue];
  v3 = [numericValue description];

  return v3;
}

@end