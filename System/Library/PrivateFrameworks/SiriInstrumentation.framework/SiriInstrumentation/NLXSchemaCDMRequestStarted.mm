@interface NLXSchemaCDMRequestStarted
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMRequestStarted)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMRequestStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMRequestStarted

- (NLXSchemaCDMRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMRequestStarted;
  v5 = [(NLXSchemaCDMRequestStarted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"currentTurnInput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMTurnInput alloc] initWithDictionary:v6];
      [(NLXSchemaCDMRequestStarted *)v5 setCurrentTurnInput:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"serviceGraphName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMRequestStarted setServiceGraphName:](v5, "setServiceGraphName:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(NLXSchemaCDMRequestStarted *)v5 setLoggableSharedUserId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (NLXSchemaCDMRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMRequestStarted *)self dictionaryRepresentation];
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
  if (self->_currentTurnInput)
  {
    currentTurnInput = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
    dictionaryRepresentation = [currentTurnInput dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currentTurnInput"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"currentTurnInput"];
    }
  }

  if (self->_loggableSharedUserId)
  {
    loggableSharedUserId = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
    v8 = [loggableSharedUserId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (*&self->_has)
  {
    v9 = [(NLXSchemaCDMRequestStarted *)self serviceGraphName]- 1;
    if (v9 > 6)
    {
      v10 = @"CDMSERVICEGRAPHNAME_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DBA30[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"serviceGraphName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NLXSchemaCDMTurnInput *)self->_currentTurnInput hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_serviceGraphName;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_loggableSharedUserId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  currentTurnInput = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
  currentTurnInput2 = [equalCopy currentTurnInput];
  if ((currentTurnInput != 0) == (currentTurnInput2 == 0))
  {
    goto LABEL_14;
  }

  currentTurnInput3 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
  if (currentTurnInput3)
  {
    v8 = currentTurnInput3;
    currentTurnInput4 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
    currentTurnInput5 = [equalCopy currentTurnInput];
    v11 = [currentTurnInput4 isEqual:currentTurnInput5];

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
    serviceGraphName = self->_serviceGraphName;
    if (serviceGraphName != [equalCopy serviceGraphName])
    {
      goto LABEL_15;
    }
  }

  currentTurnInput = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
  currentTurnInput2 = [equalCopy loggableSharedUserId];
  if ((currentTurnInput != 0) != (currentTurnInput2 == 0))
  {
    loggableSharedUserId = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
    if (!loggableSharedUserId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = loggableSharedUserId;
    loggableSharedUserId2 = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];
    loggableSharedUserId3 = [equalCopy loggableSharedUserId];
    v17 = [loggableSharedUserId2 isEqual:loggableSharedUserId3];

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
  currentTurnInput = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];

  if (currentTurnInput)
  {
    currentTurnInput2 = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  loggableSharedUserId = [(NLXSchemaCDMRequestStarted *)self loggableSharedUserId];

  v7 = toCopy;
  if (loggableSharedUserId)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(NLXSchemaCDMRequestStarted *)self deleteLoggableSharedUserId];
  }

  currentTurnInput = [(NLXSchemaCDMRequestStarted *)self currentTurnInput];
  v7 = [currentTurnInput applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMRequestStarted *)self deleteCurrentTurnInput];
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