@interface RFColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFColor)initWithCoder:(id)coder;
- (RFColor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(int)name;
- (void)setRgb_value:(id)rgb_value;
@end

@implementation RFColor

- (unint64_t)hash
{
  rgb_value = [(RFColor *)self rgb_value];
  v4 = [rgb_value hash];
  v5 = v4 ^ [(RFColor *)self name];
  alpha = [(RFColor *)self alpha];
  v7 = [alpha hash];

  return v5 ^ v7;
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
    if ([(RFColor *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      rgb_value = [(RFColor *)self rgb_value];
      rgb_value2 = [(RFColor *)v6 rgb_value];
      if ((rgb_value != 0) == (rgb_value2 == 0))
      {
        v11 = 0;
LABEL_20:

        goto LABEL_21;
      }

      rgb_value3 = [(RFColor *)self rgb_value];
      if (rgb_value3)
      {
        rgb_value4 = [(RFColor *)self rgb_value];
        rgb_value5 = [(RFColor *)v6 rgb_value];
        if (![rgb_value4 isEqual:rgb_value5])
        {
          v11 = 0;
          goto LABEL_18;
        }

        v21 = rgb_value4;
      }

      name = [(RFColor *)self name];
      if (name == [(RFColor *)v6 name])
      {
        alpha = [(RFColor *)self alpha];
        alpha2 = [(RFColor *)v6 alpha];
        v15 = alpha2;
        if ((alpha != 0) != (alpha2 == 0))
        {
          alpha3 = [(RFColor *)self alpha];
          if (alpha3)
          {
            v17 = alpha3;
            alpha4 = [(RFColor *)self alpha];
            alpha5 = [(RFColor *)v6 alpha];
            v11 = [alpha4 isEqual:alpha5];
          }

          else
          {

            v11 = 1;
          }

LABEL_17:
          rgb_value4 = v21;
          if (!rgb_value3)
          {
LABEL_19:

            goto LABEL_20;
          }

LABEL_18:

          goto LABEL_19;
        }
      }

      v11 = 0;
      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFColor *)self hasRgb_value])
  {
    rgb_value = [(RFColor *)self rgb_value];
    v6 = [rgb_value copy];
    [v4 setRgb_value:v6];
  }

  if ([(RFColor *)self hasName])
  {
    [v4 setName:{-[RFColor name](self, "name")}];
  }

  alpha = [(RFColor *)self alpha];
  v8 = [alpha copy];
  [v4 setAlpha:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFColor alloc] initWithFacade:self];
  jsonData = [(_SFPBRFColor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFColor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFColor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFColor alloc] initWithFacade:self];
  data = [(_SFPBRFColor *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFColor alloc] initWithData:v5];
  v7 = [(RFColor *)self initWithProtobuf:v6];

  return v7;
}

- (void)setName:(int)name
{
  has = self->_has;
  self->_name = name;
  *&self->_has = has & 0xFC | 2;
  rgb_value = self->_rgb_value;
  self->_rgb_value = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)setRgb_value:(id)rgb_value
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_rgb_value, rgb_value);
  *&self->_has &= ~2u;
  self->_name = 0;
}

- (RFColor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFColor;
  v5 = [(RFColor *)&v16 init];
  if (v5)
  {
    rgb_value = [protobufCopy rgb_value];

    if (rgb_value)
    {
      v7 = [RFRGBValue alloc];
      rgb_value2 = [protobufCopy rgb_value];
      v9 = [(RFRGBValue *)v7 initWithProtobuf:rgb_value2];
      [(RFColor *)v5 setRgb_value:v9];
    }

    if ([protobufCopy name])
    {
      -[RFColor setName:](v5, "setName:", [protobufCopy name]);
    }

    alpha = [protobufCopy alpha];

    if (alpha)
    {
      v11 = [RFOptionalFloat alloc];
      alpha2 = [protobufCopy alpha];
      v13 = [(RFOptionalFloat *)v11 initWithProtobuf:alpha2];
      [(RFColor *)v5 setAlpha:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end