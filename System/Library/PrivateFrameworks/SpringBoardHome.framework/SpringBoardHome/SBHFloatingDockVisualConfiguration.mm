@interface SBHFloatingDockVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (CGSize)maximumEditingIconSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBHFloatingDockVisualConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 8) = self->_maximumEditingIconSize;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_maximumEditingIconSize.height == equalCopy->_maximumEditingIconSize.height && self->_maximumEditingIconSize.width == equalCopy->_maximumEditingIconSize.width;
  }

  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHFloatingDockVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHFloatingDockVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHFloatingDockVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHFloatingDockVisualConfiguration *)self maximumEditingIconSize];
  v5 = [succinctDescriptionBuilder appendSize:@"maximumEditingIconSize" withName:?];

  return succinctDescriptionBuilder;
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