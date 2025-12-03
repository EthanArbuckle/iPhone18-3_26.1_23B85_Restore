@interface SFShareItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShareItem)initWithCoder:(id)coder;
- (SFShareItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShareItem

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (NSData)jsonData
{
  v2 = [[_SFPBShareItem alloc] initWithFacade:self];
  jsonData = [(_SFPBShareItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShareItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShareItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBShareItem alloc] initWithFacade:self];
  data = [(_SFPBShareItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFShareItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBShareItem alloc] initWithData:v5];
  v7 = [(SFShareItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFShareItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v13.receiver = self;
  v13.super_class = SFShareItem;
  v5 = [(SFShareItem *)&v13 init];
  if (v5)
  {
    urlShareItem = [protobufCopy urlShareItem];

    if (urlShareItem)
    {
      v7 = [SFURLShareItem alloc];
      urlShareItem2 = [protobufCopy urlShareItem];
    }

    else
    {
      spotlightShareItem = [protobufCopy spotlightShareItem];

      if (!spotlightShareItem)
      {
        v9 = v5;
        goto LABEL_8;
      }

      v7 = [SFCoreSpotlightShareItem alloc];
      urlShareItem2 = [protobufCopy spotlightShareItem];
    }

    v11 = urlShareItem2;
    v9 = [(SFURLShareItem *)v7 initWithProtobuf:urlShareItem2];
  }

  else
  {
    v9 = 0;
  }

LABEL_8:

  return v9;
}

@end