@interface SFPin
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPin)initWithCoder:(id)coder;
- (SFPin)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPin

- (unint64_t)hash
{
  location = [(SFPin *)self location];
  v4 = [location hash];
  pinColor = [(SFPin *)self pinColor];
  v6 = [pinColor hash] ^ v4;
  label = [(SFPin *)self label];
  v8 = [label hash];
  resultID = [(SFPin *)self resultID];
  v10 = v6 ^ v8 ^ [resultID hash];
  mapsData = [(SFPin *)self mapsData];
  v12 = [mapsData hash];
  v13 = v12 ^ [(SFPin *)self pinBehavior];
  pinText = [(SFPin *)self pinText];
  v15 = v13 ^ [pinText hash];

  return v10 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFPin *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      location = [(SFPin *)self location];
      location2 = [(SFPin *)v7 location];
      if ((location != 0) == (location2 == 0))
      {
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }

      location3 = [(SFPin *)self location];
      if (location3)
      {
        location4 = [(SFPin *)self location];
        location5 = [(SFPin *)v7 location];
        if (![location4 isEqual:?])
        {
          v12 = 0;
          goto LABEL_34;
        }

        v55 = location4;
      }

      pinColor = [(SFPin *)self pinColor];
      pinColor2 = [(SFPin *)v7 pinColor];
      if ((pinColor != 0) == (pinColor2 == 0))
      {
        goto LABEL_32;
      }

      pinColor3 = [(SFPin *)self pinColor];
      if (pinColor3)
      {
        pinColor4 = [(SFPin *)self pinColor];
        pinColor5 = [(SFPin *)v7 pinColor];
        if (([pinColor4 isEqual:pinColor5] & 1) == 0)
        {

LABEL_31:
LABEL_32:

          v12 = 0;
          goto LABEL_33;
        }

        v51 = pinColor4;
        v54 = location2;
        v15 = location5;
        v16 = pinColor3;
      }

      else
      {
        v54 = location2;
        v15 = location5;
        v16 = 0;
      }

      v52 = pinColor5;
      location5 = v15;
      label = [(SFPin *)self label];
      label2 = [(SFPin *)v7 label];
      pinColor3 = v16;
      location2 = v54;
      if ((label != 0) != (label2 == 0))
      {
        v50 = label2;
        label3 = [(SFPin *)self label];
        if (label3)
        {
          label4 = [(SFPin *)self label];
          label5 = [(SFPin *)v7 label];
          v47 = label4;
          if (![label4 isEqual:?])
          {
            v12 = 0;
            v24 = label3;
            goto LABEL_57;
          }

          v48 = v16;
        }

        else
        {
          v48 = v16;
        }

        resultID = [(SFPin *)self resultID];
        resultID2 = [(SFPin *)v7 resultID];
        if ((resultID != 0) != (resultID2 == 0))
        {
          v45 = resultID2;
          [(SFPin *)self resultID];
          pinColor3 = v48;
          v44 = v43 = resultID;
          if (v44)
          {
            resultID3 = [(SFPin *)self resultID];
            [(SFPin *)v7 resultID];
            v4 = v42 = resultID3;
            if (![resultID3 isEqual:?])
            {
              v12 = 0;
              v22 = v44;
LABEL_55:

LABEL_56:
              v24 = label3;
              if (!label3)
              {
LABEL_58:

                if (pinColor3)
                {
                }

LABEL_33:
                location4 = v55;
                if (!location3)
                {
LABEL_35:

                  goto LABEL_36;
                }

LABEL_34:

                goto LABEL_35;
              }

LABEL_57:

              goto LABEL_58;
            }
          }

          mapsData = [(SFPin *)self mapsData];
          mapsData2 = [(SFPin *)v7 mapsData];
          if ((mapsData != 0) == (mapsData2 == 0))
          {

            v12 = 0;
            pinColor3 = v48;
            goto LABEL_54;
          }

          v40 = mapsData;
          v41 = mapsData2;
          [(SFPin *)self mapsData];
          v39 = pinColor3 = v48;
          if (!v39 || (-[SFPin mapsData](self, "mapsData"), v27 = objc_claimAutoreleasedReturnValue(), -[SFPin mapsData](v7, "mapsData"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v27, [v27 isEqual:?]))
          {
            pinBehavior = [(SFPin *)self pinBehavior];
            if (pinBehavior == [(SFPin *)v7 pinBehavior])
            {
              pinText = [(SFPin *)self pinText];
              pinText2 = [(SFPin *)v7 pinText];
              if ((pinText != 0) == (pinText2 == 0))
              {

                v12 = 0;
              }

              else
              {
                v36 = pinText2;
                pinText3 = [(SFPin *)self pinText];
                if (pinText3)
                {
                  v35 = pinText3;
                  pinText4 = [(SFPin *)self pinText];
                  pinText5 = [(SFPin *)v7 pinText];
                  v12 = [pinText4 isEqual:?];
                }

                else
                {

                  v12 = 1;
                }
              }
            }

            else
            {
              v12 = 0;
            }

            v28 = v39;
            if (!v39)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v12 = 0;
            v28 = v39;
          }

LABEL_53:
LABEL_54:
          v22 = v44;
          if (!v44)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        pinColor3 = v48;
        if (label3)
        {
        }

        label2 = v50;
      }

      if (pinColor3)
      {
      }

      goto LABEL_31;
    }

    v12 = 0;
  }

LABEL_37:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  location = [(SFPin *)self location];
  v6 = [location copy];
  [v4 setLocation:v6];

  pinColor = [(SFPin *)self pinColor];
  v8 = [pinColor copy];
  [v4 setPinColor:v8];

  label = [(SFPin *)self label];
  v10 = [label copy];
  [v4 setLabel:v10];

  resultID = [(SFPin *)self resultID];
  v12 = [resultID copy];
  [v4 setResultID:v12];

  mapsData = [(SFPin *)self mapsData];
  v14 = [mapsData copy];
  [v4 setMapsData:v14];

  [v4 setPinBehavior:{-[SFPin pinBehavior](self, "pinBehavior")}];
  pinText = [(SFPin *)self pinText];
  v16 = [pinText copy];
  [v4 setPinText:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPin alloc] initWithFacade:self];
  jsonData = [(_SFPBPin *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPin alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPin *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPin alloc] initWithFacade:self];
  data = [(_SFPBPin *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPin alloc] initWithData:v5];
  v7 = [(SFPin *)self initWithProtobuf:v6];

  return v7;
}

- (SFPin)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = SFPin;
  v5 = [(SFPin *)&v24 init];
  if (v5)
  {
    location = [protobufCopy location];

    if (location)
    {
      v7 = [SFLatLng alloc];
      location2 = [protobufCopy location];
      v9 = [(SFLatLng *)v7 initWithProtobuf:location2];
      [(SFPin *)v5 setLocation:v9];
    }

    pinColor = [protobufCopy pinColor];

    if (pinColor)
    {
      v11 = [SFColor alloc];
      pinColor2 = [protobufCopy pinColor];
      v13 = [(SFColor *)v11 initWithProtobuf:pinColor2];
      [(SFPin *)v5 setPinColor:v13];
    }

    label = [protobufCopy label];

    if (label)
    {
      label2 = [protobufCopy label];
      [(SFPin *)v5 setLabel:label2];
    }

    resultID = [protobufCopy resultID];

    if (resultID)
    {
      resultID2 = [protobufCopy resultID];
      [(SFPin *)v5 setResultID:resultID2];
    }

    mapsData = [protobufCopy mapsData];

    if (mapsData)
    {
      mapsData2 = [protobufCopy mapsData];
      [(SFPin *)v5 setMapsData:mapsData2];
    }

    if ([protobufCopy pinBehavior])
    {
      -[SFPin setPinBehavior:](v5, "setPinBehavior:", [protobufCopy pinBehavior]);
    }

    pinText = [protobufCopy pinText];

    if (pinText)
    {
      pinText2 = [protobufCopy pinText];
      [(SFPin *)v5 setPinText:pinText2];
    }

    v22 = v5;
  }

  return v5;
}

@end