@interface PRSPosterUpdateDiscreteStylePayload
- (PRSPosterUpdateDiscreteStylePayload)initWithCoder:(id)coder;
- (PRSPosterUpdateDiscreteStylePayload)initWithVariation:(id)variation saturation:(id)saturation luminance:(id)luminance alpha:(id)alpha;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSPosterUpdateDiscreteStylePayload

- (PRSPosterUpdateDiscreteStylePayload)initWithVariation:(id)variation saturation:(id)saturation luminance:(id)luminance alpha:(id)alpha
{
  variationCopy = variation;
  saturationCopy = saturation;
  luminanceCopy = luminance;
  alphaCopy = alpha;
  v18.receiver = self;
  v18.super_class = PRSPosterUpdateDiscreteStylePayload;
  _init = [(PRSPosterUpdatePayload *)&v18 _init];
  v16 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, variation);
    objc_storeStrong(&v16->_saturation, saturation);
    objc_storeStrong(&v16->_luminance, luminance);
    objc_storeStrong(&v16->_alpha, alpha);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  variation = self->_variation;
  saturation = self->_saturation;
  luminance = self->_luminance;
  alpha = self->_alpha;

  return [v4 initWithVariation:variation saturation:saturation luminance:luminance alpha:alpha];
}

- (PRSPosterUpdateDiscreteStylePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PRSPosterUpdatePayload *)self _init];
  if (_init)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_luminance"];
    luminance = _init->_luminance;
    _init->_luminance = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_saturation"];
    saturation = _init->_saturation;
    _init->_saturation = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"_variation"];
    variation = _init->_variation;
    _init->_variation = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"_alpha"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &unk_1F42769F0;
    }

    objc_storeStrong(&_init->_alpha, v18);
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  luminance = self->_luminance;
  coderCopy = coder;
  [coderCopy encodeObject:luminance forKey:@"_luminance"];
  [coderCopy encodeObject:self->_saturation forKey:@"_saturation"];
  [coderCopy encodeObject:self->_variation forKey:@"_variation"];
  [coderCopy encodeObject:self->_alpha forKey:@"_alpha"];
}

@end