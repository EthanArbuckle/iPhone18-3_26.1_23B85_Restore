@interface _UIFontDescriptorCacheKey
- (BOOL)_isEqualToKey:(id)key;
- (unint64_t)_hash;
- (void)dealloc;
@end

@implementation _UIFontDescriptorCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIFontDescriptorCacheKey;
  [(_UIFontDescriptorCacheKey *)&v3 dealloc];
}

- (unint64_t)_hash
{
  v3 = [(UIFontDescriptor *)self->_fontDescriptor hash];
  v4 = vcvtmd_u64_f64((self->_pointSize + self->_pointSizeForScaling + self->_maximumPointSizeAfterScaling) * 100.0);
  return [(NSString *)self->_textStyleForScaling hash]^ v3 ^ self->_textLegibility ^ v4;
}

- (BOOL)_isEqualToKey:(id)key
{
  if (self->super._hash != *(key + 1))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  if (vabdd_f64(self->_pointSize, *(key + 4)) >= 0.00000011920929)
  {
    goto LABEL_11;
  }

  fontDescriptor = self->_fontDescriptor;
  if (fontDescriptor == *(key + 3) || (v6 = [(UIFontDescriptor *)fontDescriptor isEqual:?]) != 0)
  {
    textStyleForScaling = self->_textStyleForScaling;
    if (textStyleForScaling == *(key + 5) || (v6 = [(NSString *)textStyleForScaling isEqualToString:?]) != 0)
    {
      if (self->_pointSizeForScaling == *(key + 6) && self->_maximumPointSizeAfterScaling == *(key + 7))
      {
        LOBYTE(v6) = self->_textLegibility == *(key + 16);
        return v6;
      }

LABEL_11:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end