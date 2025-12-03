@interface SBHSearchVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (SBHSearchVisualConfiguration)init;
- (UIEdgeInsets)textFieldLandscapeLayoutInsets;
- (UIEdgeInsets)textFieldPortraitLayoutInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBHSearchVisualConfiguration

- (UIEdgeInsets)textFieldPortraitLayoutInsets
{
  top = self->_textFieldPortraitLayoutInsets.top;
  left = self->_textFieldPortraitLayoutInsets.left;
  bottom = self->_textFieldPortraitLayoutInsets.bottom;
  right = self->_textFieldPortraitLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SBHSearchVisualConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBHSearchVisualConfiguration;
  result = [(SBHSearchVisualConfiguration *)&v3 init];
  if (result)
  {
    result->_textFieldWidth = 0.0;
    result->_textFieldPortraitLayoutInsets.top = 0.0;
    result->_textFieldPortraitLayoutInsets.left = 0.0;
    result->_textFieldPortraitLayoutInsets.bottom = 25.0;
    result->_textFieldLandscapeLayoutInsets.top = 0.0;
    result->_textFieldLandscapeLayoutInsets.left = 0.0;
    result->_textFieldPortraitLayoutInsets.right = 0.0;
    *&result->_textFieldLandscapeLayoutInsets.bottom = xmmword_1BEE886E0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 1) = *&self->_textFieldWidth;
    v5 = *&self->_textFieldPortraitLayoutInsets.bottom;
    *(result + 1) = *&self->_textFieldPortraitLayoutInsets.top;
    *(result + 2) = v5;
    v6 = *&self->_textFieldLandscapeLayoutInsets.bottom;
    *(result + 3) = *&self->_textFieldLandscapeLayoutInsets.top;
    *(result + 4) = v6;
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
      if (self->_textFieldWidth == v7->f64[1] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textFieldPortraitLayoutInsets.top, v7[1]), vceqq_f64(*&self->_textFieldPortraitLayoutInsets.bottom, v7[2])))) & 1) != 0)
      {
        v8 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textFieldLandscapeLayoutInsets.top, v7[3]), vceqq_f64(*&self->_textFieldLandscapeLayoutInsets.bottom, v7[4]))));
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHSearchVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHSearchVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHSearchVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHSearchVisualConfiguration *)self textFieldWidth];
  v5 = [succinctDescriptionBuilder appendFloat:@"textFieldWidth" withName:?];
  [(SBHSearchVisualConfiguration *)self textFieldPortraitLayoutInsets];
  v6 = NSStringFromUIEdgeInsets(v10);
  [succinctDescriptionBuilder appendString:v6 withName:@"textFieldPortraitLayoutInsets"];

  [(SBHSearchVisualConfiguration *)self textFieldLandscapeLayoutInsets];
  v7 = NSStringFromUIEdgeInsets(v11);
  [succinctDescriptionBuilder appendString:v7 withName:@"textFieldLandscapeLayoutInsets"];

  return succinctDescriptionBuilder;
}

- (UIEdgeInsets)textFieldLandscapeLayoutInsets
{
  top = self->_textFieldLandscapeLayoutInsets.top;
  left = self->_textFieldLandscapeLayoutInsets.left;
  bottom = self->_textFieldLandscapeLayoutInsets.bottom;
  right = self->_textFieldLandscapeLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end