@interface ASRSchemaASRContextualEntityState
- (ASRSchemaASRContextualEntityState)initWithDictionary:(id)dictionary;
- (ASRSchemaASRContextualEntityState)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentResult:(BOOL)result;
- (void)setHasRejectReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRContextualEntityState

- (ASRSchemaASRContextualEntityState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ASRSchemaASRContextualEntityState;
  v5 = [(ASRSchemaASRContextualEntityState *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityState setContextType:](v5, "setContextType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[QDSchemaQDEntityType alloc] initWithDictionary:v7];
      [(ASRSchemaASRContextualEntityState *)v5 setEntityType:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityState setEnrollmentResult:](v5, "setEnrollmentResult:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rejectReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityState setRejectReason:](v5, "setRejectReason:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ASRSchemaASRContextualEntityState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRContextualEntityState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRContextualEntityState *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(ASRSchemaASRContextualEntityState *)self contextType]- 1;
    if (v5 > 0x1E)
    {
      v6 = @"QDENTITYCONTEXTTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D1C70[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"contextType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    enrollmentResult = [(ASRSchemaASRContextualEntityState *)self enrollmentResult];
    v8 = @"ASRENTITYENROLLMENTRESULT_UNKNOWN";
    if (enrollmentResult == 1)
    {
      v8 = @"ASRENTITYENROLLMENTRESULT_ENROLL";
    }

    if (enrollmentResult == 2)
    {
      v9 = @"ASRENTITYENROLLMENTRESULT_REJECT";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"enrollmentResult"];
  }

  if (self->_entityType)
  {
    entityType = [(ASRSchemaASRContextualEntityState *)self entityType];
    dictionaryRepresentation = [entityType dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityType"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entityType"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [(ASRSchemaASRContextualEntityState *)self rejectReason]- 1;
    if (v13 > 2)
    {
      v14 = @"ASRENTITYENROLLMENTREASON_UNKNOWN";
    }

    else
    {
      v14 = off_1E78D1D68[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"rejectReason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_contextType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(QDSchemaQDEntityType *)self->_entityType hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_enrollmentResult;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_rejectReason;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    contextType = self->_contextType;
    if (contextType != [equalCopy contextType])
    {
      goto LABEL_19;
    }
  }

  entityType = [(ASRSchemaASRContextualEntityState *)self entityType];
  entityType2 = [equalCopy entityType];
  v8 = entityType2;
  if ((entityType != 0) == (entityType2 == 0))
  {

    goto LABEL_19;
  }

  entityType3 = [(ASRSchemaASRContextualEntityState *)self entityType];
  if (entityType3)
  {
    v10 = entityType3;
    entityType4 = [(ASRSchemaASRContextualEntityState *)self entityType];
    entityType5 = [equalCopy entityType];
    v13 = [entityType4 isEqual:entityType5];

    if (!v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v15 = (*&has >> 1) & 1;
  v16 = equalCopy[32];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  if (v15)
  {
    enrollmentResult = self->_enrollmentResult;
    if (enrollmentResult == [equalCopy enrollmentResult])
    {
      has = self->_has;
      v16 = equalCopy[32];
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_15:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v16 >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v18)
  {
    rejectReason = self->_rejectReason;
    if (rejectReason != [equalCopy rejectReason])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  entityType = [(ASRSchemaASRContextualEntityState *)self entityType];

  if (entityType)
  {
    entityType2 = [(ASRSchemaASRContextualEntityState *)self entityType];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasRejectReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEnrollmentResult:(BOOL)result
{
  if (result)
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
  v9.receiver = self;
  v9.super_class = ASRSchemaASRContextualEntityState;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRContextualEntityState *)self entityType:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRContextualEntityState *)self deleteEntityType];
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