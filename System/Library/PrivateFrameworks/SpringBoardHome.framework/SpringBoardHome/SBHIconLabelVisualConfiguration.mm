@interface SBHIconLabelVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (SBHIconLabelVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBHIconLabelVisualConfiguration

- (SBHIconLabelVisualConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBHIconLabelVisualConfiguration;
  result = [(SBHIconLabelVisualConfiguration *)&v3 init];
  if (result)
  {
    result->_height = 26.0;
    *&result->_fontSize = xmmword_1BEE85C20;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 1) = *&self->_fontSize;
    *(result + 2) = *&self->_baselineOffsetFromImage;
    *(result + 3) = *&self->_height;
    *(result + 4) = *&self->_extraWidth;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v8 = self->_height == v7[3] && self->_baselineOffsetFromImage == v7[2] && self->_fontSize == v7[1] && self->_extraWidth == v7[4];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconLabelVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconLabelVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconLabelVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHIconLabelVisualConfiguration *)self fontSize];
  v5 = [succinctDescriptionBuilder appendFloat:@"fontSize" withName:?];
  [(SBHIconLabelVisualConfiguration *)self baselineOffsetFromImage];
  v6 = [succinctDescriptionBuilder appendFloat:@"baselineOffsetFromImage" withName:?];
  [(SBHIconLabelVisualConfiguration *)self height];
  v7 = [succinctDescriptionBuilder appendFloat:@"height" withName:?];
  [(SBHIconLabelVisualConfiguration *)self extraWidth];
  v8 = [succinctDescriptionBuilder appendFloat:@"extraWidth" withName:?];

  return succinctDescriptionBuilder;
}

@end