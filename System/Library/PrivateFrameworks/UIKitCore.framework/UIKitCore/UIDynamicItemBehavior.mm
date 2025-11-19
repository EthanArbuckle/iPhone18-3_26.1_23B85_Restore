@interface UIDynamicItemBehavior
- (BOOL)_rotationEnabledForItem:(id)a3;
- (CGFloat)angularVelocityForItem:(id)item;
- (CGPoint)_positionForItem:(id)a3;
- (CGPoint)linearVelocityForItem:(id)item;
- (NSArray)items;
- (UIDynamicItemBehavior)initWithItems:(NSArray *)items;
- (double)_angleForItem:(id)a3;
- (double)_angularResistanceForItem:(id)a3;
- (double)_densityForItem:(id)a3;
- (double)_elasticityForItem:(id)a3;
- (double)_frictionForItem:(id)a3;
- (double)_massForItem:(id)a3;
- (double)_resistanceForItem:(id)a3;
- (id)description;
- (void)_associate;
- (void)_configureBody:(id)a3 forView:(id)a4;
- (void)_dissociate;
- (void)_reevaluate:(unint64_t)a3;
- (void)_setAngle:(double)a3 forItem:(id)a4;
- (void)_setPosition:(CGPoint)a3 forItem:(id)a4;
- (void)addAngularVelocity:(CGFloat)velocity forItem:(id)item;
- (void)addItem:(id)item;
- (void)addLinearVelocity:(CGPoint)velocity forItem:(id)item;
- (void)applyImpulse:(CGPoint)a3 toItem:(id)a4;
- (void)removeItem:(id)item;
- (void)setAllowsRotation:(BOOL)allowsRotation;
- (void)setAnchored:(BOOL)anchored;
- (void)setAngularResistance:(CGFloat)angularResistance;
- (void)setCharge:(CGFloat)charge;
- (void)setDensity:(CGFloat)density;
- (void)setElasticity:(CGFloat)elasticity;
- (void)setFriction:(CGFloat)friction;
- (void)setResistance:(CGFloat)resistance;
- (void)setUseDefaultViewPropertiesApplier:(BOOL)a3;
@end

@implementation UIDynamicItemBehavior

- (UIDynamicItemBehavior)initWithItems:(NSArray *)items
{
  v4 = items;
  v9.receiver = self;
  v9.super_class = UIDynamicItemBehavior;
  v5 = [(UIDynamicBehavior *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_elasticity = 0.2;
    v5->_friction = 0.2;
    v5->_density = 1.0;
    v5->_resistance = 0.1;
    v5->_angularResistance = 0.1;
    v5->_allowsRotation = 1;
    v5->_useDefaultViewPropertiesApplier = 1;
    v5->_anchored = 0;
    v5->_charge = 0.0;
    v7 = [(NSArray *)v4 mutableCopy];
    [(UIDynamicBehavior *)v6 _setItems:v7];
  }

  return v6;
}

- (void)_configureBody:(id)a3 forView:(id)a4
{
  v8 = a3;
  v6 = a4;
  stateFlags = self->_stateFlags;
  if (stateFlags)
  {
    [(UIDynamicItemBehavior *)self elasticity];
    [v8 setRestitution:?];
    stateFlags = self->_stateFlags;
    if ((stateFlags & 2) == 0)
    {
LABEL_3:
      if ((stateFlags & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((stateFlags & 2) == 0)
  {
    goto LABEL_3;
  }

  [(UIDynamicItemBehavior *)self friction];
  [v8 setFriction:?];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 4) == 0)
  {
LABEL_4:
    if ((stateFlags & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(UIDynamicItemBehavior *)self density];
  [v8 setNormalizedDensity:?];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 8) == 0)
  {
LABEL_5:
    if ((stateFlags & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(UIDynamicItemBehavior *)self resistance];
  [v8 setLinearDamping:?];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 0x10) == 0)
  {
LABEL_6:
    if ((stateFlags & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(UIDynamicItemBehavior *)self angularResistance];
  [v8 setAngularDamping:?];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 0x20) == 0)
  {
LABEL_7:
    if ((stateFlags & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v8 setAllowsRotation:{-[UIDynamicItemBehavior allowsRotation](self, "allowsRotation")}];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 0x100) == 0)
  {
LABEL_8:
    if ((stateFlags & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  [v8 setDynamic:{-[UIDynamicItemBehavior isAnchored](self, "isAnchored") ^ 1}];
  if ((*&self->_stateFlags & 0x80) != 0)
  {
LABEL_9:
    [(UIDynamicItemBehavior *)self charge];
    [v8 setCharge:?];
  }

LABEL_10:
}

- (void)addItem:(id)item
{
  v10 = item;
  v4 = [(UIDynamicBehavior *)self _items];
  v5 = [v4 containsObject:v10];

  if ((v5 & 1) == 0)
  {
    [(UIDynamicBehavior *)self _addItem:v10];
    v6 = [(UIDynamicBehavior *)self _context];

    if (v6)
    {
      v7 = [(UIDynamicBehavior *)self _context];
      v8 = [v7 _registerBodyForItem:v10];

      [(UIDynamicItemBehavior *)self _configureBody:v8 forView:v10];
      v9 = [(UIDynamicBehavior *)self _context];
      [v9 _shouldReevaluateLocalBehaviors];
    }
  }
}

- (void)removeItem:(id)item
{
  v9 = item;
  v4 = [(UIDynamicBehavior *)self _items];
  v5 = [v4 containsObject:v9];

  if (v5)
  {
    v6 = [(UIDynamicBehavior *)self _context];

    if (v6)
    {
      v7 = [(UIDynamicBehavior *)self _context];
      [v7 _unregisterBodyForItem:v9 action:0];

      v8 = [(UIDynamicBehavior *)self _context];
      [v8 _shouldReevaluateLocalBehaviors];
    }

    [(NSMapTable *)self->_cachedLinearVelocities removeObjectForKey:v9];
    [(NSMapTable *)self->_cachedAngularVelocities removeObjectForKey:v9];
    [(UIDynamicBehavior *)self _removeItem:v9];
  }
}

- (NSArray)items
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [(UIDynamicBehavior *)self _items];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (void)setElasticity:(CGFloat)elasticity
{
  if (self->_elasticity != elasticity)
  {
    self->_elasticity = elasticity;
    *&self->_stateFlags |= 1u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)setFriction:(CGFloat)friction
{
  if (self->_friction != friction)
  {
    self->_friction = friction;
    *&self->_stateFlags |= 2u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)setDensity:(CGFloat)density
{
  if (self->_density != density)
  {
    self->_density = density;
    *&self->_stateFlags |= 4u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)setResistance:(CGFloat)resistance
{
  if (self->_resistance != resistance)
  {
    self->_resistance = resistance;
    *&self->_stateFlags |= 8u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)setAngularResistance:(CGFloat)angularResistance
{
  if (self->_angularResistance != angularResistance)
  {
    self->_angularResistance = angularResistance;
    *&self->_stateFlags |= 0x10u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)setAnchored:(BOOL)anchored
{
  if (self->_anchored != anchored)
  {
    self->_anchored = anchored;
    *&self->_stateFlags |= 0x100u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)setCharge:(CGFloat)charge
{
  if (self->_charge != charge)
  {
    self->_charge = charge;
    *&self->_stateFlags |= 0x80u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)setAllowsRotation:(BOOL)allowsRotation
{
  if (self->_allowsRotation != allowsRotation)
  {
    self->_allowsRotation = allowsRotation;
    *&self->_stateFlags |= 0x20u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (void)addLinearVelocity:(CGPoint)velocity forItem:(id)item
{
  y = velocity.y;
  x = velocity.x;
  v7 = item;
  if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
  {
    v28 = v7;
    v9 = [(UIDynamicBehavior *)self _items];
    v10 = [v9 containsObject:v28];

    v7 = v28;
    if (v10)
    {
      v11 = [(UIDynamicBehavior *)self _context];

      if (v11)
      {
        v12 = [(UIDynamicBehavior *)self _context];
        v13 = [v12 _bodyForItem:v28];

        [v13 velocity];
        v15 = x + v14;
        [v13 velocity];
        [v13 setVelocity:{v15, y + v16}];
        [(UIDynamicBehavior *)self _changedParameterForBody:v13];
      }

      else
      {
        cachedLinearVelocities = self->_cachedLinearVelocities;
        if (!cachedLinearVelocities)
        {
          v18 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:0];
          v19 = self->_cachedLinearVelocities;
          self->_cachedLinearVelocities = v18;

          cachedLinearVelocities = self->_cachedLinearVelocities;
        }

        v20 = [(NSMapTable *)cachedLinearVelocities objectForKey:v28];
        v13 = v20;
        if (v20)
        {
          [v20 CGPointValue];
          v22 = x + v21;
          v24 = y + v23;
          v25 = self->_cachedLinearVelocities;
          v26 = MEMORY[0x1E696B098];
        }

        else
        {
          v25 = self->_cachedLinearVelocities;
          v26 = MEMORY[0x1E696B098];
          v22 = x;
          v24 = y;
        }

        v27 = [v26 valueWithCGPoint:{v22, v24}];
        [(NSMapTable *)v25 setObject:v27 forKey:v28];
      }

      v7 = v28;
    }
  }
}

- (CGPoint)linearVelocityForItem:(id)item
{
  v4 = item;
  v5 = [(UIDynamicBehavior *)self _items];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(UIDynamicBehavior *)self _context];
    v8 = [v7 _bodyForItem:v4];

    [v8 velocity];
    v10 = v9;
    [v8 velocity];
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_setPosition:(CGPoint)a3 forItem:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIDynamicBehavior *)self _context];
  v9 = [v8 _bodyForItem:v7];

  [v9 setPosition:{x, y}];
  [(UIDynamicBehavior *)self _changedParameterForBody:v9];
}

- (CGPoint)_positionForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 position];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_setAngle:(double)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = [(UIDynamicBehavior *)self _context];
  v8 = [v7 _bodyForItem:v6];

  [v8 setRotation:a3];
  [(UIDynamicBehavior *)self _changedParameterForBody:v8];
}

- (double)_angleForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 rotation];
  v8 = v7;

  return v8;
}

- (void)addAngularVelocity:(CGFloat)velocity forItem:(id)item
{
  v6 = item;
  if (velocity != 0.0)
  {
    v21 = v6;
    v7 = [(UIDynamicBehavior *)self _items];
    v8 = [v7 containsObject:v21];

    v6 = v21;
    if (v8)
    {
      v9 = [(UIDynamicBehavior *)self _context];

      if (v9)
      {
        v10 = [(UIDynamicBehavior *)self _context];
        v11 = [v10 _bodyForItem:v21];

        [v11 angularVelocity];
        [v11 setAngularVelocity:v12 + velocity];
        [(UIDynamicBehavior *)self _changedParameterForBody:v11];
      }

      else
      {
        cachedAngularVelocities = self->_cachedAngularVelocities;
        if (!cachedAngularVelocities)
        {
          v14 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:0];
          v15 = self->_cachedAngularVelocities;
          self->_cachedAngularVelocities = v14;

          cachedAngularVelocities = self->_cachedAngularVelocities;
        }

        v16 = [(NSMapTable *)cachedAngularVelocities objectForKey:v21];
        [v16 floatValue];
        v18 = v17 + velocity;

        v19 = self->_cachedAngularVelocities;
        *&v20 = v18;
        v11 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
        [(NSMapTable *)v19 setObject:v11 forKey:v21];
      }

      v6 = v21;
    }
  }
}

- (CGFloat)angularVelocityForItem:(id)item
{
  v4 = item;
  v5 = [(UIDynamicBehavior *)self _items];
  v6 = [v5 containsObject:v4];

  v7 = 0.0;
  if (v6)
  {
    v8 = [(UIDynamicBehavior *)self _context];
    v9 = [v8 _bodyForItem:v4];

    [v9 angularVelocity];
    v7 = v10;
  }

  return v7;
}

- (double)_elasticityForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 restitution];
  v8 = v7;

  return v8;
}

- (double)_frictionForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 friction];
  v8 = v7;

  return v8;
}

- (double)_densityForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 normalizedDensity];
  v8 = v7;

  return v8;
}

- (double)_resistanceForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 linearDamping];
  v8 = v7;

  return v8;
}

- (double)_angularResistanceForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 angularDamping];
  v8 = v7;

  return v8;
}

- (double)_massForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  [v6 mass];
  v8 = v7;

  return v8;
}

- (BOOL)_rotationEnabledForItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _bodyForItem:v4];

  LOBYTE(v5) = [v6 allowsRotation];
  return v5;
}

- (void)applyImpulse:(CGPoint)a3 toItem:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIDynamicBehavior *)self _context];
  v9 = [v8 _bodyForItem:v7];

  [v9 applyImpulse:{x, y}];
  [(UIDynamicBehavior *)self _changedParameterForBody:v9];
}

- (void)_reevaluate:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(UIDynamicBehavior *)self _items];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(UIDynamicBehavior *)self _context];
          v12 = v11;
          if (a3 == 2)
          {
            [v11 _registerBodyForItem:v10];
          }

          else
          {
            [v11 _bodyForItem:v10];
          }
          v13 = ;

          [(UIDynamicItemBehavior *)self _configureBody:v13 forView:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)_associate
{
  v43 = *MEMORY[0x1E69E9840];
  [(UIDynamicItemBehavior *)self _reevaluate:2];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = self->_cachedLinearVelocities;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_cachedLinearVelocities objectForKey:v8];
        [v9 CGPointValue];
        v11 = v10;
        v13 = v12;
        v14 = [(UIDynamicBehavior *)self _context];
        v15 = [v14 _bodyForItem:v8];

        [v15 velocity];
        v17 = v11 + v16;
        [v15 velocity];
        [v15 setVelocity:{v17, v13 + v18}];
        [(UIDynamicBehavior *)self _changedParameterForBody:v15];
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  cachedLinearVelocities = self->_cachedLinearVelocities;
  self->_cachedLinearVelocities = 0;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = self->_cachedAngularVelocities;
  v21 = [(NSMapTable *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * j);
        v26 = [(NSMapTable *)self->_cachedAngularVelocities objectForKey:v25, v33];
        [v26 floatValue];
        v28 = v27;
        v29 = [(UIDynamicBehavior *)self _context];
        v30 = [v29 _bodyForItem:v25];

        [v30 angularVelocity];
        [v30 setAngularVelocity:v31 + v28];
        [(UIDynamicBehavior *)self _changedParameterForBody:v30];
      }

      v22 = [(NSMapTable *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }

  cachedAngularVelocities = self->_cachedAngularVelocities;
  self->_cachedAngularVelocities = 0;
}

- (void)_dissociate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UIDynamicBehavior *)self _items];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(UIDynamicBehavior *)self _context];
        [v9 _unregisterBodyForItem:v8 action:&__block_literal_global_196];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void __36__UIDynamicItemBehavior__dissociate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRestitution:0.2];
  [v2 setFriction:0.2];
  [v2 setNormalizedDensity:1.0];
  [v2 setLinearDamping:0.1];
  [v2 setAngularDamping:0.1];
  [v2 setAllowsRotation:1];
}

- (void)setUseDefaultViewPropertiesApplier:(BOOL)a3
{
  if (self->_useDefaultViewPropertiesApplier != a3)
  {
    self->_useDefaultViewPropertiesApplier = a3;
    *&self->_stateFlags |= 0x40u;
    v4 = [(UIDynamicBehavior *)self _context];
    [v4 _shouldReevaluateLocalBehaviors];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v14.receiver = self;
  v14.super_class = UIDynamicItemBehavior;
  v4 = [(UIDynamicBehavior *)&v14 description];
  v5 = [v3 stringWithString:v4];

  stateFlags = self->_stateFlags;
  if (stateFlags)
  {
    [(UIDynamicItemBehavior *)self elasticity];
    [v5 appendFormat:@" E=%f", v10];
    stateFlags = self->_stateFlags;
    if ((stateFlags & 2) == 0)
    {
LABEL_3:
      if ((stateFlags & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((stateFlags & 2) == 0)
  {
    goto LABEL_3;
  }

  [(UIDynamicItemBehavior *)self friction];
  [v5 appendFormat:@" F=%f", v11];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 4) == 0)
  {
LABEL_4:
    if ((stateFlags & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(UIDynamicItemBehavior *)self density];
  [v5 appendFormat:@" D=%f", v12];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 8) == 0)
  {
LABEL_5:
    if ((stateFlags & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  [(UIDynamicItemBehavior *)self resistance];
  [v5 appendFormat:@" R=%f", v13];
  if ((*&self->_stateFlags & 0x10) != 0)
  {
LABEL_6:
    [(UIDynamicItemBehavior *)self angularResistance];
    [v5 appendFormat:@" AR=%f", v7];
  }

LABEL_7:
  if (![(UIDynamicItemBehavior *)self allowsRotation])
  {
    [v5 appendString:@" !Rotation"];
  }

  if (!self->_useDefaultViewPropertiesApplier)
  {
    [v5 appendString:@" !DefaultApplier"];
  }

  if (self->_anchored)
  {
    [v5 appendString:@" Anchored"];
  }

  [v5 appendString:@" "];
  v8 = [(UIDynamicBehavior *)self _itemsDescription];
  [v5 appendString:v8];

  return v5;
}

@end