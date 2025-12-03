@interface SFCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCopyItem)initWithCoder:(id)coder;
- (SFCopyItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCopyItem

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
  v2 = [[_SFPBCopyItem alloc] initWithFacade:self];
  jsonData = [(_SFPBCopyItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCopyItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCopyItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCopyItem alloc] initWithFacade:self];
  data = [(_SFPBCopyItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCopyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCopyItem alloc] initWithData:v5];
  v7 = [(SFCopyItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFCopyItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFCopyItem;
  v5 = [(SFCopyItem *)&v16 init];
  if (v5)
  {
    textCopyItem = [protobufCopy textCopyItem];

    if (textCopyItem)
    {
      v7 = [SFTextCopyItem alloc];
      textCopyItem2 = [protobufCopy textCopyItem];
    }

    else
    {
      spotlightCopyItem = [protobufCopy spotlightCopyItem];

      if (spotlightCopyItem)
      {
        v7 = [SFCoreSpotlightCopyItem alloc];
        textCopyItem2 = [protobufCopy spotlightCopyItem];
      }

      else
      {
        imageCopyItem = [protobufCopy imageCopyItem];

        if (imageCopyItem)
        {
          v7 = [SFImageCopyItem alloc];
          textCopyItem2 = [protobufCopy imageCopyItem];
        }

        else
        {
          contactCopyItem = [protobufCopy contactCopyItem];

          if (contactCopyItem)
          {
            v7 = [SFContactCopyItem alloc];
            textCopyItem2 = [protobufCopy contactCopyItem];
          }

          else
          {
            urlCopyItem = [protobufCopy urlCopyItem];

            if (!urlCopyItem)
            {
              v9 = v5;
              goto LABEL_14;
            }

            v7 = [SFURLCopyItem alloc];
            textCopyItem2 = [protobufCopy urlCopyItem];
          }
        }
      }
    }

    v14 = textCopyItem2;
    v9 = [(SFTextCopyItem *)v7 initWithProtobuf:textCopyItem2];
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

@end