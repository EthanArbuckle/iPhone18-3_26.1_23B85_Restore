@interface RFMapMarkerText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarkerText)initWithCoder:(id)a3;
- (RFMapMarkerText)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMapMarkerText

- (unint64_t)hash
{
  v3 = [(RFMapMarkerText *)self coordinate];
  v4 = [v3 hash];
  v5 = [(RFMapMarkerText *)self title];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFMapMarkerText *)self monogram];
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
    if ([(RFMapMarkerText *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFMapMarkerText *)self coordinate];
      v8 = [(RFMapMarkerText *)v6 coordinate];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(RFMapMarkerText *)self coordinate];
      if (v9)
      {
        v3 = [(RFMapMarkerText *)self coordinate];
        v10 = [(RFMapMarkerText *)v6 coordinate];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(RFMapMarkerText *)self title];
      v13 = [(RFMapMarkerText *)v6 title];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(RFMapMarkerText *)self title];
      if (v15)
      {
        v25 = v12;
        v16 = [(RFMapMarkerText *)self title];
        v27 = [(RFMapMarkerText *)v6 title];
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

      v17 = [(RFMapMarkerText *)self monogram];
      v18 = [(RFMapMarkerText *)v6 monogram];
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
        v19 = [(RFMapMarkerText *)self monogram];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(RFMapMarkerText *)self monogram];
          v20 = [(RFMapMarkerText *)v6 monogram];
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
  v5 = [(RFMapMarkerText *)self coordinate];
  v6 = [v5 copy];
  [v4 setCoordinate:v6];

  v7 = [(RFMapMarkerText *)self title];
  v8 = [v7 copy];
  [v4 setTitle:v8];

  v9 = [(RFMapMarkerText *)self monogram];
  v10 = [v9 copy];
  [v4 setMonogram:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarkerText alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarkerText *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarkerText alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarkerText *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFMapMarkerText alloc] initWithFacade:self];
  v5 = [(_SFPBRFMapMarkerText *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFMapMarkerText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarkerText alloc] initWithData:v5];
  v7 = [(RFMapMarkerText *)self initWithProtobuf:v6];

  return v7;
}

- (RFMapMarkerText)initWithProtobuf:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RFMapMarkerText;
  v5 = [(RFMapMarkerText *)&v18 init];
  if (v5)
  {
    v6 = [v4 coordinate];

    if (v6)
    {
      v7 = [SFLatLng alloc];
      v8 = [v4 coordinate];
      v9 = [(SFLatLng *)v7 initWithProtobuf:v8];
      [(RFMapMarkerText *)v5 setCoordinate:v9];
    }

    v10 = [v4 title];

    if (v10)
    {
      v11 = [v4 title];
      [(RFMapMarkerText *)v5 setTitle:v11];
    }

    v12 = [v4 monogram];

    if (v12)
    {
      v13 = [RFTextProperty alloc];
      v14 = [v4 monogram];
      v15 = [(RFTextProperty *)v13 initWithProtobuf:v14];
      [(RFMapMarkerText *)v5 setMonogram:v15];
    }

    v16 = v5;
  }

  return v5;
}

@end