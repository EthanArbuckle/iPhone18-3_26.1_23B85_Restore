@interface SFStructuredLocation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFStructuredLocation)initWithCoder:(id)a3;
- (SFStructuredLocation)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFStructuredLocation

- (unint64_t)hash
{
  v3 = [(SFStructuredLocation *)self title];
  v4 = [v3 hash];
  v5 = [(SFStructuredLocation *)self geoLocation];
  v6 = [v5 hash] ^ v4;
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFStructuredLocation *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFStructuredLocation *)self title];
      v8 = [(SFStructuredLocation *)v6 title];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v9 = [(SFStructuredLocation *)self title];
      if (v9)
      {
        v10 = [(SFStructuredLocation *)self title];
        v3 = [(SFStructuredLocation *)v6 title];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_22;
        }

        v24 = v10;
      }

      v12 = [(SFStructuredLocation *)self geoLocation];
      v13 = [(SFStructuredLocation *)v6 geoLocation];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_21;
      }

      v15 = [(SFStructuredLocation *)self geoLocation];
      if (v15)
      {
        v21 = v3;
        v16 = [(SFStructuredLocation *)self geoLocation];
        v22 = [(SFStructuredLocation *)v6 geoLocation];
        v23 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v3 = v21;
LABEL_19:

LABEL_20:
LABEL_21:
          v10 = v24;
          if (!v9)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        v3 = v21;
      }

      [(SFStructuredLocation *)self radius];
      v18 = v17;
      [(SFStructuredLocation *)v6 radius];
      v11 = vabdd_f64(v18, v19) < 2.22044605e-16;
      if (!v15)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFStructuredLocation *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  v7 = [(SFStructuredLocation *)self geoLocation];
  v8 = [v7 copy];
  [v4 setGeoLocation:v8];

  [(SFStructuredLocation *)self radius];
  [v4 setRadius:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBStructuredLocation alloc] initWithFacade:self];
  v3 = [(_SFPBStructuredLocation *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBStructuredLocation alloc] initWithFacade:self];
  v3 = [(_SFPBStructuredLocation *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBStructuredLocation alloc] initWithFacade:self];
  v5 = [(_SFPBStructuredLocation *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFStructuredLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBStructuredLocation alloc] initWithData:v5];
  v7 = [(SFStructuredLocation *)self initWithProtobuf:v6];

  return v7;
}

- (SFStructuredLocation)initWithProtobuf:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFStructuredLocation;
  v5 = [(SFStructuredLocation *)&v15 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFStructuredLocation *)v5 setTitle:v7];
    }

    v8 = [v4 geoLocation];

    if (v8)
    {
      v9 = [SFLatLng alloc];
      v10 = [v4 geoLocation];
      v11 = [(SFLatLng *)v9 initWithProtobuf:v10];
      [(SFStructuredLocation *)v5 setGeoLocation:v11];
    }

    [v4 radius];
    if (v12 != 0.0)
    {
      [v4 radius];
      [(SFStructuredLocation *)v5 setRadius:?];
    }

    v13 = v5;
  }

  return v5;
}

@end