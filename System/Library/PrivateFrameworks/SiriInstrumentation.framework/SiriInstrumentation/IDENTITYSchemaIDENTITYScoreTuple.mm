@interface IDENTITYSchemaIDENTITYScoreTuple
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYScoreTuple)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYScoreTuple)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYScoreTuple

- (IDENTITYSchemaIDENTITYScoreTuple)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IDENTITYSchemaIDENTITYScoreTuple;
  v5 = [(IDENTITYSchemaIDENTITYScoreTuple *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IDENTITYSchemaIDENTITYScoreTuple *)v5 setLoggableSharedUserId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"confidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYScoreTuple setConfidenceScore:](v5, "setConfidenceScore:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(IDENTITYSchemaIDENTITYScoreTuple *)v5 setUserEphemeralId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYScoreTuple)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYScoreTuple *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYScoreTuple *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDENTITYSchemaIDENTITYScoreTuple confidenceScore](self, "confidenceScore")}];
    [dictionary setObject:v4 forKeyedSubscript:@"confidenceScore"];
  }

  if (self->_loggableSharedUserId)
  {
    loggableSharedUserId = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
    v6 = [loggableSharedUserId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_userEphemeralId)
  {
    userEphemeralId = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_loggableSharedUserId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_confidenceScore;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaUUID *)self->_userEphemeralId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  loggableSharedUserId = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
  loggableSharedUserId2 = [equalCopy loggableSharedUserId];
  if ((loggableSharedUserId != 0) == (loggableSharedUserId2 == 0))
  {
    goto LABEL_14;
  }

  loggableSharedUserId3 = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
  if (loggableSharedUserId3)
  {
    v8 = loggableSharedUserId3;
    loggableSharedUserId4 = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
    loggableSharedUserId5 = [equalCopy loggableSharedUserId];
    v11 = [loggableSharedUserId4 isEqual:loggableSharedUserId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    confidenceScore = self->_confidenceScore;
    if (confidenceScore != [equalCopy confidenceScore])
    {
      goto LABEL_15;
    }
  }

  loggableSharedUserId = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
  loggableSharedUserId2 = [equalCopy userEphemeralId];
  if ((loggableSharedUserId != 0) != (loggableSharedUserId2 == 0))
  {
    userEphemeralId = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
    if (!userEphemeralId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = userEphemeralId;
    userEphemeralId2 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
    userEphemeralId3 = [equalCopy userEphemeralId];
    v17 = [userEphemeralId2 isEqual:userEphemeralId3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  loggableSharedUserId = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];

  if (loggableSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  userEphemeralId = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];

  v6 = toCopy;
  if (userEphemeralId)
  {
    userEphemeralId2 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = IDENTITYSchemaIDENTITYScoreTuple;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(IDENTITYSchemaIDENTITYScoreTuple *)self deleteLoggableSharedUserId];
  }

  userEphemeralId = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
  v7 = [userEphemeralId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IDENTITYSchemaIDENTITYScoreTuple *)self deleteUserEphemeralId];
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