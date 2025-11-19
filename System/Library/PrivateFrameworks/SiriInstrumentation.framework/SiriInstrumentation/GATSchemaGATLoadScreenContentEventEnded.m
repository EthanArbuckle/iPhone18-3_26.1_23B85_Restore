@interface GATSchemaGATLoadScreenContentEventEnded
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATLoadScreenContentEventEnded)initWithDictionary:(id)a3;
- (GATSchemaGATLoadScreenContentEventEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOriginalMediaSizeInKBs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATLoadScreenContentEventEnded

- (GATSchemaGATLoadScreenContentEventEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GATSchemaGATLoadScreenContentEventEnded;
  v5 = [(GATSchemaGATLoadScreenContentEventEnded *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalMediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATLoadScreenContentEventEnded setOriginalMediaType:](v5, "setOriginalMediaType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"originalMediaSizeInKBs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(GATSchemaGATLoadScreenContentEventEnded *)v5 setOriginalMediaSizeInKBs:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATError alloc] initWithDictionary:v8];
      [(GATSchemaGATLoadScreenContentEventEnded *)v5 setUnderlyingError:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (GATSchemaGATLoadScreenContentEventEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATLoadScreenContentEventEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATLoadScreenContentEventEnded *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(GATSchemaGATLoadScreenContentEventEnded *)self originalMediaSizeInKBs];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"originalMediaSizeInKBs"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [(GATSchemaGATLoadScreenContentEventEnded *)self originalMediaType]- 1;
    if (v7 > 0xA)
    {
      v8 = @"GATMEDIATYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D7198[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"originalMediaType"];
  }

  if (self->_underlyingError)
  {
    v9 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_originalMediaType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(GATSchemaGATError *)self->_underlyingError hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  originalMediaSizeInKBs = self->_originalMediaSizeInKBs;
  if (originalMediaSizeInKBs < 0.0)
  {
    originalMediaSizeInKBs = -originalMediaSizeInKBs;
  }

  *v6.i64 = floor(originalMediaSizeInKBs + 0.5);
  v10 = (originalMediaSizeInKBs - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(GATSchemaGATError *)self->_underlyingError hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    originalMediaType = self->_originalMediaType;
    if (originalMediaType != [v4 originalMediaType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (originalMediaSizeInKBs = self->_originalMediaSizeInKBs, [v4 originalMediaSizeInKBs], originalMediaSizeInKBs == v10))
    {
      v11 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
      v12 = [v4 underlyingError];
      v13 = v12;
      if ((v11 != 0) != (v12 == 0))
      {
        v14 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
        if (!v14)
        {

LABEL_17:
          v19 = 1;
          goto LABEL_15;
        }

        v15 = v14;
        v16 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
        v17 = [v4 underlyingError];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v5 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];

  v6 = v8;
  if (v5)
  {
    v7 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasOriginalMediaSizeInKBs:(BOOL)a3
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
  v9.super_class = GATSchemaGATLoadScreenContentEventEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GATSchemaGATLoadScreenContentEventEnded *)self underlyingError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(GATSchemaGATLoadScreenContentEventEnded *)self deleteUnderlyingError];
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