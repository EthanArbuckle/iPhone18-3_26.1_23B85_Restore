@interface RFAspectRatio
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFAspectRatio)initWithCoder:(id)a3;
- (RFAspectRatio)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFAspectRatio

- (RFAspectRatio)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = RFAspectRatio;
  v5 = [(RFAspectRatio *)&v14 init];
  if (v5)
  {
    [v4 width];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [v4 width];
      v8 = [v7 numberWithFloat:?];
      [(RFAspectRatio *)v5 setWidth:v8];
    }

    [v4 height];
    if (v9 != 0.0)
    {
      v10 = MEMORY[0x1E696AD98];
      [v4 height];
      v11 = [v10 numberWithFloat:?];
      [(RFAspectRatio *)v5 setHeight:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFAspectRatio *)self width];
  v4 = [v3 hash];
  v5 = [(RFAspectRatio *)self height];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    if ([(RFAspectRatio *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFAspectRatio *)self width];
      v8 = [(RFAspectRatio *)v6 width];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(RFAspectRatio *)self width];
      if (v9)
      {
        v3 = [(RFAspectRatio *)self width];
        v10 = [(RFAspectRatio *)v6 width];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(RFAspectRatio *)self height];
      v13 = [(RFAspectRatio *)v6 height];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(RFAspectRatio *)self height];
        if (v15)
        {
          v16 = v15;
          v19 = [(RFAspectRatio *)self height];
          [(RFAspectRatio *)v6 height];
          v17 = v20 = v3;
          v11 = [v19 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFAspectRatio *)self width];
  v6 = [v5 copy];
  [v4 setWidth:v6];

  v7 = [(RFAspectRatio *)self height];
  v8 = [v7 copy];
  [v4 setHeight:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFAspectRatio alloc] initWithFacade:self];
  v3 = [(_SFPBRFAspectRatio *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFAspectRatio alloc] initWithFacade:self];
  v3 = [(_SFPBRFAspectRatio *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFAspectRatio alloc] initWithFacade:self];
  v5 = [(_SFPBRFAspectRatio *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFAspectRatio)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFAspectRatio alloc] initWithData:v5];
  v7 = [(RFAspectRatio *)self initWithProtobuf:v6];

  return v7;
}

@end