@interface UICollisionBehavior
- (NSArray)items;
- (UIBezierPath)boundaryWithIdentifier:(id)identifier;
- (UICollisionBehavior)initWithItems:(NSArray *)items;
- (id)collisionDelegate;
- (id)description;
- (void)_addCollisionItem:(id)item;
- (void)_applySettings;
- (void)_associate;
- (void)_didBeginContact:(id)contact;
- (void)_didEndContact:(id)contact;
- (void)_dissociate;
- (void)_reevaluate:(unint64_t)_reevaluate;
- (void)_registerBodyForIdentifier:(id)identifier path:(id)path;
- (void)_registerBoundaryForIdentifier:(id)identifier path:(id)path;
- (void)_removeExplicitBoundaryBodies;
- (void)_removeExplicitBoundaryPaths;
- (void)_removeImplicitBoundaries;
- (void)_setCollisions:(BOOL)collisions forBody:(id)body isEdge:(BOOL)edge;
- (void)_setTranslatesReferenceItemBounds:(BOOL)bounds intoBoundaryWithInsets:(UIEdgeInsets)insets;
- (void)_setupExplicitBoundaries;
- (void)_setupImplicitBoundaries;
- (void)addBoundaryWithIdentifier:(id)identifier forPath:(UIBezierPath *)bezierPath;
- (void)addBoundaryWithIdentifier:(id)identifier fromPoint:(CGPoint)p1 toPoint:(CGPoint)p2;
- (void)addItem:(id)item;
- (void)removeAllBoundaries;
- (void)removeBoundaryWithIdentifier:(id)identifier;
- (void)removeItem:(id)item;
- (void)setCollisionDelegate:(id)collisionDelegate;
- (void)setCollisionMode:(UICollisionBehaviorMode)collisionMode;
@end

@implementation UICollisionBehavior

- (UICollisionBehavior)initWithItems:(NSArray *)items
{
  v4 = items;
  v8.receiver = self;
  v8.super_class = UICollisionBehavior;
  v5 = [(UIDynamicBehavior *)&v8 init];
  if (v5)
  {
    v6 = [(NSArray *)v4 mutableCopy];
    [(UIDynamicBehavior *)v5 _setItems:v6];

    v5->_collisionMode = -1;
  }

  return v5;
}

- (NSArray)items
{
  v2 = MEMORY[0x1E695DEC8];
  _items = [(UIDynamicBehavior *)self _items];
  v4 = [v2 arrayWithArray:_items];

  return v4;
}

- (void)_addCollisionItem:(id)item
{
  itemCopy = item;
  _context = [(UIDynamicBehavior *)self _context];
  v6 = [_context _registerBodyForItem:itemCopy];

  [(UICollisionBehavior *)self _setCollisions:1 forBody:v6 isEdge:0];
}

- (void)addItem:(id)item
{
  v7 = item;
  _items = [(UIDynamicBehavior *)self _items];
  v5 = [_items containsObject:v7];

  if ((v5 & 1) == 0)
  {
    [(UIDynamicBehavior *)self _addItem:v7];
    _context = [(UIDynamicBehavior *)self _context];

    if (_context)
    {
      [(UICollisionBehavior *)self _addCollisionItem:v7];
    }
  }
}

- (void)removeItem:(id)item
{
  v4 = item;
  _items = [(UIDynamicBehavior *)self _items];
  v6 = [_items containsObject:v4];

  if (v6)
  {
    _context = [(UIDynamicBehavior *)self _context];

    if (_context)
    {
      _context2 = [(UIDynamicBehavior *)self _context];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __34__UICollisionBehavior_removeItem___block_invoke;
      v9[3] = &unk_1E7106990;
      v9[4] = self;
      [_context2 _unregisterBodyForItem:v4 action:v9];
    }

    [(UIDynamicBehavior *)self _removeItem:v4];
  }
}

- (void)_applySettings
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _items = [(UIDynamicBehavior *)self _items];
  v4 = [_items countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_items);
        }

        [(UICollisionBehavior *)self _addCollisionItem:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [_items countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setCollisionMode:(UICollisionBehaviorMode)collisionMode
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_collisionMode != collisionMode)
  {
    self->_collisionMode = collisionMode;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    _items = [(UIDynamicBehavior *)self _items];
    v5 = [_items countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(_items);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          _context = [(UIDynamicBehavior *)self _context];
          v11 = [_context _bodyForItem:v9];

          [(UICollisionBehavior *)self _setCollisions:1 forBody:v11 isEdge:0];
        }

        v6 = [_items countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    [(UICollisionBehavior *)self _setCollisions:1 forBody:self->_implicitBoundsBody isEdge:1];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_boundaryBodies;
    v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(NSMutableDictionary *)self->_boundaryBodies objectForKey:*(*(&v18 + 1) + 8 * j), v18];
          [(UICollisionBehavior *)self _setCollisions:0 forBody:v17 isEdge:0];
        }

        v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }
}

- (void)_setCollisions:(BOOL)collisions forBody:(id)body isEdge:(BOOL)edge
{
  if (!body)
  {
    return;
  }

  collisionsCopy = collisions;
  v7 = 4;
  if (edge)
  {
    v7 = 3;
  }

  v8 = *(&self->super.super.isa + OBJC_IVAR___UICollisionBehavior__collisionMode[v7]);
  bodyCopy = body;
  collisionMode = [(UICollisionBehavior *)self collisionMode];
  if (collisionMode == 1)
  {
    v10 = 128;
  }

  else
  {
    if (collisionMode != 2)
    {
      v11 = self->_groupBID | self->_groupVID;
      goto LABEL_11;
    }

    v10 = 132;
  }

  v11 = *(&self->super.super.isa + v10);
LABEL_11:
  v12 = [bodyCopy collisionBitMask] & ~(self->_groupBID | self->_groupVID);
  if (collisionsCopy)
  {
    v12 = v12 | v11;
    [bodyCopy setCollisionBitMask:v12];
    v13 = [bodyCopy categoryBitMask] & ~(self->_groupBID | self->_groupVID) | v8;
  }

  else
  {
    [bodyCopy setCollisionBitMask:v12];
    v13 = [bodyCopy categoryBitMask] & ~(self->_groupBID | self->_groupVID);
  }

  [bodyCopy setCategoryBitMask:v13];
  [bodyCopy setContactTestBitMask:v12];
  [(UIDynamicBehavior *)self _changedParameterForBody:bodyCopy];
}

- (void)_didBeginContact:(id)contact
{
  contactCopy = contact;
  bodyA = [contactCopy bodyA];
  bodyB = [contactCopy bodyB];
  representedObject = [(PKExtendedPhysicsBody *)bodyA representedObject];
  representedObject2 = [(PKExtendedPhysicsBody *)bodyB representedObject];
  _items = [(UIDynamicBehavior *)self _items];
  v10 = [_items containsObject:representedObject];

  if ((v10 & 1) == 0)
  {

    representedObject = 0;
  }

  _items2 = [(UIDynamicBehavior *)self _items];
  v12 = [_items2 containsObject:representedObject2];

  if ((v12 & 1) == 0)
  {

    representedObject2 = 0;
  }

  if (representedObject | representedObject2)
  {
    if (representedObject && representedObject2 && (*&self->_collisionBehaviorFlags & 1) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collisionDelegate);
      [contactCopy contactPoint];
      [WeakRetained collisionBehavior:self beganContactForItem:representedObject withItem:representedObject2 atPoint:?];
    }

    else
    {
      implicitBoundsBody = self->_implicitBoundsBody;
      if (bodyA == implicitBoundsBody)
      {
        if ((*&self->_collisionBehaviorFlags & 4) == 0 || !representedObject2)
        {
          goto LABEL_22;
        }

        WeakRetained = objc_loadWeakRetained(&self->_collisionDelegate);
        [contactCopy contactPoint];
        v16 = WeakRetained;
        selfCopy3 = self;
        v18 = representedObject2;
      }

      else
      {
        if (bodyB != implicitBoundsBody)
        {
          if ((*&self->_collisionBehaviorFlags & 4) != 0)
          {
            boundaryBodies = self->_boundaryBodies;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __40__UICollisionBehavior__didBeginContact___block_invoke;
            v19[3] = &unk_1E71069B8;
            v20 = bodyA;
            selfCopy2 = self;
            v22 = representedObject2;
            v23 = contactCopy;
            v24 = bodyB;
            v25 = representedObject;
            [(NSMutableDictionary *)boundaryBodies enumerateKeysAndObjectsUsingBlock:v19];
          }

          goto LABEL_22;
        }

        if (!representedObject || (*&self->_collisionBehaviorFlags & 4) == 0)
        {
          goto LABEL_22;
        }

        WeakRetained = objc_loadWeakRetained(&self->_collisionDelegate);
        [contactCopy contactPoint];
        v16 = WeakRetained;
        selfCopy3 = self;
        v18 = representedObject;
      }

      [v16 collisionBehavior:selfCopy3 beganContactForItem:v18 withBoundaryIdentifier:0 atPoint:?];
    }
  }

LABEL_22:
}

void __40__UICollisionBehavior__didBeginContact___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = v7;
  if (*(a1 + 32) == v7)
  {
    v9 = 48;
  }

  else
  {
    if (*(a1 + 64) != v7)
    {
      goto LABEL_6;
    }

    v9 = 72;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 120));
  v11 = *(a1 + 40);
  v12 = *(a1 + v9);
  [*(a1 + 56) contactPoint];
  [WeakRetained collisionBehavior:v11 beganContactForItem:v12 withBoundaryIdentifier:v13 atPoint:?];

  *a4 = 1;
LABEL_6:
}

- (id)collisionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collisionDelegate);

  return WeakRetained;
}

- (void)setCollisionDelegate:(id)collisionDelegate
{
  v4 = collisionDelegate;
  objc_storeWeak(&self->_collisionDelegate, v4);
  *&self->_collisionBehaviorFlags = *&self->_collisionBehaviorFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_collisionBehaviorFlags = *&self->_collisionBehaviorFlags & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&self->_collisionBehaviorFlags = *&self->_collisionBehaviorFlags & 0xFB | v6;
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *&self->_collisionBehaviorFlags = *&self->_collisionBehaviorFlags & 0xF7 | v8;
}

- (void)_didEndContact:(id)contact
{
  contactCopy = contact;
  bodyA = [contactCopy bodyA];
  bodyB = [contactCopy bodyB];

  representedObject = [(PKExtendedPhysicsBody *)bodyA representedObject];
  representedObject2 = [(PKExtendedPhysicsBody *)bodyB representedObject];
  _items = [(UIDynamicBehavior *)self _items];
  v10 = [_items containsObject:representedObject];

  if ((v10 & 1) == 0)
  {

    representedObject = 0;
  }

  _items2 = [(UIDynamicBehavior *)self _items];
  v12 = [_items2 containsObject:representedObject2];

  if ((v12 & 1) == 0)
  {

    representedObject2 = 0;
  }

  if (!(representedObject | representedObject2))
  {
    goto LABEL_21;
  }

  if (representedObject && representedObject2)
  {
    if ((*&self->_collisionBehaviorFlags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_collisionDelegate);
      [WeakRetained collisionBehavior:self endedContactForItem:representedObject withItem:representedObject2];
LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  implicitBoundsBody = self->_implicitBoundsBody;
  if (bodyA == implicitBoundsBody)
  {
    if ((*&self->_collisionBehaviorFlags & 8) == 0 || !representedObject2)
    {
      goto LABEL_21;
    }

    v16 = objc_loadWeakRetained(&self->_collisionDelegate);
    WeakRetained = v16;
    selfCopy3 = self;
    v18 = representedObject2;
LABEL_19:
    [v16 collisionBehavior:selfCopy3 endedContactForItem:v18 withBoundaryIdentifier:0];
    goto LABEL_20;
  }

  if (bodyB != implicitBoundsBody)
  {
    boundaryBodies = self->_boundaryBodies;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __38__UICollisionBehavior__didEndContact___block_invoke;
    v19[3] = &unk_1E71069E0;
    v20 = bodyA;
    selfCopy2 = self;
    v22 = representedObject2;
    v23 = bodyB;
    v24 = representedObject;
    [(NSMutableDictionary *)boundaryBodies enumerateKeysAndObjectsUsingBlock:v19];

    goto LABEL_21;
  }

  if (representedObject && (*&self->_collisionBehaviorFlags & 8) != 0)
  {
    v16 = objc_loadWeakRetained(&self->_collisionDelegate);
    WeakRetained = v16;
    selfCopy3 = self;
    v18 = representedObject;
    goto LABEL_19;
  }

LABEL_21:
}

void __38__UICollisionBehavior__didEndContact___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = v7;
  if (a1[4] == v7)
  {
    v9 = a1[5];
    if ((*(v9 + 136) & 8) != 0)
    {
      v10 = 6;
      goto LABEL_7;
    }
  }

  else
  {
    if (a1[7] != v7)
    {
      goto LABEL_9;
    }

    v9 = a1[5];
    if ((*(v9 + 136) & 8) != 0)
    {
      v10 = 8;
LABEL_7:
      WeakRetained = objc_loadWeakRetained((v9 + 120));
      [WeakRetained collisionBehavior:a1[5] endedContactForItem:a1[v10] withBoundaryIdentifier:v12];
    }
  }

  *a4 = 1;
LABEL_9:
}

- (void)_reevaluate:(unint64_t)_reevaluate
{
  if (_reevaluate == 1)
  {
    [(UICollisionBehavior *)self _setupImplicitBoundaries];
  }
}

- (void)_associate
{
  _context = [(UIDynamicBehavior *)self _context];
  _registerCollisionGroup = [_context _registerCollisionGroup];

  if (self->_usesImplicitBounds)
  {
    _context2 = [(UIDynamicBehavior *)self _context];
    [_context2 _registerImplicitBounds];
  }

  self->_groupVID = 1 << (2 * _registerCollisionGroup);
  self->_groupBID = 2 << (2 * _registerCollisionGroup);
  [(UICollisionBehavior *)self _applySettings];
  [(UICollisionBehavior *)self _setupImplicitBoundaries];

  [(UICollisionBehavior *)self _setupExplicitBoundaries];
}

- (void)_dissociate
{
  v18 = *MEMORY[0x1E69E9840];
  _context = [(UIDynamicBehavior *)self _context];
  [_context _unregisterCollisionGroup];

  if (self->_usesImplicitBounds)
  {
    _context2 = [(UIDynamicBehavior *)self _context];
    [_context2 _unregisterImplicitBounds];
  }

  [(UICollisionBehavior *)self _removeImplicitBoundaries];
  [(UICollisionBehavior *)self _removeExplicitBoundaryBodies];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _items = [(UIDynamicBehavior *)self _items];
  v6 = [_items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(_items);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        _context3 = [(UIDynamicBehavior *)self _context];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __34__UICollisionBehavior__dissociate__block_invoke;
        v12[3] = &unk_1E7106990;
        v12[4] = self;
        [_context3 _unregisterBodyForItem:v10 action:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [_items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_setTranslatesReferenceItemBounds:(BOOL)bounds intoBoundaryWithInsets:(UIEdgeInsets)insets
{
  boundsCopy = bounds;
  if (bounds)
  {
    self->_usesImplicitBounds = 1;
    self->_implicitBoundsInsets = insets;
  }

  else
  {
    self->_usesImplicitBounds = 0;
    *&self->_implicitBoundsInsets.top = 0u;
    *&self->_implicitBoundsInsets.bottom = 0u;
  }

  _context = [(UIDynamicBehavior *)self _context];

  if (_context)
  {
    _context2 = [(UIDynamicBehavior *)self _context];
    v8 = _context2;
    if (boundsCopy)
    {
      [_context2 _registerImplicitBounds];
    }

    else
    {
      [_context2 _unregisterImplicitBounds];
    }

    [(UICollisionBehavior *)self _setupImplicitBoundaries];
  }
}

- (void)_removeImplicitBoundaries
{
  if (self->_implicitBoundsBody)
  {
    _context = [(UIDynamicBehavior *)self _context];
    _world = [_context _world];
    [_world removeBody:self->_implicitBoundsBody];

    implicitBoundsBody = self->_implicitBoundsBody;
    self->_implicitBoundsBody = 0;
  }
}

- (void)_setupImplicitBoundaries
{
  _context = [(UIDynamicBehavior *)self _context];
  [_context _referenceSystemBounds];
  v4 = CGRectEqualToRect(v25, *MEMORY[0x1E695F050]);

  if (!v4)
  {
    [(UICollisionBehavior *)self _removeImplicitBoundaries];
    if (self->_usesImplicitBounds)
    {
      _context2 = [(UIDynamicBehavior *)self _context];
      [_context2 _referenceSystemBounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      top = self->_implicitBoundsInsets.top;
      left = self->_implicitBoundsInsets.left;
      v16 = v9 + top;
      v17 = v11 - (left + self->_implicitBoundsInsets.right);
      v18 = v13 - (top + self->_implicitBoundsInsets.bottom);
      v26.origin.x = v7 + left + -1.0;
      v26.origin.y = v16 + -1.0;
      v26.size.width = v17 + 2.0;
      v26.size.height = v18 + 2.0;
      v19 = CGPathCreateWithRect(v26, 0);
      v20 = [PKExtendedPhysicsBody bodyWithEdgeLoopFromPath:v19];
      implicitBoundsBody = self->_implicitBoundsBody;
      self->_implicitBoundsBody = v20;

      [(PKExtendedPhysicsBody *)self->_implicitBoundsBody setAffectedByGravity:0];
      [(PKExtendedPhysicsBody *)self->_implicitBoundsBody setDynamic:0];
      [(UICollisionBehavior *)self _setCollisions:1 forBody:self->_implicitBoundsBody isEdge:1];
      _context3 = [(UIDynamicBehavior *)self _context];
      _world = [_context3 _world];
      [_world addBody:self->_implicitBoundsBody];

      CGPathRelease(v19);

      [(UIDynamicBehavior *)self _changedParameterForBody:0];
    }
  }
}

- (void)addBoundaryWithIdentifier:(id)identifier forPath:(UIBezierPath *)bezierPath
{
  if (identifier)
  {
    if (bezierPath)
    {
      [UICollisionBehavior _registerBoundaryForIdentifier:"_registerBoundaryForIdentifier:path:" path:?];
    }
  }
}

- (void)addBoundaryWithIdentifier:(id)identifier fromPoint:(CGPoint)p1 toPoint:(CGPoint)p2
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    y = p2.y;
    x = p2.x;
    v7 = p1.y;
    v8 = p1.x;
    v10 = MEMORY[0x1E696B098];
    v11 = identifier;
    v12 = [v10 valueWithCGPoint:{v8, v7}];
    v15[0] = v12;
    v13 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    v15[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(UICollisionBehavior *)self _registerBoundaryForIdentifier:v11 path:v14];
  }
}

- (void)_registerBoundaryForIdentifier:(id)identifier path:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  boundaryPaths = self->_boundaryPaths;
  if (!boundaryPaths)
  {
    v8 = objc_opt_new();
    v9 = self->_boundaryPaths;
    self->_boundaryPaths = v8;

    boundaryPaths = self->_boundaryPaths;
  }

  [(NSMutableDictionary *)boundaryPaths setObject:pathCopy forKey:identifierCopy];
  [(UICollisionBehavior *)self _registerBodyForIdentifier:identifierCopy path:pathCopy];
}

- (void)_registerBodyForIdentifier:(id)identifier path:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  _context = [(UIDynamicBehavior *)self _context];

  if (!_context)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [pathCopy firstObject];
      [firstObject CGPointValue];
      v12 = v11;
      v14 = v13;
      lastObject = [pathCopy lastObject];
      [lastObject CGPointValue];
      v9 = [PKExtendedPhysicsBody bodyWithEdgeFromPoint:v12 toPoint:v14, v16, v17];

      if (v9)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  v9 = +[PKExtendedPhysicsBody bodyWithEdgeLoopFromPath:](PKExtendedPhysicsBody, "bodyWithEdgeLoopFromPath:", [pathCopy CGPath]);
  if (!v9)
  {
LABEL_7:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollisionBehavior.m" lineNumber:368 description:@"invalid path for collision boundary"];

    v9 = 0;
  }

LABEL_8:
  if (!self->_boundaryBodies)
  {
    v19 = objc_opt_new();
    boundaryBodies = self->_boundaryBodies;
    self->_boundaryBodies = v19;
  }

  representedObject = [v9 representedObject];

  if (!representedObject)
  {
    [v9 setRepresentedObject:self];
  }

  [(NSMutableDictionary *)self->_boundaryBodies setObject:v9 forKey:identifierCopy];
  [v9 setAffectedByGravity:0];
  [v9 setDynamic:0];
  _context2 = [(UIDynamicBehavior *)self _context];
  _world = [_context2 _world];
  [_world addBody:v9];

  [(UICollisionBehavior *)self _setCollisions:1 forBody:v9 isEdge:1];
  [(UIDynamicBehavior *)self _changedParameterForBody:0];

LABEL_13:
}

- (UIBezierPath)boundaryWithIdentifier:(id)identifier
{
  v5 = [(NSMutableDictionary *)self->_boundaryPaths objectForKey:identifier];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollisionBehavior.m" lineNumber:397 description:0];
      }

      v7 = v5;
      v6 = +[UIBezierPath bezierPath];
      v8 = [v7 objectAtIndex:0];
      [v8 CGPointValue];
      [v6 moveToPoint:?];

      v9 = [v7 objectAtIndex:1];

      [v9 CGPointValue];
      [v6 addLineToPoint:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeBoundaryWithIdentifier:(id)identifier
{
  v4 = identifier;
  if (v4)
  {
    v8 = v4;
    v5 = [(NSMutableDictionary *)self->_boundaryBodies objectForKey:v4];
    if (v5)
    {
      [(UICollisionBehavior *)self _setCollisions:0 forBody:v5 isEdge:1];
      _context = [(UIDynamicBehavior *)self _context];
      _world = [_context _world];
      [_world removeBody:v5];

      [(NSMutableDictionary *)self->_boundaryBodies removeObjectForKey:v8];
    }

    [(NSMutableDictionary *)self->_boundaryPaths removeObjectForKey:v8];
    [(UIDynamicBehavior *)self _changedParameterForBody:0];

    v4 = v8;
  }
}

- (void)removeAllBoundaries
{
  [(UICollisionBehavior *)self _removeExplicitBoundaryBodies];

  [(UICollisionBehavior *)self _removeExplicitBoundaryPaths];
}

- (void)_setupExplicitBoundaries
{
  boundaryPaths = self->_boundaryPaths;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__UICollisionBehavior__setupExplicitBoundaries__block_invoke;
  v3[3] = &unk_1E7106A08;
  v3[4] = self;
  [(NSMutableDictionary *)boundaryPaths enumerateKeysAndObjectsUsingBlock:v3];
}

void __47__UICollisionBehavior__setupExplicitBoundaries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 96) objectForKey:v7];

  if (!v6)
  {
    [*(a1 + 32) _registerBodyForIdentifier:v7 path:v5];
  }
}

- (void)_removeExplicitBoundaryBodies
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_boundaryBodies;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_boundaryBodies objectForKey:*(*(&v12 + 1) + 8 * v7), v12];
        [(UICollisionBehavior *)self _setCollisions:0 forBody:v8 isEdge:0];
        _context = [(UIDynamicBehavior *)self _context];
        _world = [_context _world];
        [_world removeBody:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  boundaryBodies = self->_boundaryBodies;
  self->_boundaryBodies = 0;

  [(UIDynamicBehavior *)self _changedParameterForBody:0];
}

- (void)_removeExplicitBoundaryPaths
{
  boundaryPaths = self->_boundaryPaths;
  self->_boundaryPaths = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v16.receiver = self;
  v16.super_class = UICollisionBehavior;
  v4 = [(UIDynamicBehavior *)&v16 description];
  v5 = [v3 stringWithString:v4];

  collisionMode = [(UICollisionBehavior *)self collisionMode];
  v7 = @" (All) ";
  if (collisionMode == 1)
  {
    v7 = @" (Items) ";
  }

  if (collisionMode == 2)
  {
    v8 = @" (Boundaries) ";
  }

  else
  {
    v8 = v7;
  }

  [v5 appendString:v8];
  if ([(UICollisionBehavior *)self translatesReferenceBoundsIntoBoundary])
  {
    v9 = *&self->_implicitBoundsInsets.top;
    v10 = *&self->_implicitBoundsInsets.bottom;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v9), vceqzq_f64(v10))))))
    {
      left = self->_implicitBoundsInsets.left;
      right = self->_implicitBoundsInsets.right;
      v13 = NSStringFromUIEdgeInsets(*v9.f64);
      [v5 appendFormat:@"(Reference Bounds + %@) ", v13];
    }

    else
    {
      [v5 appendString:@"(Reference Bounds) "];
    }
  }

  else
  {
    [v5 appendFormat:@"(%@) ", self->_boundaryPaths];
  }

  _itemsDescription = [(UIDynamicBehavior *)self _itemsDescription];
  [v5 appendString:_itemsDescription];

  return v5;
}

@end