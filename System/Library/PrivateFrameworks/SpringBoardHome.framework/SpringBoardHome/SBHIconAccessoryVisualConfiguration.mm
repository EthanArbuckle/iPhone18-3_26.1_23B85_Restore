@interface SBHIconAccessoryVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (CGPoint)offset;
- (CGSize)size;
- (SBHIconAccessoryVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBHIconAccessoryVisualConfiguration

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (SBHIconAccessoryVisualConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBHIconAccessoryVisualConfiguration;
  result = [(SBHIconAccessoryVisualConfiguration *)&v3 init];
  if (result)
  {
    *&result->_fontSize = xmmword_1BEE88770;
    result->_offset.y = 11.0;
    *&result->_size.height = xmmword_1BEE88780;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 1) = *&self->_fontSize;
    *(result + 1) = self->_size;
    *(result + 2) = self->_offset;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v9 = self->_size.width == v7[2] && self->_size.height == v7[3] && self->_offset.y == v7[5] && self->_offset.x == v7[4];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconAccessoryVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconAccessoryVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconAccessoryVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHIconAccessoryVisualConfiguration *)self fontSize];
  v5 = [succinctDescriptionBuilder appendFloat:@"fontSize" withName:?];
  [(SBHIconAccessoryVisualConfiguration *)self size];
  v6 = [succinctDescriptionBuilder appendSize:@"size" withName:?];
  [(SBHIconAccessoryVisualConfiguration *)self offset];
  v7 = [succinctDescriptionBuilder appendPoint:@"offset" withName:?];

  return succinctDescriptionBuilder;
}

@end