@interface SFMediaDetail
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaDetail)initWithCoder:(id)coder;
- (SFMediaDetail)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMediaDetail

- (SFMediaDetail)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFMediaDetail;
  v5 = [(SFMediaDetail *)&v14 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFMediaDetail *)v5 setTitle:title2];
    }

    content = [protobufCopy content];

    if (content)
    {
      v9 = [SFText alloc];
      content2 = [protobufCopy content];
      v11 = [(SFText *)v9 initWithProtobuf:content2];
      [(SFMediaDetail *)v5 setContent:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  title = [(SFMediaDetail *)self title];
  v4 = [title hash];
  content = [(SFMediaDetail *)self content];
  v6 = [content hash];

  return v6 ^ v4;
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
    if ([(SFMediaDetail *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      title = [(SFMediaDetail *)self title];
      title2 = [(SFMediaDetail *)v6 title];
      if ((title != 0) == (title2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      title3 = [(SFMediaDetail *)self title];
      if (title3)
      {
        title4 = [(SFMediaDetail *)self title];
        title5 = [(SFMediaDetail *)v6 title];
        if (![title4 isEqual:title5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = title5;
      }

      content = [(SFMediaDetail *)self content];
      content2 = [(SFMediaDetail *)v6 content];
      v14 = content2;
      if ((content != 0) == (content2 == 0))
      {

        v11 = 0;
      }

      else
      {
        content3 = [(SFMediaDetail *)self content];
        if (content3)
        {
          v16 = content3;
          content4 = [(SFMediaDetail *)self content];
          [(SFMediaDetail *)v6 content];
          v17 = v20 = title4;
          v11 = [content4 isEqual:v17];

          title4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      title5 = v21;
      if (!title3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFMediaDetail *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  content = [(SFMediaDetail *)self content];
  v8 = [content copy];
  [v4 setContent:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaDetail alloc] initWithFacade:self];
  jsonData = [(_SFPBMediaDetail *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaDetail alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMediaDetail *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMediaDetail alloc] initWithFacade:self];
  data = [(_SFPBMediaDetail *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMediaDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMediaDetail alloc] initWithData:v5];
  v7 = [(SFMediaDetail *)self initWithProtobuf:v6];

  return v7;
}

@end