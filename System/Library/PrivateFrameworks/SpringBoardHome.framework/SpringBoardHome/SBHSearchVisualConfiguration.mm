@interface SBHSearchVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (SBHSearchVisualConfiguration)init;
- (UIEdgeInsets)textFieldLandscapeLayoutInsets;
- (UIEdgeInsets)textFieldPortraitLayoutInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
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
  v2 = [(SBHSearchVisualConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHSearchVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHSearchVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHSearchVisualConfiguration *)self textFieldWidth];
  v5 = [v4 appendFloat:@"textFieldWidth" withName:?];
  [(SBHSearchVisualConfiguration *)self textFieldPortraitLayoutInsets];
  v6 = NSStringFromUIEdgeInsets(v10);
  [v4 appendString:v6 withName:@"textFieldPortraitLayoutInsets"];

  [(SBHSearchVisualConfiguration *)self textFieldLandscapeLayoutInsets];
  v7 = NSStringFromUIEdgeInsets(v11);
  [v4 appendString:v7 withName:@"textFieldLandscapeLayoutInsets"];

  return v4;
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