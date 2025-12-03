@interface SFSafariAttributes
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSafariAttributes)initWithCoder:(id)coder;
- (SFSafariAttributes)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSafariAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFSafariAttributes *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    hideReason = [(SFSafariAttributes *)self hideReason];
    hideReason2 = [(SFSafariAttributes *)v5 hideReason];

    v8 = hideReason == hideReason2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setHideReason:{-[SFSafariAttributes hideReason](self, "hideReason")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSafariAttributes alloc] initWithFacade:self];
  jsonData = [(_SFPBSafariAttributes *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSafariAttributes alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSafariAttributes *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSafariAttributes alloc] initWithFacade:self];
  data = [(_SFPBSafariAttributes *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSafariAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSafariAttributes alloc] initWithData:v5];
  v7 = [(SFSafariAttributes *)self initWithProtobuf:v6];

  return v7;
}

- (SFSafariAttributes)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFSafariAttributes;
  v5 = [(SFSafariAttributes *)&v8 init];
  if (v5)
  {
    if ([protobufCopy hideReason])
    {
      -[SFSafariAttributes setHideReason:](v5, "setHideReason:", [protobufCopy hideReason]);
    }

    v6 = v5;
  }

  return v5;
}

@end