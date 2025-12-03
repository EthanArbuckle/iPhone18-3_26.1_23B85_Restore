@interface SFURLShareItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFURLShareItem)initWithCoder:(id)coder;
- (SFURLShareItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFURLShareItem

- (SFURLShareItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = SFURLShareItem;
  v5 = [(SFURLShareItem *)&v11 init];
  if (v5)
  {
    urlValue = [protobufCopy urlValue];

    if (urlValue)
    {
      urlValue2 = [protobufCopy urlValue];
      v8 = _SFPBURLHandwrittenTranslator(urlValue2);
      [(SFURLShareItem *)v5 setUrlValue:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFURLShareItem;
  v3 = [(SFShareItem *)&v7 hash];
  urlValue = [(SFURLShareItem *)self urlValue];
  v5 = [urlValue hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFURLShareItem *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFURLShareItem, [(SFShareItem *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    urlValue = [(SFURLShareItem *)self urlValue];
    urlValue2 = [(SFURLShareItem *)v5 urlValue];
    if ((urlValue != 0) == (urlValue2 == 0))
    {
      v11 = 0;
    }

    else
    {
      urlValue3 = [(SFURLShareItem *)self urlValue];
      if (urlValue3)
      {
        urlValue4 = [(SFURLShareItem *)self urlValue];
        urlValue5 = [(SFURLShareItem *)v5 urlValue];
        v11 = [urlValue4 isEqual:urlValue5];
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
  v8.receiver = self;
  v8.super_class = SFURLShareItem;
  v4 = [(SFShareItem *)&v8 copyWithZone:zone];
  urlValue = [(SFURLShareItem *)self urlValue];
  v6 = [urlValue copy];
  [v4 setUrlValue:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBURLShareItem alloc] initWithFacade:self];
  jsonData = [(_SFPBURLShareItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBURLShareItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBURLShareItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBURLShareItem alloc] initWithFacade:self];
  data = [(_SFPBURLShareItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFURLShareItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBURLShareItem alloc] initWithData:v5];
  v7 = [(SFURLShareItem *)self initWithProtobuf:v6];

  return v7;
}

@end