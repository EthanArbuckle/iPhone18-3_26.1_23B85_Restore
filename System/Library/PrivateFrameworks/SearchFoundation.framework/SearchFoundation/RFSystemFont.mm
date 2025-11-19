@interface RFSystemFont
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSystemFont)initWithCoder:(id)a3;
- (RFSystemFont)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSystemFont

- (RFSystemFont)initWithProtobuf:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RFSystemFont;
  v5 = [(RFSystemFont *)&v11 init];
  if (v5)
  {
    [v4 size];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [v4 size];
      v8 = [v7 numberWithFloat:?];
      [(RFSystemFont *)v5 setSize:v8];
    }

    if ([v4 weight])
    {
      -[RFSystemFont setWeight:](v5, "setWeight:", [v4 weight]);
    }

    v9 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFSystemFont *)self size];
  v4 = [v3 hash];
  v5 = [(RFSystemFont *)self weight];

  return v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFSystemFont *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFSystemFont *)self size];
      v9 = [(RFSystemFont *)v7 size];
      if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(RFSystemFont *)self size];
      if (!v10 || (-[RFSystemFont size](self, "size"), v3 = objc_claimAutoreleasedReturnValue(), -[RFSystemFont size](v7, "size"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(RFSystemFont *)self weight];
        v11 = v12 == [(RFSystemFont *)v7 weight];
        if (!v10)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFSystemFont *)self size];
  v6 = [v5 copy];
  [v4 setSize:v6];

  [v4 setWeight:{-[RFSystemFont weight](self, "weight")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFont_RFSystemFont alloc] initWithFacade:self];
  v3 = [(_SFPBRFFont_RFSystemFont *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFont_RFSystemFont alloc] initWithFacade:self];
  v3 = [(_SFPBRFFont_RFSystemFont *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFFont_RFSystemFont alloc] initWithFacade:self];
  v5 = [(_SFPBRFFont_RFSystemFont *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFSystemFont)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFFont_RFSystemFont alloc] initWithData:v5];
  v7 = [(RFSystemFont *)self initWithProtobuf:v6];

  return v7;
}

@end