@interface WFSearchVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (UIEdgeInsets)textFieldLandscapeLayoutInsets;
- (UIEdgeInsets)textFieldPortraitLayoutInsets;
- (WFSearchVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WFSearchVisualConfiguration

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

- (WFSearchVisualConfiguration)init
{
  v6.receiver = self;
  v6.super_class = WFSearchVisualConfiguration;
  v2 = [(WFSearchVisualConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_textFieldWidth = 0.0;
    v2->_textFieldPortraitLayoutInsets.top = 0.0;
    v2->_textFieldPortraitLayoutInsets.left = 0.0;
    v2->_textFieldPortraitLayoutInsets.bottom = 25.0;
    v2->_textFieldLandscapeLayoutInsets.top = 0.0;
    v2->_textFieldLandscapeLayoutInsets.left = 0.0;
    v2->_textFieldPortraitLayoutInsets.right = 0.0;
    *&v2->_textFieldLandscapeLayoutInsets.bottom = xmmword_274A29C60;
    v4 = v2;
  }

  return v3;
}

@end