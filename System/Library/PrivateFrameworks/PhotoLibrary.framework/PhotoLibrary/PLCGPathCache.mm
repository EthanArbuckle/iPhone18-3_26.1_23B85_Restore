@interface PLCGPathCache
+ (id)sharedPathCache;
- (CGPath)pathForKey:(CGRect)key;
- (PLCGPathCache)init;
- (void)dealloc;
- (void)setPath:(CGPath *)path forKey:(CGRect)key;
@end

@implementation PLCGPathCache

- (CGPath)pathForKey:(CGRect)key
{
  pathCache = self->_pathCache;
  v4 = [MEMORY[0x277CCAE60] valueWithCGRect:{key.origin.x, key.origin.y, key.size.width, key.size.height}];

  return CFDictionaryGetValue(pathCache, v4);
}

- (void)setPath:(CGPath *)path forKey:(CGRect)key
{
  pathCache = self->_pathCache;
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{key.origin.x, key.origin.y, key.size.width, key.size.height}];

  CFDictionarySetValue(pathCache, v6, path);
}

- (void)dealloc
{
  CFRelease(self->_pathCache);
  self->_pathCache = 0;
  v3.receiver = self;
  v3.super_class = PLCGPathCache;
  [(PLCGPathCache *)&v3 dealloc];
}

- (PLCGPathCache)init
{
  v4.receiver = self;
  v4.super_class = PLCGPathCache;
  v2 = [(PLCGPathCache *)&v4 init];
  if (v2)
  {
    v2->_pathCache = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  return v2;
}

+ (id)sharedPathCache
{
  result = sharedPathCache_sharedPathCache;
  if (!sharedPathCache_sharedPathCache)
  {
    result = objc_alloc_init(PLCGPathCache);
    sharedPathCache_sharedPathCache = result;
  }

  return result;
}

@end