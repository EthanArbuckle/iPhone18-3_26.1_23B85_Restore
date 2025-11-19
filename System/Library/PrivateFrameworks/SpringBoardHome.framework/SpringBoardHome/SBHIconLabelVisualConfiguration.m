@interface SBHIconLabelVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (SBHIconLabelVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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
  v2 = [(SBHIconLabelVisualConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconLabelVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconLabelVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHIconLabelVisualConfiguration *)self fontSize];
  v5 = [v4 appendFloat:@"fontSize" withName:?];
  [(SBHIconLabelVisualConfiguration *)self baselineOffsetFromImage];
  v6 = [v4 appendFloat:@"baselineOffsetFromImage" withName:?];
  [(SBHIconLabelVisualConfiguration *)self height];
  v7 = [v4 appendFloat:@"height" withName:?];
  [(SBHIconLabelVisualConfiguration *)self extraWidth];
  v8 = [v4 appendFloat:@"extraWidth" withName:?];

  return v4;
}

@end