@interface SFURLCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFURLCopyItem)initWithCoder:(id)coder;
- (SFURLCopyItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFURLCopyItem

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFURLCopyItem;
  v3 = [(SFCopyItem *)&v7 hash];
  v4 = [(SFURLCopyItem *)self url];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFURLCopyItem *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFURLCopyItem, [(SFCopyItem *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    v6 = [(SFURLCopyItem *)self url];
    v7 = [(SFURLCopyItem *)v5 url];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFURLCopyItem *)self url];
      if (v8)
      {
        v9 = [(SFURLCopyItem *)self url];
        v10 = [(SFURLCopyItem *)v5 url];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFURLCopyItem;
  v4 = [(SFCopyItem *)&v8 copyWithZone:zone];
  v5 = [(SFURLCopyItem *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBURLCopyItem alloc] initWithFacade:self];
  jsonData = [(_SFPBURLCopyItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBURLCopyItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBURLCopyItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBURLCopyItem alloc] initWithFacade:self];
  data = [(_SFPBURLCopyItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFURLCopyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBURLCopyItem alloc] initWithData:v5];
  v7 = [(SFURLCopyItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFURLCopyItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = SFURLCopyItem;
  v5 = [(SFURLCopyItem *)&v11 init];
  if (v5)
  {
    v6 = [protobufCopy url];

    if (v6)
    {
      v7 = [protobufCopy url];
      v8 = _SFPBURLHandwrittenTranslator(v7);
      [(SFURLCopyItem *)v5 setUrl:v8];
    }

    v9 = v5;
  }

  return v5;
}

@end