@interface PUSlideshowContextRegistry
- (BOOL)addDisplayContext:(id)a3;
- (BOOL)removeDisplayContext:(id)a3;
- (NSArray)displayContexts;
- (PUSlideshowContextRegistry)init;
- (PUSlideshowDisplayContext)currentDisplayContext;
@end

@implementation PUSlideshowContextRegistry

- (NSArray)displayContexts
{
  v2 = [(PUSlideshowContextRegistry *)self _displayContexts];
  v3 = [v2 copy];

  return v3;
}

- (PUSlideshowDisplayContext)currentDisplayContext
{
  v2 = [(PUSlideshowContextRegistry *)self _displayContexts];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)removeDisplayContext:(id)a3
{
  v4 = a3;
  v5 = [(PUSlideshowContextRegistry *)self displayContexts];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(PUSlideshowContextRegistry *)self _displayContexts];
    [v7 removeObject:v4];
  }

  return v6;
}

- (BOOL)addDisplayContext:(id)a3
{
  v4 = a3;
  v5 = [(PUSlideshowContextRegistry *)self _displayContexts];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(PUSlideshowContextRegistry *)self _displayContexts];
    [v7 addObject:v4];
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
    v3 = [MEMORY[0x1E695DF70] array];
    [(PUSlideshowContextRegistry *)v2 _setDisplayContexts:v3];
  }

  return v2;
}

@end