@interface SFMapRegion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMapRegion)initWithCoder:(id)coder;
- (SFMapRegion)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMapRegion

- (unint64_t)hash
{
  [(SFMapRegion *)self southLat];
  v32 = v3;
  [(SFMapRegion *)self westLng];
  v30 = v4;
  [(SFMapRegion *)self northLat];
  v28 = v5;
  [(SFMapRegion *)self eastLng];
  v6.f64[0] = v30;
  v6.f64[1] = v32;
  v7.f64[0] = v28;
  v7.f64[1] = v8;
  v9 = vbslq_s8(vcltzq_f64(v6), vnegq_f64(v6), v6);
  v10 = vbslq_s8(vcltzq_f64(v7), vnegq_f64(v7), v7);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vrndaq_f64(v10);
  v13 = vrndaq_f64(v9);
  v14 = vsubq_f64(v9, v13);
  v15 = vsubq_f64(v10, v12);
  v16 = vdupq_n_s64(0x3BF0000000000000uLL);
  v17 = vdupq_n_s64(0x43F0000000000000uLL);
  v18 = vnegq_f64(v11);
  v19 = vbslq_s8(v18, vmlsq_f64(v12, v17, vrndq_f64(vmulq_f64(v12, v16))), v12);
  v20 = vbslq_s8(v18, vmlsq_f64(v13, v17, vrndq_f64(vmulq_f64(v13, v16))), v13);
  v21 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v31 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v20, v21)), vcvtq_n_u64_f64(v14, 0x40uLL));
  v33 = v18;
  v29 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v19, v21)), vcvtq_n_u64_f64(v15, 0x40uLL));
  [(SFMapRegion *)self altitudeInMeters];
  if (v22 < 0.0)
  {
    v22 = -v22;
  }

  *v23.i64 = round(v22);
  *v24.i64 = *v23.i64 - trunc(*v23.i64 * 5.42101086e-20) * 1.84467441e19;
  v25 = (*vbslq_s8(v33, v24, v23).i64 * 2654435760.0) + vcvtd_n_u64_f64(v22 - *v23.i64, 0x40uLL);
  v26 = veorq_s8(v31, v29);
  return *&veor_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
  }

  else if ([(SFMapRegion *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    [(SFMapRegion *)self southLat];
    v7 = v6;
    [(SFMapRegion *)v5 southLat];
    if (vabdd_f64(v7, v8) >= 2.22044605e-16)
    {
      goto LABEL_10;
    }

    [(SFMapRegion *)self westLng];
    v10 = v9;
    [(SFMapRegion *)v5 westLng];
    if (vabdd_f64(v10, v11) >= 2.22044605e-16 || ([(SFMapRegion *)self northLat], v13 = v12, [(SFMapRegion *)v5 northLat], vabdd_f64(v13, v14) >= 2.22044605e-16) || ([(SFMapRegion *)self eastLng], v16 = v15, [(SFMapRegion *)v5 eastLng], vabdd_f64(v16, v17) >= 2.22044605e-16))
    {
LABEL_10:
      v21 = 0;
    }

    else
    {
      [(SFMapRegion *)self altitudeInMeters];
      v19 = v18;
      [(SFMapRegion *)v5 altitudeInMeters];
      v21 = vabdd_f64(v19, v20) < 2.22044605e-16;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(SFMapRegion *)self southLat];
  [v4 setSouthLat:?];
  [(SFMapRegion *)self westLng];
  [v4 setWestLng:?];
  [(SFMapRegion *)self northLat];
  [v4 setNorthLat:?];
  [(SFMapRegion *)self eastLng];
  [v4 setEastLng:?];
  [(SFMapRegion *)self altitudeInMeters];
  [v4 setAltitudeInMeters:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMapRegion alloc] initWithFacade:self];
  jsonData = [(_SFPBMapRegion *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMapRegion alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMapRegion *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMapRegion alloc] initWithFacade:self];
  data = [(_SFPBMapRegion *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMapRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMapRegion alloc] initWithData:v5];
  v7 = [(SFMapRegion *)self initWithProtobuf:v6];

  return v7;
}

- (SFMapRegion)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v13.receiver = self;
  v13.super_class = SFMapRegion;
  v5 = [(SFMapRegion *)&v13 init];
  if (v5)
  {
    [protobufCopy southLat];
    if (v6 != 0.0)
    {
      [protobufCopy southLat];
      [(SFMapRegion *)v5 setSouthLat:?];
    }

    [protobufCopy westLng];
    if (v7 != 0.0)
    {
      [protobufCopy westLng];
      [(SFMapRegion *)v5 setWestLng:?];
    }

    [protobufCopy northLat];
    if (v8 != 0.0)
    {
      [protobufCopy northLat];
      [(SFMapRegion *)v5 setNorthLat:?];
    }

    [protobufCopy eastLng];
    if (v9 != 0.0)
    {
      [protobufCopy eastLng];
      [(SFMapRegion *)v5 setEastLng:?];
    }

    [protobufCopy altitudeInMeters];
    if (v10 != 0.0)
    {
      [protobufCopy altitudeInMeters];
      [(SFMapRegion *)v5 setAltitudeInMeters:?];
    }

    v11 = v5;
  }

  return v5;
}

@end