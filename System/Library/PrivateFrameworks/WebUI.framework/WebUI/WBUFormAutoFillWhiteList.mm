@interface WBUFormAutoFillWhiteList
+ (id)sharedAutoFillWhiteList;
- (BOOL)allowsURL:(id)a3;
- (WBUFormAutoFillWhiteList)init;
- (void)dealloc;
@end

@implementation WBUFormAutoFillWhiteList

+ (id)sharedAutoFillWhiteList
{
  if (sharedAutoFillWhiteList_onceToken != -1)
  {
    +[WBUFormAutoFillWhiteList sharedAutoFillWhiteList];
  }

  v3 = sharedAutoFillWhiteList_sharedWhiteList;

  return v3;
}

uint64_t __51__WBUFormAutoFillWhiteList_sharedAutoFillWhiteList__block_invoke()
{
  sharedAutoFillWhiteList_sharedWhiteList = objc_alloc_init(WBUFormAutoFillWhiteList);

  return MEMORY[0x2821F96F8]();
}

- (WBUFormAutoFillWhiteList)init
{
  v8.receiver = self;
  v8.super_class = WBUFormAutoFillWhiteList;
  v2 = [(WBUFormAutoFillWhiteList *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:10];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__whiteListSettingsChanged_ name:*MEMORY[0x277D25CA0] object:0];

    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBUFormAutoFillWhiteList;
  [(WBUFormAutoFillWhiteList *)&v4 dealloc];
}

- (BOOL)allowsURL:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_cache objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v8 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v8 isSafariPasswordAutoFillAllowedForURL:v4];

    cache = self->_cache;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    [(NSCache *)cache setObject:v10 forKey:v4];
  }

  return v7;
}

@end