@interface HKSPPersistentSyncAnchorContainer
- (HKSPPersistentSyncAnchorContainer)initWithIdentifier:(id)identifier defaults:(id)defaults;
- (id)copyWithZone:(_NSZone *)zone;
- (id)inMemoryCopy;
- (id)lock_getSyncAnchorForKey:(id)key;
- (void)lock_setSyncAnchor:(id)anchor forKey:(id)key;
@end

@implementation HKSPPersistentSyncAnchorContainer

- (id)inMemoryCopy
{
  v3 = [HKSPSyncAnchorContainer alloc];
  identifier = [(HKSPSyncAnchorContainer *)self identifier];
  v5 = [(HKSPSyncAnchorContainer *)v3 initWithIdentifier:identifier];

  [(HKSPSyncAnchorContainer *)v5 updateWithContainer:self];

  return v5;
}

- (HKSPPersistentSyncAnchorContainer)initWithIdentifier:(id)identifier defaults:(id)defaults
{
  v17 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  v14.receiver = self;
  v14.super_class = HKSPPersistentSyncAnchorContainer;
  v8 = [(HKSPSyncAnchorContainer *)&v14 initWithIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaults, defaults);
    v10 = HKSPLogForCategory(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "Initialized %{public}@", buf, 0xCu);
    }

    v11 = v9;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)lock_getSyncAnchorForKey:(id)key
{
  v3 = [(HKSPUserDefaults *)self->_defaults hksp_objectForKey:key];
  HKSPSyncAnchorClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = HKSPSyncAnchorDefaultValue();

    v3 = v4;
  }

  return v3;
}

- (void)lock_setSyncAnchor:(id)anchor forKey:(id)key
{
  defaults = self->_defaults;
  keyCopy = key;
  v7 = [anchor copyWithZone:0];
  [(HKSPUserDefaults *)defaults hksp_setObject:v7 forKey:keyCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HKSPPersistentSyncAnchorContainer;
  v4 = [(HKSPSyncAnchorContainer *)&v8 copyWithZone:zone];
  v5 = v4;
  if (self)
  {
    defaults = self->_defaults;
  }

  else
  {
    defaults = 0;
  }

  objc_storeStrong(v4 + 4, defaults);
  return v5;
}

@end