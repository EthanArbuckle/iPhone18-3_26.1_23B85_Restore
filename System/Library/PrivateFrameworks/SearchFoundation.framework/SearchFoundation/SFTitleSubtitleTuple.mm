@interface SFTitleSubtitleTuple
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTitleSubtitleTuple)initWithCoder:(id)coder;
- (SFTitleSubtitleTuple)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTitleSubtitleTuple

- (unint64_t)hash
{
  title = [(SFTitleSubtitleTuple *)self title];
  v4 = [title hash];
  subtitle = [(SFTitleSubtitleTuple *)self subtitle];
  v6 = [subtitle hash];

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
    if ([(SFTitleSubtitleTuple *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      title = [(SFTitleSubtitleTuple *)self title];
      title2 = [(SFTitleSubtitleTuple *)v6 title];
      if ((title != 0) == (title2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      title3 = [(SFTitleSubtitleTuple *)self title];
      if (title3)
      {
        title4 = [(SFTitleSubtitleTuple *)self title];
        title5 = [(SFTitleSubtitleTuple *)v6 title];
        if (![title4 isEqual:title5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = title5;
      }

      subtitle = [(SFTitleSubtitleTuple *)self subtitle];
      subtitle2 = [(SFTitleSubtitleTuple *)v6 subtitle];
      v14 = subtitle2;
      if ((subtitle != 0) == (subtitle2 == 0))
      {

        v11 = 0;
      }

      else
      {
        subtitle3 = [(SFTitleSubtitleTuple *)self subtitle];
        if (subtitle3)
        {
          v16 = subtitle3;
          subtitle4 = [(SFTitleSubtitleTuple *)self subtitle];
          [(SFTitleSubtitleTuple *)v6 subtitle];
          v17 = v20 = title4;
          v11 = [subtitle4 isEqual:v17];

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
  title = [(SFTitleSubtitleTuple *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  subtitle = [(SFTitleSubtitleTuple *)self subtitle];
  v8 = [subtitle copy];
  [v4 setSubtitle:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTitleSubtitleTuple alloc] initWithFacade:self];
  jsonData = [(_SFPBTitleSubtitleTuple *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTitleSubtitleTuple alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTitleSubtitleTuple *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBTitleSubtitleTuple alloc] initWithFacade:self];
  data = [(_SFPBTitleSubtitleTuple *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFTitleSubtitleTuple)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTitleSubtitleTuple alloc] initWithData:v5];
  v7 = [(SFTitleSubtitleTuple *)self initWithProtobuf:v6];

  return v7;
}

- (SFTitleSubtitleTuple)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFTitleSubtitleTuple;
  v5 = [(SFTitleSubtitleTuple *)&v12 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFTitleSubtitleTuple *)v5 setTitle:title2];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [protobufCopy subtitle];
      [(SFTitleSubtitleTuple *)v5 setSubtitle:subtitle2];
    }

    v10 = v5;
  }

  return v5;
}

@end