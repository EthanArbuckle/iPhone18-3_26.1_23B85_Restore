@interface _UISceneLayerTargetWithContext
- (BOOL)isEqual:(id)a3;
- (_UISceneLayerTargetWithContext)initWithContext:(id)a3 equalityType:(unint64_t)a4 matchingBlock:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation _UISceneLayerTargetWithContext

- (_UISceneLayerTargetWithContext)initWithContext:(id)a3 equalityType:(unint64_t)a4 matchingBlock:(id)a5
{
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UISceneLayerTargetWithContext.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_UISceneLayerTargetWithContext.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = _UISceneLayerTargetWithContext;
  v13 = [(_UISceneLayerTargetWithContext *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, a3);
    v14->_equalityType = a4;
    v15 = _Block_copy(v12);
    block = v14->_block;
    v14->_block = v15;
  }

  return v14;
}

- (unint64_t)hash
{
  p_context = &self->_context;
  context = self->_context;
  if (p_context[1])
  {
    return [context hash];
  }

  else
  {
    return 7 * context;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      context = self->_context;
      v6 = v4->_context;
      if (self->_equalityType == 1)
      {
        v7 = [context isEqual:v6];
      }

      else
      {
        v7 = context == v6;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)succinctDescription
{
  v2 = [(_UISceneLayerTargetWithContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UISceneLayerTargetWithContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_UISceneLayerTargetWithContext *)self succinctDescriptionBuilder];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@:%p>", v7, self->_context];
  v9 = [v4 appendObject:v8 withName:@"context"];

  return v4;
}

@end