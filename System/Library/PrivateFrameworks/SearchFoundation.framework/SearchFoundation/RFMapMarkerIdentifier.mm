@interface RFMapMarkerIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarkerIdentifier)initWithCoder:(id)coder;
- (RFMapMarkerIdentifier)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFMapMarkerIdentifier

- (RFMapMarkerIdentifier)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = RFMapMarkerIdentifier;
  v5 = [(RFMapMarkerIdentifier *)&v12 init];
  if (v5)
  {
    muid = [protobufCopy muid];

    if (muid)
    {
      muid2 = [protobufCopy muid];
      [(RFMapMarkerIdentifier *)v5 setMuid:muid2];
    }

    resultProviderID = [protobufCopy resultProviderID];

    if (resultProviderID)
    {
      resultProviderID2 = [protobufCopy resultProviderID];
      [(RFMapMarkerIdentifier *)v5 setResultProviderID:resultProviderID2];
    }

    if ([protobufCopy isForCameraPositionOnly])
    {
      -[RFMapMarkerIdentifier setIsForCameraPositionOnly:](v5, "setIsForCameraPositionOnly:", [protobufCopy isForCameraPositionOnly]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  muid = [(RFMapMarkerIdentifier *)self muid];
  v4 = [muid hash];
  resultProviderID = [(RFMapMarkerIdentifier *)self resultProviderID];
  v6 = [resultProviderID hash] ^ v4;
  isForCameraPositionOnly = [(RFMapMarkerIdentifier *)self isForCameraPositionOnly];

  return v6 ^ isForCameraPositionOnly;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFMapMarkerIdentifier *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      muid = [(RFMapMarkerIdentifier *)self muid];
      muid2 = [(RFMapMarkerIdentifier *)v6 muid];
      if ((muid != 0) == (muid2 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_24:

        goto LABEL_25;
      }

      muid3 = [(RFMapMarkerIdentifier *)self muid];
      if (muid3)
      {
        muid4 = [(RFMapMarkerIdentifier *)self muid];
        muid5 = [(RFMapMarkerIdentifier *)v6 muid];
        if (![muid4 isEqual:muid5])
        {
          LOBYTE(v11) = 0;
          goto LABEL_22;
        }

        v22 = muid4;
      }

      resultProviderID = [(RFMapMarkerIdentifier *)self resultProviderID];
      resultProviderID2 = [(RFMapMarkerIdentifier *)v6 resultProviderID];
      v14 = resultProviderID2;
      if ((resultProviderID != 0) == (resultProviderID2 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_21;
      }

      resultProviderID3 = [(RFMapMarkerIdentifier *)self resultProviderID];
      if (resultProviderID3)
      {
        v19 = muid5;
        resultProviderID4 = [(RFMapMarkerIdentifier *)self resultProviderID];
        resultProviderID5 = [(RFMapMarkerIdentifier *)v6 resultProviderID];
        v21 = resultProviderID4;
        if (![resultProviderID4 isEqual:?])
        {
          LOBYTE(v11) = 0;
          muid5 = v19;
LABEL_19:

LABEL_20:
LABEL_21:
          muid4 = v22;
          if (!muid3)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        muid5 = v19;
      }

      isForCameraPositionOnly = [(RFMapMarkerIdentifier *)self isForCameraPositionOnly];
      v11 = isForCameraPositionOnly ^ [(RFMapMarkerIdentifier *)v6 isForCameraPositionOnly]^ 1;
      if (!resultProviderID3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  muid = [(RFMapMarkerIdentifier *)self muid];
  v6 = [muid copy];
  [v4 setMuid:v6];

  resultProviderID = [(RFMapMarkerIdentifier *)self resultProviderID];
  v8 = [resultProviderID copy];
  [v4 setResultProviderID:v8];

  [v4 setIsForCameraPositionOnly:{-[RFMapMarkerIdentifier isForCameraPositionOnly](self, "isForCameraPositionOnly")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarkerIdentifier alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMapMarkerIdentifier *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarkerIdentifier alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMapMarkerIdentifier *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFMapMarkerIdentifier alloc] initWithFacade:self];
  data = [(_SFPBRFMapMarkerIdentifier *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFMapMarkerIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarkerIdentifier alloc] initWithData:v5];
  v7 = [(RFMapMarkerIdentifier *)self initWithProtobuf:v6];

  return v7;
}

@end