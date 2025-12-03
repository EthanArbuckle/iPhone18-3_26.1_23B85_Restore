@interface _UISceneLayerTargetWithContext
- (BOOL)isEqual:(id)equal;
- (_UISceneLayerTargetWithContext)initWithContext:(id)context equalityType:(unint64_t)type matchingBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation _UISceneLayerTargetWithContext

- (_UISceneLayerTargetWithContext)initWithContext:(id)context equalityType:(unint64_t)type matchingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v12 = blockCopy;
  if (contextCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerTargetWithContext.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UISceneLayerTargetWithContext.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = _UISceneLayerTargetWithContext;
  v13 = [(_UISceneLayerTargetWithContext *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, context);
    v14->_equalityType = type;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      context = self->_context;
      v6 = equalCopy->_context;
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
  succinctDescriptionBuilder = [(_UISceneLayerTargetWithContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UISceneLayerTargetWithContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_UISceneLayerTargetWithContext *)self succinctDescriptionBuilder];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@:%p>", v7, self->_context];
  v9 = [succinctDescriptionBuilder appendObject:v8 withName:@"context"];

  return succinctDescriptionBuilder;
}

@end