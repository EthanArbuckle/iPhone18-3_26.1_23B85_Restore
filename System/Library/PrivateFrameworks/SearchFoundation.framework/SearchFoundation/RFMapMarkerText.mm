@interface RFMapMarkerText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarkerText)initWithCoder:(id)coder;
- (RFMapMarkerText)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFMapMarkerText

- (unint64_t)hash
{
  coordinate = [(RFMapMarkerText *)self coordinate];
  v4 = [coordinate hash];
  title = [(RFMapMarkerText *)self title];
  v6 = [title hash] ^ v4;
  monogram = [(RFMapMarkerText *)self monogram];
  v8 = [monogram hash];

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
    if ([(RFMapMarkerText *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      coordinate = [(RFMapMarkerText *)self coordinate];
      coordinate2 = [(RFMapMarkerText *)v6 coordinate];
      if ((coordinate != 0) == (coordinate2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      coordinate3 = [(RFMapMarkerText *)self coordinate];
      if (coordinate3)
      {
        coordinate4 = [(RFMapMarkerText *)self coordinate];
        coordinate5 = [(RFMapMarkerText *)v6 coordinate];
        if (![coordinate4 isEqual:coordinate5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = coordinate5;
      }

      title = [(RFMapMarkerText *)self title];
      title2 = [(RFMapMarkerText *)v6 title];
      v14 = title2;
      if ((title != 0) == (title2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      title3 = [(RFMapMarkerText *)self title];
      if (title3)
      {
        v25 = title;
        title4 = [(RFMapMarkerText *)self title];
        title5 = [(RFMapMarkerText *)v6 title];
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

      monogram = [(RFMapMarkerText *)self monogram];
      monogram2 = [(RFMapMarkerText *)v6 monogram];
      if ((monogram != 0) == (monogram2 == 0))
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
        v24 = monogram;
        v26 = monogram2;
        monogram3 = [(RFMapMarkerText *)self monogram];
        title3 = v29;
        if (monogram3)
        {
          v23 = monogram3;
          monogram4 = [(RFMapMarkerText *)self monogram];
          monogram5 = [(RFMapMarkerText *)v6 monogram];
          v11 = [monogram4 isEqual:?];
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
  coordinate = [(RFMapMarkerText *)self coordinate];
  v6 = [coordinate copy];
  [v4 setCoordinate:v6];

  title = [(RFMapMarkerText *)self title];
  v8 = [title copy];
  [v4 setTitle:v8];

  monogram = [(RFMapMarkerText *)self monogram];
  v10 = [monogram copy];
  [v4 setMonogram:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarkerText alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMapMarkerText *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarkerText alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMapMarkerText *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFMapMarkerText alloc] initWithFacade:self];
  data = [(_SFPBRFMapMarkerText *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFMapMarkerText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarkerText alloc] initWithData:v5];
  v7 = [(RFMapMarkerText *)self initWithProtobuf:v6];

  return v7;
}

- (RFMapMarkerText)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v18.receiver = self;
  v18.super_class = RFMapMarkerText;
  v5 = [(RFMapMarkerText *)&v18 init];
  if (v5)
  {
    coordinate = [protobufCopy coordinate];

    if (coordinate)
    {
      v7 = [SFLatLng alloc];
      coordinate2 = [protobufCopy coordinate];
      v9 = [(SFLatLng *)v7 initWithProtobuf:coordinate2];
      [(RFMapMarkerText *)v5 setCoordinate:v9];
    }

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(RFMapMarkerText *)v5 setTitle:title2];
    }

    monogram = [protobufCopy monogram];

    if (monogram)
    {
      v13 = [RFTextProperty alloc];
      monogram2 = [protobufCopy monogram];
      v15 = [(RFTextProperty *)v13 initWithProtobuf:monogram2];
      [(RFMapMarkerText *)v5 setMonogram:v15];
    }

    v16 = v5;
  }

  return v5;
}

@end