@interface RFMapMarkerImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarkerImage)initWithCoder:(id)a3;
- (RFMapMarkerImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMapMarkerImage

- (RFMapMarkerImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFMapMarkerImage;
  v5 = [(RFMapMarkerImage *)&v16 init];
  if (v5)
  {
    v6 = [v4 coordinate];

    if (v6)
    {
      v7 = [SFLatLng alloc];
      v8 = [v4 coordinate];
      v9 = [(SFLatLng *)v7 initWithProtobuf:v8];
      [(RFMapMarkerImage *)v5 setCoordinate:v9];
    }

    v10 = [v4 title];

    if (v10)
    {
      v11 = [v4 title];
      [(RFMapMarkerImage *)v5 setTitle:v11];
    }

    v12 = [v4 systemImage];

    if (v12)
    {
      v13 = [v4 systemImage];
      [(RFMapMarkerImage *)v5 setSystemImage:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFMapMarkerImage *)self coordinate];
  v4 = [v3 hash];
  v5 = [(RFMapMarkerImage *)self title];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFMapMarkerImage *)self systemImage];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    if ([(RFMapMarkerImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFMapMarkerImage *)self coordinate];
      v8 = [(RFMapMarkerImage *)v6 coordinate];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(RFMapMarkerImage *)self coordinate];
      if (v9)
      {
        v3 = [(RFMapMarkerImage *)self coordinate];
        v10 = [(RFMapMarkerImage *)v6 coordinate];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(RFMapMarkerImage *)self title];
      v13 = [(RFMapMarkerImage *)v6 title];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(RFMapMarkerImage *)self title];
      if (v15)
      {
        v25 = v12;
        v16 = [(RFMapMarkerImage *)self title];
        v27 = [(RFMapMarkerImage *)v6 title];
        v28 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v25;
          goto LABEL_25;
        }

        v29 = v15;
        v30 = v3;
        v12 = v25;
      }

      else
      {
        v29 = 0;
        v30 = v3;
      }

      v17 = [(RFMapMarkerImage *)self systemImage];
      v18 = [(RFMapMarkerImage *)v6 systemImage];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v17;
        v26 = v18;
        v19 = [(RFMapMarkerImage *)self systemImage];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(RFMapMarkerImage *)self systemImage];
          v20 = [(RFMapMarkerImage *)v6 systemImage];
          v11 = [v22 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      v10 = v31;
      if (!v9)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFMapMarkerImage *)self coordinate];
  v6 = [v5 copy];
  [v4 setCoordinate:v6];

  v7 = [(RFMapMarkerImage *)self title];
  v8 = [v7 copy];
  [v4 setTitle:v8];

  v9 = [(RFMapMarkerImage *)self systemImage];
  v10 = [v9 copy];
  [v4 setSystemImage:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarkerImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarkerImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarkerImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarkerImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFMapMarkerImage alloc] initWithFacade:self];
  v5 = [(_SFPBRFMapMarkerImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFMapMarkerImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarkerImage alloc] initWithData:v5];
  v7 = [(RFMapMarkerImage *)self initWithProtobuf:v6];

  return v7;
}

@end