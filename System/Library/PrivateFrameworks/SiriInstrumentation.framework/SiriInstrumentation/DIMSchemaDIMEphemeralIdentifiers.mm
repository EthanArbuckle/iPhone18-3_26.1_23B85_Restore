@interface DIMSchemaDIMEphemeralIdentifiers
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMEphemeralIdentifiers)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMEphemeralIdentifiers)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMEphemeralIdentifiers

- (DIMSchemaDIMEphemeralIdentifiers)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = DIMSchemaDIMEphemeralIdentifiers;
  v5 = [(DIMSchemaDIMEphemeralIdentifiers *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DIMSchemaDIMEphemeralIdentifiers *)v5 setUserEphemeralId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"homeEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(DIMSchemaDIMEphemeralIdentifiers *)v5 setHomeEphemeralId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"secondsSinceEphemeralIdCreation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralIdentifiers setSecondsSinceEphemeralIdCreation:](v5, "setSecondsSinceEphemeralIdCreation:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (DIMSchemaDIMEphemeralIdentifiers)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMEphemeralIdentifiers *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMEphemeralIdentifiers *)self dictionaryRepresentation];
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
  if (self->_homeEphemeralId)
  {
    homeEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self homeEphemeralId];
    dictionaryRepresentation = [homeEphemeralId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"homeEphemeralId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"homeEphemeralId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralIdentifiers secondsSinceEphemeralIdCreation](self, "secondsSinceEphemeralIdCreation")}];
    [dictionary setObject:v7 forKeyedSubscript:@"secondsSinceEphemeralIdCreation"];
  }

  if (self->_userEphemeralId)
  {
    userEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self userEphemeralId];
    dictionaryRepresentation2 = [userEphemeralId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userEphemeralId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_userEphemeralId hash];
  v4 = [(SISchemaUUID *)self->_homeEphemeralId hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_secondsSinceEphemeralIdCreation;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  userEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self userEphemeralId];
  userEphemeralId2 = [equalCopy userEphemeralId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
    goto LABEL_11;
  }

  userEphemeralId3 = [(DIMSchemaDIMEphemeralIdentifiers *)self userEphemeralId];
  if (userEphemeralId3)
  {
    v8 = userEphemeralId3;
    userEphemeralId4 = [(DIMSchemaDIMEphemeralIdentifiers *)self userEphemeralId];
    userEphemeralId5 = [equalCopy userEphemeralId];
    v11 = [userEphemeralId4 isEqual:userEphemeralId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  userEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self homeEphemeralId];
  userEphemeralId2 = [equalCopy homeEphemeralId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  homeEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self homeEphemeralId];
  if (homeEphemeralId)
  {
    v13 = homeEphemeralId;
    homeEphemeralId2 = [(DIMSchemaDIMEphemeralIdentifiers *)self homeEphemeralId];
    homeEphemeralId3 = [equalCopy homeEphemeralId];
    v16 = [homeEphemeralId2 isEqual:homeEphemeralId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (secondsSinceEphemeralIdCreation = self->_secondsSinceEphemeralIdCreation, secondsSinceEphemeralIdCreation == [equalCopy secondsSinceEphemeralIdCreation]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  userEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self userEphemeralId];

  if (userEphemeralId)
  {
    userEphemeralId2 = [(DIMSchemaDIMEphemeralIdentifiers *)self userEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  homeEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self homeEphemeralId];

  if (homeEphemeralId)
  {
    homeEphemeralId2 = [(DIMSchemaDIMEphemeralIdentifiers *)self homeEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = DIMSchemaDIMEphemeralIdentifiers;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  userEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self userEphemeralId];
  v7 = [userEphemeralId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DIMSchemaDIMEphemeralIdentifiers *)self deleteUserEphemeralId];
  }

  homeEphemeralId = [(DIMSchemaDIMEphemeralIdentifiers *)self homeEphemeralId];
  v10 = [homeEphemeralId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DIMSchemaDIMEphemeralIdentifiers *)self deleteHomeEphemeralId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end