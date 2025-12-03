@interface ODMSiriSchemaODMSiriTaskCountsReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriTaskCountsReported)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriTaskCountsReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCancelledSiriTaskCount:(BOOL)count;
- (void)setHasCompletedSiriTaskCount:(BOOL)count;
- (void)setHasCompletedUITaskCount:(BOOL)count;
- (void)setHasFailedSiriTaskCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriTaskCountsReported

- (ODMSiriSchemaODMSiriTaskCountsReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ODMSiriSchemaODMSiriTaskCountsReported;
  v5 = [(ODMSiriSchemaODMSiriTaskCountsReported *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMSiriAggregationDimensions alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriTaskCountsReported *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setTaskType:](v5, "setTaskType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"completedSiriTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setCompletedSiriTaskCount:](v5, "setCompletedSiriTaskCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failedSiriTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setFailedSiriTaskCount:](v5, "setFailedSiriTaskCount:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"cancelledSiriTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setCancelledSiriTaskCount:](v5, "setCancelledSiriTaskCount:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"completedUITaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setCompletedUITaskCount:](v5, "setCompletedUITaskCount:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriTaskCountsReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriTaskCountsReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported cancelledSiriTaskCount](self, "cancelledSiriTaskCount")}];
    [dictionary setObject:v8 forKeyedSubscript:@"cancelledSiriTaskCount"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported completedSiriTaskCount](self, "completedSiriTaskCount")}];
  [dictionary setObject:v9 forKeyedSubscript:@"completedSiriTaskCount"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported completedUITaskCount](self, "completedUITaskCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"completedUITaskCount"];
  }

LABEL_5:
  if (self->_dimensions)
  {
    dimensions = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
    dictionaryRepresentation = [dimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dimensions"];
    }
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported failedSiriTaskCount](self, "failedSiriTaskCount")}];
    [dictionary setObject:v12 forKeyedSubscript:@"failedSiriTaskCount"];

    v11 = self->_has;
  }

  if (v11)
  {
    v13 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self taskType]- 1;
    if (v13 > 3)
    {
      v14 = @"ODMSIRITASKTYPE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78DE130[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"taskType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self->_dimensions hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_taskType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_completedSiriTaskCount;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_failedSiriTaskCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_cancelledSiriTaskCount;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_completedUITaskCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  dimensions = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  v7 = dimensions2;
  if ((dimensions != 0) == (dimensions2 == 0))
  {

    goto LABEL_28;
  }

  dimensions3 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
  if (dimensions3)
  {
    v9 = dimensions3;
    dimensions4 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
    dimensions5 = [equalCopy dimensions];
    v12 = [dimensions4 isEqual:dimensions5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[36];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  if (*&has)
  {
    taskType = self->_taskType;
    if (taskType != [equalCopy taskType])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v16)
  {
    completedSiriTaskCount = self->_completedSiriTaskCount;
    if (completedSiriTaskCount != [equalCopy completedSiriTaskCount])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    failedSiriTaskCount = self->_failedSiriTaskCount;
    if (failedSiriTaskCount != [equalCopy failedSiriTaskCount])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_28;
  }

  if (v20)
  {
    cancelledSiriTaskCount = self->_cancelledSiriTaskCount;
    if (cancelledSiriTaskCount == [equalCopy cancelledSiriTaskCount])
    {
      has = self->_has;
      v14 = equalCopy[36];
      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_24:
  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_28;
  }

  if (v22)
  {
    completedUITaskCount = self->_completedUITaskCount;
    if (completedUITaskCount != [equalCopy completedUITaskCount])
    {
      goto LABEL_28;
    }
  }

  v24 = 1;
LABEL_29:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dimensions = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  v7 = toCopy;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }

LABEL_10:
}

- (void)setHasCompletedUITaskCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCancelledSiriTaskCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFailedSiriTaskCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCompletedSiriTaskCount:(BOOL)count
{
  if (count)
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
  v9.super_class = ODMSiriSchemaODMSiriTaskCountsReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODMSiriSchemaODMSiriTaskCountsReported *)self deleteDimensions];
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