@interface PNRODSchemaPNRODFailureInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODFailureInfo)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODFailureInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFailureSubType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODFailureInfo

- (PNRODSchemaPNRODFailureInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PNRODSchemaPNRODFailureInfo;
  v5 = [(PNRODSchemaPNRODFailureInfo *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"failureType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODFailureInfo setFailureType:](v5, "setFailureType:", [v6 longLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"failureSubType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODFailureInfo setFailureSubType:](v5, "setFailureSubType:", [v7 longLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRError alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODFailureInfo *)v5 setError:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRError alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODFailureInfo *)v5 setUnderlyingError:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"underUnderlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRError alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODFailureInfo *)v5 setUnderUnderlyingError:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODFailureInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODFailureInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODFailureInfo *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    v4 = [(PNRODSchemaPNRODFailureInfo *)self error];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"error"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"error"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODFailureInfo failureSubType](self, "failureSubType")}];
    [v3 setObject:v8 forKeyedSubscript:@"failureSubType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODFailureInfo failureType](self, "failureType")}];
    [v3 setObject:v9 forKeyedSubscript:@"failureType"];
  }

  if (self->_underUnderlyingError)
  {
    v10 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"underUnderlyingError"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"underUnderlyingError"];
    }
  }

  if (self->_underlyingError)
  {
    v13 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_failureType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_failureSubType;
LABEL_6:
  v5 = v4 ^ v3 ^ [(PNRODSchemaPNRError *)self->_error hash];
  v6 = [(PNRODSchemaPNRError *)self->_underlyingError hash];
  return v5 ^ v6 ^ [(PNRODSchemaPNRError *)self->_underUnderlyingError hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = v4[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    failureType = self->_failureType;
    if (failureType != [v4 failureType])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v8)
  {
    failureSubType = self->_failureSubType;
    if (failureSubType != [v4 failureSubType])
    {
      goto LABEL_24;
    }
  }

  v10 = [(PNRODSchemaPNRODFailureInfo *)self error];
  v11 = [v4 error];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_23;
  }

  v12 = [(PNRODSchemaPNRODFailureInfo *)self error];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODFailureInfo *)self error];
    v15 = [v4 error];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v10 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
  v11 = [v4 underlyingError];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_23;
  }

  v17 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
    v20 = [v4 underlyingError];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v10 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
  v11 = [v4 underUnderlyingError];
  if ((v10 != 0) != (v11 == 0))
  {
    v22 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    if (!v22)
    {

LABEL_27:
      v27 = 1;
      goto LABEL_25;
    }

    v23 = v22;
    v24 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    v25 = [v4 underUnderlyingError];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_23:
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v5 = [(PNRODSchemaPNRODFailureInfo *)self error];

  if (v5)
  {
    v6 = [(PNRODSchemaPNRODFailureInfo *)self error];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];

  if (v7)
  {
    v8 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];

  v10 = v12;
  if (v9)
  {
    v11 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (void)setHasFailureSubType:(BOOL)a3
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
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PNRODSchemaPNRODFailureInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODFailureInfo *)self error];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODFailureInfo *)self deleteError];
  }

  v9 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODFailureInfo *)self deleteUnderlyingError];
  }

  v12 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODFailureInfo *)self deleteUnderUnderlyingError];
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