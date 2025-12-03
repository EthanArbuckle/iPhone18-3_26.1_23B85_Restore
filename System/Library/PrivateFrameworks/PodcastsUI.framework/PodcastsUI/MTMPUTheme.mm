@interface MTMPUTheme
+ (id)_themeAssetCache;
+ (id)cachedObjectWithKey:(id)key block:(id)block;
@end

@implementation MTMPUTheme

+ (id)cachedObjectWithKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  if (keyCopy)
  {
    _themeAssetCache = [self _themeAssetCache];
    v9 = [_themeAssetCache objectForKey:keyCopy];

    if (blockCopy)
    {
      if (!v9)
      {
        v9 = blockCopy[2](blockCopy);
        if (v9)
        {
          _themeAssetCache2 = [self _themeAssetCache];
          [_themeAssetCache2 setObject:v9 forKey:keyCopy];
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