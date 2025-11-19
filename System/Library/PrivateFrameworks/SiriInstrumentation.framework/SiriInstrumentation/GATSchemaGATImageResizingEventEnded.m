@interface GATSchemaGATImageResizingEventEnded
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATImageResizingEventEnded)initWithDictionary:(id)a3;
- (GATSchemaGATImageResizingEventEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasProcessedMediaSizeInKBs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATImageResizingEventEnded

- (GATSchemaGATImageResizingEventEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GATSchemaGATImageResizingEventEnded;
  v5 = [(GATSchemaGATImageResizingEventEnded *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"processedMediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATImageResizingEventEnded setProcessedMediaType:](v5, "setProcessedMediaType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"processedMediaSizeInKBs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(GATSchemaGATImageResizingEventEnded *)v5 setProcessedMediaSizeInKBs:?];
    }

    v8 = v5;
  }

  return v5;
}

- (GATSchemaGATImageResizingEventEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATImageResizingEventEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATImageResizingEventEnded *)self dictionaryRepresentation];
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
    [(GATSchemaGATImageResizingEventEnded *)self processedMediaSizeInKBs];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"processedMediaSizeInKBs"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [(GATSchemaGATImageResizingEventEnded *)self processedMediaType]- 1;
    if (v7 > 0xA)
    {
      v8 = @"GATMEDIATYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D70F8[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"processedMediaType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_processedMediaType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    return v8 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  processedMediaSizeInKBs = self->_processedMediaSizeInKBs;
  if (processedMediaSizeInKBs < 0.0)
  {
    processedMediaSizeInKBs = -processedMediaSizeInKBs;
  }

  *v2.i64 = floor(processedMediaSizeInKBs + 0.5);
  v6 = (processedMediaSizeInKBs - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    processedMediaType = self->_processedMediaType;
    if (processedMediaType != [v4 processedMediaType])
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (processedMediaSizeInKBs = self->_processedMediaSizeInKBs, [v4 processedMediaSizeInKBs], processedMediaSizeInKBs == v10))
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
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
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)setHasProcessedMediaSizeInKBs:(BOOL)a3
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