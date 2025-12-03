@interface RFSystemFont
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSystemFont)initWithCoder:(id)coder;
- (RFSystemFont)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSystemFont

- (RFSystemFont)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = RFSystemFont;
  v5 = [(RFSystemFont *)&v11 init];
  if (v5)
  {
    [protobufCopy size];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [protobufCopy size];
      v8 = [v7 numberWithFloat:?];
      [(RFSystemFont *)v5 setSize:v8];
    }

    if ([protobufCopy weight])
    {
      -[RFSystemFont setWeight:](v5, "setWeight:", [protobufCopy weight]);
    }

    v9 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFSystemFont *)self size];
  v4 = [v3 hash];
  weight = [(RFSystemFont *)self weight];

  return v4 ^ weight;
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
    if ([(RFSystemFont *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
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
        weight = [(RFSystemFont *)self weight];
        v11 = weight == [(RFSystemFont *)v7 weight];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(RFSystemFont *)self size];
  v6 = [v5 copy];
  [v4 setSize:v6];

  [v4 setWeight:{-[RFSystemFont weight](self, "weight")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFont_RFSystemFont alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFont_RFSystemFont *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFont_RFSystemFont alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFont_RFSystemFont *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFFont_RFSystemFont alloc] initWithFacade:self];
  data = [(_SFPBRFFont_RFSystemFont *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFSystemFont)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFFont_RFSystemFont alloc] initWithData:v5];
  v7 = [(RFSystemFont *)self initWithProtobuf:v6];

  return v7;
}

@end