@interface RFRGBValue
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFRGBValue)initWithCoder:(id)coder;
- (RFRGBValue)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFRGBValue

- (unint64_t)hash
{
  v3 = [(RFRGBValue *)self red];
  v4 = [v3 hash];
  green = [(RFRGBValue *)self green];
  v6 = [green hash] ^ v4;
  blue = [(RFRGBValue *)self blue];
  v8 = [blue hash];

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
    if ([(RFRGBValue *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      v7 = [(RFRGBValue *)self red];
      v8 = [(RFRGBValue *)v6 red];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(RFRGBValue *)self red];
      if (v9)
      {
        v3 = [(RFRGBValue *)self red];
        v10 = [(RFRGBValue *)v6 red];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      green = [(RFRGBValue *)self green];
      green2 = [(RFRGBValue *)v6 green];
      v14 = green2;
      if ((green != 0) == (green2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      green3 = [(RFRGBValue *)self green];
      if (green3)
      {
        v25 = green;
        green4 = [(RFRGBValue *)self green];
        green5 = [(RFRGBValue *)v6 green];
        v28 = green4;
        if (![green4 isEqual:?])
        {
          v11 = 0;
          green = v25;
          goto LABEL_25;
        }

        v29 = green3;
        v30 = v3;
        green = v25;
      }

      else
      {
        v29 = 0;
        v30 = v3;
      }

      blue = [(RFRGBValue *)self blue];
      blue2 = [(RFRGBValue *)v6 blue];
      if ((blue != 0) == (blue2 == 0))
      {

        v11 = 0;
        green3 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = blue;
        v26 = blue2;
        blue3 = [(RFRGBValue *)self blue];
        green3 = v29;
        if (blue3)
        {
          v23 = blue3;
          blue4 = [(RFRGBValue *)self blue];
          blue5 = [(RFRGBValue *)v6 blue];
          v11 = [blue4 isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(RFRGBValue *)self red];
  v6 = [v5 copy];
  [v4 setRed:v6];

  green = [(RFRGBValue *)self green];
  v8 = [green copy];
  [v4 setGreen:v8];

  blue = [(RFRGBValue *)self blue];
  v10 = [blue copy];
  [v4 setBlue:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFRGBValue alloc] initWithFacade:self];
  jsonData = [(_SFPBRFRGBValue *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFRGBValue alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFRGBValue *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFRGBValue alloc] initWithFacade:self];
  data = [(_SFPBRFRGBValue *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFRGBValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFRGBValue alloc] initWithData:v5];
  v7 = [(RFRGBValue *)self initWithProtobuf:v6];

  return v7;
}

- (RFRGBValue)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v17.receiver = self;
  v17.super_class = RFRGBValue;
  v5 = [(RFRGBValue *)&v17 init];
  if (v5)
  {
    [protobufCopy red];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [protobufCopy red];
      v8 = [v7 numberWithFloat:?];
      [(RFRGBValue *)v5 setRed:v8];
    }

    [protobufCopy green];
    if (v9 != 0.0)
    {
      v10 = MEMORY[0x1E696AD98];
      [protobufCopy green];
      v11 = [v10 numberWithFloat:?];
      [(RFRGBValue *)v5 setGreen:v11];
    }

    [protobufCopy blue];
    if (v12 != 0.0)
    {
      v13 = MEMORY[0x1E696AD98];
      [protobufCopy blue];
      v14 = [v13 numberWithFloat:?];
      [(RFRGBValue *)v5 setBlue:v14];
    }

    v15 = v5;
  }

  return v5;
}

@end