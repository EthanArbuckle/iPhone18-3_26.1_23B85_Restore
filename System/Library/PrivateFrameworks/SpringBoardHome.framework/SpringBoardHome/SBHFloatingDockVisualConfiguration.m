@interface SBHFloatingDockVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (CGSize)maximumEditingIconSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBHFloatingDockVisualConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 8) = self->_maximumEditingIconSize;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_maximumEditingIconSize.height == v4->_maximumEditingIconSize.height && self->_maximumEditingIconSize.width == v4->_maximumEditingIconSize.width;
  }

  return v7;
}

- (id)succinctDescription
{
  v2 = [(SBHFloatingDockVisualConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHFloatingDockVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHFloatingDockVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHFloatingDockVisualConfiguration *)self maximumEditingIconSize];
  v5 = [v4 appendSize:@"maximumEditingIconSize" withName:?];

  return v4;
}

- (CGSize)maximumEditingIconSize
{
  width = self->_maximumEditingIconSize.width;
  height = self->_maximumEditingIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end