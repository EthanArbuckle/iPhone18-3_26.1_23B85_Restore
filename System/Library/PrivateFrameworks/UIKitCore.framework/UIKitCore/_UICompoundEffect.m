@interface _UICompoundEffect
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 changedTraits:(id)a5 usage:(int64_t)a6;
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UICompoundEffect)initWithCoder:(id)a3;
- (_UICompoundEffect)initWithEffects:(id)a3;
- (id)description;
- (int64_t)_expectedUsage;
- (void)_enumerateEffects:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICompoundEffect

- (int64_t)_expectedUsage
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35___UICompoundEffect__expectedUsage__block_invoke;
  v4[3] = &unk_1E70F6C08;
  v4[4] = &v5;
  [(_UICompoundEffect *)self _enumerateEffects:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (_UICompoundEffect)initWithEffects:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UICompoundEffect;
  v5 = [(_UICompoundEffect *)&v18 init];
  if (v5)
  {
    v17 = v4;
    v6 = v4;
    v7 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = ___UICompoundEffectFlatten_block_invoke;
          v19[3] = &unk_1E70F6C58;
          v20 = v7;
          [v13 _enumerateEffects:v19];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
    effects = v5->_effects;
    v5->_effects = v14;

    v4 = v17;
  }

  return v5;
}

- (_UICompoundEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UICompoundEffect;
  v5 = [(UIVisualEffect *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"_UICompoundEffectSubEffects"];
    effects = v5->_effects;
    v5->_effects = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UICompoundEffect;
  v4 = a3;
  [(UIVisualEffect *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_effects forKey:{@"_UICompoundEffectSubEffects", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4[1] isEqualToArray:self->_effects];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_enumerateEffects:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_effects;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 changedTraits:(id)a5 usage:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___UICompoundEffect__needsUpdateForTransitionFromEnvironment_toEnvironment_changedTraits_usage___block_invoke;
  v17[3] = &unk_1E70F6BE0;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v15 = v12;
  v21 = &v23;
  v22 = a6;
  v20 = v15;
  [(_UICompoundEffect *)self _enumerateEffects:v17];
  LOBYTE(self) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return self;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 traitCollection];
  v11 = [v8 traitCollection];
  v12 = [v10 changedTraitsFromTraitCollection:v11];

  LOBYTE(a5) = [(_UICompoundEffect *)self _needsUpdateForTransitionFromEnvironment:v9 toEnvironment:v8 changedTraits:v12 usage:a5];
  return a5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p> combinedEffects = %@", v5, self, self->_effects];

  return v6;
}

@end