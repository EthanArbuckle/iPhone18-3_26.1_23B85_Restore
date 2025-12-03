@interface SFUpdateSportsFollowingStatusCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUpdateSportsFollowingStatusCommand)initWithCoder:(id)coder;
- (SFUpdateSportsFollowingStatusCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFUpdateSportsFollowingStatusCommand

- (SFUpdateSportsFollowingStatusCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFUpdateSportsFollowingStatusCommand;
  v5 = [(SFUpdateSportsFollowingStatusCommand *)&v12 init];
  if (v5)
  {
    sportsItem = [protobufCopy sportsItem];

    if (sportsItem)
    {
      v7 = [SFSportsItem alloc];
      sportsItem2 = [protobufCopy sportsItem];
      v9 = [(SFSportsItem *)v7 initWithProtobuf:sportsItem2];
      [(SFUpdateSportsFollowingStatusCommand *)v5 setSportsItem:v9];
    }

    if ([protobufCopy follow])
    {
      -[SFUpdateSportsFollowingStatusCommand setFollow:](v5, "setFollow:", [protobufCopy follow]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFUpdateSportsFollowingStatusCommand;
  v3 = [(SFCommand *)&v8 hash];
  sportsItem = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
  v5 = [sportsItem hash];
  v6 = v5 ^ [(SFUpdateSportsFollowingStatusCommand *)self follow];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFUpdateSportsFollowingStatusCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFUpdateSportsFollowingStatusCommand;
      if ([(SFCommand *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        sportsItem = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
        sportsItem2 = [(SFUpdateSportsFollowingStatusCommand *)v7 sportsItem];
        if ((sportsItem != 0) == (sportsItem2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        sportsItem3 = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
        if (!sportsItem3 || (-[SFUpdateSportsFollowingStatusCommand sportsItem](self, "sportsItem"), v3 = objc_claimAutoreleasedReturnValue(), -[SFUpdateSportsFollowingStatusCommand sportsItem](v7, "sportsItem"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          follow = [(SFUpdateSportsFollowingStatusCommand *)self follow];
          v11 = follow ^ [(SFUpdateSportsFollowingStatusCommand *)v7 follow]^ 1;
          if (!sportsItem3)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFUpdateSportsFollowingStatusCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  sportsItem = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
  v6 = [sportsItem copy];
  [v4 setSportsItem:v6];

  [v4 setFollow:{-[SFUpdateSportsFollowingStatusCommand follow](self, "follow")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBUpdateSportsFollowingStatusCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBUpdateSportsFollowingStatusCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFUpdateSportsFollowingStatusCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFUpdateSportsFollowingStatusCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFUpdateSportsFollowingStatusCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sportsItem = [(SFCommand *)v8 sportsItem];
    [(SFUpdateSportsFollowingStatusCommand *)v5 setSportsItem:sportsItem];

    [(SFUpdateSportsFollowingStatusCommand *)v5 setFollow:[(SFCommand *)v8 follow]];
    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end