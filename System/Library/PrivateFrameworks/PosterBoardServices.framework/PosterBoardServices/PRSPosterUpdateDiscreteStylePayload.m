@interface PRSPosterUpdateDiscreteStylePayload
- (PRSPosterUpdateDiscreteStylePayload)initWithCoder:(id)a3;
- (PRSPosterUpdateDiscreteStylePayload)initWithVariation:(id)a3 saturation:(id)a4 luminance:(id)a5 alpha:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSPosterUpdateDiscreteStylePayload

- (PRSPosterUpdateDiscreteStylePayload)initWithVariation:(id)a3 saturation:(id)a4 luminance:(id)a5 alpha:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PRSPosterUpdateDiscreteStylePayload;
  v15 = [(PRSPosterUpdatePayload *)&v18 _init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 1, a3);
    objc_storeStrong(&v16->_saturation, a4);
    objc_storeStrong(&v16->_luminance, a5);
    objc_storeStrong(&v16->_alpha, a6);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  variation = self->_variation;
  saturation = self->_saturation;
  luminance = self->_luminance;
  alpha = self->_alpha;

  return [v4 initWithVariation:variation saturation:saturation luminance:luminance alpha:alpha];
}

- (PRSPosterUpdateDiscreteStylePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRSPosterUpdatePayload *)self _init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_luminance"];
    luminance = v5->_luminance;
    v5->_luminance = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"_saturation"];
    saturation = v5->_saturation;
    v5->_saturation = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"_variation"];
    variation = v5->_variation;
    v5->_variation = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"_alpha"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &unk_1F42769F0;
    }

    objc_storeStrong(&v5->_alpha, v18);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  luminance = self->_luminance;
  v5 = a3;
  [v5 encodeObject:luminance forKey:@"_luminance"];
  [v5 encodeObject:self->_saturation forKey:@"_saturation"];
  [v5 encodeObject:self->_variation forKey:@"_variation"];
  [v5 encodeObject:self->_alpha forKey:@"_alpha"];
}

@end