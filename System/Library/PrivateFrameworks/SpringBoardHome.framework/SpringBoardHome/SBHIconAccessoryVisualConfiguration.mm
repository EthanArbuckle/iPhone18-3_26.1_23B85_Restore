@interface SBHIconAccessoryVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (CGPoint)offset;
- (CGSize)size;
- (SBHIconAccessoryVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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
  v2 = [(SBHIconAccessoryVisualConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconAccessoryVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconAccessoryVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHIconAccessoryVisualConfiguration *)self fontSize];
  v5 = [v4 appendFloat:@"fontSize" withName:?];
  [(SBHIconAccessoryVisualConfiguration *)self size];
  v6 = [v4 appendSize:@"size" withName:?];
  [(SBHIconAccessoryVisualConfiguration *)self offset];
  v7 = [v4 appendPoint:@"offset" withName:?];

  return v4;
}

@end