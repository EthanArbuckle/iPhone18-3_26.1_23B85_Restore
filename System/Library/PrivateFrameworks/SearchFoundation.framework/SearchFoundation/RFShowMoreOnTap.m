@interface RFShowMoreOnTap
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFShowMoreOnTap)initWithCoder:(id)a3;
- (RFShowMoreOnTap)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFShowMoreOnTap

- (RFShowMoreOnTap)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = RFShowMoreOnTap;
  v5 = [(RFShowMoreOnTap *)&v14 init];
  if (v5)
  {
    v6 = [v4 affordanceLabel];

    if (v6)
    {
      v7 = [v4 affordanceLabel];
      [(RFShowMoreOnTap *)v5 setAffordanceLabel:v7];
    }

    v8 = [v4 shows_without_truncation];

    if (v8)
    {
      v9 = [RFOptionalBool alloc];
      v10 = [v4 shows_without_truncation];
      v11 = [(RFOptionalBool *)v9 initWithProtobuf:v10];
      [(RFShowMoreOnTap *)v5 setShows_without_truncation:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFShowMoreOnTap *)self affordanceLabel];
  v4 = [v3 hash];
  v5 = [(RFShowMoreOnTap *)self shows_without_truncation];
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
    if ([(RFShowMoreOnTap *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFShowMoreOnTap *)self affordanceLabel];
      v8 = [(RFShowMoreOnTap *)v6 affordanceLabel];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(RFShowMoreOnTap *)self affordanceLabel];
      if (v9)
      {
        v3 = [(RFShowMoreOnTap *)self affordanceLabel];
        v10 = [(RFShowMoreOnTap *)v6 affordanceLabel];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(RFShowMoreOnTap *)self shows_without_truncation];
      v13 = [(RFShowMoreOnTap *)v6 shows_without_truncation];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(RFShowMoreOnTap *)self shows_without_truncation];
        if (v15)
        {
          v16 = v15;
          v19 = [(RFShowMoreOnTap *)self shows_without_truncation];
          [(RFShowMoreOnTap *)v6 shows_without_truncation];
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
  v5 = [(RFShowMoreOnTap *)self affordanceLabel];
  v6 = [v5 copy];
  [v4 setAffordanceLabel:v6];

  v7 = [(RFShowMoreOnTap *)self shows_without_truncation];
  v8 = [v7 copy];
  [v4 setShows_without_truncation:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFShowMoreOnTap alloc] initWithFacade:self];
  v3 = [(_SFPBRFShowMoreOnTap *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFShowMoreOnTap alloc] initWithFacade:self];
  v3 = [(_SFPBRFShowMoreOnTap *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFShowMoreOnTap alloc] initWithFacade:self];
  v5 = [(_SFPBRFShowMoreOnTap *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFShowMoreOnTap)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFShowMoreOnTap alloc] initWithData:v5];
  v7 = [(RFShowMoreOnTap *)self initWithProtobuf:v6];

  return v7;
}

@end