@interface SFSportsSubscriptionRequestItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSportsSubscriptionRequestItem)initWithCoder:(id)coder;
- (SFSportsSubscriptionRequestItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSportsSubscriptionRequestItem

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFSportsSubscriptionRequestItem;
  v3 = [(SFDomainSubscriptionRequestItem *)&v11 hash];
  canonicalIdentifier = [(SFSportsSubscriptionRequestItem *)self canonicalIdentifier];
  v5 = [canonicalIdentifier hash];
  sportIdentifier = [(SFSportsSubscriptionRequestItem *)self sportIdentifier];
  v7 = v5 ^ [sportIdentifier hash];
  leagueIdentifier = [(SFSportsSubscriptionRequestItem *)self leagueIdentifier];
  v9 = v7 ^ [leagueIdentifier hash];

  return v9 ^ v3;
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
    if ([(SFSportsSubscriptionRequestItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFSportsSubscriptionRequestItem;
      if ([(SFDomainSubscriptionRequestItem *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        canonicalIdentifier = [(SFSportsSubscriptionRequestItem *)self canonicalIdentifier];
        canonicalIdentifier2 = [(SFSportsSubscriptionRequestItem *)v6 canonicalIdentifier];
        if ((canonicalIdentifier != 0) == (canonicalIdentifier2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        canonicalIdentifier3 = [(SFSportsSubscriptionRequestItem *)self canonicalIdentifier];
        if (canonicalIdentifier3)
        {
          canonicalIdentifier4 = [(SFSportsSubscriptionRequestItem *)self canonicalIdentifier];
          canonicalIdentifier5 = [(SFSportsSubscriptionRequestItem *)v6 canonicalIdentifier];
          if (![canonicalIdentifier4 isEqual:canonicalIdentifier5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = canonicalIdentifier5;
        }

        sportIdentifier = [(SFSportsSubscriptionRequestItem *)self sportIdentifier];
        sportIdentifier2 = [(SFSportsSubscriptionRequestItem *)v6 sportIdentifier];
        v14 = sportIdentifier2;
        if ((sportIdentifier != 0) == (sportIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        sportIdentifier3 = [(SFSportsSubscriptionRequestItem *)self sportIdentifier];
        if (sportIdentifier3)
        {
          v25 = sportIdentifier;
          sportIdentifier4 = [(SFSportsSubscriptionRequestItem *)self sportIdentifier];
          sportIdentifier5 = [(SFSportsSubscriptionRequestItem *)v6 sportIdentifier];
          v28 = sportIdentifier4;
          if (![sportIdentifier4 isEqual:?])
          {
            v11 = 0;
            sportIdentifier = v25;
            goto LABEL_26;
          }

          v29 = sportIdentifier3;
          v30 = canonicalIdentifier4;
          sportIdentifier = v25;
        }

        else
        {
          v29 = 0;
          v30 = canonicalIdentifier4;
        }

        leagueIdentifier = [(SFSportsSubscriptionRequestItem *)self leagueIdentifier];
        leagueIdentifier2 = [(SFSportsSubscriptionRequestItem *)v6 leagueIdentifier];
        if ((leagueIdentifier != 0) == (leagueIdentifier2 == 0))
        {

          v11 = 0;
          sportIdentifier3 = v29;
          canonicalIdentifier4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = leagueIdentifier;
          v26 = leagueIdentifier2;
          leagueIdentifier3 = [(SFSportsSubscriptionRequestItem *)self leagueIdentifier];
          sportIdentifier3 = v29;
          if (leagueIdentifier3)
          {
            v23 = leagueIdentifier3;
            leagueIdentifier4 = [(SFSportsSubscriptionRequestItem *)self leagueIdentifier];
            leagueIdentifier5 = [(SFSportsSubscriptionRequestItem *)v6 leagueIdentifier];
            v11 = [leagueIdentifier4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          canonicalIdentifier4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        canonicalIdentifier5 = v31;
        if (!canonicalIdentifier3)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFSportsSubscriptionRequestItem;
  v4 = [(SFDomainSubscriptionRequestItem *)&v12 copyWithZone:zone];
  canonicalIdentifier = [(SFSportsSubscriptionRequestItem *)self canonicalIdentifier];
  v6 = [canonicalIdentifier copy];
  [v4 setCanonicalIdentifier:v6];

  sportIdentifier = [(SFSportsSubscriptionRequestItem *)self sportIdentifier];
  v8 = [sportIdentifier copy];
  [v4 setSportIdentifier:v8];

  leagueIdentifier = [(SFSportsSubscriptionRequestItem *)self leagueIdentifier];
  v10 = [leagueIdentifier copy];
  [v4 setLeagueIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSportsSubscriptionRequestItem alloc] initWithFacade:self];
  jsonData = [(_SFPBSportsSubscriptionRequestItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSportsSubscriptionRequestItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSportsSubscriptionRequestItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSportsSubscriptionRequestItem alloc] initWithFacade:self];
  data = [(_SFPBSportsSubscriptionRequestItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSportsSubscriptionRequestItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSportsSubscriptionRequestItem alloc] initWithData:v5];
  v7 = [(SFSportsSubscriptionRequestItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFSportsSubscriptionRequestItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFSportsSubscriptionRequestItem;
  v5 = [(SFSportsSubscriptionRequestItem *)&v14 init];
  if (v5)
  {
    canonicalIdentifier = [protobufCopy canonicalIdentifier];

    if (canonicalIdentifier)
    {
      canonicalIdentifier2 = [protobufCopy canonicalIdentifier];
      [(SFSportsSubscriptionRequestItem *)v5 setCanonicalIdentifier:canonicalIdentifier2];
    }

    sportIdentifier = [protobufCopy sportIdentifier];

    if (sportIdentifier)
    {
      sportIdentifier2 = [protobufCopy sportIdentifier];
      [(SFSportsSubscriptionRequestItem *)v5 setSportIdentifier:sportIdentifier2];
    }

    leagueIdentifier = [protobufCopy leagueIdentifier];

    if (leagueIdentifier)
    {
      leagueIdentifier2 = [protobufCopy leagueIdentifier];
      [(SFSportsSubscriptionRequestItem *)v5 setLeagueIdentifier:leagueIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

@end