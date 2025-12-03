@interface RFMapMarkerImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarkerImage)initWithCoder:(id)coder;
- (RFMapMarkerImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFMapMarkerImage

- (RFMapMarkerImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFMapMarkerImage;
  v5 = [(RFMapMarkerImage *)&v16 init];
  if (v5)
  {
    coordinate = [protobufCopy coordinate];

    if (coordinate)
    {
      v7 = [SFLatLng alloc];
      coordinate2 = [protobufCopy coordinate];
      v9 = [(SFLatLng *)v7 initWithProtobuf:coordinate2];
      [(RFMapMarkerImage *)v5 setCoordinate:v9];
    }

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(RFMapMarkerImage *)v5 setTitle:title2];
    }

    systemImage = [protobufCopy systemImage];

    if (systemImage)
    {
      systemImage2 = [protobufCopy systemImage];
      [(RFMapMarkerImage *)v5 setSystemImage:systemImage2];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  coordinate = [(RFMapMarkerImage *)self coordinate];
  v4 = [coordinate hash];
  title = [(RFMapMarkerImage *)self title];
  v6 = [title hash] ^ v4;
  systemImage = [(RFMapMarkerImage *)self systemImage];
  v8 = [systemImage hash];

  return v6 ^ v8;
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
    if ([(RFMapMarkerImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      coordinate = [(RFMapMarkerImage *)self coordinate];
      coordinate2 = [(RFMapMarkerImage *)v6 coordinate];
      if ((coordinate != 0) == (coordinate2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      coordinate3 = [(RFMapMarkerImage *)self coordinate];
      if (coordinate3)
      {
        coordinate4 = [(RFMapMarkerImage *)self coordinate];
        coordinate5 = [(RFMapMarkerImage *)v6 coordinate];
        if (![coordinate4 isEqual:coordinate5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = coordinate5;
      }

      title = [(RFMapMarkerImage *)self title];
      title2 = [(RFMapMarkerImage *)v6 title];
      v14 = title2;
      if ((title != 0) == (title2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      title3 = [(RFMapMarkerImage *)self title];
      if (title3)
      {
        v25 = title;
        title4 = [(RFMapMarkerImage *)self title];
        title5 = [(RFMapMarkerImage *)v6 title];
        v28 = title4;
        if (![title4 isEqual:?])
        {
          v11 = 0;
          title = v25;
          goto LABEL_25;
        }

        v29 = title3;
        v30 = coordinate4;
        title = v25;
      }

      else
      {
        v29 = 0;
        v30 = coordinate4;
      }

      systemImage = [(RFMapMarkerImage *)self systemImage];
      systemImage2 = [(RFMapMarkerImage *)v6 systemImage];
      if ((systemImage != 0) == (systemImage2 == 0))
      {

        v11 = 0;
        title3 = v29;
        coordinate4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = systemImage;
        v26 = systemImage2;
        systemImage3 = [(RFMapMarkerImage *)self systemImage];
        title3 = v29;
        if (systemImage3)
        {
          v23 = systemImage3;
          systemImage4 = [(RFMapMarkerImage *)self systemImage];
          systemImage5 = [(RFMapMarkerImage *)v6 systemImage];
          v11 = [systemImage4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        coordinate4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      coordinate5 = v31;
      if (!coordinate3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  coordinate = [(RFMapMarkerImage *)self coordinate];
  v6 = [coordinate copy];
  [v4 setCoordinate:v6];

  title = [(RFMapMarkerImage *)self title];
  v8 = [title copy];
  [v4 setTitle:v8];

  systemImage = [(RFMapMarkerImage *)self systemImage];
  v10 = [systemImage copy];
  [v4 setSystemImage:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarkerImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMapMarkerImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarkerImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMapMarkerImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFMapMarkerImage alloc] initWithFacade:self];
  data = [(_SFPBRFMapMarkerImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFMapMarkerImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarkerImage alloc] initWithData:v5];
  v7 = [(RFMapMarkerImage *)self initWithProtobuf:v6];

  return v7;
}

@end