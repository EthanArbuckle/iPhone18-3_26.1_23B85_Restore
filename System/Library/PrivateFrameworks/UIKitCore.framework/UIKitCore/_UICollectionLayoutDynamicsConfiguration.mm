@interface _UICollectionLayoutDynamicsConfiguration
- (CGRect)currentVisibleBounds;
- (CGRect)previousVisibleBounds;
- (_UICollectionLayoutDynamicsConfiguration)init;
- (id)behaviorsForItem:(id)a3;
- (void)_reset;
- (void)_setBehaviors:(id)a3 forItem:(id)a4;
- (void)setBehaviors:(id)a3 forItem:(id)a4;
@end

@implementation _UICollectionLayoutDynamicsConfiguration

- (_UICollectionLayoutDynamicsConfiguration)init
{
  v8.receiver = self;
  v8.super_class = _UICollectionLayoutDynamicsConfiguration;
  v2 = [(_UICollectionLayoutDynamicsConfiguration *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    behaviorDict = v2->_behaviorDict;
    v2->_behaviorDict = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dirtyItems = v2->_dirtyItems;
    v2->_dirtyItems = v5;
  }

  return v2;
}

- (id)behaviorsForItem:(id)a3
{
  if (a3)
  {
    v5 = *(a3 + 2);
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1213 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    v5 = 0;
  }

  v6 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v5];
  v7 = [(_UICollectionLayoutDynamicsConfiguration *)self behaviorDict];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (void)setBehaviors:(id)a3 forItem:(id)a4
{
  if (!a4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1221 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  [(NSMutableArray *)self->_dirtyItems addObject:a4];

  [(_UICollectionLayoutDynamicsConfiguration *)self _setBehaviors:a3 forItem:a4];
}

- (void)_setBehaviors:(id)a3 forItem:(id)a4
{
  if (a4)
  {
    v6 = *(a4 + 2);
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1237 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    v6 = 0;
  }

  v10 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v6];
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  v7 = [(_UICollectionLayoutDynamicsConfiguration *)self behaviorDict];
  [v7 setObject:a3 forKeyedSubscript:v10];
}

- (void)_reset
{
  [(NSMutableArray *)self->_dirtyItems removeAllObjects];
  v3 = [(_UICollectionLayoutDynamicsConfiguration *)self behaviorDict];
  [v3 removeAllObjects];

  items = self->_items;
  self->_items = MEMORY[0x1E695E0F0];
}

- (CGRect)previousVisibleBounds
{
  x = self->_previousVisibleBounds.origin.x;
  y = self->_previousVisibleBounds.origin.y;
  width = self->_previousVisibleBounds.size.width;
  height = self->_previousVisibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentVisibleBounds
{
  x = self->_currentVisibleBounds.origin.x;
  y = self->_currentVisibleBounds.origin.y;
  width = self->_currentVisibleBounds.size.width;
  height = self->_currentVisibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end