@interface PFAPreprocessorExecutionMetrics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PFAPreprocessorExecutionMetrics)initWithDictionary:(id)a3;
- (PFAPreprocessorExecutionMetrics)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasProcessedMessageCount:(BOOL)a3;
- (void)setHasStagedMessageCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PFAPreprocessorExecutionMetrics

- (PFAPreprocessorExecutionMetrics)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PFAPreprocessorExecutionMetrics;
  v5 = [(PFAPreprocessorExecutionMetrics *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"executionTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPreprocessorExecutionMetrics setExecutionTimeInNs:](v5, "setExecutionTimeInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"stagedMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPreprocessorExecutionMetrics setStagedMessageCount:](v5, "setStagedMessageCount:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"processedMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPreprocessorExecutionMetrics setProcessedMessageCount:](v5, "setProcessedMessageCount:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PFAPreprocessorExecutionMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PFAPreprocessorExecutionMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PFAPreprocessorExecutionMetrics *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PFAPreprocessorExecutionMetrics executionTimeInNs](self, "executionTimeInNs")}];
    [v3 setObject:v7 forKeyedSubscript:@"executionTimeInNs"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAPreprocessorExecutionMetrics processedMessageCount](self, "processedMessageCount")}];
  [v3 setObject:v8 forKeyedSubscript:@"processedMessageCount"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAPreprocessorExecutionMetrics stagedMessageCount](self, "stagedMessageCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"stagedMessageCount"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_executionTimeInNs;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_stagedMessageCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_processedMessageCount;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    executionTimeInNs = self->_executionTimeInNs;
    if (executionTimeInNs != [v4 executionTimeInNs])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    stagedMessageCount = self->_stagedMessageCount;
    if (stagedMessageCount == [v4 stagedMessageCount])
    {
      has = self->_has;
      v6 = v4[24];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    processedMessageCount = self->_processedMessageCount;
    if (processedMessageCount != [v4 processedMessageCount])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  PBDataWriterWriteUint32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasProcessedMessageCount:(BOOL)a3
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

- (void)setHasStagedMessageCount:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end