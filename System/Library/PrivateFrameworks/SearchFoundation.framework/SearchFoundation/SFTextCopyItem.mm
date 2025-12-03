@interface SFTextCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTextCopyItem)initWithCoder:(id)coder;
- (SFTextCopyItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTextCopyItem

- (SFTextCopyItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFTextCopyItem;
  v5 = [(SFTextCopyItem *)&v10 init];
  if (v5)
  {
    copyableString = [protobufCopy copyableString];

    if (copyableString)
    {
      copyableString2 = [protobufCopy copyableString];
      [(SFTextCopyItem *)v5 setCopyableString:copyableString2];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFTextCopyItem;
  v3 = [(SFCopyItem *)&v7 hash];
  copyableString = [(SFTextCopyItem *)self copyableString];
  v5 = [copyableString hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFTextCopyItem *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFTextCopyItem, [(SFCopyItem *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    copyableString = [(SFTextCopyItem *)self copyableString];
    copyableString2 = [(SFTextCopyItem *)v5 copyableString];
    if ((copyableString != 0) == (copyableString2 == 0))
    {
      v11 = 0;
    }

    else
    {
      copyableString3 = [(SFTextCopyItem *)self copyableString];
      if (copyableString3)
      {
        copyableString4 = [(SFTextCopyItem *)self copyableString];
        copyableString5 = [(SFTextCopyItem *)v5 copyableString];
        v11 = [copyableString4 isEqual:copyableString5];
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
  v8.super_class = SFTextCopyItem;
  v4 = [(SFCopyItem *)&v8 copyWithZone:zone];
  copyableString = [(SFTextCopyItem *)self copyableString];
  v6 = [copyableString copy];
  [v4 setCopyableString:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTextCopyItem alloc] initWithFacade:self];
  jsonData = [(_SFPBTextCopyItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTextCopyItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTextCopyItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBTextCopyItem alloc] initWithFacade:self];
  data = [(_SFPBTextCopyItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFTextCopyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTextCopyItem alloc] initWithData:v5];
  v7 = [(SFTextCopyItem *)self initWithProtobuf:v6];

  return v7;
}

@end