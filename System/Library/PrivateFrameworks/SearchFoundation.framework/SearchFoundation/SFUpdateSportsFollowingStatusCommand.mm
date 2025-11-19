@interface SFUpdateSportsFollowingStatusCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUpdateSportsFollowingStatusCommand)initWithCoder:(id)a3;
- (SFUpdateSportsFollowingStatusCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFUpdateSportsFollowingStatusCommand

- (SFUpdateSportsFollowingStatusCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFUpdateSportsFollowingStatusCommand;
  v5 = [(SFUpdateSportsFollowingStatusCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 sportsItem];

    if (v6)
    {
      v7 = [SFSportsItem alloc];
      v8 = [v4 sportsItem];
      v9 = [(SFSportsItem *)v7 initWithProtobuf:v8];
      [(SFUpdateSportsFollowingStatusCommand *)v5 setSportsItem:v9];
    }

    if ([v4 follow])
    {
      -[SFUpdateSportsFollowingStatusCommand setFollow:](v5, "setFollow:", [v4 follow]);
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
  v4 = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFUpdateSportsFollowingStatusCommand *)self follow];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFUpdateSportsFollowingStatusCommand *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFUpdateSportsFollowingStatusCommand;
      if ([(SFCommand *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
        v9 = [(SFUpdateSportsFollowingStatusCommand *)v7 sportsItem];
        if ((v8 != 0) == (v9 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
        if (!v10 || (-[SFUpdateSportsFollowingStatusCommand sportsItem](self, "sportsItem"), v3 = objc_claimAutoreleasedReturnValue(), -[SFUpdateSportsFollowingStatusCommand sportsItem](v7, "sportsItem"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFUpdateSportsFollowingStatusCommand *)self follow];
          v11 = v12 ^ [(SFUpdateSportsFollowingStatusCommand *)v7 follow]^ 1;
          if (!v10)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFUpdateSportsFollowingStatusCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFUpdateSportsFollowingStatusCommand *)self sportsItem];
  v6 = [v5 copy];
  [v4 setSportsItem:v6];

  [v4 setFollow:{-[SFUpdateSportsFollowingStatusCommand follow](self, "follow")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithFacade:self];
  v3 = [(_SFPBUpdateSportsFollowingStatusCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUpdateSportsFollowingStatusCommand alloc] initWithFacade:self];
  v3 = [(_SFPBUpdateSportsFollowingStatusCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFUpdateSportsFollowingStatusCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFUpdateSportsFollowingStatusCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFUpdateSportsFollowingStatusCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 sportsItem];
    [(SFUpdateSportsFollowingStatusCommand *)v5 setSportsItem:v9];

    [(SFUpdateSportsFollowingStatusCommand *)v5 setFollow:[(SFCommand *)v8 follow]];
    v10 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v10];

    v11 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v11];

    v12 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v12];

    v13 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v13];
  }

  return v5;
}

@end