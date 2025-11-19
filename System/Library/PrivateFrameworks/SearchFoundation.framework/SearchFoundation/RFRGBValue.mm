@interface RFRGBValue
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFRGBValue)initWithCoder:(id)a3;
- (RFRGBValue)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFRGBValue

- (unint64_t)hash
{
  v3 = [(RFRGBValue *)self red];
  v4 = [v3 hash];
  v5 = [(RFRGBValue *)self green];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFRGBValue *)self blue];
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
    if ([(RFRGBValue *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
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

      v12 = [(RFRGBValue *)self green];
      v13 = [(RFRGBValue *)v6 green];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(RFRGBValue *)self green];
      if (v15)
      {
        v25 = v12;
        v16 = [(RFRGBValue *)self green];
        v27 = [(RFRGBValue *)v6 green];
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

      v17 = [(RFRGBValue *)self blue];
      v18 = [(RFRGBValue *)v6 blue];
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
        v19 = [(RFRGBValue *)self blue];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(RFRGBValue *)self blue];
          v20 = [(RFRGBValue *)v6 blue];
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
  v5 = [(RFRGBValue *)self red];
  v6 = [v5 copy];
  [v4 setRed:v6];

  v7 = [(RFRGBValue *)self green];
  v8 = [v7 copy];
  [v4 setGreen:v8];

  v9 = [(RFRGBValue *)self blue];
  v10 = [v9 copy];
  [v4 setBlue:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFRGBValue alloc] initWithFacade:self];
  v3 = [(_SFPBRFRGBValue *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFRGBValue alloc] initWithFacade:self];
  v3 = [(_SFPBRFRGBValue *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFRGBValue alloc] initWithFacade:self];
  v5 = [(_SFPBRFRGBValue *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFRGBValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFRGBValue alloc] initWithData:v5];
  v7 = [(RFRGBValue *)self initWithProtobuf:v6];

  return v7;
}

- (RFRGBValue)initWithProtobuf:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RFRGBValue;
  v5 = [(RFRGBValue *)&v17 init];
  if (v5)
  {
    [v4 red];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [v4 red];
      v8 = [v7 numberWithFloat:?];
      [(RFRGBValue *)v5 setRed:v8];
    }

    [v4 green];
    if (v9 != 0.0)
    {
      v10 = MEMORY[0x1E696AD98];
      [v4 green];
      v11 = [v10 numberWithFloat:?];
      [(RFRGBValue *)v5 setGreen:v11];
    }

    [v4 blue];
    if (v12 != 0.0)
    {
      v13 = MEMORY[0x1E696AD98];
      [v4 blue];
      v14 = [v13 numberWithFloat:?];
      [(RFRGBValue *)v5 setBlue:v14];
    }

    v15 = v5;
  }

  return v5;
}

@end