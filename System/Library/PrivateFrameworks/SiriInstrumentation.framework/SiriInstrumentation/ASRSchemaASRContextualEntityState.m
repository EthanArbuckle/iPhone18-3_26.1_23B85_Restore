@interface ASRSchemaASRContextualEntityState
- (ASRSchemaASRContextualEntityState)initWithDictionary:(id)a3;
- (ASRSchemaASRContextualEntityState)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentResult:(BOOL)a3;
- (void)setHasRejectReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRContextualEntityState

- (ASRSchemaASRContextualEntityState)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASRSchemaASRContextualEntityState;
  v5 = [(ASRSchemaASRContextualEntityState *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityState setContextType:](v5, "setContextType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[QDSchemaQDEntityType alloc] initWithDictionary:v7];
      [(ASRSchemaASRContextualEntityState *)v5 setEntityType:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"enrollmentResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityState setEnrollmentResult:](v5, "setEnrollmentResult:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"rejectReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRContextualEntityState setRejectReason:](v5, "setRejectReason:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ASRSchemaASRContextualEntityState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRContextualEntityState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRContextualEntityState *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v6 forKeyedSubscript:@"contextType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(ASRSchemaASRContextualEntityState *)self enrollmentResult];
    v8 = @"ASRENTITYENROLLMENTRESULT_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"ASRENTITYENROLLMENTRESULT_ENROLL";
    }

    if (v7 == 2)
    {
      v9 = @"ASRENTITYENROLLMENTRESULT_REJECT";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"enrollmentResult"];
  }

  if (self->_entityType)
  {
    v10 = [(ASRSchemaASRContextualEntityState *)self entityType];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"entityType"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"entityType"];
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

    [v3 setObject:v14 forKeyedSubscript:@"rejectReason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    contextType = self->_contextType;
    if (contextType != [v4 contextType])
    {
      goto LABEL_19;
    }
  }

  v6 = [(ASRSchemaASRContextualEntityState *)self entityType];
  v7 = [v4 entityType];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

    goto LABEL_19;
  }

  v9 = [(ASRSchemaASRContextualEntityState *)self entityType];
  if (v9)
  {
    v10 = v9;
    v11 = [(ASRSchemaASRContextualEntityState *)self entityType];
    v12 = [v4 entityType];
    v13 = [v11 isEqual:v12];

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
  v16 = v4[32];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  if (v15)
  {
    enrollmentResult = self->_enrollmentResult;
    if (enrollmentResult == [v4 enrollmentResult])
    {
      has = self->_has;
      v16 = v4[32];
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
    if (rejectReason != [v4 rejectReason])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(ASRSchemaASRContextualEntityState *)self entityType];

  if (v4)
  {
    v5 = [(ASRSchemaASRContextualEntityState *)self entityType];
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

- (void)setHasRejectReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEnrollmentResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRContextualEntityState;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRContextualEntityState *)self entityType:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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