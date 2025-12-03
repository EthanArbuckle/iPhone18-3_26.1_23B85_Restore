@interface SFStructuredLocation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFStructuredLocation)initWithCoder:(id)coder;
- (SFStructuredLocation)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFStructuredLocation

- (unint64_t)hash
{
  title = [(SFStructuredLocation *)self title];
  v4 = [title hash];
  geoLocation = [(SFStructuredLocation *)self geoLocation];
  v6 = [geoLocation hash] ^ v4;
  [(SFStructuredLocation *)self radius];
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  *v8.i64 = round(v7);
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = (*vbslq_s8(vnegq_f64(v10), v9, v8).i64 * 2654435760.0) + vcvtd_n_u64_f64(v7 - *v8.i64, 0x40uLL);

  return v6 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFStructuredLocation *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      title = [(SFStructuredLocation *)self title];
      title2 = [(SFStructuredLocation *)v6 title];
      if ((title != 0) == (title2 == 0))
      {
        v11 = 0;
LABEL_24:

        goto LABEL_25;
      }

      title3 = [(SFStructuredLocation *)self title];
      if (title3)
      {
        title4 = [(SFStructuredLocation *)self title];
        title5 = [(SFStructuredLocation *)v6 title];
        if (![title4 isEqual:title5])
        {
          v11 = 0;
          goto LABEL_22;
        }

        v24 = title4;
      }

      geoLocation = [(SFStructuredLocation *)self geoLocation];
      geoLocation2 = [(SFStructuredLocation *)v6 geoLocation];
      v14 = geoLocation2;
      if ((geoLocation != 0) == (geoLocation2 == 0))
      {

        v11 = 0;
        goto LABEL_21;
      }

      geoLocation3 = [(SFStructuredLocation *)self geoLocation];
      if (geoLocation3)
      {
        v21 = title5;
        geoLocation4 = [(SFStructuredLocation *)self geoLocation];
        geoLocation5 = [(SFStructuredLocation *)v6 geoLocation];
        v23 = geoLocation4;
        if (![geoLocation4 isEqual:?])
        {
          v11 = 0;
          title5 = v21;
LABEL_19:

LABEL_20:
LABEL_21:
          title4 = v24;
          if (!title3)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        title5 = v21;
      }

      [(SFStructuredLocation *)self radius];
      v18 = v17;
      [(SFStructuredLocation *)v6 radius];
      v11 = vabdd_f64(v18, v19) < 2.22044605e-16;
      if (!geoLocation3)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v11 = 0;
  }

LABEL_25:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFStructuredLocation *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  geoLocation = [(SFStructuredLocation *)self geoLocation];
  v8 = [geoLocation copy];
  [v4 setGeoLocation:v8];

  [(SFStructuredLocation *)self radius];
  [v4 setRadius:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBStructuredLocation alloc] initWithFacade:self];
  jsonData = [(_SFPBStructuredLocation *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBStructuredLocation alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBStructuredLocation *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBStructuredLocation alloc] initWithFacade:self];
  data = [(_SFPBStructuredLocation *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFStructuredLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBStructuredLocation alloc] initWithData:v5];
  v7 = [(SFStructuredLocation *)self initWithProtobuf:v6];

  return v7;
}

- (SFStructuredLocation)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v15.receiver = self;
  v15.super_class = SFStructuredLocation;
  v5 = [(SFStructuredLocation *)&v15 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFStructuredLocation *)v5 setTitle:title2];
    }

    geoLocation = [protobufCopy geoLocation];

    if (geoLocation)
    {
      v9 = [SFLatLng alloc];
      geoLocation2 = [protobufCopy geoLocation];
      v11 = [(SFLatLng *)v9 initWithProtobuf:geoLocation2];
      [(SFStructuredLocation *)v5 setGeoLocation:v11];
    }

    [protobufCopy radius];
    if (v12 != 0.0)
    {
      [protobufCopy radius];
      [(SFStructuredLocation *)v5 setRadius:?];
    }

    v13 = v5;
  }

  return v5;
}

@end