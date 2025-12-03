@interface HKRPUserDefaultsSyncProvider
- (HKRPUserDefaultsSyncProvider)initWithUserDefaultsDomain:(id)domain;
- (void)synchronizeKeys:(id)keys;
@end

@implementation HKRPUserDefaultsSyncProvider

- (HKRPUserDefaultsSyncProvider)initWithUserDefaultsDomain:(id)domain
{
  domainCopy = domain;
  v11.receiver = self;
  v11.super_class = HKRPUserDefaultsSyncProvider;
  v5 = [(HKRPUserDefaultsSyncProvider *)&v11 init];
  if (v5)
  {
    v6 = [domainCopy copy];
    userDefaultsDomain = v5->_userDefaultsDomain;
    v5->_userDefaultsDomain = v6;

    v8 = objc_alloc_init(MEMORY[0x277D2BA60]);
    manager = v5->_manager;
    v5->_manager = v8;
  }

  return v5;
}

- (void)synchronizeKeys:(id)keys
{
  v16 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  _HKInitializeLogging();
  v5 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    userDefaultsDomain = self->_userDefaultsDomain;
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = userDefaultsDomain;
    v14 = 2114;
    v15 = keysCopy;
    v8 = v6;
    _os_log_impl(&dword_262078000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting NanoSync to sync %{public}@ user defaults domain for keys: %{public}@", &v10, 0x20u);
  }

  [(NPSManager *)self->_manager synchronizeUserDefaultsDomain:self->_userDefaultsDomain keys:keysCopy];
  v9 = *MEMORY[0x277D85DE8];
}

@end