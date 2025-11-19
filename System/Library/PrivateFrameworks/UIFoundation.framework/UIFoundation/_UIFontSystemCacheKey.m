@interface _UIFontSystemCacheKey
- (BOOL)_isEqualToKey:(id)a3;
- (unint64_t)_hash;
- (void)dealloc;
@end

@implementation _UIFontSystemCacheKey

- (unint64_t)_hash
{
  traits = self->_traits;
  v4 = [(NSString *)self->_design hash];
  weight = self->_weight;
  width = self->_width;
  if (width)
  {
    v7 = [(NSNumber *)width hash];
  }

  else
  {
    v7 = -1;
  }

  return v4 ^ traits ^ v7 ^ vcvtmd_u64_f64(weight * 100.0) ^ vcvtmd_u64_f64(self->_pointSize * 100.0) ^ self->_monospacedDigits ^ self->_textLegibility;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIFontSystemCacheKey;
  [(_UIFontSystemCacheKey *)&v3 dealloc];
}

- (BOOL)_isEqualToKey:(id)a3
{
  if (self->super._hash == *(a3 + 1))
  {
    v24 = v9;
    v25 = v4;
    v26 = v3;
    if (self->_traits != *(a3 + 5))
    {
      goto LABEL_15;
    }

    design = self->_design;
    if (design == *(a3 + 3) || (v14 = [(NSString *)design isEqualToString:?]))
    {
      weight = self->_weight;
      [a3 weight];
      if (vabdd_f64(weight, v16) < 0.00000011920929)
      {
        width = self->_width;
        v18 = *(a3 + 5);
        if (width)
        {
          if (!v18)
          {
            goto LABEL_15;
          }

          v14 = [(NSNumber *)width isEqualToNumber:?];
          if (!v14)
          {
            return v14;
          }
        }

        else if (v18)
        {
          goto LABEL_15;
        }

        pointSize = self->_pointSize;
        [a3 pointSize];
        if (vabdd_f64(pointSize, v20) < 0.00000011920929)
        {
          monospacedDigits = self->_monospacedDigits;
          if (monospacedDigits == [a3 monospacedDigits])
          {
            textLegibility = self->_textLegibility;
            LOBYTE(v14) = textLegibility == [a3 textLegibility];
            return v14;
          }
        }
      }

LABEL_15:
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

@end