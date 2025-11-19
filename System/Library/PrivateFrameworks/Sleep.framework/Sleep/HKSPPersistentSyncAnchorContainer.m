@interface HKSPPersistentSyncAnchorContainer
- (HKSPPersistentSyncAnchorContainer)initWithIdentifier:(id)a3 defaults:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)inMemoryCopy;
- (id)lock_getSyncAnchorForKey:(id)a3;
- (void)lock_setSyncAnchor:(id)a3 forKey:(id)a4;
@end

@implementation HKSPPersistentSyncAnchorContainer

- (id)inMemoryCopy
{
  v3 = [HKSPSyncAnchorContainer alloc];
  v4 = [(HKSPSyncAnchorContainer *)self identifier];
  v5 = [(HKSPSyncAnchorContainer *)v3 initWithIdentifier:v4];

  [(HKSPSyncAnchorContainer *)v5 updateWithContainer:self];

  return v5;
}

- (HKSPPersistentSyncAnchorContainer)initWithIdentifier:(id)a3 defaults:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKSPPersistentSyncAnchorContainer;
  v8 = [(HKSPSyncAnchorContainer *)&v14 initWithIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaults, a4);
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

- (id)lock_getSyncAnchorForKey:(id)a3
{
  v3 = [(HKSPUserDefaults *)self->_defaults hksp_objectForKey:a3];
  HKSPSyncAnchorClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = HKSPSyncAnchorDefaultValue();

    v3 = v4;
  }

  return v3;
}

- (void)lock_setSyncAnchor:(id)a3 forKey:(id)a4
{
  defaults = self->_defaults;
  v6 = a4;
  v7 = [a3 copyWithZone:0];
  [(HKSPUserDefaults *)defaults hksp_setObject:v7 forKey:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = HKSPPersistentSyncAnchorContainer;
  v4 = [(HKSPSyncAnchorContainer *)&v8 copyWithZone:a3];
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