@interface SRUIFPreferences
- (SRUIFPreferences)initWithDefaultsAtURL:(id)l;
- (SRUIFPreferences)initWithDefaultsResource:(id)resource withExtension:(id)extension inBundle:(id)bundle;
- (SRUIFPreferences)initWithSuiteName:(id)name;
- (SRUIFPreferencesDelegate)delegate;
- (void)_mutateValueForKey:(id)key block:(id)block;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SRUIFPreferences

- (SRUIFPreferencesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SRUIFPreferences)initWithSuiteName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SRUIFPreferences;
  v5 = [(SRUIFPreferences *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:nameCopy];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = v6;
  }

  return v5;
}

- (SRUIFPreferences)initWithDefaultsAtURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v18.receiver = self;
  v18.super_class = SRUIFPreferences;
  v5 = [(SRUIFPreferences *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEBD0]);
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = v6;

    if (lCopy)
    {
      v17 = 0;
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:0 error:&v17];
      v9 = v17;
      if (v8)
      {
        v16 = 0;
        v10 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v16];
        v11 = v16;

        if (v10)
        {
          [(NSUserDefaults *)v5->_userDefaults registerDefaults:v10];
        }

        else
        {
          v13 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v20 = "[SRUIFPreferences initWithDefaultsAtURL:]";
            v21 = 2114;
            v22 = v5;
            v23 = 2114;
            v24 = lCopy;
            v25 = 2114;
            v26 = v11;
            _os_log_error_impl(&dword_26951F000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@ unable to parse defaults property list at %{public}@: %{public}@", buf, 0x2Au);
          }
        }

        v9 = v11;
      }

      else
      {
        v12 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v20 = "[SRUIFPreferences initWithDefaultsAtURL:]";
          v21 = 2114;
          v22 = v5;
          v23 = 2114;
          v24 = lCopy;
          v25 = 2114;
          v26 = v9;
          _os_log_error_impl(&dword_26951F000, v12, OS_LOG_TYPE_ERROR, "%s %{public}@ unable to read defaults from %{public}@: %{public}@", buf, 0x2Au);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (SRUIFPreferences)initWithDefaultsResource:(id)resource withExtension:(id)extension inBundle:(id)bundle
{
  v6 = [bundle URLForResource:resource withExtension:extension];
  v7 = [(SRUIFPreferences *)self initWithDefaultsAtURL:v6];

  return v7;
}

- (void)_mutateValueForKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    delegate = [(SRUIFPreferences *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(SRUIFPreferences *)self delegate];
      [delegate2 preferences:self didChangeValueForKey:keyCopy];
    }
  }
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SRUIFPreferences_setInteger_forKey___block_invoke;
  v8[3] = &unk_279C617D0;
  objc_copyWeak(v10, &location);
  v10[1] = integer;
  v7 = keyCopy;
  v9 = v7;
  [(SRUIFPreferences *)self _mutateValueForKey:v7 block:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __38__SRUIFPreferences_setInteger_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[1] setInteger:*(a1 + 48) forKey:*(a1 + 32)];
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SRUIFPreferences_setDouble_forKey___block_invoke;
  v8[3] = &unk_279C617D0;
  objc_copyWeak(v10, &location);
  v10[1] = *&double;
  v7 = keyCopy;
  v9 = v7;
  [(SRUIFPreferences *)self _mutateValueForKey:v7 block:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __37__SRUIFPreferences_setDouble_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[1] setDouble:*(a1 + 32) forKey:*(a1 + 48)];
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SRUIFPreferences_setBool_forKey___block_invoke;
  v8[3] = &unk_279C617F8;
  objc_copyWeak(&v10, &location);
  boolCopy = bool;
  v7 = keyCopy;
  v9 = v7;
  [(SRUIFPreferences *)self _mutateValueForKey:v7 block:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __35__SRUIFPreferences_setBool_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[1] setBool:*(a1 + 48) forKey:*(a1 + 32)];
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__SRUIFPreferences_setObject_forKey___block_invoke;
  v10[3] = &unk_279C61820;
  objc_copyWeak(&v13, &location);
  v8 = objectCopy;
  v11 = v8;
  v9 = keyCopy;
  v12 = v9;
  [(SRUIFPreferences *)self _mutateValueForKey:v9 block:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __37__SRUIFPreferences_setObject_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[1] setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

@end