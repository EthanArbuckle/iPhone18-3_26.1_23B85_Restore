@interface PUSlideshowContextRegistry
- (BOOL)addDisplayContext:(id)context;
- (BOOL)removeDisplayContext:(id)context;
- (NSArray)displayContexts;
- (PUSlideshowContextRegistry)init;
- (PUSlideshowDisplayContext)currentDisplayContext;
@end

@implementation PUSlideshowContextRegistry

- (NSArray)displayContexts
{
  _displayContexts = [(PUSlideshowContextRegistry *)self _displayContexts];
  v3 = [_displayContexts copy];

  return v3;
}

- (PUSlideshowDisplayContext)currentDisplayContext
{
  _displayContexts = [(PUSlideshowContextRegistry *)self _displayContexts];
  lastObject = [_displayContexts lastObject];

  return lastObject;
}

- (BOOL)removeDisplayContext:(id)context
{
  contextCopy = context;
  displayContexts = [(PUSlideshowContextRegistry *)self displayContexts];
  v6 = [displayContexts containsObject:contextCopy];

  if (v6)
  {
    _displayContexts = [(PUSlideshowContextRegistry *)self _displayContexts];
    [_displayContexts removeObject:contextCopy];
  }

  return v6;
}

- (BOOL)addDisplayContext:(id)context
{
  contextCopy = context;
  _displayContexts = [(PUSlideshowContextRegistry *)self _displayContexts];
  v6 = [_displayContexts containsObject:contextCopy];

  if ((v6 & 1) == 0)
  {
    _displayContexts2 = [(PUSlideshowContextRegistry *)self _displayContexts];
    [_displayContexts2 addObject:contextCopy];
  }

  return v6 ^ 1;
}

- (PUSlideshowContextRegistry)init
{
  v5.receiver = self;
  v5.super_class = PUSlideshowContextRegistry;
  v2 = [(PUSlideshowContextRegistry *)&v5 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(PUSlideshowContextRegistry *)v2 _setDisplayContexts:array];
  }

  return v2;
}

@end