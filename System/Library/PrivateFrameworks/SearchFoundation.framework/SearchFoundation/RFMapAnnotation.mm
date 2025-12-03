@interface RFMapAnnotation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapAnnotation)initWithCoder:(id)coder;
- (RFMapAnnotation)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFMapAnnotation

- (unint64_t)hash
{
  coordinate = [(RFMapAnnotation *)self coordinate];
  v4 = [coordinate hash];
  content = [(RFMapAnnotation *)self content];
  v6 = [content hash] ^ v4;
  title = [(RFMapAnnotation *)self title];
  v8 = [title hash];
  anchor = [(RFMapAnnotation *)self anchor];
  v10 = v6 ^ v8 ^ [anchor hash];
  label = [(RFMapAnnotation *)self label];
  v12 = [label hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(RFMapAnnotation *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      coordinate = [(RFMapAnnotation *)self coordinate];
      coordinate2 = [(RFMapAnnotation *)v5 coordinate];
      if ((coordinate != 0) == (coordinate2 == 0))
      {
        v10 = 0;
LABEL_50:

        goto LABEL_51;
      }

      coordinate3 = [(RFMapAnnotation *)self coordinate];
      if (coordinate3)
      {
        coordinate4 = [(RFMapAnnotation *)self coordinate];
        coordinate5 = [(RFMapAnnotation *)v5 coordinate];
        if (![coordinate4 isEqual:?])
        {
          v10 = 0;
          goto LABEL_48;
        }

        v47 = coordinate4;
      }

      content = [(RFMapAnnotation *)self content];
      content2 = [(RFMapAnnotation *)v5 content];
      if ((content != 0) != (content2 == 0))
      {
        content3 = [(RFMapAnnotation *)self content];
        if (content3)
        {
          v13 = content3;
          content4 = [(RFMapAnnotation *)self content];
          [(RFMapAnnotation *)v5 content];
          v45 = v44 = content4;
          if (![content4 isEqual:?])
          {
            v10 = 0;
            v19 = v13;
            v20 = v45;
            goto LABEL_45;
          }

          v46 = v13;
        }

        else
        {
          v46 = 0;
        }

        title = [(RFMapAnnotation *)self title];
        title2 = [(RFMapAnnotation *)v5 title];
        if ((title != 0) != (title2 == 0))
        {
          v42 = title;
          v43 = title2;
          title3 = [(RFMapAnnotation *)self title];
          if (title3)
          {
            title4 = [(RFMapAnnotation *)self title];
            title5 = [(RFMapAnnotation *)v5 title];
            v40 = title4;
            if (![title4 isEqual:?])
            {
              v10 = 0;
              v19 = v46;
              v20 = v45;
              goto LABEL_43;
            }

            v41 = title3;
          }

          else
          {
            v41 = 0;
          }

          anchor = [(RFMapAnnotation *)self anchor];
          anchor2 = [(RFMapAnnotation *)v5 anchor];
          if ((anchor != 0) != (anchor2 == 0))
          {
            v38 = anchor2;
            [(RFMapAnnotation *)self anchor];
            v37 = v20 = v45;
            if (v37)
            {
              v33 = anchor;
              anchor3 = [(RFMapAnnotation *)self anchor];
              anchor4 = [(RFMapAnnotation *)v5 anchor];
              v36 = anchor3;
              if (![anchor3 isEqual:?])
              {
                v10 = 0;
                v27 = v37;
                anchor = v33;
                goto LABEL_41;
              }

              anchor = v33;
            }

            label = [(RFMapAnnotation *)self label];
            label2 = [(RFMapAnnotation *)v5 label];
            if ((label != 0) == (label2 == 0))
            {

              v10 = 0;
              v20 = v45;
              v27 = v37;
              if (!v37)
              {
LABEL_42:

                title3 = v41;
                v19 = v46;
                if (!v41)
                {
                  goto LABEL_44;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v32 = label2;
              v34 = label;
              label3 = [(RFMapAnnotation *)self label];
              v20 = v45;
              v27 = v37;
              if (label3)
              {
                v31 = label3;
                label4 = [(RFMapAnnotation *)self label];
                label5 = [(RFMapAnnotation *)v5 label];
                v10 = [label4 isEqual:label5];

                if (!v37)
                {
                  goto LABEL_42;
                }
              }

              else
              {

                v10 = 1;
                if (!v37)
                {
                  goto LABEL_42;
                }
              }
            }

LABEL_41:

            goto LABEL_42;
          }

          v10 = 0;
          v19 = v46;
          v20 = v45;
          title3 = v41;
          if (!v41)
          {
LABEL_44:

            if (!v19)
            {
LABEL_46:

LABEL_47:
              coordinate4 = v47;
              if (!coordinate3)
              {
LABEL_49:

                goto LABEL_50;
              }

LABEL_48:

              goto LABEL_49;
            }

LABEL_45:

            goto LABEL_46;
          }

LABEL_43:

          goto LABEL_44;
        }

        if (v46)
        {
        }
      }

      v10 = 0;
      goto LABEL_47;
    }

    v10 = 0;
  }

LABEL_51:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  coordinate = [(RFMapAnnotation *)self coordinate];
  v6 = [coordinate copy];
  [v4 setCoordinate:v6];

  content = [(RFMapAnnotation *)self content];
  v8 = [content copy];
  [v4 setContent:v8];

  title = [(RFMapAnnotation *)self title];
  v10 = [title copy];
  [v4 setTitle:v10];

  anchor = [(RFMapAnnotation *)self anchor];
  v12 = [anchor copy];
  [v4 setAnchor:v12];

  label = [(RFMapAnnotation *)self label];
  v14 = [label copy];
  [v4 setLabel:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapAnnotation alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMapAnnotation *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapAnnotation alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMapAnnotation *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFMapAnnotation alloc] initWithFacade:self];
  data = [(_SFPBRFMapAnnotation *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFMapAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapAnnotation alloc] initWithData:v5];
  v7 = [(RFMapAnnotation *)self initWithProtobuf:v6];

  return v7;
}

- (RFMapAnnotation)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v26.receiver = self;
  v26.super_class = RFMapAnnotation;
  v5 = [(RFMapAnnotation *)&v26 init];
  if (v5)
  {
    coordinate = [protobufCopy coordinate];

    if (coordinate)
    {
      v7 = [SFLatLng alloc];
      coordinate2 = [protobufCopy coordinate];
      v9 = [(SFLatLng *)v7 initWithProtobuf:coordinate2];
      [(RFMapAnnotation *)v5 setCoordinate:v9];
    }

    content = [protobufCopy content];

    if (content)
    {
      v11 = [RFVisualProperty alloc];
      content2 = [protobufCopy content];
      v13 = [(RFVisualProperty *)v11 initWithProtobuf:content2];
      [(RFMapAnnotation *)v5 setContent:v13];
    }

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(RFMapAnnotation *)v5 setTitle:title2];
    }

    anchor = [protobufCopy anchor];

    if (anchor)
    {
      v17 = [RFMapPoint alloc];
      anchor2 = [protobufCopy anchor];
      v19 = [(RFMapPoint *)v17 initWithProtobuf:anchor2];
      [(RFMapAnnotation *)v5 setAnchor:v19];
    }

    label = [protobufCopy label];

    if (label)
    {
      v21 = [RFTextProperty alloc];
      label2 = [protobufCopy label];
      v23 = [(RFTextProperty *)v21 initWithProtobuf:label2];
      [(RFMapAnnotation *)v5 setLabel:v23];
    }

    v24 = v5;
  }

  return v5;
}

@end