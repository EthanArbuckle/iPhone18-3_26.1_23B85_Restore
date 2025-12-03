@interface RFMapPoint
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapPoint)initWithCoder:(id)coder;
- (RFMapPoint)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if ([(RFMapPoint *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(RFMapPoint *)self x];
  [v4 setX:?];
  [(RFMapPoint *)self y];
  [v4 setY:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapPoint alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMapPoint *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapPoint alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMapPoint *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFMapPoint alloc] initWithFacade:self];
  data = [(_SFPBRFMapPoint *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFMapPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapPoint alloc] initWithData:v5];
  v7 = [(RFMapPoint *)self initWithProtobuf:v6];

  return v7;
}

- (RFMapPoint)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = RFMapPoint;
  v5 = [(RFMapPoint *)&v10 init];
  if (v5)
  {
    [protobufCopy x];
    if (v6 != 0.0)
    {
      [protobufCopy x];
      [(RFMapPoint *)v5 setX:?];
    }

    [protobufCopy y];
    if (v7 != 0.0)
    {
      [protobufCopy y];
      [(RFMapPoint *)v5 setY:?];
    }

    v8 = v5;
  }

  return v5;
}

@end