@interface RFHighlightedSubstring
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFHighlightedSubstring)initWithCoder:(id)a3;
- (RFHighlightedSubstring)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFHighlightedSubstring

- (RFHighlightedSubstring)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RFHighlightedSubstring;
  v5 = [(RFHighlightedSubstring *)&v10 init];
  if (v5)
  {
    v6 = [v4 substring];

    if (v6)
    {
      v7 = [v4 substring];
      [(RFHighlightedSubstring *)v5 setSubstring:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(RFHighlightedSubstring *)self substring];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(RFHighlightedSubstring *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(RFHighlightedSubstring *)self substring];
    v7 = [(RFHighlightedSubstring *)v5 substring];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(RFHighlightedSubstring *)self substring];
      if (v8)
      {
        v9 = [(RFHighlightedSubstring *)self substring];
        v10 = [(RFHighlightedSubstring *)v5 substring];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFHighlightedSubstring *)self substring];
  v6 = [v5 copy];
  [v4 setSubstring:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:self];
  v3 = [(_SFPBRFHighlightedSubstring *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:self];
  v3 = [(_SFPBRFHighlightedSubstring *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:self];
  v5 = [(_SFPBRFHighlightedSubstring *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFHighlightedSubstring)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFHighlightedSubstring alloc] initWithData:v5];
  v7 = [(RFHighlightedSubstring *)self initWithProtobuf:v6];

  return v7;
}

@end