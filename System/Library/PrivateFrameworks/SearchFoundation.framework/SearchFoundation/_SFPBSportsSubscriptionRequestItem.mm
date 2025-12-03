@interface _SFPBSportsSubscriptionRequestItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSportsSubscriptionRequestItem)initWithDictionary:(id)dictionary;
- (_SFPBSportsSubscriptionRequestItem)initWithFacade:(id)facade;
- (_SFPBSportsSubscriptionRequestItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCanonicalIdentifier:(id)identifier;
- (void)setLeagueIdentifier:(id)identifier;
- (void)setSportIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSportsSubscriptionRequestItem

- (_SFPBSportsSubscriptionRequestItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSportsSubscriptionRequestItem *)self init];
  if (v5)
  {
    canonicalIdentifier = [facadeCopy canonicalIdentifier];

    if (canonicalIdentifier)
    {
      canonicalIdentifier2 = [facadeCopy canonicalIdentifier];
      [(_SFPBSportsSubscriptionRequestItem *)v5 setCanonicalIdentifier:canonicalIdentifier2];
    }

    sportIdentifier = [facadeCopy sportIdentifier];

    if (sportIdentifier)
    {
      sportIdentifier2 = [facadeCopy sportIdentifier];
      [(_SFPBSportsSubscriptionRequestItem *)v5 setSportIdentifier:sportIdentifier2];
    }

    leagueIdentifier = [facadeCopy leagueIdentifier];

    if (leagueIdentifier)
    {
      leagueIdentifier2 = [facadeCopy leagueIdentifier];
      [(_SFPBSportsSubscriptionRequestItem *)v5 setLeagueIdentifier:leagueIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBSportsSubscriptionRequestItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBSportsSubscriptionRequestItem;
  v5 = [(_SFPBSportsSubscriptionRequestItem *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"canonicalIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSportsSubscriptionRequestItem *)v5 setCanonicalIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sportIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSportsSubscriptionRequestItem *)v5 setSportIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"leagueIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSportsSubscriptionRequestItem *)v5 setLeagueIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBSportsSubscriptionRequestItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSportsSubscriptionRequestItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSportsSubscriptionRequestItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_canonicalIdentifier)
  {
    canonicalIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self canonicalIdentifier];
    v5 = [canonicalIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"canonicalIdentifier"];
  }

  if (self->_leagueIdentifier)
  {
    leagueIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self leagueIdentifier];
    v7 = [leagueIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"leagueIdentifier"];
  }

  if (self->_sportIdentifier)
  {
    sportIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self sportIdentifier];
    v9 = [sportIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"sportIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_canonicalIdentifier hash];
  v4 = [(NSString *)self->_sportIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_leagueIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  canonicalIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self canonicalIdentifier];
  canonicalIdentifier2 = [equalCopy canonicalIdentifier];
  if ((canonicalIdentifier != 0) == (canonicalIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  canonicalIdentifier3 = [(_SFPBSportsSubscriptionRequestItem *)self canonicalIdentifier];
  if (canonicalIdentifier3)
  {
    v8 = canonicalIdentifier3;
    canonicalIdentifier4 = [(_SFPBSportsSubscriptionRequestItem *)self canonicalIdentifier];
    canonicalIdentifier5 = [equalCopy canonicalIdentifier];
    v11 = [canonicalIdentifier4 isEqual:canonicalIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  canonicalIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self sportIdentifier];
  canonicalIdentifier2 = [equalCopy sportIdentifier];
  if ((canonicalIdentifier != 0) == (canonicalIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  sportIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self sportIdentifier];
  if (sportIdentifier)
  {
    v13 = sportIdentifier;
    sportIdentifier2 = [(_SFPBSportsSubscriptionRequestItem *)self sportIdentifier];
    sportIdentifier3 = [equalCopy sportIdentifier];
    v16 = [sportIdentifier2 isEqual:sportIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  canonicalIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self leagueIdentifier];
  canonicalIdentifier2 = [equalCopy leagueIdentifier];
  if ((canonicalIdentifier != 0) != (canonicalIdentifier2 == 0))
  {
    leagueIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self leagueIdentifier];
    if (!leagueIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = leagueIdentifier;
    leagueIdentifier2 = [(_SFPBSportsSubscriptionRequestItem *)self leagueIdentifier];
    leagueIdentifier3 = [equalCopy leagueIdentifier];
    v21 = [leagueIdentifier2 isEqual:leagueIdentifier3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  canonicalIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self canonicalIdentifier];
  if (canonicalIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  sportIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self sportIdentifier];
  if (sportIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  leagueIdentifier = [(_SFPBSportsSubscriptionRequestItem *)self leagueIdentifier];
  if (leagueIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setLeagueIdentifier:(id)identifier
{
  v4 = [identifier copy];
  leagueIdentifier = self->_leagueIdentifier;
  self->_leagueIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSportIdentifier:(id)identifier
{
  v4 = [identifier copy];
  sportIdentifier = self->_sportIdentifier;
  self->_sportIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCanonicalIdentifier:(id)identifier
{
  v4 = [identifier copy];
  canonicalIdentifier = self->_canonicalIdentifier;
  self->_canonicalIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end