@interface RFHighlightedSubstring
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFHighlightedSubstring)initWithCoder:(id)coder;
- (RFHighlightedSubstring)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFHighlightedSubstring

- (RFHighlightedSubstring)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = RFHighlightedSubstring;
  v5 = [(RFHighlightedSubstring *)&v10 init];
  if (v5)
  {
    substring = [protobufCopy substring];

    if (substring)
    {
      substring2 = [protobufCopy substring];
      [(RFHighlightedSubstring *)v5 setSubstring:substring2];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  substring = [(RFHighlightedSubstring *)self substring];
  v3 = [substring hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(RFHighlightedSubstring *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    substring = [(RFHighlightedSubstring *)self substring];
    substring2 = [(RFHighlightedSubstring *)v5 substring];
    if ((substring != 0) == (substring2 == 0))
    {
      v11 = 0;
    }

    else
    {
      substring3 = [(RFHighlightedSubstring *)self substring];
      if (substring3)
      {
        substring4 = [(RFHighlightedSubstring *)self substring];
        substring5 = [(RFHighlightedSubstring *)v5 substring];
        v11 = [substring4 isEqual:substring5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  substring = [(RFHighlightedSubstring *)self substring];
  v6 = [substring copy];
  [v4 setSubstring:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:self];
  jsonData = [(_SFPBRFHighlightedSubstring *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFHighlightedSubstring *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFHighlightedSubstring alloc] initWithFacade:self];
  data = [(_SFPBRFHighlightedSubstring *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFHighlightedSubstring)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFHighlightedSubstring alloc] initWithData:v5];
  v7 = [(RFHighlightedSubstring *)self initWithProtobuf:v6];

  return v7;
}

@end