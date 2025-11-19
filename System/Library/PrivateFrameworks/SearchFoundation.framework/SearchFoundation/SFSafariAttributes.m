@interface SFSafariAttributes
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSafariAttributes)initWithCoder:(id)a3;
- (SFSafariAttributes)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSafariAttributes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFSafariAttributes *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFSafariAttributes *)self hideReason];
    v7 = [(SFSafariAttributes *)v5 hideReason];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setHideReason:{-[SFSafariAttributes hideReason](self, "hideReason")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSafariAttributes alloc] initWithFacade:self];
  v3 = [(_SFPBSafariAttributes *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSafariAttributes alloc] initWithFacade:self];
  v3 = [(_SFPBSafariAttributes *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBSafariAttributes alloc] initWithFacade:self];
  v5 = [(_SFPBSafariAttributes *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFSafariAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSafariAttributes alloc] initWithData:v5];
  v7 = [(SFSafariAttributes *)self initWithProtobuf:v6];

  return v7;
}

- (SFSafariAttributes)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFSafariAttributes;
  v5 = [(SFSafariAttributes *)&v8 init];
  if (v5)
  {
    if ([v4 hideReason])
    {
      -[SFSafariAttributes setHideReason:](v5, "setHideReason:", [v4 hideReason]);
    }

    v6 = v5;
  }

  return v5;
}

@end