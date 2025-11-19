@interface SFLatLng
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLatLng)initWithCoder:(id)a3;
- (SFLatLng)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLatLng

- (unint64_t)hash
{
  [(SFLatLng *)self lat];
  v10 = v3;
  [(SFLatLng *)self lng];
  v4.f64[1] = v10;
  v5 = vbslq_s8(vcltzq_f64(v4), vnegq_f64(v4), v4);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vrndaq_f64(v5);
  v8 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(vnegq_f64(v6), vmlaq_f64(v7, vdupq_n_s64(0xC3F0000000000000), vrndq_f64(vmulq_f64(v7, vdupq_n_s64(0x3BF0000000000000uLL)))), v7), vdupq_n_s64(0x41E3C6EF36200000uLL))), vcvtq_n_u64_f64(vsubq_f64(v5, v7), 0x40uLL));
  return veorq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else if ([(SFLatLng *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(SFLatLng *)self lat];
    v7 = v6;
    [(SFLatLng *)v5 lat];
    if (vabdd_f64(v7, v8) >= 2.22044605e-16)
    {
      v12 = 0;
    }

    else
    {
      [(SFLatLng *)self lng];
      v10 = v9;
      [(SFLatLng *)v5 lng];
      v12 = vabdd_f64(v10, v11) < 2.22044605e-16;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(SFLatLng *)self lat];
  [v4 setLat:?];
  [(SFLatLng *)self lng];
  [v4 setLng:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLatLng alloc] initWithFacade:self];
  v3 = [(_SFPBLatLng *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLatLng alloc] initWithFacade:self];
  v3 = [(_SFPBLatLng *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBLatLng alloc] initWithFacade:self];
  v5 = [(_SFPBLatLng *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFLatLng)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBLatLng alloc] initWithData:v5];
  v7 = [(SFLatLng *)self initWithProtobuf:v6];

  return v7;
}

- (SFLatLng)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFLatLng;
  v5 = [(SFLatLng *)&v10 init];
  if (v5)
  {
    [v4 lat];
    if (v6 != 0.0)
    {
      [v4 lat];
      [(SFLatLng *)v5 setLat:?];
    }

    [v4 lng];
    if (v7 != 0.0)
    {
      [v4 lng];
      [(SFLatLng *)v5 setLng:?];
    }

    v8 = v5;
  }

  return v5;
}

@end