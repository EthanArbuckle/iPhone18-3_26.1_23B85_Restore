@interface SFLatLng
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLatLng)initWithCoder:(id)coder;
- (SFLatLng)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if ([(SFLatLng *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(SFLatLng *)self lat];
  [v4 setLat:?];
  [(SFLatLng *)self lng];
  [v4 setLng:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLatLng alloc] initWithFacade:self];
  jsonData = [(_SFPBLatLng *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLatLng alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBLatLng *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBLatLng alloc] initWithFacade:self];
  data = [(_SFPBLatLng *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFLatLng)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBLatLng alloc] initWithData:v5];
  v7 = [(SFLatLng *)self initWithProtobuf:v6];

  return v7;
}

- (SFLatLng)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFLatLng;
  v5 = [(SFLatLng *)&v10 init];
  if (v5)
  {
    [protobufCopy lat];
    if (v6 != 0.0)
    {
      [protobufCopy lat];
      [(SFLatLng *)v5 setLat:?];
    }

    [protobufCopy lng];
    if (v7 != 0.0)
    {
      [protobufCopy lng];
      [(SFLatLng *)v5 setLng:?];
    }

    v8 = v5;
  }

  return v5;
}

@end