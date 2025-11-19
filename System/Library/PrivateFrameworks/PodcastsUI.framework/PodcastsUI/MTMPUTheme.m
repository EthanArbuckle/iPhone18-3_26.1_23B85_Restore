@interface MTMPUTheme
+ (id)_themeAssetCache;
+ (id)cachedObjectWithKey:(id)a3 block:(id)a4;
@end

@implementation MTMPUTheme

+ (id)cachedObjectWithKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [a1 _themeAssetCache];
    v9 = [v8 objectForKey:v6];

    if (v7)
    {
      if (!v9)
      {
        v9 = v7[2](v7);
        if (v9)
        {
          v10 = [a1 _themeAssetCache];
          [v10 setObject:v9 forKey:v6];
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_themeAssetCache
{
  if (_themeAssetCache___onceToken != -1)
  {
    +[MTMPUTheme _themeAssetCache];
  }

  v3 = _themeAssetCache___themeAssetCache;

  return v3;
}

uint64_t __30__MTMPUTheme__themeAssetCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _themeAssetCache___themeAssetCache;
  _themeAssetCache___themeAssetCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end