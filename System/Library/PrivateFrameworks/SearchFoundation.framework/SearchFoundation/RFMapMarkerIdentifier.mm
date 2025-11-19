@interface RFMapMarkerIdentifier
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarkerIdentifier)initWithCoder:(id)a3;
- (RFMapMarkerIdentifier)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMapMarkerIdentifier

- (RFMapMarkerIdentifier)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RFMapMarkerIdentifier;
  v5 = [(RFMapMarkerIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [v4 muid];

    if (v6)
    {
      v7 = [v4 muid];
      [(RFMapMarkerIdentifier *)v5 setMuid:v7];
    }

    v8 = [v4 resultProviderID];

    if (v8)
    {
      v9 = [v4 resultProviderID];
      [(RFMapMarkerIdentifier *)v5 setResultProviderID:v9];
    }

    if ([v4 isForCameraPositionOnly])
    {
      -[RFMapMarkerIdentifier setIsForCameraPositionOnly:](v5, "setIsForCameraPositionOnly:", [v4 isForCameraPositionOnly]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFMapMarkerIdentifier *)self muid];
  v4 = [v3 hash];
  v5 = [(RFMapMarkerIdentifier *)self resultProviderID];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFMapMarkerIdentifier *)self isForCameraPositionOnly];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFMapMarkerIdentifier *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFMapMarkerIdentifier *)self muid];
      v8 = [(RFMapMarkerIdentifier *)v6 muid];
      if ((v7 != 0) == (v8 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_24:

        goto LABEL_25;
      }

      v9 = [(RFMapMarkerIdentifier *)self muid];
      if (v9)
      {
        v10 = [(RFMapMarkerIdentifier *)self muid];
        v3 = [(RFMapMarkerIdentifier *)v6 muid];
        if (![v10 isEqual:v3])
        {
          LOBYTE(v11) = 0;
          goto LABEL_22;
        }

        v22 = v10;
      }

      v12 = [(RFMapMarkerIdentifier *)self resultProviderID];
      v13 = [(RFMapMarkerIdentifier *)v6 resultProviderID];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_21;
      }

      v15 = [(RFMapMarkerIdentifier *)self resultProviderID];
      if (v15)
      {
        v19 = v3;
        v16 = [(RFMapMarkerIdentifier *)self resultProviderID];
        v20 = [(RFMapMarkerIdentifier *)v6 resultProviderID];
        v21 = v16;
        if (![v16 isEqual:?])
        {
          LOBYTE(v11) = 0;
          v3 = v19;
LABEL_19:

LABEL_20:
LABEL_21:
          v10 = v22;
          if (!v9)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        v3 = v19;
      }

      v17 = [(RFMapMarkerIdentifier *)self isForCameraPositionOnly];
      v11 = v17 ^ [(RFMapMarkerIdentifier *)v6 isForCameraPositionOnly]^ 1;
      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    LOBYTE(v11) = 0;
  }

LABEL_25:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFMapMarkerIdentifier *)self muid];
  v6 = [v5 copy];
  [v4 setMuid:v6];

  v7 = [(RFMapMarkerIdentifier *)self resultProviderID];
  v8 = [v7 copy];
  [v4 setResultProviderID:v8];

  [v4 setIsForCameraPositionOnly:{-[RFMapMarkerIdentifier isForCameraPositionOnly](self, "isForCameraPositionOnly")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarkerIdentifier alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarkerIdentifier *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarkerIdentifier alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarkerIdentifier *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFMapMarkerIdentifier alloc] initWithFacade:self];
  v5 = [(_SFPBRFMapMarkerIdentifier *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFMapMarkerIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarkerIdentifier alloc] initWithData:v5];
  v7 = [(RFMapMarkerIdentifier *)self initWithProtobuf:v6];

  return v7;
}

@end