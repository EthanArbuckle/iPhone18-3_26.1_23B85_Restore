@interface RFMapPoint
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapPoint)initWithCoder:(id)a3;
- (RFMapPoint)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMapPoint

- (unint64_t)hash
{
  [(RFMapPoint *)self x];
  v10 = v3;
  [(RFMapPoint *)self y];
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

  else if ([(RFMapPoint *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(RFMapPoint *)self x];
    v7 = v6;
    [(RFMapPoint *)v5 x];
    if (vabdd_f64(v7, v8) >= 2.22044605e-16)
    {
      v12 = 0;
    }

    else
    {
      [(RFMapPoint *)self y];
      v10 = v9;
      [(RFMapPoint *)v5 y];
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
  [(RFMapPoint *)self x];
  [v4 setX:?];
  [(RFMapPoint *)self y];
  [v4 setY:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapPoint alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapPoint *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapPoint alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapPoint *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFMapPoint alloc] initWithFacade:self];
  v5 = [(_SFPBRFMapPoint *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFMapPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapPoint alloc] initWithData:v5];
  v7 = [(RFMapPoint *)self initWithProtobuf:v6];

  return v7;
}

- (RFMapPoint)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RFMapPoint;
  v5 = [(RFMapPoint *)&v10 init];
  if (v5)
  {
    [v4 x];
    if (v6 != 0.0)
    {
      [v4 x];
      [(RFMapPoint *)v5 setX:?];
    }

    [v4 y];
    if (v7 != 0.0)
    {
      [v4 y];
      [(RFMapPoint *)v5 setY:?];
    }

    v8 = v5;
  }

  return v5;
}

@end