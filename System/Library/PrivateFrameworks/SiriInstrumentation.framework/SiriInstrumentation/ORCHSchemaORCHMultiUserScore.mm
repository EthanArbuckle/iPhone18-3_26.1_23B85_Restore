@interface ORCHSchemaORCHMultiUserScore
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHMultiUserScore)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHMultiUserScore)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserScoreIdHash:(BOOL)hash;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHMultiUserScore

- (ORCHSchemaORCHMultiUserScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHMultiUserScore;
  v5 = [(ORCHSchemaORCHMultiUserScore *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ORCHSchemaORCHMultiUserScore *)v5 setLoggableSharedUserId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMultiUserScore setScore:](v5, "setScore:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(ORCHSchemaORCHMultiUserScore *)v5 setUserEphemeralId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userScoreIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMultiUserScore setUserScoreIdHash:](v5, "setUserScoreIdHash:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"loggableUserIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ORCHSchemaORCHMultiUserScore *)v5 setLoggableUserIdHash:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMultiUserScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMultiUserScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHMultiUserScore *)self dictionaryRepresentation];
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
  if (self->_loggableSharedUserId)
  {
    loggableSharedUserId = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
    v5 = [loggableSharedUserId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    loggableUserIdHash = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
    v7 = [loggableUserIdHash copy];
    [dictionary setObject:v7 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ORCHSchemaORCHMultiUserScore score](self, "score")}];
    [dictionary setObject:v8 forKeyedSubscript:@"score"];
  }

  if (self->_userEphemeralId)
  {
    userEphemeralId = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
    dictionaryRepresentation = [userEphemeralId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"userEphemeralId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ORCHSchemaORCHMultiUserScore userScoreIdHash](self, "userScoreIdHash")}];
    [dictionary setObject:v12 forKeyedSubscript:@"userScoreIdHash"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_loggableSharedUserId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_score;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SISchemaUUID *)self->_userEphemeralId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_userScoreIdHash;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  loggableSharedUserId = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
  loggableSharedUserId2 = [equalCopy loggableSharedUserId];
  if ((loggableSharedUserId != 0) == (loggableSharedUserId2 == 0))
  {
    goto LABEL_22;
  }

  loggableSharedUserId3 = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
  if (loggableSharedUserId3)
  {
    v8 = loggableSharedUserId3;
    loggableSharedUserId4 = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
    loggableSharedUserId5 = [equalCopy loggableSharedUserId];
    v11 = [loggableSharedUserId4 isEqual:loggableSharedUserId5];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    score = self->_score;
    if (score != [equalCopy score])
    {
      goto LABEL_23;
    }
  }

  loggableSharedUserId = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
  loggableSharedUserId2 = [equalCopy userEphemeralId];
  if ((loggableSharedUserId != 0) == (loggableSharedUserId2 == 0))
  {
    goto LABEL_22;
  }

  userEphemeralId = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
  if (userEphemeralId)
  {
    v14 = userEphemeralId;
    userEphemeralId2 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
    userEphemeralId3 = [equalCopy userEphemeralId];
    v17 = [userEphemeralId2 isEqual:userEphemeralId3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 1) & 1;
  if (v18 != ((equalCopy[48] >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    userScoreIdHash = self->_userScoreIdHash;
    if (userScoreIdHash != [equalCopy userScoreIdHash])
    {
      goto LABEL_23;
    }
  }

  loggableSharedUserId = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
  loggableSharedUserId2 = [equalCopy loggableUserIdHash];
  if ((loggableSharedUserId != 0) != (loggableSharedUserId2 == 0))
  {
    loggableUserIdHash = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
    if (!loggableUserIdHash)
    {

LABEL_26:
      v25 = 1;
      goto LABEL_24;
    }

    v21 = loggableUserIdHash;
    loggableUserIdHash2 = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
    loggableUserIdHash3 = [equalCopy loggableUserIdHash];
    v24 = [loggableUserIdHash2 isEqual:loggableUserIdHash3];

    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v25 = 0;
LABEL_24:

  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  loggableSharedUserId = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];

  if (loggableSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  userEphemeralId = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];

  if (userEphemeralId)
  {
    userEphemeralId2 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  loggableUserIdHash = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];

  v8 = toCopy;
  if (loggableUserIdHash)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setHasUserScoreIdHash:(BOOL)hash
{
  if (hash)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHMultiUserScore;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(ORCHSchemaORCHMultiUserScore *)self deleteLoggableSharedUserId];
  }

  userEphemeralId = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
  v7 = [userEphemeralId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHMultiUserScore *)self deleteUserEphemeralId];
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