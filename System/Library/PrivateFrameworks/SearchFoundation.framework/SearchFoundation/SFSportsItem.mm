@interface SFSportsItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSportsItem)initWithCoder:(id)coder;
- (SFSportsItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSportsItem

- (unint64_t)hash
{
  type = [(SFSportsItem *)self type];
  identifier = [(SFSportsItem *)self identifier];
  v5 = [identifier hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if ([(SFSportsItem *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    type = [(SFSportsItem *)self type];
    if (type == [(SFSportsItem *)v5 type])
    {
      identifier = [(SFSportsItem *)self identifier];
      identifier2 = [(SFSportsItem *)v5 identifier];
      if ((identifier != 0) == (identifier2 == 0))
      {
        v12 = 0;
      }

      else
      {
        identifier3 = [(SFSportsItem *)self identifier];
        if (identifier3)
        {
          identifier4 = [(SFSportsItem *)self identifier];
          identifier5 = [(SFSportsItem *)v5 identifier];
          v12 = [identifier4 isEqual:identifier5];
        }

        else
        {
          v12 = 1;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setType:{-[SFSportsItem type](self, "type")}];
  identifier = [(SFSportsItem *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSportsItem alloc] initWithFacade:self];
  jsonData = [(_SFPBSportsItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSportsItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSportsItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSportsItem alloc] initWithFacade:self];
  data = [(_SFPBSportsItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSportsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSportsItem alloc] initWithData:v5];
  v7 = [(SFSportsItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFSportsItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFSportsItem;
  v5 = [(SFSportsItem *)&v10 init];
  if (v5)
  {
    if ([protobufCopy type])
    {
      -[SFSportsItem setType:](v5, "setType:", [protobufCopy type]);
    }

    identifier = [protobufCopy identifier];

    if (identifier)
    {
      identifier2 = [protobufCopy identifier];
      [(SFSportsItem *)v5 setIdentifier:identifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end