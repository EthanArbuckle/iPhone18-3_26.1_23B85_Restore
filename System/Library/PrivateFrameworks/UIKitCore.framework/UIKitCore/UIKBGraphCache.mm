@interface UIKBGraphCache
+ (id)graphCacheForScreen:(id)a3;
- (id)_initWithScreen:(id)a3 options:(id)a4;
@end

@implementation UIKBGraphCache

- (id)_initWithScreen:(id)a3 options:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = UIKBGraphCache;
  v7 = [(UIKBGraphCache *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:30];
    graphCache = v7->_graphCache;
    v7->_graphCache = v8;

    objc_storeStrong(&v7->_screen, a3);
  }

  return v7;
}

+ (id)graphCacheForScreen:(id)a3
{
  v3 = a3;
  v4 = [_UIObjectPerScreen objectOfClass:objc_opt_class() forScreen:v3 withOptions:0 createIfNecessary:1];

  return v4;
}

@end