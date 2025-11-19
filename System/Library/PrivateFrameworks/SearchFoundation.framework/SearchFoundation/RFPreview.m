@interface RFPreview
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFPreview)initWithCoder:(id)a3;
- (RFPreview)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFPreview

- (RFPreview)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = RFPreview;
  v5 = [(RFPreview *)&v14 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [v4 text];
      [(RFPreview *)v5 setText:v7];
    }

    v8 = [v4 command_reference];

    if (v8)
    {
      v9 = [SFCommandReference alloc];
      v10 = [v4 command_reference];
      v11 = [(SFCommandReference *)v9 initWithProtobuf:v10];
      [(RFPreview *)v5 setCommand_reference:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFPreview *)self text];
  v4 = [v3 hash];
  v5 = [(RFPreview *)self command_reference];
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
    if ([(RFPreview *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFPreview *)self text];
      v8 = [(RFPreview *)v6 text];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(RFPreview *)self text];
      if (v9)
      {
        v3 = [(RFPreview *)self text];
        v10 = [(RFPreview *)v6 text];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(RFPreview *)self command_reference];
      v13 = [(RFPreview *)v6 command_reference];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(RFPreview *)self command_reference];
        if (v15)
        {
          v16 = v15;
          v19 = [(RFPreview *)self command_reference];
          [(RFPreview *)v6 command_reference];
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
  v5 = [(RFPreview *)self text];
  v6 = [v5 copy];
  [v4 setText:v6];

  v7 = [(RFPreview *)self command_reference];
  v8 = [v7 copy];
  [v4 setCommand_reference:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFPreview alloc] initWithFacade:self];
  v3 = [(_SFPBRFPreview *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFPreview alloc] initWithFacade:self];
  v3 = [(_SFPBRFPreview *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFPreview alloc] initWithFacade:self];
  v5 = [(_SFPBRFPreview *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFPreview)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFPreview alloc] initWithData:v5];
  v7 = [(RFPreview *)self initWithProtobuf:v6];

  return v7;
}

@end