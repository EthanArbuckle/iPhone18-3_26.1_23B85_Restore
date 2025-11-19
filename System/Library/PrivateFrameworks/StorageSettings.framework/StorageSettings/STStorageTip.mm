@interface STStorageTip
- (STStorageTip)init;
- (STStorageTipUIDelegate)uiDelegate;
- (id)propertyForKey:(id)a3;
- (int64_t)size;
- (void)_reload:(id)a3;
- (void)reload;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)setSize:(int64_t)a3;
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

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_specLock);
  v5 = [(PSSpecifier *)self->_specifier propertyForKey:v4];

  os_unfair_lock_unlock(&self->_specLock);

  return v5;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_specLock);
  specifier = self->_specifier;
  if (v8)
  {
    [(PSSpecifier *)specifier setProperty:v8 forKey:v6];
    [(PSSpecifier *)self->_infoSpecifier setProperty:v8 forKey:v6];
  }

  else
  {
    [(PSSpecifier *)specifier removePropertyForKey:v6];
    [(PSSpecifier *)self->_infoSpecifier removePropertyForKey:v6];
  }

  os_unfair_lock_unlock(&self->_specLock);
  [(STStorageTip *)self reload];
}

- (void)setSize:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(STStorageTip *)self setProperty:v4 forKey:@"stSize"];
}

- (int64_t)size
{
  v2 = [(STStorageTip *)self propertyForKey:@"stSize"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)_reload:(id)a3
{
  os_unfair_lock_lock(&self->_specLock);
  v13 = [(STStorageTip *)self specifier];
  v4 = [(STStorageTip *)self infoSpecifier];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_uiDelegate);
    [v7 tipDidUpdate:self];
  }

  v8 = *MEMORY[0x277D40148];
  v9 = [v13 propertyForKey:*MEMORY[0x277D40148]];
  v10 = v9;
  if (v9)
  {
    [v9 refreshCellContentsWithSpecifier:v13];
  }

  v11 = [v4 propertyForKey:v8];
  v12 = v11;
  if (v11)
  {
    [v11 refreshCellContentsWithSpecifier:v4];
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