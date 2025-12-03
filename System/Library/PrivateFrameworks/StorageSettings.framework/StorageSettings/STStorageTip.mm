@interface STStorageTip
- (STStorageTip)init;
- (STStorageTipUIDelegate)uiDelegate;
- (id)propertyForKey:(id)key;
- (int64_t)size;
- (void)_reload:(id)_reload;
- (void)reload;
- (void)setProperty:(id)property forKey:(id)key;
- (void)setSize:(int64_t)size;
@end

@implementation STStorageTip

- (STStorageTip)init
{
  v7.receiver = self;
  v7.super_class = STStorageTip;
  v2 = [(STStorageTip *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_specLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_282D51E38 target:v2 set:0 get:0 detail:0 cell:-1 edit:0];
    infoSpecifier = v3->_infoSpecifier;
    v3->_infoSpecifier = v4;

    [(PSSpecifier *)v3->_infoSpecifier setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  }

  return v3;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_specLock);
  v5 = [(PSSpecifier *)self->_specifier propertyForKey:keyCopy];

  os_unfair_lock_unlock(&self->_specLock);

  return v5;
}

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  os_unfair_lock_lock(&self->_specLock);
  specifier = self->_specifier;
  if (propertyCopy)
  {
    [(PSSpecifier *)specifier setProperty:propertyCopy forKey:keyCopy];
    [(PSSpecifier *)self->_infoSpecifier setProperty:propertyCopy forKey:keyCopy];
  }

  else
  {
    [(PSSpecifier *)specifier removePropertyForKey:keyCopy];
    [(PSSpecifier *)self->_infoSpecifier removePropertyForKey:keyCopy];
  }

  os_unfair_lock_unlock(&self->_specLock);
  [(STStorageTip *)self reload];
}

- (void)setSize:(int64_t)size
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:size];
  [(STStorageTip *)self setProperty:v4 forKey:@"stSize"];
}

- (int64_t)size
{
  v2 = [(STStorageTip *)self propertyForKey:@"stSize"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)_reload:(id)_reload
{
  os_unfair_lock_lock(&self->_specLock);
  specifier = [(STStorageTip *)self specifier];
  infoSpecifier = [(STStorageTip *)self infoSpecifier];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_uiDelegate);
    [v7 tipDidUpdate:self];
  }

  v8 = *MEMORY[0x277D40148];
  v9 = [specifier propertyForKey:*MEMORY[0x277D40148]];
  v10 = v9;
  if (v9)
  {
    [v9 refreshCellContentsWithSpecifier:specifier];
  }

  v11 = [infoSpecifier propertyForKey:v8];
  v12 = v11;
  if (v11)
  {
    [v11 refreshCellContentsWithSpecifier:infoSpecifier];
  }

  os_unfair_lock_unlock(&self->_specLock);
}

- (void)reload
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__STStorageTip_reload__block_invoke;
  block[3] = &unk_2782E2818;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __22__STStorageTip_reload__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__reload_ object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__reload_ withObject:0 afterDelay:0.03];
}

- (STStorageTipUIDelegate)uiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);

  return WeakRetained;
}

@end