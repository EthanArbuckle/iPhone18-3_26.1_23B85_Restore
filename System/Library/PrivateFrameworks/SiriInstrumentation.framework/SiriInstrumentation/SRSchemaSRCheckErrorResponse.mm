@interface SRSchemaSRCheckErrorResponse
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SRSchemaSRCheckErrorResponse)initWithDictionary:(id)a3;
- (SRSchemaSRCheckErrorResponse)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSelectedRecoveryStrategy:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SRSchemaSRCheckErrorResponse

- (SRSchemaSRCheckErrorResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SRSchemaSRCheckErrorResponse;
  v5 = [(SRSchemaSRCheckErrorResponse *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"predictedErrorType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SRSchemaSRCheckErrorResponse setPredictedErrorType:](v5, "setPredictedErrorType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"selectedRecoveryStrategy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SRSchemaSRCheckErrorResponse setSelectedRecoveryStrategy:](v5, "setSelectedRecoveryStrategy:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (SRSchemaSRCheckErrorResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SRSchemaSRCheckErrorResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SRSchemaSRCheckErrorResponse *)self dictionaryRepresentation];
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
    v5 = [(SRSchemaSRCheckErrorResponse *)self predictedErrorType]- 1;
    if (v5 > 8)
    {
      v6 = @"SRPREDICTEDERRORTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E7568[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"predictedErrorType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(SRSchemaSRCheckErrorResponse *)self selectedRecoveryStrategy]- 1;
    if (v7 > 6)
    {
      v8 = @"SRSELECTEDRECOVERYSTRATEGY_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E75B0[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"selectedRecoveryStrategy"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_predictedErrorType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_selectedRecoveryStrategy;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    predictedErrorType = self->_predictedErrorType;
    if (predictedErrorType != [v4 predictedErrorType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    selectedRecoveryStrategy = self->_selectedRecoveryStrategy;
    if (selectedRecoveryStrategy != [v4 selectedRecoveryStrategy])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)setHasSelectedRecoveryStrategy:(BOOL)a3
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