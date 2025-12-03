@interface UIView(Constraints)
- (BOOL)pu_hasConstraintForKey:()Constraints;
- (id)_pu_associatedConstraints;
- (id)pu_constraintsForKey:()Constraints;
- (void)pu_addConstraint:()Constraints forKey:;
- (void)pu_addConstraints:()Constraints forKey:;
- (void)pu_clearAllConstraintsForKey:()Constraints;
- (void)pu_removeAllConstraintsForKey:()Constraints;
@end

@implementation UIView(Constraints)

- (id)pu_constraintsForKey:()Constraints
{
  v4 = a3;
  _pu_associatedConstraints = [self _pu_associatedConstraints];
  v6 = [_pu_associatedConstraints objectForKeyedSubscript:v4];

  return v6;
}

- (void)pu_clearAllConstraintsForKey:()Constraints
{
  v4 = a3;
  _pu_associatedConstraints = [self _pu_associatedConstraints];
  [_pu_associatedConstraints removeObjectForKey:v4];
}

- (void)pu_removeAllConstraintsForKey:()Constraints
{
  v6 = a3;
  _pu_associatedConstraints = [self _pu_associatedConstraints];
  v5 = [_pu_associatedConstraints objectForKeyedSubscript:v6];
  if (v5)
  {
    [self removeConstraints:v5];
    [_pu_associatedConstraints removeObjectForKey:v6];
  }
}

- (void)pu_addConstraints:()Constraints forKey:
{
  v9 = a3;
  v6 = a4;
  if ([v9 count])
  {
    _pu_associatedConstraints = [self _pu_associatedConstraints];
    v8 = [_pu_associatedConstraints objectForKeyedSubscript:v6];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [_pu_associatedConstraints setObject:v8 forKeyedSubscript:v6];
    }

    [v8 addObjectsFromArray:v9];
    [self addConstraints:v9];
  }
}

- (void)pu_addConstraint:()Constraints forKey:
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [self pu_addConstraints:v9 forKey:{v7, v10, v11}];
}

- (BOOL)pu_hasConstraintForKey:()Constraints
{
  v4 = a3;
  _pu_associatedConstraints = [self _pu_associatedConstraints];
  v6 = [_pu_associatedConstraints objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_pu_associatedConstraints
{
  v2 = objc_getAssociatedObject(self, @"PUConstraintDictionaryKey");
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objc_setAssociatedObject(self, @"PUConstraintDictionaryKey", v2, 1);
  }

  return v2;
}

@end