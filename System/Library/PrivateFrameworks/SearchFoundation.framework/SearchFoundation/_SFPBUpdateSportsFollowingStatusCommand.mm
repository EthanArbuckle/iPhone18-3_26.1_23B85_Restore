@interface _SFPBUpdateSportsFollowingStatusCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBUpdateSportsFollowingStatusCommand)initWithDictionary:(id)dictionary;
- (_SFPBUpdateSportsFollowingStatusCommand)initWithFacade:(id)facade;
- (_SFPBUpdateSportsFollowingStatusCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBUpdateSportsFollowingStatusCommand

- (_SFPBUpdateSportsFollowingStatusCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBUpdateSportsFollowingStatusCommand *)self init];
  if (v5)
  {
    sportsItem = [facadeCopy sportsItem];

    if (sportsItem)
    {
      v7 = [_SFPBSportsItem alloc];
      sportsItem2 = [facadeCopy sportsItem];
      v9 = [(_SFPBSportsItem *)v7 initWithFacade:sportsItem2];
      [(_SFPBUpdateSportsFollowingStatusCommand *)v5 setSportsItem:v9];
    }

    if ([facadeCopy hasFollow])
    {
      -[_SFPBUpdateSportsFollowingStatusCommand setFollow:](v5, "setFollow:", [facadeCopy follow]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBUpdateSportsFollowingStatusCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBUpdateSportsFollowingStatusCommand;
  v5 = [(_SFPBUpdateSportsFollowingStatusCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sportsItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBSportsItem alloc] initWithDictionary:v6];
      [(_SFPBUpdateSportsFollowingStatusCommand *)v5 setSportsItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"follow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUpdateSportsFollowingStatusCommand setFollow:](v5, "setFollow:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBUpdateSportsFollowingStatusCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBUpdateSportsFollowingStatusCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBUpdateSportsFollowingStatusCommand *)self dictionaryRepresentation];
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
  if (self->_follow)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBUpdateSportsFollowingStatusCommand follow](self, "follow")}];
    [dictionary setObject:v4 forKeyedSubscript:@"follow"];
  }

  if (self->_sportsItem)
  {
    sportsItem = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
    dictionaryRepresentation = [sportsItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sportsItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sportsItem"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBSportsItem *)self->_sportsItem hash];
  v4 = 2654435761;
  if (!self->_follow)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sportsItem = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
    sportsItem2 = [equalCopy sportsItem];
    v7 = sportsItem2;
    if ((sportsItem != 0) != (sportsItem2 == 0))
    {
      sportsItem3 = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
      if (!sportsItem3)
      {

LABEL_10:
        follow = self->_follow;
        v13 = follow == [equalCopy follow];
        goto LABEL_8;
      }

      v9 = sportsItem3;
      sportsItem4 = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
      sportsItem5 = [equalCopy sportsItem];
      v12 = [sportsItem4 isEqual:sportsItem5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  sportsItem = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
  if (sportsItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBUpdateSportsFollowingStatusCommand *)self follow])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end