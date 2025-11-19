@interface PLCGPathCache
+ (id)sharedPathCache;
- (CGPath)pathForKey:(CGRect)a3;
- (PLCGPathCache)init;
- (void)dealloc;
- (void)setPath:(CGPath *)a3 forKey:(CGRect)a4;
@end

@implementation PLCGPathCache

- (CGPath)pathForKey:(CGRect)a3
{
  pathCache = self->_pathCache;
  v4 = [MEMORY[0x277CCAE60] valueWithCGRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return CFDictionaryGetValue(pathCache, v4);
}

- (void)setPath:(CGPath *)a3 forKey:(CGRect)a4
{
  pathCache = self->_pathCache;
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];

  CFDictionarySetValue(pathCache, v6, a3);
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