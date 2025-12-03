@interface UIKBGraphCache
+ (id)graphCacheForScreen:(id)screen;
- (id)_initWithScreen:(id)screen options:(id)options;
@end

@implementation UIKBGraphCache

- (id)_initWithScreen:(id)screen options:(id)options
{
  screenCopy = screen;
  v11.receiver = self;
  v11.super_class = UIKBGraphCache;
  v7 = [(UIKBGraphCache *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:30];
    graphCache = v7->_graphCache;
    v7->_graphCache = v8;

    objc_storeStrong(&v7->_screen, screen);
  }

  return v7;
}

+ (id)graphCacheForScreen:(id)screen
{
  screenCopy = screen;
  v4 = [_UIObjectPerScreen objectOfClass:objc_opt_class() forScreen:screenCopy withOptions:0 createIfNecessary:1];

  return v4;
}

@end